function m = sqdist(p, q)

% SQDIST        Squared Euclidean or Mahalanobis distance.
% SQDIST(p,q)   returns m(i,j) = (p(:,i) - q(:,j))'*(p(:,i) - q(:,j)).

pn = size(p,2);
qn = size(q,2);

m = zeros(pn,qn);

for i = 1:pn
    for j = 1:qn
        m(i,j) = (p(:,i) - q(:,j))'*(p(:,i) - q(:,j));
    end
end