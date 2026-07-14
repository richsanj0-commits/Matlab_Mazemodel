%% Robot Parameters
% Maze Solver Robot Configuration

%% Maze

maze.cell_size = 180;      % mm

%% Robot

robot.length = 92;         % mm
robot.width  = 78;         % mm
robot.mass   = 0.350;      % kg

%% Wheels

wheel.diameter = 32;       % mm
wheel.radius   = wheel.diameter/2;
wheel.base     = 77.3;     % Distance between wheels (mm)

%% Simulation

Ts = 0.01;                 % Simulation Sample Time (100 Hz)
%% ==========================
%% MOTOR PARAMETERS
%% ==========================

motor.voltage     = 12;      % V
motor.maxRPM      = 300;     % No-load speed
motor.ratedRPM    = 240;     % Rated speed
motor.gearRatio   = 100;     % Gear ratio
motor.encoderCPR  = 1200;    % Counts per wheel revolution
motor.tau         = 0.05;    % Motor time constant (s)
motor.maxPWM      = 100;     % PWM percentage
motor.maxOmega = motor.maxRPM * 2*pi/60;
motor.countsPerRad = motor.encoderCPR/(2*pi);