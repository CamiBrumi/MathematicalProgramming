#Problema de flux maxim com a problema de flux de cost minim

param n; # nr equips
set EQUIPS :=1..n; #el necessito per a definir els costos (CPreferencia), perquè sino no podria escriure els costos dels partits intradivisionals
set DIV1 :=1..n/2;
set DIV2 :=n/2+1..n;
param r; # partits intradivisionals
param s; # partits interdivisionals
set JORNADES :=1..r*(n/2-1)+s*(n/2);
 
var x {EQUIPS,EQUIPS,JORNADES}>=0,<=1,integer;


param CPreferencia{EQUIPS,EQUIPS,JORNADES} default 0;



#Funcio objectiu

maximize preferencia:
	sum {i in EQUIPS} (sum{j in EQUIPS} (sum{k in JORNADES} (CPreferencia[i,j,k]*x[i,j,k])));
# alternativa:
# sum {(i,j,k) in PARTIDES} (CPreferencia[i,j,k]*x[i,j,k]);


#Subjecta a:
subject to restriangle{j in 1..n, i in j..n, k in JORNADES}: x[i,j,k] = 0; #parell ordenat i sense repeticions
subject to restriccions11r{ i in 1..n/2 - 1, j in i+1..n/2}: sum {k in JORNADES} (x[i,j,k]) = r; #intra de primera DIV
#subject to restriccions12r{ i in n/2..n-1, j in i+1..n}: sum {k in JORNADES} (x[i,j,k]) = r; #intra de segona DIV
subject to restriccions1s{ i in DIV1, j in DIV2 }: sum {k in JORNADES} (x[i,j,k]) = s; #inter de primera DIV, que són les mateixes que les inter de segona DIV
subject to restriccions2{ i in EQUIPS, k in JORNADES}: ( sum{c in i+1..n} (x[i,c,k]) ) + ( sum{f in 1..i-1} ( x[f,i,k] ) ) = 1; #veure dibuixet



