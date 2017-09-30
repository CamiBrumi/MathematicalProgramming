# Problema de CAMINS MINIMS COM A PFCM
#Número de nodos

param n;
set NODOS:=1..n;
set ARCOS within {NODOS,NODOS};
param flujo{NODOS};
param coste{ARCOS}>=0;
var x {(i,j) in ARCOS}>=0; #integer << REDUNDANCIA


#Función objectivo

minimize coste_total:
sum{(i,j) in ARCOS} coste[i,j]*x[i,j];

# Restricciones
subject to res_nodos{k in NODOS}:
(sum{(k,j)in ARCOS} (x[k,j]) - sum{(i,k)in ARCOS} (x[i,k])) = flujo[k];
