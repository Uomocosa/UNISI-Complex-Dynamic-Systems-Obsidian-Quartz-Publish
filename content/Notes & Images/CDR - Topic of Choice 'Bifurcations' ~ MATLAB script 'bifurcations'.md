***File***: ![[bifurcations.m]]

----
***Instructions***:
1. Copy the script.
2. Paste it into MATLAB
3. Run it and see what it does.

Change the `my_system` function and insert the sytem you need:
- The `vars` array contains the *variables* of the system.
- The `subs_` matrix contains the *fix parameters* of the system.
- The `param` is the parameter of the system.
- The `tspan` time frame used for the simulation.
- The `initial_conditions` are the initial_conditions.
- The `param_value` is the value of the parameter used for the simulation.

Also I have defined many systems to help you understand how do properly define a new one, so that the program can succefully run, ==you can find them in the `SYSTEMS` section==.

----

***Script***:
```matlab
% MATLAB sucks: TOO many warnings
% MATLAB mixed feelings: however the way to suppress them is explicit
%#ok<*DEFNU>
%#ok<*NOPTS>
%#ok<*NOPRT>
%#ok<*ISCL>

close all
clear
clc

%% INPUTs -----------------------------------------------------------------

function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = my_system() 
    % syms t x(t) y(t) z(t) sigma b r; 
    % MATLAB sucks: this gives an error later
    syms t x y z h sigma_ b r;

    system = [
        diff(x,t) == sigma_*(y-x);
        diff(y,t) == -x*z + r*x-y;
        diff(z,t) == x*y-b*z;
        diff(h,t) == -b*h + z
    ];

    vars = [x;  y;  z; h];
    
    subs_ = [
        sigma_, 10;
        b, 8/3;
    ];

    param = r;
    param_range = [0, 30];
    tspan = [0 50];
    initial_conditions = [1;1;1;1];
    param_value = 30;
end

% Do not change this
data = @() my_system;

% TESTs:
% data = @() lorenz_system; % WORKS!
% data = @() rossler_system; % WORKS!
% data = @() supercritcal_hopf; % WORKS!
% data = @() subcritcal_hopf; % WORKS!
% data = @() supercritical_pitchfork; % WORKS!
% data = @() subcritical_pitchfork; % WORKS!
% data = @() transcritical; % WORKS!

% Options for better/faster convergenece/divergence
ode_options = odeset('RelTol',1e-6,'AbsTol',1e-9);

% CHOOSE WHICH FUNCTION (for simulation)
% ode_func = @(func, t, x0, opt) ode45(func, t, x0, opt);
% ode_func = @(func, t, x0, opt) ode23s(func, t, x0, opt);
ode_func = @(func, t, x0, opt) ode15s(func, t, x0, opt);


%% MAIN -------------------------------------------------------------------

[system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = data(); 

system 

steady_states = solve(rhs(system) == 0, vars);
steady_states = reshape_solutions(steady_states);
fprintf('num_of_steady_states: %i\n\n', length(steady_states))
for i=1:length(steady_states)
    fprintf('steady_state{%i}:\n', i);
    disp(steady_states{i})
end

J = jacobian(rhs(system), vars) 

if ~isempty(subs_)
    sys = subs(rhs(system), subs_(:,1), subs_(:,2));
    J = subs(J, subs_(:,1), subs_(:,2)) 
else
    sys = rhs(system) 
end

analyze_each_steady_state(J, steady_states, vars, subs_, param, param_range)

function analyze_each_steady_state(J, steady_states, vars, subs_, param, param_range)
    disp('--- FUNCTION: analyze_each_steady_state ---')    
    for i=1:length(steady_states)
        if ~isempty(subs_)
            ss = subs(steady_states{i}, subs_(:,1), subs_(:,2)) 
        else
            ss = steady_states{i} 
        end
        J_lin = subs(J, vars, ss) 
        bifurcation_values = find_bifurcations_values(J_lin, param, param_range)
        
        check_stability(J_lin, ss, bifurcation_values, param)

        disp('-----------------------------------------')
    end
end


tspan 
initial_conditions 
param_value 
 
% syms t
sys_ = subs(sys, param, param_value) 
ht = @(t, xyz) double(subs(sys_, vars, xyz));
[t, xyz] = ode_func(ht, tspan, initial_conditions, ode_options);

figure
hold on
if length(vars) == 1
    x = xyz(:,1);
    plot(t, x)
    plot(t(1), x(1), 'go','MarkerFaceColor','g')
    plot(t(end), x(end), 'bo','MarkerFaceColor','b')
    xlabel('t')
    ylabel('x(t)')
    legend('x(t)', 'START', 'END')
    % disp("TODO")
elseif length(vars) == 2
    x = xyz(:,1);
    y = xyz(:,2);
    plot(x, y)
    plot(x(1), y(1), 'go','MarkerFaceColor','g')
    plot(x(end), y(end), 'bo','MarkerFaceColor','b')
    dx = diff(x)
    dy = diff(y)
    quiver(x(1:end-1), y(1:end-1), dx, dy, 0)
    xlabel('x(t)')
    ylabel('y(t)')
    legend('', 'START', 'END', '(x, y)')
elseif length(vars) == 3      
    x = xyz(:,1);
    y = xyz(:,2);
    z = xyz(:,3);
    plot3(x, y, z)
    plot3(x(1), y(1), z(1), 'go','MarkerFaceColor','g')
    plot3(x(end), y(end), z(end), 'bo','MarkerFaceColor','b')
    xlabel('x(t)')
    ylabel('y(t)')
    legend('(x, y, z)', 'START', 'END')
elseif length(vars) >= 4
    disp("TODO")
    % to try
    legend_array = string(zeros(length(vars),1));
    for i=1:length(vars)
        x_i = xyz(:,i);
        plot(t, x_i);
        legend_array(i) = strcat('x', string(i));
    end
    xlabel('t')
    ylabel('x_i(t)')
    legend(legend_array)
end
hold off


%% SYSTEMS ----------------------------------------------------------------

function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = lorenz_system() 
    % syms t x(t) y(t) z(t) sigma b r; 
    % MATLAB sucks: this gives an error later
    syms t x y z sigma_ b r;

    system = [
        diff(x,t) == sigma_*(y-x);
        diff(y,t) == -x*z + r*x-y;
        diff(z,t) == x*y-b*z;
    ];

    vars = [x;  y;  z];
    
    subs_ = [
        sigma_, 10;
        b, 8/3;
    ];

    param = r;
    param_range = [0, 30];
    tspan = [0 100];
    initial_conditions = [1;1;1];
    param_value = 30;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = rossler_system()
    syms t x y z a b c;
    
    system = [
        diff(x,t) == -y - z;
        % MATLAB sucks: '-y -z' given a error
        % the space is necessary, WHY???
        diff(y,t) == x + a*y;
        diff(z,t) == b + z*(x-c);
    ];

    vars = [x;  y;  z];
    
    subs_ = [
        b, 2;
        c, 4;
    ];

    param = a;
    param_range = [0.0001, 1.9999];
    tspan = [0 100];
    initial_conditions = [1;1;1];
    param_value = 0.4;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = supercritcal_hopf()
    syms t x y z beta_ sigma_;
    
    system = [
        diff(x,t) == beta_*x - y + sigma_*x*(x^2 + y^2);
        diff(y,t) == x + beta_*y + sigma_*y*(x^2 + y^2);
    ];

    vars = [x;  y];
    
    subs_ = [
        sigma_, -1;
    ];

    param = beta_;
    param_range = [-100, +100];
    tspan = [0 30];
    initial_conditions = [2;-0.1];
    param_value = -0.2;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = subcritcal_hopf()
    syms t x y z beta_ sigma_;
    
    system = [
        diff(x,t) == beta_*x - y + sigma_*x*(x^2 + y^2);
        diff(y,t) == x + beta_*y + sigma_*y*(x^2 + y^2);
    ];

    vars = [x;  y];
    
    subs_ = [
        sigma_, +1;
    ];

    param = beta_;
    param_range = [-100, +100];
    tspan = [0 30];
    initial_conditions = [0.1, 0.1];
    param_value = -0.5;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = supercritical_pitchfork()
    syms t x r;
    
    system = [
        diff(x,t) == r*x - x^3;
    ];

    vars = [x];
    
    subs_ = [];

    param = r;
    param_range = [-100, +100];
    tspan = [0 50];
    initial_conditions = [1];
    param_value = 0.3;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = subcritical_pitchfork()
    syms t x r;
    
    system = [
        diff(x,t) == r*x + x^3;
    ];

    vars = [x];
    
    subs_ = [];

    param = r;
    param_range = [-100, +100];
    tspan = [0 50];
    initial_conditions = [0.1];
    param_value = -0.2;
end



function [system, vars, subs_, param, param_range, ...
tspan, initial_conditions, param_value] = transcritical()
    syms t x r;
    
    system = [
        diff(x,t) == r*x - x^2;
    ];

    vars = [x];
    
    subs_ = [];

    param = r;
    param_range = [-100, +100];
    tspan = [0 50];
    initial_conditions = [0.1];
    param_value = 1;
end




%% FUNCTIONS --------------------------------------------------------------

function [out] = reshape_solutions(steady_states)
    parameters = fieldnames(steady_states);
    if isempty(parameters)
        out = num2cell(steady_states);
        return
    end

    first_param_size = size(steady_states.(parameters{1}));
    assert(first_param_size(2) == 1)
    for i = 1:length(parameters)
        assert(all(size(steady_states.(parameters{i}))==first_param_size))
    end
    num_of_sol = size(steady_states.x, 1);
    out = cell(num_of_sol,1);
    for i=1:num_of_sol
        temp = [];
        for j=1:length(parameters)
            temp = [temp; steady_states.(parameters{j})(i)];
        end
        out{i} = temp;
    end
end



function [bifurcation_values] = find_bifurcations_values(J_lin, param, param_range)
    eigenvalues = eig(J_lin);
    bifurcation_values = double([]);
    for i=1:length(eigenvalues)
        sym_vars = symvar(real(eigenvalues(i)));
        num_sym_vars = length(sym_vars);
        if num_sym_vars ~= 1
            continue
        end
        solutions = vpasolve(real(eigenvalues(i))==0, param, param_range);
        for j=1:length(solutions)
            new_value = double(solutions(j));
            if ismember(new_value, bifurcation_values)
                continue
            end
            bifurcation_values(end+1) = new_value;
        end
    end
end



function check_stability(J_lin, ss, bifurcation_values, param)
    param_name = string(symvar(param));
    for i=1:length(bifurcation_values)
        if bifurcation_values(i) == 0
            k_plus = 0.0001;
            k_minus = -0.0001;
        else
            k_plus = bifurcation_values(i)*1.0001;
            k_minus = bifurcation_values(i)*0.9999;
        end
        J_rp = subs(J_lin, param, k_plus);
        J_rm = subs(J_lin, param, k_minus);
        eigs_kp = double(eig(J_rp));
        eigs_km = double(eig(J_rm));
        
        num_of_negative_eigs = sum(real(eigs_km) < 0);
        num_of_positive_eigs = sum(real(eigs_km) > 0);
        num_of_null_eigs = sum(real(eigs_km) == 0);
        assert(num_of_null_eigs == 0)
        is_imaginary = any(imag(subs(ss, param, k_minus)) ~= 0);
        str_msg = "";
        if is_imaginary
            str_msg = "(IMAGINARY steady state)";
        end
        assert(num_of_null_eigs == 0)
        fprintf('For %s < %.3f : %s \n\t%i negative eigenvalues, %i positive eigenvalues\n', ...
            param_name, ...
            bifurcation_values(i), ...
            str_msg, ...
            num_of_negative_eigs, ...
            num_of_positive_eigs ...
        );

        num_of_negative_eigs = sum(real(eigs_kp) < 0);
        num_of_positive_eigs = sum(real(eigs_kp) > 0);
        num_of_null_eigs = sum(real(eigs_kp) == 0);
        assert(num_of_null_eigs == 0)
        is_imaginary = any(imag(subs(ss, param, k_plus)) ~= 0);
        str_msg = "";
        if is_imaginary
            str_msg = "(IMAGINARY steady state)";
        end
        assert(num_of_null_eigs == 0)
        fprintf('For %s > %.3f : %s \n\t%i negative eigenvalues, %i positive eigenvalues\n', ...
            param_name, ...
            bifurcation_values(i), ...
            str_msg, ...
            num_of_negative_eigs, ...
            num_of_positive_eigs ...
        );
    end
end

```