% Input: vector alpha of n rows, 1 column
%        matrix X of features, with n rows (samples), d columns (features)
%        X(i,j) is the j-th feature of the i-th sample
%        vector y of labels, with n rows (samples), 1 column
%        y(i) is the label (+1 or -1) of the i-th sample
%        vector x of d rows, 1 column
% Output: label (+1 or -1)
function label = kerpred(alpha,X,y,x)
[n d] = size(X);
z=0;
for i = 1:n
            a = alpha(i)*y(i)*K(transpose(X([i],:)),x);
            z = z + a;
end
if z > 0
    label = 1;
else
    label = -1;
end