
param n; # punts
param a; # punt finl x
param b; # punt final y
set PUNTS := 0..n; #índexos dels punts
param x{PUNTS} default 0; #partició
param k; #1/sqrt(2*g)

 
var y {i in PUNTS}  >= 10^(-12), <=b, := i; #ŀes y_i = f(x_i);

#Funcio objectiu

minimize discretitzacio:
	#sum {i in 1..n } ( k*(sqrt(((x[i]-x[i-1])^2 + (y[i]-y[i-1])^2)/(y[i]))));
	sum {i in 1..n-1 } (2*k*(  sqrt(1 + ( (x[i+1]-x[i])/(y[i+1]-y[i])  )^2 )*( sqrt(y[i+1]) - sqrt( y[i])  ) ) );
	#sum {i in 1..n } ( k*(x[i]-x[i-1])*(sqrt((1 + ((y[i]-y[i-1])/(x[i]-x[i-1]))^2)/(y[i]))));



#Subjecta a:
subject to inicial: y[0] = 10^(-12);
subject to final:   y[n] = b;

