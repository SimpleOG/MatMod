# Решаем ОДУ

using DifferentialEquations
using Plots

"""Правая часть ОДУ
u --- переменная (скаляр или массив)
p --- параметры (кортеж, tuple)
t --- аргумент (скаляр, время)
"""


function f(n, p, t) #для катера
    dr=r/sqrt(n^2-1)
    return dr
end
function f2(t, p, n) # лодка браконьеров
    xt=tan(fi+pi)*t
    return xt
end
const s =  19
fi=3*π /4;
n=5.1
r0=s/(n+1)

# диф для катера
θ = range(0, 2*π,100)
prob = ODEProblem(f, r0, θ)
sol=solve(prob)
# траектория лодки
t=range(0,20,100)
r1=sqrt(t^2+f2(t)^2)
θ1=arctan(f2(t)\t)

plt = plot(r1,θ1)

plot!(
  plt,
  sol.t,
  sol.u,
  xlabel="θ",
  ylabel="r(t)",
  label="Траектория катера",
  color=:red,
  title="Катер с бандитами")

savefig(plt, "ex03.png")