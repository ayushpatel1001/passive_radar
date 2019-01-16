function out = correlationIntegral(signal, deltaF)

nT = length(signal);

doppler = bsxfun(@times, deltaF', 1:nT);
doppler = exp(2*1i*pi*doppler/nT);
signalDoppler = bsxfun(@times, signal, doppler);
signal = signal';
signal = [signal; zeros(nT-1,1)];
signalDoppler = [zeros(size(signalDoppler, 1), nT-1), signalDoppler];
out = zeros(size(signalDoppler, 1), 2*nT-1);
for i=1:2*nT-1
    out(:,i) = signalDoppler(:, i:end)*signal(1:end-(i-1));
end


end