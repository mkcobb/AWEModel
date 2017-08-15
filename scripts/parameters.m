%% Independent Parameters

% rHat Override
% 0: allow distance from origin to vary
% 1: hold lifting body to surface of the sphere
p.rHatOverride = 1;
p.gravityOnOff = 0;

% Simulation Time
p.T = 7;

% Lifting Body
p.mass      = 75; % Mass
p.momentArm = 1;  % Length of moment arm from for rudder

% Aerodynamic
p.refLengthWing = 1; % Chord length of airfoil
p.wingSpan = 5;
p.refLengthRudder = 0.75;
p.rudderSpan = 1;

% Environmental
p.rho       = 1.225; % density of air kg/m^3
p.viscosity = 1.4207E-5; % Kinematic viscosity of air
p.g         = 9.80665;

% Initial Conditions
p.initPositionGFS  = [100 0  (45*pi/180)   ]; % Initial position in spherical coordinates
p.initVelocity  = 10;
p.initTwist     = 0*(pi/180);
p.initOmega     = 0;


%% Dependent parameters
p.refAreaWing     = p.refLengthWing*p.wingSpan;
p.J               = (p.mass*p.wingSpan^2)/12; % Rotational inertia about body fixed z axis (approx with (ml^2)/12))
p.refAreaRudder   = p.refLengthRudder*p.rudderSpan;
% Initial velocity in GFS
p.initVelocityGFS(1) = 0 ;
p.initVelocityGFS(2) = (p.initVelocity*cos( p.initTwist))/(p.initPositionGFS(1)*sin(p.initPositionGFS(3)));
p.initVelocityGFS(3) = (p.initVelocity*sin(-p.initTwist))/(p.initPositionGFS(1));

% r       = p.initPositionGFS(1);
% theta   = p.initPositionGFS(2);
% phi     = p.initPositionGFS(3);
% 
% rdot     = p.initVelocityGFS(1);
% thetadot = p.initVelocityGFS(2);
% phidot   = p.initVelocityGFS(3);
% 
% 
% cart(1) =    cos(theta)*sin(phi)*rdot...
%           -r*sin(theta)*sin(phi)*thetadot...
%           +r*cos(theta)*cos(phi)*phidot;
% 
% cart(2) =    sin(theta)*sin(phi)*rdot...
%           +r*cos(theta)*sin(phi)*thetadot...
%           +r*sin(theta)*cos(phi)*phidot;
% 
% cart(3) = cos(phi)*rdot-r*sin(phi)*phidot;
% 
% cart
% sqrt(sum(cart.^2))

























