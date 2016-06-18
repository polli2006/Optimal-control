function [u] = u_find(l, a, b, p, eps, ind)
leng = sqrt(sum(l.*l));
if (ind == 2)
    x2 = l(1) *(b / 2 + eps) / sqrt(l(1) * l(1) + l(2) * l(2) * a * a /(4 * (eps * eps + b * eps)));
    y2 = l(2) *(b / 2 + eps) * a * a / (4 * (eps * eps + b * eps) * sqrt(l(1) * l(1) + l(2) * l(2) * a * a /(4 * (eps * eps + b * eps))));
    v = p + [x2, y2];
else
    if (ind == 3)
        y3 = l(2) *(a / 2 + eps) / sqrt(l(2) * l(2) + l(1) * l(1) * a * a /(4 * (eps * eps + a * eps)));
        x3 = l(1) *(a / 2 + eps) * b * b / (4 * (eps * eps + a * eps) * sqrt(l(2) * l(2) + l(1) * l(1) * b * b /(4 * (eps * eps + a * eps))));
        v = p + [x3, y3];
    else
        if (l(1) == 0)
            v = p + [0, a / 2];
        else
            v = p + [b / 2, 0];
        end
    end
end
%if (ind ~= 1) ind 
%end
u = v';
%u = u + l';
