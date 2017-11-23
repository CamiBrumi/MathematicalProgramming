cas114
bland = 0; %val 1 si volem fer servir la regla de bland.
if (bland) display("-----CONJUNT DE DADES 11, PL 4, REGLA DE BLAND-----") endif
if ( ! bland) display("-----CONJUNT DE DADES 11, PL 4, REGLA DE CRMN-----") endif
[vb, xb, z] = simplexP(c, A, b,bland);