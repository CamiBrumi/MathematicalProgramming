
param n; # punts
param a; # punt finl x
param b; # punt final y
set PUNTS := 0..n; #índexos dels punts
param k; #1/sqrt(2*g)

var x {i in PUNTS}  >= 0, <=a;
var y {i in PUNTS}  >= 0, <=b, default 50;

#Funcio objectiu

minimize discretitzacio:
	sum {i in 1..n } ( k*(sqrt(((x[i]-x[i-1])^2 + (y[i]-y[i-1])^2 + 10^(-12))/(y[i] + 10^(-12)))));
	#sum {i in 1..n } ( k*(x[i]-x[i-1])*(sqrt((1 + ((y[i]-y[i-1])/(x[i]-x[i-1]))^2)/(y[i]))));
	#sum {i in 0..n-1 } (2*k*(  sqrt(1 + ( (x[i+1]-x[i])/(y[i+1]-y[i])  )^2 )*( sqrt(y[i+1]) - sqrt( y[i])  ) ) );
	

#Subjecta a:
subject to inicial1: x[0] = 10^(-12);
subject to final1:   x[n] = a;
subject to inicial2: y[0] = 10^(-12);
subject to final2:   y[n] = b;
subject to escala1{i in 0..n-1}: x[i] <= x[i+1];
subject to escala2{i in 0..n-1}: y[i] <= y[i+1];


