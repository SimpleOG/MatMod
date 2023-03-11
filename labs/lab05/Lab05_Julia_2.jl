using DifferentialEquations
using Plots
a=0.7
b=0.06
c=0.6
d=0.07
x₀=c/d
y₀=a/b
u₀=[x₀,y₀]
T=(0.0,60.0)
function F!(du,u,p,t)
    du[1]=-a*u[1]+b*u[1]*u[2]
    du[2]=c*u[2]-d*u[1]*u[2]   
end
prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.05) # обозначили шаг
const X = Float64[]
const Y = Float64[]
for u in sol.u
x, y = u
push!(X, x)
push!(Y, y)
end
plt = plot(
dpi = 300,
size = (800, 600),
title = "График зависимости численности хищников от численности жертв"
)
plot!(
plt,
Y,
X,
color = :red,
label = "Фазовый портрет"
)
savefig(plt, "julia_2_stat.png")
plt_2 = plot(
dpi = 300,
size = (800, 600),
title = "Графики изменения численности хищников и численности жертв"
)
plot!(
plt_2,
sol.t,
X,
color = :blue,
label = "Число жертв"
)
plot!(
plt_2,
sol.t,
Y,
color = :purple,
label = "Число хищников"
)
savefig(plt_2, "julia_1_stat.png")