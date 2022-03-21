load sat.txt;

x = sat(:,1);
y = sat(:,2);
m = size(y);

xs = (x-mean(x))/std(x);
ys = y/1000;

plot(x,y,'x');
xlabel('SAT score');
ylabel('Family Income');
title('Predicted Family Income based on SAT score');
hold on;

xs = [ones(m,1) x];
theta = zeros(1,1);
iterations = 3000;
alpha = 0.03;

for i = i:iterations
theta = theta - (alpha/m) * (((x*theta)-y)'*x)';
end
theta