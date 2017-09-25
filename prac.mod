#Problema de flux màxim com a problema de flux de cost mínim

param n; #nodes
set NODES :=1..n;
param m; #arestes
set ARCS :=1..m;

param capacitat{ARCS}>=0;

var soluc{i in ARCS}>=0,<=capacitat[i];

param INCID{NODES,ARCS};

param ARC_ARTIF{i in NODES}=0;
for{i in 1..n} { if i == 1 th
ARC_ARTIF[1]=-1;
ARC_ARTIF[n]=1;

/* ARC_ARTIF[i]:= -1 else if i == n then ARC_ARTIF[n]:= 1 else ARC_ARTIF[i]:=0; 
	}

param zero_vector{NODES};
for {i in NODES} zero_vector[i]
param ARC_ARTIF {NODES};
data;
param ARC_ARTID:=NODES 

param ARC_ARTIF{i in NODES} if (i==1)

*/




#Funció objectiu
	
var flux_1_n;
maximize flux_max:
flux_1_n;


#Subjecta a:
subject to restriccions_transbord{ i in NODES }:
	
	(sum {j in ARCS} (INCID[i,j]*soluc[j])) + ARC_ARTIF[i]*flux_1_n = 0; #fila iessima del producte INCID*soluc = 0;
	
   
