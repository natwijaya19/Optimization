function y = simple_fitness (x)
% simple fitness function for GA optimization
y = 100*(x(1)^2-x(2))^2+(1-x(1))^2 ;