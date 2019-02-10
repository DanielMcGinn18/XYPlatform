% Sample MathScript to generate a circle approximation
r=3; % radius
C=[1 0]; % transpose
points=360;% number of points used to approximate the circle
Xpos = 10; Ypos = 5; % starting positions
theta=0:2*pi/points:2*pi; % the angle
m=r*[cos(theta')+C(1) sin(theta')+C(2)]; % calculate Cartesian coordinates
% transpose the circle so the left side is at the origin
xpos=m((points/2)+1:end,1); xpos((points/2)+1:points+1)=m(1:(points/2)+1,1); 
% create a matrix to store the X positions in the proper order
ypos=m(:,2); % create a matrix to store the Y positions
xpos=xpos+Xpos; % add the initial position to the X positions
ypos=ypos+Ypos; % add the initial position to the Y positions
plot(Xpos,Ypos,'c*',xpos,ypos); % Plot the initial position and the circle
