using DifferentialEquations
using Plots
x=882000
y=747000
a1=0.4
b1=0.67
c1=0.77
h1=0.14
T=(0.0,1)
u_0=[x,y]
"""
function P1(t)
    return sin(3t)+1
end
function Q1(t)
    return cos(2t)+2
end


function F1!(du,u,p,t)
    du[1]=-a1*u[1]-b1*u[2]+P1(t)
    du[2]=-c1*u[1]-h1*u[2]+Q1(t)
end
prob1=ODEProblem(F1!,u_0,T)
sol_1=solve(prob1,saveat=0.01)

plt_1 = plot(
	sol_1,
	vars = (0, 1),
	color =:red,
	label = "Численность армии страны X",
	title = "Модель боевых действий №1",
	xlabel = "Время",
	ylabel = "Численность"
)

plot!(
	sol_1,
	vars = (0, 2),
	color =:blue,
	label = "Численность армии страны Y"
)

savefig(plt_1, "model_1_julia.png")
"""
a2=0.24
b2=0.67
c2=0.47
h2=0.14

function P2(t)
    return abs(sin(2t))
end
function Q2(t)
    return abs(cos(2t))
end
function F2!(du,u,p,t)
    du[1]=-a2*u[1]-b2*u[2]+P2(t)
    du[2]=-c2*u[1]*u[2]-h2*u[2]+Q2(t)
end
prob2=ODEProblem(F2!,u_0,T)
sol_2=solve(prob2,saveat=0.01)
plt_2 = plot(
	sol_2,
	vars = (0, 1),
	color =:red,
	label = "Численность армии страны X",
	title = "Модель боевых действий №2",
	xlabel = "Время",
	ylabel = "Численность"
)

plot!(
	sol_2,
	vars = (0, 2),
	color =:blue,
	label = "Численность армии страны Y"
)

savefig(plt_2, "model_2_julia.png")