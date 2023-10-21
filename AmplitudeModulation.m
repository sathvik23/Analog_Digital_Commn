clc;
close all;
clear all;

t = 0:0.001:1;
fm = 10;
fc = 100;
m = 1;
A = 2;


%Plot Message Signal
msg = A*sin(2*pi*fm*t);
subplot(5,1,1);plot(t, msg); title("Message Signal"); xlabel("Time"); ylabel("Amplitude");

%Plot Carrier Signal
carrier = A*sin(2*pi*fc*t);
subplot(5,1,2);plot(t,carrier);title("Carrier Signal"); xlabel("Time"); ylabel("Amplitude");

%Plot AM Signal
am = (A+msg).*cos(2*pi*fc*t);
subplot(5,1,3);plot(t,am);title("AM Signal"); xlabel("Time"); ylabel("Amplitude");

%Plot Power Spectrum
subplot(5,1,4);pspectrum(msg);title("Frequency Domain"); xlabel("Time"); ylabel("Amplitude");


