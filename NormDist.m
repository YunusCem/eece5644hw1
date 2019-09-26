function [x,z] = NormDist(N,n,mu,sigma)
    %Defining z
    a =zeros(n,N);
    b =size(a);
    z =normrnd(0,1,b);
    %Finding x
    x =sqrtm(sigma)*z+ones(n,N)*mu;
    %Displaying the results
    disp('Given the z drawn in the sample')
    disp(z)
    disp('The new matrix x is equal to:')
    disp(x)
end