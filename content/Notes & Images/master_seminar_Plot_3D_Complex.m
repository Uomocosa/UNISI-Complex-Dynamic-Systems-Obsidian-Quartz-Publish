
clc
clear
close all

%% MAIN

size_ = [11,11];
P = zeros([size_,1]);
% FORM: P(x, y, k)
% (x,y) define a single piston.
% k: defines the "step"

P(1,   1  ) = 1;
P(end, 1  ) = 1;
P(1  , end) = 1;
P(end, end) = 1;
% Initial conditions:
% >> The pistons at the angles are manually activated.

n_step = 20;

half = [ceil(size(P,1)/2), ceil(size(P,2)/2)];
for k = 1:n_step
    %SYSTEM
    % P(x, y, k) ~= 0, represent the time at which 
    % the piston P{x,y} is fired.
    P(1,   1  , k+1) = 0;

    x = P(1:half(1)-1, 1, k);
    y = (x + 1).*boolean(x);
    P(2:half(1), 1, k+1) = y;

    x = P(1, 1:half(2)-1, k);
    y = (x + 1).*boolean(x);
    P(1, 2:half(2), k+1) = y;

    % ----

    P(end, 1  , k+1) = 0;

    x = P(end, 1:half(2)-1, k);
    y = (x + 1).*boolean(x);
    P(end, 2:half(2), k+1) = y;
    
    x = P(half(1)+1:end, 1, k);
    y = (x + 1).*boolean(x);
    P(half(1):end-1, 1, k+1) = y;

    % ----

    P(1  , end, k+1) = 0;

    x = P(1, half(2)+1:end, k);
    y = (x + 1).*boolean(x);
    P(1, half(2):end-1, k+1) = y;

    x = P(1:half(1)-1, end, k);
    y = (x + 1).*boolean(x);
    P(2:half(1), end, k+1) = y;

    % ----

    P(end, end, k+1) = 0;

    x = P(end, half(2)+1:end, k);
    y = (x + 1).*boolean(x);
    P(end, half(2):end-1, k+1) = y;

    x = P(half(1)+1:end, end, k);
    y = (x + 1).*boolean(x);
    P(half(1):end-1, end, k+1) = y;
    
    % ----
  
    for j = 2:size(P,2)-1
        x = P(1:half(1)-1, j, k);
        y = (x + 1).*boolean(x);
        P(2:half(1), j, k+1) = y;

        x = P(half(1)+1:end, j, k);
        y = (x + 1).*boolean(x);
        P(half(1):end-1, j, k+1) = y;
    end

end

t_max = max(max(max(P)));
P_timings = get_piston_timings(P, t_max);

global f;
f = figure;
plot_one_piston_activation(P_timings(:,:,1), f)
slider = uicontrol('Parent',f,'Style','slider', 'min',1, 'max',t_max);
slider.Value = 1; % initial value
step_value = 1/(slider.Max - slider.Min);
slider.SliderStep = [step_value, step_value];
slider.Callback = @(src, action) slider_callback(src);


global P_t
P_t = P_timings;
function slider_callback(src)
    global P_t;
    global f;
    t = int16(get(src, 'Value'));
    plot_one_piston_activation(P_t(:,:,t), f);
end



%% FUNCTIONS

function P_timings = get_piston_timings(P, t_max)
    P_timings = zeros(size(P,1),size(P,2),t_max);
    for t=1:t_max
        P_timings(:,:,t) = any(P(:,:,:) == t, 3);
    end
end



function plot_one_piston_activation(M, figure_)
    % Get the size of the matrix
    [m, n] = size(M);
    
    % Create a meshgrid for the x and y coordinates
    [x, y] = meshgrid(1:n, 1:m);
    
    % Flatten the matrices for easy indexing
    x_ = x(:);
    y_ = -y(:);
    M_ = M(:);
    
    % Find indices of 1s and 0s in the matrix
    indices1 = find(M_ == 1);
    indices0 = find(M_ == 0);
    
    % Plot points for 0 values
    % plot3(x_, y_, zeros(size(x_)), 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
    figure(figure_);
    cla(figure_)
    hold on;
    plot3(x_(indices0), y_(indices0), zeros(size(indices0)), 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
    plot3(x_(indices1), y_(indices1), ones(size(indices1)), 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
    
    % % Plot arrows for 1 values
    u = zeros(size(indices1)); % x component of the arrow
    v = zeros(size(indices1)); % y component of the arrow
    w = ones(size(indices1));  % z component of the arrow (upwards direction)
    
    quiver3(x_(indices1), y_(indices1), zeros(size(indices1)), u, v, w, 0, 'r');
    
    % Set axis labels and title
    % xlabel('X');
    % ylabel('Y');
    % zlabel('Z');
    % title('3D Plot of Matrix with Arrows for 1s and Points for 0s');
    
    % Set view
    view(3);
    grid on;
    hold off;
end

% ----

% The following is wrong but cool
% x = P(1:half(1)-1, 1:half(2)-1, k);
% y = (x + 1).*boolean(x);
% P(2:half(1), 1:half(2)-1, k+1) = y;
% P(1:half(1)-1, 2:half(2), k+1) = y;