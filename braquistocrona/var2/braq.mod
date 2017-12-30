
param n; # punts
param a; # punt finl x
param b; # punt final y
set PUNTS := 0..n; #índexos dels punts
param y{PUNTS} default 10^(-12); #partició
param k; #1/sqrt(2*g)

 
var x {i in PUNTS}  >= 10^(-12), <=b, := (a*i)/n; #ŀes y_i = f(x_i);

#Funcio objectiu

minimize discretitzacio:
	sum {i in 1..n } ( k*(sqrt(((x[i]-x[i-1])^2 + (y[i]-y[i-1])^2)/(y[i-1]))));
	#sum {i in 1..n } (2*k*(  sqrt(1 + ( (x[i]-x[i-1])/(y[i]-y[i-1])  )^2 )*( sqrt(y[i]) - sqrt( y[i-1])  ) ) );
	#sum {i in 1..n } ( k*(x[i]-x[i-1])*(sqrt((1 + ((y[i]-y[i-1])/(x[i]-x[i-1]))^2)/(y[i]))));



#Subjecta a:
subject to inicial: x[0] = 10^(-12);
subject to final:   x[n] = a;

