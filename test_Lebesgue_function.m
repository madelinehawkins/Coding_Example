#Madeline Hawkins
#Octave
function [L1, L2, L3, L4] = test_Lebesgue_function()
    #Grabbing xi values
    xi_even_8 = evenly_space(8); 
    xi_even_20 = evenly_space(20); 
    xi_uneven_8 = unevenly_space(8);
    xi_uneven_20 = unevenly_space(20); 
    
    #Figuring out Lebesgue Constants
    L1 = plot_Lebesgue_function(xi_even_8);
    L2 = plot_Lebesgue_function(xi_even_20); 
    L3 = plot_Lebesgue_function(xi_uneven_8);
    L4 = plot_Lebesgue_function(xi_uneven_20);  
endfunction

#Evenly Spaced
#Input: size of N and what figure to print out on
function [xi] = evenly_space(N)  
    xi = [];
    #Creates Vector
    for i = 1:(N + 1)
        actual_i = i - 1; 
        curr = -1 + 2*(actual_i/N); 
        xi = [xi, curr];
    endfor
endfunction

function [xi] = unevenly_space(N)
    xi = []; 
    #Creates Vector
    for i = 1:(N+1)
        actual_i = i - 1; 
        curr = cos((pi/N)*actual_i); 
        xi = [xi, curr]; 
    endfor
endfunction
    