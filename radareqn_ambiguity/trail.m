[acor,lag] = xcorr(reflectedrec,directrec);
[~,I] = max(abs(acor));
lagDiff = lag(I)
reflc=conj(reflectedrec);
tsc = reflc(lagDiff:length(reflc));
tsc= [tsc' zeros(1,lagDiff-1)]'




k=(directrec).*tsc

