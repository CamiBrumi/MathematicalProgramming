
param n; # punts
param a; # punt finl x
param b; # punt final y
set PUNTS := 0..n; #indexos dels punts
param k; #1/sqrt(2*g)

var x {i in PUNTS}  >= 10^(-12), <=a, := (a*i)/n;
var y {i in PUNTS}  >= 10^(-12), <=b, := (a*i)/n;



#Funcio objectiu

minimize discretitzacio:
	sum {i in 1..n } ( k*(sqrt(((x[i]-x[i-1])^2 + (y[i]-y[i-1])^2)/(y[i-1]))));
	

#Subjecta a:
subject to inicial1: x[0] = 10^(-12);
subject to final1:   x[n] = a;
subject to inicial2: y[0] = 10^(-12);
subject to final2:   y[n] = b;


