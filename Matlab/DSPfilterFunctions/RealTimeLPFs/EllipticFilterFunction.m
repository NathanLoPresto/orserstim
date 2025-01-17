function y = EllipticFilterFunction(x)
%ELLIPTICFILTERFUNCTION Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.9 and DSP System Toolbox 9.11.
% Generated on: 28-Jun-2021 13:41:46

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    Gain       = [0.10823];  % Gain coefficient vector
    
    % SOS_Matrix coefficient vector
    SOS_Matrix = [1 -0.779784979468627 1 1 -1.41986169789861 ...
        0.606410994278436; 1 -1.52904326981472 1 1 ...
        -1.5670947875616 0.941167169248449];
    
    Hd = dsp.BiquadFilter( ...
        'SOSMatrix', SOS_Matrix, ...
        'ScaleValues', Gain, ...
        'SectionInputDataType', 'Custom', ...
        'CustomSectionInputDataType', numerictype([],16,15), ...
        'SectionOutputDataType', 'Custom', ...
        'CustomSectionOutputDataType', numerictype([],16,15), ...
        'NumeratorCoefficientsDataType', 'Custom', ...
        'CustomNumeratorCoefficientsDataType', numerictype([],32,30), ...
        'DenominatorCoefficientsDataType', 'Custom', ...
        'CustomDenominatorCoefficientsDataType', numerictype([],32,30), ...
        'ScaleValuesDataType', 'Custom', ...
        'CustomScaleValuesDataType', numerictype([],32,34), ...
        'NumeratorProductDataType', 'Custom', ...
        'CustomNumeratorProductDataType', numerictype([],48,45), ...
        'DenominatorProductDataType', 'Custom', ...
        'CustomDenominatorProductDataType', numerictype([],48,45), ...
        'NumeratorAccumulatorDataType', 'Custom', ...
        'CustomNumeratorAccumulatorDataType', numerictype([],50,45), ...
        'DenominatorAccumulatorDataType', 'Custom', ...
        'CustomDenominatorAccumulatorDataType', numerictype([],50,45), ...
        'StateDataType', 'Custom', ...
        'CustomStateDataType', numerictype([],16,11), ...
        'OutputDataType', 'Custom', ...
        'CustomOutputDataType', numerictype([],14,9), ...
        'RoundingMethod', 'Convergent');
end

s = fi(x,1,16,15,'RoundingMethod','Round','OverflowAction','Saturate');
y = step(Hd,s);


% [EOF]
