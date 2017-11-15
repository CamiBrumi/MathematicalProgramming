% una iteració del simplex primalfunction [vb, vn, xb, z, iout] = simplexP_iter(c, A, b, vb, vn, xb, z)format long ;B = A(:, vb);cb = c(vb);An = A(:, vn);cn = c(vn);invB = inv(B);rq = cn' - cb'*invB*An;   if( rq >= 0) iout = 2; return; end% SBF òptima % seleccionem la variable no bàsica que entra d'índex més petit (Regla de Bland)% 1. fem una còpia de vn (vnc) i de rq (rqc)% 2. iterem sobre vn: %   2.1. trobem el mínim de vn%   2.2 mirem si correspon a un cost reduït negatiu%   2.3. en cas afirmatiu, hem trobat la vn d'entrada q%        altrament, esborrem la vn d'índex mínim de vnc i el seu cost reduït associat de rqc% tornem a 2vnc = vn;rqc = rq;vnTrobada = 0;while (! vnTrobada)  [x, ix] = min(vnc);  if (rqc(ix) < 0)    q = x;    vnTrobada = 1;  else     vnc(ix) = [];    rqc(ix) = [];  endif;   endwhile;% calculem la direcció bàsica factible de descensdb = -invB*An(:, q)  if (min(db) >=0 ) iout = 3; return; end % Problema il·limitat  % calculem la passa màxima theta i seleccionem la vb sortint B(p)min = inf;first = 1;for i = 1:ndims(db)  if (db(i) < 0)    thetaActual = -xb(i)/db(i);    if (first) theta = thetaActual; imin = i; first = 0; endif;    if (thetaActual < theta)      theta = thetaActual;      imin = i;    elseif (thetaActual == theta && vb(i) < vb(imin))      imin = i; % si hi ha dos valors de theta que són iguals i són mínims, agafem la vb que surt d'índex menor    endif;  endif;endfor;p = vb(imin); if (theta == 0) iout = 1; return; end % Problema degenerat % Actualitzacions i canvis de basexb = xb + theta*db;xb(imin) = theta;xbz = z + theta*rq;vb(imin) = q;vn(ix) = p;endfunction;