load phones.txt;

x = phones(:,1:5);
y = phones(:,6);
m = size(y)(1,1);

xs = (x.-mean(x))./std(x);

ys = y/100;

xs = [ones(m,1) xs];
theta = zeros(6,1);
iterations = 3000;
alpha = 0.3;

J_history = zeros(iterations,1);
for i = 1:iterations
theta = theta - (alpha/m) * (((xs*theta)-ys)'*xs)';
J_history(i) = 1/(2*m) * sum((xs*theta - ys).^2);
end;

plot(J_history)
theta = theta * 100
%Need to plot cost function