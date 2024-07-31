- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/485002/mod_resource/content/1/sol_3D.m)

```matlab
function sol_3D()
    
    %
    % Draw the solution of a 3D system
    %
    
    close all
    
    %% Initial conditions (for the solution)
    x0 = 0.3;
    y0 = 0.2; 
    z0 = 0.1;
    
    %% Parameters
    b = 8/3;
    sigma = 10;
    r = 0.5;
    
    %% Time parameters (used for solving the ODE with ode45)  
    tFinal = 100;
    deltat = 0.001;        
    
    
    %% Draw the steady states
    figure
    hold on
    plot3(0, 0, 0, 'ro')
    plot3(sqrt(b*(r-1)), sqrt(b*(r-1)), r-1, 'ro')
    plot3(-sqrt(b*(r-1)), -sqrt(b*(r-1)), r-1, 'ro')
    
    %% Find a solution
    tspan = 0:deltat:tFinal;
    [t, u] = ode45(@f, tspan, [x0; y0; z0], [], sigma, r, b);
    x = u(:,1);
    y = u(:,2);
    z = u(:,3);
    
    %% Plot the solution in the phase space    
    plot3(x, y, z, 'g', 'LineWidth', 2) 
    hold on
    plot3(x0, y0, z0, 'g*') % Initial condition
    
    xlabel('x')
    ylabel('y')
    zlabel('z')
    grid on
    
    %% Plot the solution over time
    figure
    plot(t, x, 'r')
    hold on
    plot(t, y, 'b')  
    plot(t, z, 'k') 
    
    legend('x(t)', 'y(t)', 'z(t)')
    xlabel('t')
    
end

% This function corresponds to the right hand side of the ODE
function du = f(t, u, sigma, r, b)
    x = u(1);
    y = u(2);
    z = u(3);
    
    dx = sigma*(y-x);
    dy = -x*z+r*x-y;
    dz = x*y-b*z;    
    
    du = [dx; dy; dz];
end
```