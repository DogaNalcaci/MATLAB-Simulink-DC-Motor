%% Kök - Yer Eğrisi

% Kök - Yer Eğrisi P kontrolör

load("data.mat")

modelTf = tf(Plant);

Pcontroller = tf(Pcontrol);

lastTfforP = modelTf * Pcontroller

grid on;

figure;

rlocus(lastTfforP)
% Kök - Yer Eğrisi PI kontrolör

PIcontroller = tf(PIcontrol);

lastTfforPI = modelTf * PIcontroller

grid on;

figure;

rlocus(lastTfforPI)

% Kök - Yer Eğrisi PD kontrolör


PDcontroller = tf(PDcontrol);

lastTfforPD = PDcontroller * modelTf

grid on;

figure;

rlocus(lastTfforPD)

% Kök - Yer Eğrisi PID kontrolör

PIDcontroller = tf(PIDcontrol);

lastTfforPID = modelTf * PIDcontroller

grid on;

figure;

rlocus(lastTfforPID)

%% Bode plot

figure; 
bode(lastTfforPID)
hold on;
bode(lastTfforPI)
hold on;
bode(lastTfforPD)
hold on ;
bode(lastTfforP)

legend;


