function [c] = X1(l, beta, al1, al2)
l1 = l(1);
l2 = l(2);
c = l1 * (al1 + l1 / sqrt(beta * (l1 * l1 + beta * l2 * l2))) + l2 * (al2 + l2 * sqrt(beta) / sqrt(l1 * l1 + beta * l2 * l2));
