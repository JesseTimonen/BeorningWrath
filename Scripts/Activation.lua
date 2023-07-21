-- Activate Plugin --
Plugins[pluginName].Load = function()
	notification("Activated version " .. Plugins[pluginName]:GetVersion() .. " by HennaKristal.");
end


-- Unload Plugin --
Plugins[pluginName].Unload = function()
	saveOptions();
	notification("Plugin has been deactivated.");
end


-- Load settings --
loadOptions();