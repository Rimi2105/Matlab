% projectile motion animation

t=0:0.03:10; % time vector

u = 20; %initial velocity

angle = 30; %ang

theta = deg2rad(30);%angle of projectile

g = 9.8;

ux = u*cos(theta);

uy= u*sin(theta);

x = ux*t;
y= uy*t- 0.5*g*t.^2;

for i=1:size(x,2)

if (i>1 && y(i)<=0)

break;

end

plot (x(i), y(i),"r*")

hold on;% comment if you don't want to see the whole path
pause(0.02);
end