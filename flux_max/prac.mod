#Problema de flux maxim com a problema de flux de cost minim

param n; #nodes
set NODES :=1..n;
param m; #arestes
set ARCS :=1..m;

param capacitat{ARCS}>=0;

var soluc{i in ARCS}>=0,<=capacitat[i];

param INCID{NODES,ARCS};

#param ARC_ARTIF{i in NODES}=0;
param ARC_ARTIF{NODES};



#Funcio objectiu

var flux_1_n >=0;
maximize flux_max:
flux_1_n;


#Subjecta a:
subject to restriccions_transbord{ i in NODES }:

	(sum {j in ARCS} (INCID[i,j]*soluc[j])) + ARC_ARTIF[i]*flux_1_n = 0; #fila iessima del producte INCID*soluc = 0;
