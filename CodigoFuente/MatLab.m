t=0:.000001:.01;
Am1=10;
fm1=250;
Ac=10;
fc=2500;

mt=Am1*sin(2*pi*fm1.*t);
ct=Ac*sin(2*pi*fc.*t);

st=(Ac+mt).*sin(2*pi*fc.*t);

figure('Name','modulacion con coeficiente m =1'); 
title('modulacion AM');

subplot(3,1,1)
plot(t,mt)
xlabel('Tiempo'); ylabel('mensaje');

subplot(3,1,2)
plot(t,ct)
xlabel('Tiempo'); ylabel('portadora');

subplot(3,1,3)
plot(t,st)
xlabel('Tiempo'); ylabel('Modulacion');

sprintf('frecuencia de portadora: %d Hz',fc)
sprintf('frecuencias: %d Hz and %d Hz',fm1,fc)
sprintf('espectro at: %d Hz and %d Hz',fc-fm1,fc+fm1)
%sprintf('LSB spectra at: %d Hz and %d Hz',fc-fm1,fc-fm2)