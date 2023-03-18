using Plots
using DifferentialEquations
N=12700
I₀=170
R₀=57
S₀=N-I₀-R₀
T=(0.0,60)
u₀=[S₀,I₀,R₀]
a=0.01
b=0.02
function F!(du,u,p,t)
    du[1]=-a*u[1]
    du[2]=a*u[1]-b*u[2]
    du[3]=b*u[2]
end
prob=ODEProblem(F!,u₀,T)
sol=solve(prob,saveat=0.05)
const S=Float64[]
const I=Float64[]
const R=Float64[]
for u in sol.u
    s,i,r=u
    push!(S,s)
    push!(I,i)
    push!(R,r)
end
plt=plot(
dpi=300,
size=(800,600),
title="Модель эпидемии при I₀>I*"
)
plot!(
plt,
sol.t,
S,
color=:red,
xlabel="t",
ylabel="Численность",
label="В группе риска"
)
plot!(
plt,
sol.t,
I,
color=:black,
xlabel="t",
ylabel="Численность",
label="Распространители болезни"

)
plot!(
plt,
sol.t,
R,
color=:blue,
xlabel="t",
ylabel="Численность",
label="Люди с иммунитетом"

)
savefig(plt,"Julia_2.png")