function y2 = New_record(N,T,I,t,recObj,i)
global N T I t recObj i y2 
    recordblocking(recObj, T+0.5); % генерируем массив
    y1=getaudiodata(recObj);
    y2(N:N*I-1)=y2(1:N*(I-1));
    y2(1:N)=y1(N/2:1.5*N-1);
end