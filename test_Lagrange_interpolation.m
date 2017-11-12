#Madeline Hawkins
#Octave
function test_Lagrange_interpolation()
    #Evenly Space for N = 8
    evenly_space(8,1); 
    #Evenly Space for N = 20
    evenly_space(20, 2); 
    #Unevenly Spaced for N = 8
    unevenly_space(8, 3); 
    #Unevenly Spaced for N = 20
    unevenly_space(20, 4); 
     
endfunction

#Evenly Spaced
#Input: size of N and what figure to print out on
function evenly_space(N, fig_num)  
    xi = [];
    #Creates Vector
    for i = 1:(N + 1)
        actual_i = i - 1; 
        curr = -1 + 2*(actual_i/N); 
        xi = [xi, curr];
    endfor
    yi = [];
    #Makes the yi values
    for j = 1:length(xi)
        curr = 1/(1+20*xi(j).^2); 
        yi = [yi, curr]; 
    endfor
    x = linspace(-1, 1, 1000); 
    [z] = Lagrange_interp(xi, yi, x); 
    #Plots Lagrange Interp against original function
    fx = @(m) 1./(1 + 20.*m.^2); 
    figure(fig_num); 
    clf; 
    hold on; 
    plot(x,z, 'r'); 
    plot(x,fx(x), 'b'); 
    plot(xi, yi, 'ro');
    hold off; 

endfunction

#Unevenly Spaced
#Input: size of N and what figure to print out on
function unevenly_space(N, fig_num)
    xi = []; 
    #Creates Vector
    for i = 1:(N+1)
        actual_i = i - 1; 
        curr = cos((pi/N)*actual_i); 
        xi = [xi, curr]; 
    endfor
    yi = [];
    #Makes the yi values
    for j = 1:length(xi)
        curr = 1/(1+20*xi(j).^2); 
        yi = [yi, curr]; 
    endfor
    x = linspace(-1, 1, 1000); 
    [z] = Lagrange_interp(xi, yi, x); 
    #Plots Lagrange Interp against original function
    fx = @(m) 1./(1 + 20.*m.^2); 
    figure(fig_num); 
    clf; 
    hold on;
    plot(x,z, 'r'); 
    plot(x,fx(x), 'b');
    plot(xi, yi, 'ro'); 
    hold off; 
endfunction

















