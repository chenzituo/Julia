import PyPlot as plt
Base.@kwdef mutable struct WOR
    x::Float64 = 1
    y::Float64 = 1
    z::Float64 = 1
end
function step(w::WOR)
    w.x-=1;
    w.y+=1;
    w.z+=2;
end
fig = plt.figure()
ax1=plt.axes(projection="3d")
t=WOR()
for i=1:10
    step(t)
    print(t.x," ",t.y," ",t.z,"\n")
    ax1.scatter3D(t.x,t.y,t.z)
end
plt.savefig("x.png")
