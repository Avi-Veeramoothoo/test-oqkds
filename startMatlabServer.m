function startMatlabServer()
    % Get Heroku-assigned port
    port = str2double(getenv('PORT'));
    if isnan(port)
        port = 8080;  % fallback
    end

    fprintf('Starting MATLAB-based server on port %d...\n', port);

    % Pseudocode: create a server or “pause” loop so we don’t exit
    while true
        pause(1);
        % Respond to incoming requests, etc.
    end
end
