model Lab4_Case1
constant Real x0=1.2;
constant Real y0=-1.2;
constant Integer w=21;
Real x(start=x0);
Real y(start=y0);
Real t=time;
equation
der(x)=y;
der(y)=-w*x;
annotation(experiment(StartTime = 0,StopTime = 72));
end Lab4_Case1;
