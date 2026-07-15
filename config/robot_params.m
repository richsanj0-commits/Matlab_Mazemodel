%% ==========================================================
%% Simulation
%% ==========================================================

Ts = 0.01;                         % Simulation sample time (100 Hz)

%% ==========================================================
%% Motor Parameters
%% ==========================================================

motor.voltage     = 12;            % V
motor.maxRPM      = 300;           % RPM
motor.ratedRPM    = 240;           % RPM
motor.gearRatio   = 100;
motor.encoderCPR  = 1200;          % Verify with real hardware
motor.maxPWM      = 100;           % %

motor.tau         = 0.05;          % s

motor.maxOmega    = motor.maxRPM * 2*pi/60;
motor.countsPerRad = motor.encoderCPR/(2*pi);

%% ==========================================================
%% Robot Geometry
%% ==========================================================

robot.length = 0.102;              % m
robot.width  = 0.084;              % m

robot.wheelBase     = 0.084;       % m
robot.wheelDiameter = 0.034;       % m
robot.wheelRadius   = robot.wheelDiameter/2;

%% ==========================================================
%% Sensor Positions (Robot Local Frame)
%% ==========================================================

robot.sensor.FL.pos = [0.051  0.0385];
robot.sensor.FC.pos = [0.051  0.0000];
robot.sensor.FR.pos = [0.051 -0.0385];

robot.sensor.L.pos  = [0.000  0.03375];
robot.sensor.R.pos  = [0.000 -0.03375];

%% ==========================================================
%% Sensor Mount Angles
%% ==========================================================

robot.sensor.FL.angle = deg2rad(45);
robot.sensor.FC.angle = deg2rad(0);
robot.sensor.FR.angle = deg2rad(-45);

robot.sensor.L.angle  = deg2rad(90);
robot.sensor.R.angle  = deg2rad(-90);

%% ==========================================================
%% VL53L0X Sensor Model
%% ==========================================================

sensor.minRange = 0.03;            % m
sensor.maxRange = 2.00;            % m

%% ==========================================================
%% Maze Parameters
%% ==========================================================

maze.rows = 16;
maze.cols = 16;

maze.cellSize      = 0.180;        % m
maze.wallThickness = 0.012;        % m

maze.startCell = [1 1];
maze.goalCell  = [8 8];
SensorPose = zeros(5,3);
%% ==========================================================
%% Sensor Pose Matrix (Robot Local Frame)
%% ==========================================================

robot.sensorPoseLocal = [
    robot.sensor.FL.pos  robot.sensor.FL.angle;
    robot.sensor.FC.pos  robot.sensor.FC.angle;
    robot.sensor.FR.pos  robot.sensor.FR.angle;
    robot.sensor.L.pos   robot.sensor.L.angle;
    robot.sensor.R.pos   robot.sensor.R.angle
    ];