%Input N (number of samples)
N=2;
%Input n (the dimension of the vectors)
n=2;
%Input mu (the mean of the distribution of the sample)
mu=1;
%Input sigma (the variance-covariance matrix of the draws)
sigma=[3 0;0 3];
%Defining z
a =zeros(n,N);
b =size(a);
z =normrnd(0,1,b);
%Finding x
x =(sigma)^(0.5)*z+ones(n).*mu;
%Displaying the results
disp('Given the z drawn in the sample')
disp(z)
disp('The new matrix x is equal to:')
disp(x)
