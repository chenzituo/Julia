import PyPlot as plt
fig = plt.figure()
ax1 = plt.axes(projection="3d")
# define the Lorenz attractor
Base.@kwdef mutable struct Lorenz
    dt::Float64 = 0.02
    x1::Float64 = 10
    x2::Float64 = 28
    x3::Float64 = 8/3
    x::Float64 = 1
    y::Float64 = 1
    z::Float64 = 1
end

function step(l::Lorenz)
    dx = l.x1 * (l.y - l.x)
    dy = l.x * (l.x2 - l.z) - l.y
    dz = l.x * l.y - l.x3 * l.z
    l.x += l.dt * dx
    l.y += l.dt * dy
    l.z += l.dt * dz
end

attractor = Lorenz()

# build an animated gif by pushing new points to the plot, saving every 10th frame
for i=1:50
    step(attractor)
    #push!(plt, attractor.x, attractor.y, attractor.z)
    ax1.scatter3D(attractor.x,attractor.y,attractor.z)
end
plt.savefig("1.png")
