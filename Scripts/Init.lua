-- Plugin's name --
pluginName = "BeorningWrath";

-- File names --
settingsFileName = "Beorning_Wrath_Settings";

-- Users screen size --
screenWidth, screenHeight = Turbine.UI.Display:GetSize();

-- Default options --
defaultOptions = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    wrathBarLenght = 30,
    wrathBarHeight = 10,
    wrathBarGap = 3,
    hideOutOfCombat = false,
    pip_1_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_2_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_3_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_4_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_5_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_6_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_7_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_8_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_9_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_10_color = Turbine.UI.Color(0.808, 0.039, 0.094),
}

options = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    wrathBarLenght = 30,
    wrathBarHeight = 10,
    wrathBarGap = 3,
    hideOutOfCombat = false,
    pip_1_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_2_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_3_color = Turbine.UI.Color(0.996, 0.533, 0),
    pip_4_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_5_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_6_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_7_color = Turbine.UI.Color(1, 0.333, 0.012),
    pip_8_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_9_color = Turbine.UI.Color(0.808, 0.039, 0.094),
    pip_10_color = Turbine.UI.Color(0.808, 0.039, 0.094),
}

-- Color Picker position --
colorPickerLastPositionX = nil;
colorPickerLastPositionY = nil;

-- RGB color codes --
rgb = {
    pluginName = "<rgb=#DAA520>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>",
};