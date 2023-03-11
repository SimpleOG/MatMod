model Lab04_case3
constant Real x0=1.2;
constant Real y0=-1.2;
constant Real g=2.4;
constant Real w=2.5;
Real x(start=x0);
Real y(start=y0);
Real t=time;
equation
der(x)=y;
der(y)=0.2*sin(2.6*t)-g*y-w*x;
annotation(experiment(StartTime = 0,StopTime = 72));
end Lab04_case3;
