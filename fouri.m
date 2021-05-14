function fouri(f)


% Define domain
dx = 0.001;
L = 3*pi;
x = (-1+dx:dx:1)*L;
data=f(x);
plot(x,data,'-k','LineWidth',1.5), hold on


% Compute Fourier series
CC = jet(20);
A0 = sum(data.*ones(size(x)))*dx;
fFS = A0/2;
for k=1:20
    A(k) = sum(data.*cos(pi*k*x/L))*dx; % Inner product
    B(k) = sum(data.*sin(pi*k*x/L))*dx;
    fFS = fFS + A(k)*cos(k*pi*x/L) + B(k)*sin(k*pi*x/L);    
    plot(x,fFS,'-','Color',CC(k,:),'LineWidth',1.2)
    pause(.1)    
end

end