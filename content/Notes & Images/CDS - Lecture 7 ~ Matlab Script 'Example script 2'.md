- ***Source***: [moodle](https://elearning.unisi.it/mod/resource/view.php?id=179035)

```matlab
clear all

syms x 

f = x*(1-x);

solution = solve(f==0, x)


x = linspace(-1, 2, 100);
f = x.*(1-x);
plot(x, f)
hold on
xaxis = zeros(1, 100);
plot(x, xaxis, 'k--')

x = linspace(-1, 2, 20);
f = x.*(1-x);
quiver(x, 0*x, f, 0*f, 'r')
```