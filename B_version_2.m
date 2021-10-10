global Fs N T I t recObj i y2 s2
Fs=2000;
T=1;
N=Fs*T;
I=20;
recObj = audiorecorder(Fs,16,1,1);
t=0:1/Fs:N*I/Fs-1/Fs;
y2 = zeros(1,I*N); % временный массив
s2 = zeros(1,I*N);
for i = 1:I % глобальный цикл
    y2 = New_record(N,T,I,t,recObj,i);
    subplot(2,1,1)
    plot(t,y2)
    title('audiosignal')
    subplot(2,1,2)
    Ny2=length(y2(1:N));
    ncs=floor(Ny2/24);
    nov=floor(ncs/2);
    nfft = 2^nextpow2(ncs);
    spectrogram(y2(:),hamming(ncs),nov,nfft,Fs,'yaxis');
    title('spectrogram')
end