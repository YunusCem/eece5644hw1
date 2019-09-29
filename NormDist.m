function [x,z] = NormDist(N,n,mu,sigma)
    %Defining z
    z =normrnd(0,1,n,N);
    %Finding x
    a =sigma^(0.5);
    b =ones(n,N).*mu;
    x =a*z+b;
    %Displaying the results
    disp('Given the z drawn in the sample')
    disp(z)
    disp('The new matrix x is equal to:')
    disp(x)
end