n= 100;
conref= conj(d);
tr=rs;
conref=reshape(conref,n,[]);
tr=reshape(tr,n,[]);
o=zeros(100,500);
    
for m=1:500
     for t=1:500
        o(:,t) =(((tr(:,m)).*(conref(:,t))).^2);
     end
end

% sums=zeros(1,500);
% for m=1:500
%     sums(m)=sum(abs(fft((o(:,m)))));
% end
%surf(1:500,1:100,real(o))
% plot(1:500,sums)

% z=(o(:,1));
% plot(1:200,z);
%[val, idx] = max((o(:,1)));
%idx