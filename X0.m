function [c, ind] = X0(l, eps, p, a, b)
leng = length(l);
clp = leng + p(1) * l1 + p2 * l2;
ind = 1;
c = clp + b/2 * abs(l(1)) + a/2 * abs(l(2));
if ((l(1) ~= 0 && (l(2) ~= 0) && (abs(l2 / l1) < 4 * (eps * eps + b * eps)/(a * b))))
    c = clp + (b/2 + eps) * sqrt(l(1) * l(1) + l(2) * l(2)/(4 * (eps * eps + b * eps)/(a * a)));
    ind = 2;
end
if ((l(1) ~= 0 && (l(2) ~= 0) && (abs(l2 / l1) > (a * b) /(4 * (eps * eps + a * eps)))))
    c = clp + (a/2 + eps) * sqrt(l(2) * l(2) + l(1) * l(1)/(4 * (eps * eps + a * eps)/(b * b)));
    ind = 3;
end
