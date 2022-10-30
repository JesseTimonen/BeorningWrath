-- Sends notifications to chat
function notification(message)
	Turbine.Shell.WriteLine(rgb["pluginName"] .. pluginName .. rgb["clear"] .. ": " .. tostring(message));
end