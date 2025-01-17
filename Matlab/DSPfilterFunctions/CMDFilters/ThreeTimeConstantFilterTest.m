%% CMD Filter Work
%% Calculating coefficients - Generate SOS Matrix
fc = 100e3;
fs = 2.5e6;
order = 10;

[z, p, k] = butter(order, fc/(fs/2));

[sos, g] = zp2sos(z, p, k);
sos1 = zp2sos(z, p, k);
figure(1);
freqz(sos1, 512, fs);

% B = 32; % Number of bits
% L = floor(log2((2^(B-1)-1)/max(max(sos))));  % Round towards zero to avoid overflow
% bsc = sos*2^L;
% gsc = g*2^L;
c = fir1(order, fc/(fs/2));
%freqz(c);
%% Input
Fs = 5e6;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 200;             % Length of signal
fsine = 300000;        % frequency of test sinewave
%L = round(((1/fsine)/T))*2;
t = (0:L-1)*T;        % Time vector

O = numerictype([],32,31);
j = (t>1e-5);
%j = sin(2*pi*fsine*t);

codes = fi('numerictype', O);
m = numerictype([], 65, 63);
output = fi('numerictype', m);
figure(2);
%loop that takes the input step function and outputs the hex codes that the
%AD7961 would output
for x = (1:L)
    code = fi(j(x), 'numerictype', O);
    codes = [codes; code];
    out = ButterFilter(code, sos, g);
    %out = ButterFilterTwo(code, bsc, gsc);
    %out = freqSamplingFIR(code, c);
    output = [output, out];
end

% Plotting Input and Output on same graph
%plot(t, codes*2^-15);%normalized the step function here to be able to view both filter output and step voltage
plot(t, codes);
hold on;
plot(t, output);
title('Original Signal and Step Response of IIR LP filter');
xlabel('t[s]');
ylabel('Amplitude');
%%
function y = ButterFilter(x, sos, g)
%BUTTERFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 28-Jul-2021 20:06:20

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
%     Gain       = [2.4136e-08];  % Gain coefficient vector
    Gain = g;
    
    % SOS_Matrix coefficient vector
%     SOS_Matrix = [1 2 1 1 -1.9540019616798 0.95461925138646; 1 2 1 1 ...
%         -1.98032385911893 0.980949464188966];
    SOS_Matrix = sos;
    
    Hd = dsp.BiquadFilter( ...
        'SOSMatrix', SOS_Matrix, ...
        'ScaleValues', Gain, ...
        'SectionInputDataType', 'Custom', ...
        'CustomSectionInputDataType', numerictype([],16,15), ...
        'SectionOutputDataType', 'Custom', ...
        'CustomSectionOutputDataType', numerictype([],16,14), ...
        'NumeratorCoefficientsDataType', 'Custom', ...
        'CustomNumeratorCoefficientsDataType', numerictype([],32,29), ...
        'DenominatorCoefficientsDataType', 'Custom', ...
        'CustomDenominatorCoefficientsDataType', numerictype([],32,30), ...
        'ScaleValuesDataType', 'Custom', ...
        'CustomScaleValuesDataType', numerictype([],32,31), ...
        'NumeratorProductDataType', 'Custom', ...
        'CustomNumeratorProductDataType', numerictype([],48,44), ...
        'DenominatorProductDataType', 'Custom', ...
        'CustomDenominatorProductDataType', numerictype([],48,45), ...
        'NumeratorAccumulatorDataType', 'Custom', ...
        'CustomNumeratorAccumulatorDataType', numerictype([],50,44), ...
        'DenominatorAccumulatorDataType', 'Custom', ...
        'CustomDenominatorAccumulatorDataType', numerictype([],50,45), ...
        'StateDataType', 'Custom', ...
        'CustomStateDataType', numerictype([],16,14), ...
        'OutputDataType', 'Custom', ...
        'CustomOutputDataType', numerictype([],14,8), ...
        'RoundingMethod', 'Convergent');
end

% s = fi(x,1,32,0,'RoundingMethod','Round','OverflowAction','Saturate');
% y = step(Hd,s);
y = Hd(x);

% [EOF]
end

%%
function y = ButterFilterTwo(x, sos, g)
%BUTTERFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 28-Jul-2021 20:06:20

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
%     Gain       = [2.4136e-08];  % Gain coefficient vector
    Gain = g;
    
    % SOS_Matrix coefficient vector
%     SOS_Matrix = [1 2 1 1 -1.9540019616798 0.95461925138646; 1 2 1 1 ...
%         -1.98032385911893 0.980949464188966];
    SOS_Matrix = sos;
    
    Hd = dsp.BiquadFilter( ...
        'SOSMatrix', SOS_Matrix, ...
        'ScaleValues', Gain, ...
        'SectionInputDataType', 'Custom', ...
        'CustomSectionInputDataType', numerictype([],32,0), ...
        'SectionOutputDataType', 'Custom', ...
        'CustomSectionOutputDataType', numerictype([],32,0), ...
        'NumeratorCoefficientsDataType', 'Custom', ...
        'CustomNumeratorCoefficientsDataType', numerictype([],32,0), ...
        'DenominatorCoefficientsDataType', 'Custom', ...
        'CustomDenominatorCoefficientsDataType', numerictype([],32,0), ...
        'ScaleValuesDataType', 'Custom', ...
        'CustomScaleValuesDataType', numerictype([],32,0), ...
        'NumeratorProductDataType', 'Custom', ...
        'CustomNumeratorProductDataType', numerictype([],56,0), ...
        'DenominatorProductDataType', 'Custom', ...
        'CustomDenominatorProductDataType', numerictype([],56,0), ...
        'NumeratorAccumulatorDataType', 'Custom', ...
        'CustomNumeratorAccumulatorDataType', numerictype([],58,0), ...
        'DenominatorAccumulatorDataType', 'Custom', ...
        'CustomDenominatorAccumulatorDataType', numerictype([],58,0), ...
        'StateDataType', 'Custom', ...
        'CustomStateDataType', numerictype([],24,0), ...
        'OutputDataType', 'Custom', ...
        'CustomOutputDataType', numerictype([],14,0), ...
        'RoundingMethod', 'Convergent');
end

% s = fi(x,1,32,0,'RoundingMethod','Round','OverflowAction','Saturate');
% y = step(Hd,s);
y = Hd(x);

% [EOF]
end

%%
function y = freqSamplingFIR(x, c)
%FREQSAMPLINGFIR Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 29-Jul-2021 13:19:37

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % Numerator coefficient vector
    %Numerator = [0.00070403 0.088936 0.39331 0.088936 0.00070403];
    Numerator = c;
    
    Hd = dsp.FIRFilter( ...
        'Numerator', Numerator, ...
        'CoefficientsDataType', 'Custom', ...
        'CustomCoefficientsDataType', numerictype(true,32,31));
end

% s = fi(x,1,32,31,'RoundingMethod','Round','OverflowAction','Saturate');
% y = step(Hd,s);
y = Hd(x);

% [EOF]
end
