h = input('The initial height of the projectile above the ground in meters: ');
v = input('the magnitude of the velocity in m/s: ');
th = input('the angle in degrees with respect to the +-x-axis at which the projectile is fired: ');
ax = input('the x-component of the acceleration, considering the sign, in m/s^2: ');
ay = input('the y-component of the acceleration, considering the sign, in m/s^2: ');

if ay == 0
    error("no free fall")

else
g = 9.8;
range = (v^2 * sind(2*th))/g;
vx = v*cosd(th);
vy = v*sind(th);    
time = 0:0.1:range;
x = (vx.*time + (0.5)*ax.*time.^2);
y = (h + (vy.*time + (0.5)*(ay-g).*time.^2));
end

plot(x,y,'-.rd','linewidth',3,'markersize',2,'markeredgecolor','b')
grid on
xlabel('Time')
ylabel('Height')

