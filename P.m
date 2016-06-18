function [c, ind] = P(l, eps, p, a, b)
leng = sqrt(sum(l .* l));
clp = leng + p(1) * l(1) + p(2) * l(2);
ind = 1;
c = clp + b/2 * abs(l(1)) + a/2 * abs(l(2));
if ((l(1) ~= 0) && (l(2) ~= 0) && (abs(l(2) / l(1)) < 4 * (eps * eps + b * eps)/(a * b)))
    c = clp + (b/2 + eps) * sqrt(l(1) * l(1) + l(2) * l(2)/(4 * (eps * eps + b * eps)/(a * a)));
    ind = 2;
end
if ((l(1) ~= 0) && (l(2) ~= 0) && (abs(l(2) / l(1)) > (a * b) /(4 * (eps * eps + a * eps))))
    c = clp + (a/2 + eps) * sqrt(l(2) * l(2) + l(1) * l(1)/(4 * (eps * eps + a * eps)/(b * b)));
    ind = 3;
end
%if (abs(l(2) / l(1)) < 4 * (eps * eps + b * eps)/(a * b)) 
%'yes'
%end
%if (abs(l(2) / l(1)) > (a * b) /(4 * (eps * eps + a * eps)))
%    'yyyyes'
%end
