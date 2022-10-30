WrathWindow = class (Turbine.UI.Window)

function WrathWindow:Constructor()
	Turbine.UI.Window.Constructor(self)

	self:SetSize(options["wrathBarLenght"] * 10 + options["wrathBarGap"] * 9, options["wrathBarHeight"] + 20)
	self:SetPosition(options["xPos"], options["yPos"])
    self:SetWantsKeyEvents(true);
	self:SetVisible(true)
	if (options["hideOutOfCombat"]) then
        self:SetOpacity(0)
    else
        self:SetOpacity(1)
    end

    -- Hide the UI with F12 --
    self.KeyDown = function( sender, args)
        if (args.Action == 268435635) then
            self:SetVisible(not self:IsVisible());
        end
    end


	self.Wrath_label = Turbine.UI.Label()
	self.Wrath_label:SetParent(self)
    self.Wrath_label:SetSize(options["wrathBarHeight"] + 50, options["wrathBarHeight"] + 20)
	self.Wrath_label:SetPosition((self:GetWidth() / 2) - (self.Wrath_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Wrath_label:GetHeight() / 2))
    self.Wrath_label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)
	self.Wrath_label:SetVisible(options["displayNumber"])
	self.Wrath_label:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30)
    self.Wrath_label:SetText("0")
    self.Wrath_label:SetZOrder(2)
    self.Wrath_label:SetForeColor(Turbine.UI.Color.White)
    self.Wrath_label:SetOutlineColor(Turbine.UI.Color.Black)
    self.Wrath_label:SetFontStyle(Turbine.UI.FontStyle.Outline);


	self.Wrath_1_parent = Turbine.UI.Control()
	self.Wrath_1_parent:SetParent(self)
	self.Wrath_1_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Wrath_1_parent:GetHeight() / 2))
	self.Wrath_1_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_1_parent:SetVisible(true)
    self.Wrath_1_child = Turbine.UI.Control()
	self.Wrath_1_child:SetParent(self.Wrath_1_parent)
	self.Wrath_1_child:SetPosition(1, 1)
	self.Wrath_1_child:SetSize(self.Wrath_1_parent:GetWidth() - 2, self.Wrath_1_parent:GetHeight() - 2)
	self.Wrath_1_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_1_child:SetVisible(true)


    self.Wrath_2_parent = Turbine.UI.Control()
	self.Wrath_2_parent:SetParent(self)
	self.Wrath_2_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_2_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]), (self:GetHeight() / 2) - (self.Wrath_2_parent:GetHeight() / 2))
	self.Wrath_2_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_2_parent:SetVisible(true)
    self.Wrath_2_child = Turbine.UI.Control()
	self.Wrath_2_child:SetParent(self.Wrath_2_parent)
	self.Wrath_2_child:SetPosition(1, 1)
	self.Wrath_2_child:SetSize(self.Wrath_2_parent:GetWidth() - 2, self.Wrath_2_parent:GetHeight() - 2)
	self.Wrath_2_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_2_child:SetVisible(true)


    self.Wrath_3_parent = Turbine.UI.Control()
	self.Wrath_3_parent:SetParent(self)
	self.Wrath_3_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_3_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 2, (self:GetHeight() / 2) - (self.Wrath_3_parent:GetHeight() / 2))
	self.Wrath_3_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_3_parent:SetVisible(true)
    self.Wrath_3_child = Turbine.UI.Control()
	self.Wrath_3_child:SetParent(self.Wrath_3_parent)
	self.Wrath_3_child:SetPosition(1, 1)
	self.Wrath_3_child:SetSize(self.Wrath_3_parent:GetWidth() - 2, self.Wrath_3_parent:GetHeight() - 2)
	self.Wrath_3_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_3_child:SetVisible(true)


    self.Wrath_4_parent = Turbine.UI.Control()
	self.Wrath_4_parent:SetParent(self)
	self.Wrath_4_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_4_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 3, (self:GetHeight() / 2) - (self.Wrath_4_parent:GetHeight() / 2))
	self.Wrath_4_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_4_parent:SetVisible(true)
    self.Wrath_4_child = Turbine.UI.Control()
	self.Wrath_4_child:SetParent(self.Wrath_4_parent)
	self.Wrath_4_child:SetPosition(1, 1)
	self.Wrath_4_child:SetSize(self.Wrath_4_parent:GetWidth() - 2, self.Wrath_4_parent:GetHeight() - 2)
	self.Wrath_4_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_4_child:SetVisible(true)


    self.Wrath_5_parent = Turbine.UI.Control()
	self.Wrath_5_parent:SetParent(self)
	self.Wrath_5_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_5_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 4, (self:GetHeight() / 2) - (self.Wrath_5_parent:GetHeight() / 2))
	self.Wrath_5_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_5_parent:SetVisible(true)
    self.Wrath_5_child = Turbine.UI.Control()
	self.Wrath_5_child:SetParent(self.Wrath_5_parent)
	self.Wrath_5_child:SetPosition(1, 1)
	self.Wrath_5_child:SetSize(self.Wrath_5_parent:GetWidth() - 2, self.Wrath_5_parent:GetHeight() - 2)
	self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_5_child:SetVisible(true)


    self.Wrath_6_parent = Turbine.UI.Control()
	self.Wrath_6_parent:SetParent(self)
	self.Wrath_6_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_6_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 5, (self:GetHeight() / 2) - (self.Wrath_6_parent:GetHeight() / 2))
	self.Wrath_6_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_6_parent:SetVisible(true)
    self.Wrath_6_child = Turbine.UI.Control()
	self.Wrath_6_child:SetParent(self.Wrath_6_parent)
	self.Wrath_6_child:SetPosition(1, 1)
	self.Wrath_6_child:SetSize(self.Wrath_6_parent:GetWidth() - 2, self.Wrath_6_parent:GetHeight() - 2)
	self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_6_child:SetVisible(true)


    self.Wrath_7_parent = Turbine.UI.Control()
	self.Wrath_7_parent:SetParent(self)
	self.Wrath_7_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_7_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 6, (self:GetHeight() / 2) - (self.Wrath_7_parent:GetHeight() / 2))
	self.Wrath_7_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_7_parent:SetVisible(true)
    self.Wrath_7_child = Turbine.UI.Control()
	self.Wrath_7_child:SetParent(self.Wrath_7_parent)
	self.Wrath_7_child:SetPosition(1, 1)
	self.Wrath_7_child:SetSize(self.Wrath_7_parent:GetWidth() - 2, self.Wrath_7_parent:GetHeight() - 2)
	self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_7_child:SetVisible(true)


    self.Wrath_8_parent = Turbine.UI.Control()
	self.Wrath_8_parent:SetParent(self)
	self.Wrath_8_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_8_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 7, (self:GetHeight() / 2) - (self.Wrath_8_parent:GetHeight() / 2))
	self.Wrath_8_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_8_parent:SetVisible(true)
    self.Wrath_8_child = Turbine.UI.Control()
	self.Wrath_8_child:SetParent(self.Wrath_8_parent)
	self.Wrath_8_child:SetPosition(1, 1)
	self.Wrath_8_child:SetSize(self.Wrath_8_parent:GetWidth() - 2, self.Wrath_8_parent:GetHeight() - 2)
	self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_8_child:SetVisible(true)


    self.Wrath_9_parent = Turbine.UI.Control()
	self.Wrath_9_parent:SetParent(self)
	self.Wrath_9_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_9_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 8, (self:GetHeight() / 2) - (self.Wrath_9_parent:GetHeight() / 2))
	self.Wrath_9_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_9_parent:SetVisible(true)
    self.Wrath_9_child = Turbine.UI.Control()
	self.Wrath_9_child:SetParent(self.Wrath_9_parent)
	self.Wrath_9_child:SetPosition(1, 1)
	self.Wrath_9_child:SetSize(self.Wrath_9_parent:GetWidth() - 2, self.Wrath_9_parent:GetHeight() - 2)
	self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_9_child:SetVisible(true)


    self.Wrath_10_parent = Turbine.UI.Control()
	self.Wrath_10_parent:SetParent(self)
	self.Wrath_10_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_10_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 9, (self:GetHeight() / 2) - (self.Wrath_10_parent:GetHeight() / 2))
	self.Wrath_10_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_10_parent:SetVisible(true)
    self.Wrath_10_child = Turbine.UI.Control()
	self.Wrath_10_child:SetParent(self.Wrath_10_parent)
	self.Wrath_10_child:SetPosition(1, 1)
	self.Wrath_10_child:SetSize(self.Wrath_10_parent:GetWidth() - 2, self.Wrath_10_parent:GetHeight() - 2)
	self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
    self.Wrath_10_child:SetVisible(true)


    self.localPlayer = Turbine.Gameplay.LocalPlayer.GetInstance();
    self.localPlayer.InCombatChanged = function(sender, args)
        if (options["hideOutOfCombat"]) then
            self:SetWantsUpdates(true);
        end
    end
    self.localPlayer.InCombatChanged();

    self.Update = function()
        if (self.localPlayer:IsInCombat()) then
            self:SetOpacity(self:GetOpacity() + 0.02);
            if (self:GetOpacity() >= 1.0) then
                self:SetWantsUpdates(false);
            end
        else
            self:SetOpacity(self:GetOpacity() - 0.02);
            if (self:GetOpacity() <= 0) then
                self:SetWantsUpdates(false);
            end
        end
    end
	

    self.BeorningWrath = Turbine.Gameplay.LocalPlayer.GetInstance():GetClassAttributes();
    self.BeorningWrath.WrathChanged = function(sender, args)

		local _current_wrath = self.BeorningWrath:GetWrath();
        self.Wrath_label:SetText(_current_wrath)

		if (_current_wrath == 100) then
			self.Wrath_1_child:SetBackColor(options["pip_10_color"])
			self.Wrath_2_child:SetBackColor(options["pip_10_color"])
			self.Wrath_3_child:SetBackColor(options["pip_10_color"])
			self.Wrath_4_child:SetBackColor(options["pip_10_color"])
			self.Wrath_5_child:SetBackColor(options["pip_10_color"])
			self.Wrath_6_child:SetBackColor(options["pip_10_color"])
			self.Wrath_7_child:SetBackColor(options["pip_10_color"])
			self.Wrath_8_child:SetBackColor(options["pip_10_color"])
			self.Wrath_9_child:SetBackColor(options["pip_10_color"])
			self.Wrath_10_child:SetBackColor(options["pip_10_color"])
		elseif (_current_wrath >= 90) then
			self.Wrath_1_child:SetBackColor(options["pip_9_color"])
			self.Wrath_2_child:SetBackColor(options["pip_9_color"])
			self.Wrath_3_child:SetBackColor(options["pip_9_color"])
			self.Wrath_4_child:SetBackColor(options["pip_9_color"])
			self.Wrath_5_child:SetBackColor(options["pip_9_color"])
			self.Wrath_6_child:SetBackColor(options["pip_9_color"])
			self.Wrath_7_child:SetBackColor(options["pip_9_color"])
			self.Wrath_8_child:SetBackColor(options["pip_9_color"])
			self.Wrath_9_child:SetBackColor(options["pip_9_color"])
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 80) then
			self.Wrath_1_child:SetBackColor(options["pip_8_color"])
			self.Wrath_2_child:SetBackColor(options["pip_8_color"])
			self.Wrath_3_child:SetBackColor(options["pip_8_color"])
			self.Wrath_4_child:SetBackColor(options["pip_8_color"])
			self.Wrath_5_child:SetBackColor(options["pip_8_color"])
			self.Wrath_6_child:SetBackColor(options["pip_8_color"])
			self.Wrath_7_child:SetBackColor(options["pip_8_color"])
			self.Wrath_8_child:SetBackColor(options["pip_8_color"])
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 70) then
			self.Wrath_1_child:SetBackColor(options["pip_7_color"])
			self.Wrath_2_child:SetBackColor(options["pip_7_color"])
			self.Wrath_3_child:SetBackColor(options["pip_7_color"])
			self.Wrath_4_child:SetBackColor(options["pip_7_color"])
			self.Wrath_5_child:SetBackColor(options["pip_7_color"])
			self.Wrath_6_child:SetBackColor(options["pip_7_color"])
			self.Wrath_7_child:SetBackColor(options["pip_7_color"])
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 60) then
			self.Wrath_1_child:SetBackColor(options["pip_6_color"])
			self.Wrath_2_child:SetBackColor(options["pip_6_color"])
			self.Wrath_3_child:SetBackColor(options["pip_6_color"])
			self.Wrath_4_child:SetBackColor(options["pip_6_color"])
			self.Wrath_5_child:SetBackColor(options["pip_6_color"])
			self.Wrath_6_child:SetBackColor(options["pip_6_color"])
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 50) then
			self.Wrath_1_child:SetBackColor(options["pip_5_color"])
			self.Wrath_2_child:SetBackColor(options["pip_5_color"])
			self.Wrath_3_child:SetBackColor(options["pip_5_color"])
			self.Wrath_4_child:SetBackColor(options["pip_5_color"])
			self.Wrath_5_child:SetBackColor(options["pip_5_color"])
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 40) then
			self.Wrath_1_child:SetBackColor(options["pip_4_color"])
			self.Wrath_2_child:SetBackColor(options["pip_4_color"])
			self.Wrath_3_child:SetBackColor(options["pip_4_color"])
			self.Wrath_4_child:SetBackColor(options["pip_4_color"])
			self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 30) then
			self.Wrath_1_child:SetBackColor(options["pip_3_color"])
			self.Wrath_2_child:SetBackColor(options["pip_3_color"])
			self.Wrath_3_child:SetBackColor(options["pip_3_color"])
			self.Wrath_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 20) then
			self.Wrath_1_child:SetBackColor(options["pip_2_color"])
			self.Wrath_2_child:SetBackColor(options["pip_2_color"])
			self.Wrath_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_wrath >= 10) then
			self.Wrath_1_child:SetBackColor(options["pip_1_color"])
			self.Wrath_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		else
			self.Wrath_1_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_9_child:SetBackColor(Turbine.UI.Color.Black)
			self.Wrath_10_child:SetBackColor(Turbine.UI.Color.Black)
		end
    end
	self.BeorningWrath.WrathChanged();


    -- Window Movement --
	self.moveControl = Turbine.UI.Control()
	self.moveControl:SetParent(self)
	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
	self.moveControl:SetMouseVisible(options["enableMovement"])
	self.moveControl:SetZOrder(3)
	self.moveControl.MouseDown = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = true	
			self.dragStartX = args.X
			self.dragStartY = args.Y
		end
	end
	
	self.moveControl.MouseMove = function( sender, args )
		if self.dragging then
			local x,y = self:GetPosition()	
			x = x + ( args.X - self.dragStartX )
			y = y + ( args.Y - self.dragStartY )	
			self:SetPosition( x, y )	
		end
	end
	
	self.moveControl.MouseUp = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = false
            options["xPos"] = self:GetLeft()
			options["yPos"] = self:GetTop()
		end
	end
