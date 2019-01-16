% Setting up parameters of pulse packet
N = 1; % Number of impulses in a packet
porosity = 0.4;
time = 1:12000; % time samples in a packet

deltaF = -15:0.1:15; % frequency deviation

% period = max(time)/N;
% impulseTime = period*porosity;
% impulse = [ones(ceil(impulseTime), 1); zeros(ceil(period-impulseTime), 1)];
% signal = repmat(impulse, [1, N]);
% signal = reshape(signal, 1, []);
signal=(k(1:12000))';
% correlation integral evaluation
out = correlationIntegral(signal, deltaF);
figure

tau = -length(signal)+1:length(signal)-1;
[x, y] = meshgrid(tau, deltaF);
surf(x, y, abs(out));
shading flat;
title(sprintf('Ambiguity function for pulse packet, N=%d, porosity - %1.3f', int32(N), porosity) );
xlabel('Time shift');
ylabel('Frequency deviation');
zlabel('Magnitude')