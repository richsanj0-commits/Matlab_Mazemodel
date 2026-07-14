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