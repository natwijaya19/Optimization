
function [c, ceq] = simple_constraint(x)
c = [+x(1)*x(2)+x(1)-x(2)+1.5 ;
    +10 - x(1)*x(2)] ;
ceq = [] ;    
    