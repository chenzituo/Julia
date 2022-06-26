Base.@kwdef mutable struct X
    x::Int64 = 1
    y::Int64 = 1
end
#Base.@kwdef mutable struct Expr
#    head::Symbol
#    args::Array{Any,1}
#    typ
#end

function factorial(n::Int)
    n>=0 || error("nonegative")
    n==0 && return 1
    n * factorial(n-1)
end

factorial(20)

ex = :(a+b*c+1)
a=1
b=1
c=10
ex2= :($a+b)
a=2
@assert 1==1
A=[[1,2,3],[2,3,4]]
deepcopy(A)
fill!([3,2],4)

A=[[1,2],[2,3],[3,4]]
B=[[1,2],[2,3],[3,4]]
hcat(A,B)
vcat(A,B)

const x = rand(8)

y=reshape(1:16,4,4)
y[2:3,2:end-1]
a=[1,2,5,6,7]
searchsorted(a,6.6)
a=rand(2,1)
b=rand(1,2)
broadcast(+,a,b)


