using DifferentialEquations
using Plots
x₀=1.2
y₀=-1.2
u₀=[x₀,y₀]
T=(0.0,72.0)
w=21
function F!(du,u,p,t)
    du[1]=u[2]
    du[2]=-w*u[1]
end
prob=ODEProblem(F!,u₀,T)
sol=solve(prob,saveat=0.05)
const X=Float64[]
const Y=Float64[]
for u in sol.u
    x,y=u
    push!(X,x)
    push!(Y,y)
end
plt=plot(
    dpi=400,
    size=(800,800),
    title="Первый случай"
)
plot!(
    plt,
    X,
    Y,
    color=:red,
    label="Фазовый портрет"
)
savefig(plt,"faze_first_case_julia.png")

plt2=plot(
    dpi=400,
    size=(800,800),
    title="Первый случай"
)
plot!(
    plt2,
    sol.t,
    X,
    color=:blue
)

plot!(
    plt2,
    sol.t,
    Y,
    color=:yellow
)
savefig(plt2,"first_case_julia")
