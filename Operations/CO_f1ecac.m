function out = CO_f1ecac(y)
% Calculates the 1/e correlation length of the time series using CO_information
% Ben Fulcher 2008
  
oone = 1/exp(1);
a(1) = CO_information(y,y); % very weird -- why is this not 1?? Or use autocor?

for i = 2:length(y)-1
    a(i) = CO_autocorr(y,i);
    if (a(i-1)-oone)*(a(i)-oone)<0
        out = i;
        return
    end
end

% if no minimum in entire spectrum
out = length(y);

end