t = 0:2*pi/16:2*pi;
x = 0:0.1:4*pi;

for I=1:16
  phi = cos(t(I) - x);
  plot(x, phi)
  F(I) = getframe;
end

movie(F,4);

