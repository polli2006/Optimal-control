function [position,isterminal,direction] = EventsFcn(t,y)
position = y(1); % The value that we want to be zero
isterminal = 1;  % Halt integration 
direction = 0; 