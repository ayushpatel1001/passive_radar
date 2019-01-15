[afmag_lfm,delay_lfm,doppler_lfm] = ambgfun(wav,lfm.SampleRate,lfm.PRF);
surf(delay_lfm*1e6,doppler_lfm/1e3,afmag_lfm,'LineStyle','none'); 
axis tight; grid on; view([140,35]); colorbar;
xlabel('Delay \tau (us)');ylabel('Doppler f_d (kHz)');
title('LFM  Waveform Ambiguity Function');
