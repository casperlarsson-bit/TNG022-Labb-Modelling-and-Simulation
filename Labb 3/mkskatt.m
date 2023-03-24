function theta = mkskatt(y,u)

    N = size(y,1);
    Rn = [y(1:N-1)' * y(1:N-1) -y(1:N-1)' * u(1:N-1); 
        -y(1:N-1)' * u(1:N-1) u(1:N-1)' * u(1:N-1)];
    
    fn = [-y(1:N-1)' * y(2:N);
        u(1:N-1)' * y(2:N)];
    
    theta = Rn \ fn;
end