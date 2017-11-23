% una iteració del simplex primal
function [vb, vn, xb, z, rq, iout] = simplexP_iterCRMN(c, A, b, vb, vn, xb, z, iout)
format long ;

B = A(:, vb); %sel·leccionar les columnes que indica vb
cb = c(vb);

An = A(:, vn); %sel·leccionar les columnes que indica vn
cn = c(vn);

invB = inv(B);
rq = cn' - cb'*invB*An;

 if( rq >= 0) iout = 2; disp(["    iout = ", num2str(iout), ", q = ", num2str(0), ", B(p) = ", num2str(0), ", theta* = ", num2str(0), ", z = ", num2str(z)]);  return; end % SBF òptima
 
% seleccionem la variable no bàsica de cost reduit més negatiu
[x, ix] = min(rq);
q = vn(ix);

% calculem la direcció bàsica factible de descens
db = -invB*A(:, q);
 
if (min(db) >=0 ) iout = 3; disp(["    iout = ", num2str(iout), ", q = ", num2str(0), ", B(p) = ", num2str(0), ", theta* = ", num2str(0), ", z = ", num2str(z)]); return; end % Problema il·limitat
 
 % calculem la passa màxima theta i seleccionem la vb sortint B(p)
min = inf;
first = 1;
for i = 1:rows(db)
  if (db(i) < 0)
    thetaActual = -xb(i)/db(i);
    if (first) theta = thetaActual; imin = i; first = 0; endif;
    if (thetaActual < theta)
      theta = thetaActual;
      imin = i;
    elseif (thetaActual == theta && vb(i) < vb(imin))
      imin = i; % si hi ha dos valors de theta que són iguals i són mínims, agafem la vb que surt d'índex menor
    endif;
  endif;
endfor;

p = vb(imin);

% if (theta == 0) iout = 1; return; end % Problema degenerat (no fa falta sortir),
% hauriem pensar que hem de fer ara amb la degeneracio
% (es nota que no puc posar accents pq sino peta el programa? :) )
 
% Actualitzacions i canvis de base
xb = xb + theta*db;
xb(imin) = theta;

iq = find(vn == q); %index de q dins de vn


vb(imin) = q; % la variable no bàsica q que entra va a la posició de la que surt en el vector vb
vn(iq) = p; % la variable bàsica p que surt va a la posició de la que entra en el vector vn

%z = z + theta*rq(iq);
z = c(vb)'*xb; % mètode sense actualitzacio

disp(["    iout = ", num2str(iout), ", q = ", num2str(q), ", B(p) = ", num2str(p), ", theta* = ", num2str(theta), ", z = ", num2str(z)])

endfunction;