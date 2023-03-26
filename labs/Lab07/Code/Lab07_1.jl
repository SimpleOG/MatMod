using Plots
using DifferentialEquations
N=1130
n=11
u₀=[n]
T=(0.0,60.0)
a=0.25
b=0.000075 
function F!(du,u,p,t)
    du[1]=(a+b*u[1])*(N-u[1])
end
prob=ODEProblem(F!,u₀,T)
sol=solve(prob,saveat=0.001)
const M = Float64[]
for u in sol.u
    n=u[1]
    push!(M,n)
end    
plt=plot(
    dpi=300,
    size=(800,800),
    title="График распространения рекламы №1"

)
plot!(
    plt,
    sol.t,
    M,
    color=:green,
    xlabel="t",
    ylabel="N(t)",
    label="Количество осведомленных"

)
savefig(plt,"Julia_1.png")