- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/477263/mod_resource/content/1/flow2D_ode.m)

```matlab
function flow2D_ode()
    
    %
    % Draw the flow of a 2D system
    %
    
    close all
    
    %% Resolution
    nPoints = 10;
    
    %% Define the x and y sets
    xmin = -1;
    xmax = +4;
    x = linspace(xmin, xmax, nPoints);
    
    ymin = -2;
    ymax = +3;
    y = linspace(ymin, ymax, nPoints);
    
    [X, Y] = meshgrid(x, y);
    
    %% Evaluate the flow for each point
    dX = -4*X + X.^2 + 2*Y;
    dY = X - 2*Y;
    
    %% Draw the flow
    figure
    quiver(X, Y, dX, dY, 'b')
    
    %% Draw the steady states
    hold on
    plot(0, 0, 'ro')
    plot(3, 3/2, 'ro')
    
    %% Draw the nullclines
    nPoints = 100; % Increase the resolution for the nullclines
    x = linspace(xmin, xmax, nPoints);
    plot(x, 2*x-(1/2)*x.^2, 'k--')
    plot(x, (1/2)*x, 'k--')
    
    %% Evaluate the solution
    x0 = 3.5; % Initial condition for x
    y0 = -1.5; % Initial condition for y
    T = 8; % Time horizon
    [t, u] = ode45(@f, [0, T], [x0, y0]); % Solve!
    x = u(:, 1);
    y = u(:, 2);
    
    plot(x, y, 'c', 'LineWidth', 2) % Draw the solution in the phase space
    plot(x0, y0, 'go') % Draw the initial condition
    
    xlim([xmin xmax])
    ylim([ymin ymax])
    xlabel('x')
    ylabel('y')
    legend('Flow', 'Steady state 1', 'Steady state 1', 'Nullcline 1', 'Nullcline 2', 'Trajectory', 'Initial condition');
    
    %% Draw the solution over time
    figure
    plot(t, x)
    hold on
    plot(t, y)
    xlabel('t')
    legend('x(t)', 'y(t)')
    
end

function du = f(t, u)
    x = u(1);
    y = u(2);
    
    dx = -4*x + x^2 + 2*y;
    dy = x - 2*y;
    
    du = [dx; dy];
end
```