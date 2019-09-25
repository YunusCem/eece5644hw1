x = linspace(-10,10,1000);
y = log(2)-abs(x)+abs((x-1)/2);
plot(x,y);
xlabel('x')
ylabel('l(x)')
title('Log-Likelihood Function Plot')
saveas(gcf,'LogLikelihood.png')