#Problema de flux maxim com a problema de flux de cost m�nim

param n; #nodes
set NODES :=1..n;
param m; #arestes
set ARCS :=1..m;

var soluc{i in ARCS}>=0; #ara ja no ens importa que sigui més petit que la capacitat[i] perquè tenim només una unitat de flux que volem transportar

param INCID{NODES,ARCS};
param COST{ARCS}; #afegit



#Funcio objectiu

var cost_1_n >=0;
minimize cost_camins:
sum( {j in ARCS} (INCID[i,j]*soluc[j])*COST[j]) ; # no estic molt segura de que estigui bé!


#Subjecta a:
subject to restriccions_transbord{ i in NODES }:

	(sum {j in ARCS} (INCID[i,j]*soluc[j])) = 0; #fila iessima del producte INCID*soluc = 0;
