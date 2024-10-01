
clc
clear
close all

%% MAIN

x0 = 1;
y0 = 0;
z0 = 0;
n_steps = 20;



t = 0;
x = x0;
y = y0;
z = z0;
t = t+1; % MATLAB sucks: array starts at 1


for i=1:n_steps
    %SYSTEM
    % x(t) and y(t) represent the time at which a piston is fired.
    x(t+1) = (z(t)+10)*boolean(z(t));
    y(t+1) = (x(t)+1)*boolean(x(t));
    z(t+1) = (y(t)+1)*boolean(y(t));
    t = t+1;
end




%% PLOT
figure
hold on
t_ = 0:(length(x)-1);
plot(t_, x)
plot(t_, y)
xlabel('t')
ylabel('x_t, y_t')
legend('x_t', 'y_t')

%% PLOT 2
figure
hold on
t_ = 0:max([max(x), max(y), max(z)]);
x_ = piston_timings(x, t_);
y_ = piston_timings(y, t_);
z_ = piston_timings(z, t_);
plot(t_, x_)
plot(t_, y_)
plot(t_, z_)
xlabel('t')
ylabel('pistons firing')
ylim([-3, 3])
legend('Piston (1)', 'Piston (2)', 'Piston (3)')


%% FUNCTIONS

function x_ = piston_timings(x, t_)
    x_ = zeros(size(t_));
    for i=1:length(x)
        if x(i) == 0; continue; end
        x_(x(i)) = 1;
    end
end

%% TESTED SYSTEMS

% WORKS! 
x(t+1) = y(t)+4;
y(t+1) = x(t)+1;
% z(t+1) = y(t);
