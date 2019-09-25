%Class-Conditional PDFs
x = linspace(-10,10,100);
y = 1./(sqrt(8*pi).*exp((x.^2).*0.5)); 
z = 1./(sqrt(16*pi).*exp(((x-1).^2).*0.25)); 
plot(x,y);
xlabel('x')
ylabel('p(x|L=l)')
title('Class-Conditional PDFs')
hold on
plot(x,z);
xline(-1-sqrt(2+log(4)))
xline(sqrt(2+log(4))-1)
hold off
saveas(gcf,'CCPDF.png')
%Class Posterior Probabilities
a = y+z
b = y./a
c = z./a
plot(x,b);
xlabel('x')
ylabel('p(L=l|x)')
title('Class Posterior Probabilities')
hold on
plot(x,c);
xline(-1-sqrt(2+log(4)))
xline(sqrt(2+log(4))-1)
hold off
saveas(gcf,'CPP.png')
%Numeric Calculations
%From Area Under Class Posterior Probabilities
d = -1-sqrt(2+log(4))
e = sqrt(2+log(4))-1
f1 = normcdf(d,0,1)./(normcdf(d,0,1)+normcdf(d,1,sqrt(2)))
f2 = (normcdf(e,1,sqrt(2))-normcdf(d,1,sqrt(2)))./((normcdf(e,1,2)-normcdf(d,0,1))+(normcdf(e,1,sqrt(2))-normcdf(d,1,sqrt(2))))
f3 = (1-normcdf(e,0,1))./((1-normcdf(d,0,1))+(1-normcdf(d,1,sqrt(2))))
f4 = f1+f2+f3
f5 = f4./3

%From Area Under Class-Conditional PDFs
g1 = normcdf(d,0,1)
g2 = normcdf(e,1,sqrt(2))-normcdf(d,1,sqrt(2))
g3 = 1-normcdf(e,0,1)
g4 = g1+g2+g3
g5 = g4./2
