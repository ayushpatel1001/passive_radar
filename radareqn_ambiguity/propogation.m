t = (0:length(wav)-1)/fs;
tx = phased.Transmitter('PeakPower',200000,'Gain',1);%'SampleRate',fs*2
rx =  phased.ReceiverPreamp('SampleRate',fs*2,'Gain',10);
channel = phased.FreeSpace('SampleRate',fs,...
    'TwoWayPropagation',false,'OperatingFrequency',fc);
channelT = phased.FreeSpace('SampleRate',fs,...
    'TwoWayPropagation',true,'OperatingFrequency',fc);
%wav=waveStruct.waveform();
ts=step(tx,wav);

x=1;
v=1;
rcs=10;
directsignal=channel(ts,[11000; 0; 70],[0,0,70]',[0;0;0],[0;0;0]);
totarget = channel(ts,[11000; 0; 70],targetpos(x,:)',[0;0;0],targetvel(v,:)');
fromtarget= totarget*rcs;
reflected = channel(fromtarget,targetpos(x,:)',[0 0 70]',targetvel(v,:)',[0;0;0]);
reflectedrec=step(rx,reflected);
directrec=step(rx,directsignal);
%ambgfun(d,reflected,lfm.SampleRate,[lfm.PRF,lfm.PRF],'Cut','Doppler')
%ambgfun(wav,lfm.SampleRate,lfm.PRF,'Cut','Delay');
%xlim([-100e-3,100e-3]);
% [afmag_lfm,delay_lfm,doppler_lfm] = ambgfun(d,reflected,fs,[lfm.PRF,lfm.PRF]);
% surf(delay_lfm*1e6,doppler_lfm/1e3,afmag_lfm,'LineStyle','none'); 
% % axis tight; grid on; view([140,35]); colorbar;
% xlabel('meters (m)');ylabel('Doppler f_d (kHz)');
% title('LFM  Waveform Ambiguity Function');
targv=targetvel(v,:)
targp=targetpos(x,:)
rcs
% rangedoppler = phased.RangeDopplerResponse(...
%     'RangeMethod','Matched Filter',...
%     'DopplerOutput','Speed','OperatingFrequency',fc);
% plotResponse(rangedoppler,reflected,getMatchedFilter(lfm))