Yi = input('Input the initial height in meters: ');
Vi = input('Input the magnitude of velocity in m/s: ');
angle = input('Input the angle in degrees with respect to the +x-axis: ');
Ax = input ('Input the x-component of the acceleration: ');
Ay = input ('Input the y-component of the acceleration: ');

if Ay == 0
    error 'Invalid magnitude of acceleration. Input a non-zero magnitude.'
else

Viy = Vi*sind(angle);
Vf = 0;
ti = abs((Vf - Viy)/Ay);
tf = ti*2;
Vix = Vi*cosd(angle);
t = [0:tf/100:tf];
Y = Yi + Viy.*t + .5*Ay.*(t.^2);
X = Vix.*t + .5*Ax.*(t.^2);
plot(X,Y)
end
grid on
xlabel('Distance(X),m')
ylabel('Height(Y),m')
