using DifferentialEquations
using Plots

x₀=8
y₀=15

a=0.7
b=0.06
c=0.6
d=0.07

u₀=[x₀,y₀]
T=(0.0,60.0)
function F!(du,u,p,t)
    du[1]=-a*u[1]+b*u[1]*u[2]
    du[2]=c*u[2]-d*u[1]*u[2]   
end
prob=ODEProblem(F!,u₀,T)
sol=solve(prob,saveat=0.05)

const X =Float64[]
const Y =Float64[]

for u in sol.u
    x,y=u
    push!(X,x)
    push!(Y,y)
end

plt=plot(
    dpi=300,
    size=(800,800),
    title="График зависимости численности хищников от численности жертв"
)

plot!(
    plt,
    Y,
    X,
    color=:blue,
    label="Фазовый портрет"
)
savefig(plt,"Lab05_Julia.png")

plt2=plot(
    dpi=300,
    size=(800,800),
    title="График зависимости численности хищников от численности жертв"
)  
plot!(

plt2,
sol.t,
X,
color=:red,
label="Число жертв"
)
plot!(

plt2,
sol.t,
Y,
color=:yellow,
label="Число хищников"
)
savefig(plt2,"Lab05_Julia_1.png")