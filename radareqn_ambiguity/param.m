
c = 3e8;
prf =3e4;
Rmax = c/2*prf;%prf = c/(2*Rmax);
bw=8e6;%bw = c/(2*Rres);
Rres = c/(2*bw);
fs = 12e6;
targetpos=[[0 1000 70];[0 15000 70];[0 40000 70]];
targetvel=[[0 300 0];[0 400 0];[0 500 0];[0 600 0]];
rcs=[2.5,5,10,15];
fc=450e6;