end


-- Update elements after options have been modified --
function WrathWindow:UpdateElements()

	self:SetSize(options["wrathBarLenght"] * 10 + options["wrathBarGap"] * 9, options["wrathBarHeight"] + 20)

    self.Wrath_label:SetSize(options["wrathBarHeight"] + 50, options["wrathBarHeight"] + 20)
	self.Wrath_label:SetPosition((self:GetWidth() / 2) - (self.Wrath_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Wrath_label:GetHeight() / 2))

	self.Wrath_1_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Wrath_1_parent:GetHeight() / 2))
	self.Wrath_1_child:SetSize(self.Wrath_1_parent:GetWidth() - 2, self.Wrath_1_parent:GetHeight() - 2)

	self.Wrath_2_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_2_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]), (self:GetHeight() / 2) - (self.Wrath_2_parent:GetHeight() / 2))
	self.Wrath_2_child:SetSize(self.Wrath_2_parent:GetWidth() - 2, self.Wrath_2_parent:GetHeight() - 2)

	self.Wrath_3_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_3_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 2, (self:GetHeight() / 2) - (self.Wrath_3_parent:GetHeight() / 2))
	self.Wrath_3_child:SetSize(self.Wrath_3_parent:GetWidth() - 2, self.Wrath_3_parent:GetHeight() - 2)

	self.Wrath_4_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_4_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 3, (self:GetHeight() / 2) - (self.Wrath_4_parent:GetHeight() / 2))
	self.Wrath_4_child:SetSize(self.Wrath_4_parent:GetWidth() - 2, self.Wrath_4_parent:GetHeight() - 2)

	self.Wrath_5_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_5_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 4, (self:GetHeight() / 2) - (self.Wrath_5_parent:GetHeight() / 2))
	self.Wrath_5_child:SetSize(self.Wrath_5_parent:GetWidth() - 2, self.Wrath_5_parent:GetHeight() - 2)

	self.Wrath_6_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_6_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 5, (self:GetHeight() / 2) - (self.Wrath_6_parent:GetHeight() / 2))
	self.Wrath_6_child:SetSize(self.Wrath_6_parent:GetWidth() - 2, self.Wrath_6_parent:GetHeight() - 2)

	self.Wrath_7_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_7_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 6, (self:GetHeight() / 2) - (self.Wrath_7_parent:GetHeight() / 2))
	self.Wrath_7_child:SetSize(self.Wrath_7_parent:GetWidth() - 2, self.Wrath_7_parent:GetHeight() - 2)

	self.Wrath_8_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_8_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 7, (self:GetHeight() / 2) - (self.Wrath_8_parent:GetHeight() / 2))
	self.Wrath_8_child:SetSize(self.Wrath_8_parent:GetWidth() - 2, self.Wrath_8_parent:GetHeight() - 2)

	self.Wrath_9_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_9_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 8, (self:GetHeight() / 2) - (self.Wrath_9_parent:GetHeight() / 2))
	self.Wrath_9_child:SetSize(self.Wrath_9_parent:GetWidth() - 2, self.Wrath_9_parent:GetHeight() - 2)

	self.Wrath_10_parent:SetSize(options["wrathBarLenght"], options["wrathBarHeight"])
    self.Wrath_10_parent:SetPosition((options["wrathBarLenght"] + options["wrathBarGap"]) * 9, (self:GetHeight() / 2) - (self.Wrath_10_parent:GetHeight() / 2))
	self.Wrath_10_child:SetSize(self.Wrath_10_parent:GetWidth() - 2, self.Wrath_10_parent:GetHeight() - 2)

	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
end


WrathWindowClass = WrathWindow();