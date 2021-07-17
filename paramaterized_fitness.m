
function y = paramaterized_fitness (x, p1, p2)
% paramaterized_fitness function for GA optimization
y = p1*(x(1)^2-x(2))^2+(p2-x(1))^2 ;