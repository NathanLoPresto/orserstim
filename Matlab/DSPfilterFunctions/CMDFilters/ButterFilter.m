function y = ButterFilter(x)
%BUTTERFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 28-Jul-2021 20:06:20

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    Gain       = [2.4136e-08];  % Gain coefficient vector
    
    % SOS_Matrix coefficient vector
    SOS_Matrix = [1 2 1 1 -1.9540019616798 0.95461925138646; 1 2 1 1 ...
        -1.98032385911893 0.980949464188966];
    
    Hd = dsp.BiquadFilter( ...
        'SOSMatrix', SOS_Matrix, ...
        'ScaleValues', Gain, ...
        'SectionInputDataType', 'Custom', ...
        'CustomSectionInputDataType', numerictype([],16,15), ...
        'SectionOutputDataType', 'Custom', ...
        'CustomSectionOutputDataType', numerictype([],16,15), ...
        'NumeratorCoefficientsDataType', 'Custom', ...
        'CustomNumeratorCoefficientsDataType', numerictype([],32,29), ...
        'DenominatorCoefficientsDataType', 'Custom', ...
        'CustomDenominatorCoefficientsDataType', numerictype([],32,30), ...
        'ScaleValuesDataType', 'Custom', ...
        'CustomScaleValuesDataType', numerictype([],32,56), ...
        'NumeratorProductDataType', 'Custom', ...
        'CustomNumeratorProductDataType', numerictype([],48,44), ...
        'DenominatorProductDataType', 'Custom', ...
        'CustomDenominatorProductDataType', numerictype([],48,45), ...
        'NumeratorAccumulatorDataType', 'Custom', ...
        'CustomNumeratorAccumulatorDataType', numerictype([],51,45), ...
        'DenominatorAccumulatorDataType', 'Custom', ...
        'CustomDenominatorAccumulatorDataType', numerictype([],51,45), ...
        'StateDataType', 'Custom', ...
        'CustomStateDataType', numerictype([],16,11), ...
        'OutputDataType', 'Custom', ...
        'CustomOutputDataType', numerictype([],14,8), ...
        'RoundingMethod', 'Convergent');
end

s = fi(x,1,32,0,'RoundingMethod','Round','OverflowAction','Saturate');
y = step(Hd,s);


% [EOF]
