% homework_5

% micropollutant measurements
measurements = [ 17.925 19.417 20.704 22.656 20.131 20.890 21.792 17.509 ...
	19.111 15.694 17.596 20.394 20.081 19.137 21.071 20.493 22.416 24.203 ...
	21.071 17.951 18.005 21.345 21.393 23.475 22.087 20.741 17.009 23.010 ...
	21.096 17.244 21.345 17.892 22.241 21.197 18.067 19.504 20.918 21.280 ...
	19.296 21.109 23.483 19.210 20.655 18.414 21.537 18.939 16.649 17.027 ...
	21.381 21.393 22.535 26.987 21.000 20.746 16.555 18.894 20.999 23.993 ...
	19.345 19.800 14.004 20.222 20.092 20.806 20.914 20.419 24.187 22.373 ...
	19.126 15.821 23.153 20.733 21.375 22.155 18.669 23.424 18.925 23.782 ...
	15.398 19.883 19.714 24.351 19.843 16.111 18.226 20.440 22.345 21.072 ...
	16.952 21.232 11.930 20.958 23.172 12.824 14.838 16.306 15.129 18.105 ...
	19.948 21.620 ];


% compute some statistics
[ measurement_mean measurement_std ] = stats_mean_std(measurements);

% display the results
disp(['mean of measurements: ' num2str(measurement_mean)])
disp(['std. dev. of measurements: ' num2str(measurement_std)])

% find the values that are outside two standard deviations
out_of_sd = [];
for i = 1:length(measurements)
	if measurements(i) > measurement_mean + (2 * measurement_std) ...
		|| measurements(i) < measurement_mean - (2 * measurement_std)
		out_of_sd = [out_of_sd i];
	end
end

% display more results
disp(['there were ' num2str(length(out_of_sd)) ...
	' values out side of two standard deviations'])
disp('the values were')
for i = 1:1:length(out_of_sd)
	disp(['index ' num2str(out_of_sd(i)) ' with value ' ...
		num2str(measurements(out_of_sd(i)))])
end

% plot the data and draw the outliers as circles
xAxis = (1:length(measurements));
plot(xAxis, measurements, '-')
title('Micropollutant measurements')
xlabel('Sample')
ylabel('Micropollutant level (ppm)')
hold on
plot(out_of_sd, measurements(out_of_sd), 'o')

%Discussion Question
%What kind of debugging did you use?  disp based or the debugger?
%If the debugger, did you use the command line or the GUI?
%What bug or syntax error was the most difficult to find?

%Ans: I mostly rely on the matlab's debugger function, dbstop so each time 
%it stops my execution, I look for the indicated line of error.
%I simply use the command window of matlab, matlab stops and returns the 
%line that it found the error.
%I wasn't quite familiar with the function syntax, but I later on figure
%out the function.m thing should not be inside the script! Thanks google!
