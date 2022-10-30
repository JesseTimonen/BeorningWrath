-- Import Turbine/Lotro base libraries --
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI.Lotro";


-- Import utility scripts --
import "BeorningWrath.Scripts.Utility.Class";
import "BeorningWrath.Scripts.Utility.Type";
import "BeorningWrath.Scripts.Utility.RadioButton";


-- Import scripts that are required for other scripts to work --
import "BeorningWrath.Scripts.Notification";
import "BeorningWrath.Scripts.SaveLoad";
import "BeorningWrath.Scripts.Init";


-- Make sure plugin loads only for beornings --
if (Turbine.Gameplay.LocalPlayer.GetInstance():GetClass() ~= Turbine.Gameplay.Class.Beorning) then
    Scripts.notification("This plugin will only work for beornings! Wrong class detected, therefore the plugin has been disabled.");
    return;
end


-- Import plugin activation --
import "BeorningWrath.Scripts.Activation";


-- Import color picker --
import "BeorningWrath.Scripts.ColorPicker";


-- Import main functionality --
import "BeorningWrath.Scripts.Main";
import "BeorningWrath.Scripts.Options";