[acor,lag] = xcorr(directrec,conj(reflectedrec));
[~,I] = max(abs(acor));
lagDiff = lag(I)
k=fft(directrec)*fft(conj(reflectedrec))'
