- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/471151/mod_resource/content/1/plotsin.m)

```matlab
clear all
x = linspace(-5, 5, 100);
f = sin(x);
plot(x, f, 'm', 'LineWidth', 3);
xaxis = zeros(1, 100);
hold on
plot(x, xaxis, 'k--');
ylim([-3 3])
xlabel('x')
ylabel('f(x)')
```