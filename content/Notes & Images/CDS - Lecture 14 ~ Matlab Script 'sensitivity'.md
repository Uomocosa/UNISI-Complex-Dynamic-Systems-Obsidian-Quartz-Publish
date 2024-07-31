- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/485004/mod_resource/content/1/sensitivity.m)

```matlab
function sensitivity()

    close all
    
    %% Initial conditions
    x0_1 = 10.0000;
    y0_1 = -1.0000;
    z0_1 = 100.0000;
    
    x0_2 = 10.0001;
    y0_2 = -1.0001;
    z0_2 = 100.0001;

    %% Parameters
    b = 8/3;
    sigma = 10;
    r = 24.8;

    %% Time parameters (used for solving the ODE with ode45)  
    tFinal = 44;
    deltat = 0.001;   

    %% Find a solution
    tspan = 0:deltat:tFinal;
    
    % Find a solution using the first initial condition
    [t, u_1] = ode45(@f, tspan, [x0_1; y0_1; z0_1], [], sigma, r, b);
    x_1 = u_1(:,1);
    y_1 = u_1(:,2);
    z_1 = u_1(:,3);
    
    % Find a solution using the second initial condition
    [t, u_2] = ode45(@f, tspan, [x0_2; y0_2; z0_2], [], sigma, r, b);
    x_2 = u_2(:,1);
    y_2 = u_2(:,2);
    z_2 = u_2(:,3);    
    
    %% Plot
    figure    
    axis([0 tFinal -20 20])
    title('Sensitivity to i.c.')
    xlabel('t')
    hold on
    
    step = 100;
    for i = 1:step:numel(t)-step
        

        plot(t(i:i+step), x_1(i:i+step), 'b')
        plot(t(i:i+step), x_2(i:i+step), 'r')

        pause(0.01)

        
    end
    legend('x_1', 'x_2')


    %% Plot the solution in the phase space 
    figure
    hold on
    plot3(x_1,y_1,z_1, 'b')
    plot3(x_2,y_2,z_2, 'r')
    title('Sensitivity to i.c. in the phase space')
    
    legend('Trajectory 1', 'Trajectory 2')
    xlabel('x')
    ylabel('y')
    zlabel('z')    
    % 
end

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