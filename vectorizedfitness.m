
function y = vectorizedfitness (x, p1, p2)
% vectorizedfitness function for GA optimization
y = p1.*(x(:,1).^2-x(:,2)).^2+(p2-x(:,1)).^2 ;
