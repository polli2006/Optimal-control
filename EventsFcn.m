function [position,isterminal,direction] = EventsFcn(t,x, eps_x1, beta, al1, al2)
if (beta * (x(1) - al1).^2 + (x(2) - al2).^2 - 1 > eps_x1) 
    position = 1;
else
    position = 0;
end% The value that we want to be zero
isterminal = 1;  % Halt integration 
direction = 0;