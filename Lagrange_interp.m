#Madeline Hawkins
#Octave
function [y] = Lagrange_interp(xi, yi, x)
    n = length(xi);
    y = zeros(1, length(x)); 
    for k = 1:n
        y = y + yi(k).*Char_poly(xi, k, x); 
    endfor
endfunction

#Takes xi vector and position in vector we are worrying about. 
#Returns vector of solutions to x for the characteristic poly. 
function [y] = Char_poly(xi,k, x) # k:position 
    y = []; 
    xi_len = length(xi);
    x_len = length(x); 
    for i = 1:x_len #Traversing through x
        curr = 1; #Current number we are worrying about
        for j = 1:xi_len
            if (j ~= k)
                curr = curr * (x(i) - xi(j))/(xi(k) - xi(j));
            endif
        endfor
        y = [y, curr];
    endfor 
endfunction