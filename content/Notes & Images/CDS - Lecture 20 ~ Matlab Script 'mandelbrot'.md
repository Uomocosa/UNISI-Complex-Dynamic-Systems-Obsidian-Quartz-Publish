- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/490839/mod_resource/content/1/mandelbrot_1.m)

```matlab
close all

mandelbrot(800, 80)

function mandelbrot(n, niter)

x0 = -2;   x1 = 1;
y0 = -1.5; y1 = 1.5;

[x,y] = meshgrid(linspace(x0, x1, n), linspace(y0, y1, n));

c = x + 1i * y;

z = zeros(size(c));
k = zeros(size(c));

figure
hold all

for ii = 1:niter
    z = z.^2 + c;
    k(abs(z) > 2 & k == 0) = niter - ii;

imagesc(k)
colormap hot
axis square
pause(0.2)
end

end
```