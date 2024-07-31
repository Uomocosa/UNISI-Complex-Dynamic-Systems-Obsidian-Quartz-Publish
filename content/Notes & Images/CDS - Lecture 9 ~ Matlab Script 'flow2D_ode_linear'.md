- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/477262/mod_resource/content/1/flow2D_ode_linear.m)

```matlab
function flow2D_ode_linear()
    
    %
    % Draw the flow of a 2D linear system
    %
    
    close all
    
    %% Matrix coefficients
    a = -2;
    b = 0;
    c = 0;
    d = -1;
    
    %% Resolution
    nPoints = 10;
    
    %% Define the x and y sets
    xmin = -1;
    xmax = +1;
    x = linspace(xmin, xmax, nPoints);
    
    ymin = -1;
    ymax = +1;
    y = linspace(ymin, ymax, nPoints);
    
    [X, Y] = meshgrid(x, y);
    
    %% Evaluate the flow for each point
    dX = a*X + b*Y;
    dY = c*X + d*Y;
    
    %% Draw the flow
    figure
    quiver(X, Y, dX, dY, 'b')
    
    %% Draw the steady states
    hold on
    plot(0, 0, 'ro')
    
    %% Draw the nullclines
    nPoints = 100; % Increase the resolution for the nullclines
    x = linspace(xmin, xmax, nPoints);
    
    if (b ~= 0)
        nullcl1 = -(a/b)*x;
        plot(x, nullcl1, 'k--');
    else % If b = 0, then the nullcline is x = 0
        plot([0 0], [ymin ymax], 'k--');
    end 

    if (d ~= 0)
        nullcl2 = -(c/d)*x;
        plot(x, nullcl2, 'k--');
    else % If d = 0, then the nullcline is x = 0
        plot([0 0], [ymin ymax], 'k--');
    end 

    %% Evaluate the solution
    x0 = 0.6; % Initial condition for x
    y0 = 0.7; % Initial condition for y
    T = 8; % Time horizon
    [t, u] = ode45(@f, [0, T], [x0, y0], [], a, b, c, d); % Solve!
    x = u(:, 1);
    y = u(:, 2);
    
    plot(x, y, 'c', 'LineWidth', 2) % Draw the solution in the phase space
    plot(x0, y0, 'go') % Draw the initial condition
    
    xlim([xmin xmax])
    ylim([ymin ymax])
    xlabel('x')
    ylabel('y')
    legend('Flow', 'Steady state', 'Nullcline 1', 'Nullcline 2', 'Trajectory', 'Initial condition');
    
    %% Draw the solution over time
    figure
    plot(t, x)
    hold on
    plot(t, y)
    xlabel('t')
    legend('x(t)', 'y(t)')
    
end

function du = f(t, u, a, b, c, d)
    x = u(1);
    y = u(2);
    
    dx = a*x + b*y;
    dy = c*x + d*y;
    
    du = [dx; dy];
end
```