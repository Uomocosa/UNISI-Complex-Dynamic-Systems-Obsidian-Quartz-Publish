- ***Source***: [moodle](https://elearning.unisi.it/pluginfile.php/485000/mod_resource/content/1/stability_3D.m)

```matlab
function stability_3D()

    close all

    %% Define the value of fixed parameters
    b = 8/3;
    sigma = 10;
    
    %% Define the range of the varying parameter
    nPoints = 100; % Resolution
    r = linspace(0, 30, nPoints); 
    
    %% "eigenvalues" will contain the eigenvalues of J for all value of the varying parameter.
    eigenvalues = zeros(3, nPoints);
    
    %% For each value of the varying parameter, study the stability of a steady state
    for i=1:nPoints
        
        %% Steady state (uncomment the steady state you want to analyze)
        E = [0, 0, 0];
%         E = [sqrt(b*(r(i)-1)), sqrt(b*(r(i)-1)), r(i)-1];
%         E = [-sqrt(b*(r(i)-1)), -sqrt(b*(r(i)-1)), r(i)-1];

        %% Extract the coordinates of the selected steady state
        x = E(1);
        y = E(2);
        z = E(3);
        
        %% Evaluate the Jacobian as a function of the steady state and of the parameters
        J = [-sigma, sigma, 0;
             r(i)-z,    -1, -x; 
             y,          x, -b]; 
         
        %% Find the eigenvalues of J
        eigenvalues(:,i) = eig(J);

    end
    
    %% Plot
    figure
    
    subplot(1,2,1)
    for i=1:3
        plot(r, real(eigenvalues(i,:)), 'LineWidth', 2);
        hold on
    end
    title('Real part of eigenvalues');
    xlabel('r')
    legend('\lambda_1', '\lambda_2', '\lambda_3')
    grid on
    
    subplot(1,2,2)
    for i=1:3
        plot(r, imag(eigenvalues(i,:)), 'LineWidth', 2);
        hold on
    end
    title('Imaginary part of eigenvalues');
    xlabel('r')    
    legend('\lambda_1', '\lambda_2', '\lambda_3')
    grid on
end
```
