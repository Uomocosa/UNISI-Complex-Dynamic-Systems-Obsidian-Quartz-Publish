- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/477261/mod_resource/content/1/flow1D_ode.m)

```matlab
function flow1D_ode()
    
    %
    % Draw the flow of a 1D system
    %
    
    close all
    
    %% Resolution
    nPoints = 50;
    
    %% Define the x and y sets
    xmin = -5;
    xmax = +5;
    x = linspace(xmin, xmax, nPoints);    
    
    %% Define the steady states
    x1 = -sqrt(10);
    x2 = 0;
    x3 = +sqrt(10);

    %% Evaluate the derivative
    dx = -10*x + x.^3;
    
    %% Draw f(x)
    figure
    plot(x, dx, 'k');
    
    %% Draw the flow
    hold on
    h = quiver(x, 0*x, dx, 0*dx, 'b');
    
    %% Enlarge the arrow heads
    drawnow
    V = h.Head.VertexData;
    V(2,:) = V(2,:)*max(abs(dx));
    h.Head.VertexData = V;

    %% Draw the steady states
    plot(x1, 0, 'ro')
    plot(x2, 0, 'ro')
    plot(x3, 0, 'ro')
    
    %% Additional figure commands
    xlim([xmin xmax])
    xlabel('x')
    ylabel('dx/dt')
    
    %% Evaluate the solution
    x0 = 0.1; % Initial condition
    T = 1; % Time horizon
    [t, x] = ode45(@f, [0, T], x0); % Solve!
    
    %% Draw the solution
    figure
    plot(t, x)
    xlabel('t')
    ylabel('x(t)')
end
    
function dx = f(t, x)
    dx = -10*x + x^3;
end
```