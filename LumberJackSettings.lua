
LumberJack.SETTINGS = {}
LumberJack.CONTROLS = {}

LumberJack.menuItems = {
	'cutAnywhere',
	'createWoodchips',
	'maxWoodchips',
	'superStrengthValue',
	'normalStrengthValue',
	'superDistanceValue',
	'normalDistanceValue',
	'maxCutDistance',
	'destroyFoliageSize',
	'longHoldThreshold',
	'doubleTapThreshold',
	'showDebug'
}

LumberJack.multiplayerPermissions = {
	'superSpeed',
	'superStrength',
	'chainsawSettings'
}

Farm.PERMISSION['SUPER_SPEED'] = "superSpeed"
Farm.PERMISSION['SUPER_STRENGTH'] = "superStrength"
Farm.PERMISSION['CHAINSAW_SETTINGS'] = "chainsawSettings"
table.insert(Farm.PERMISSIONS, Farm.PERMISSION.SUPER_SPEED)
table.insert(Farm.PERMISSIONS, Farm.PERMISSION.SUPER_STRENGTH)
table.insert(Farm.PERMISSIONS, Farm.PERMISSION.CHAINSAW_SETTINGS)
-- table.insert(g_inGameMenu.permissionsBox.elements, "superSpeedPermissionCheckbox")
-- table.insert(g_inGameMenu.permissionsBox.elements, "superStrengthPermissionCheckbox")
-- table.insert(g_inGameMenu.permissionsBox.elements, "chainsawSettingsPermissionCheckbox")

--DEV
LumberJack.SETTINGS.showDebug = {
-- LumberJack.showDebug = false
	['default'] = 1,
	['values'] = {false, true},
	['strings'] = {
		g_i18n:getText("ui_off"),
		g_i18n:getText("ui_on")
	}
}

--SERVER
LumberJack.SETTINGS.createWoodchips = {
-- LumberJack.createWoodchips = false
	['default'] = 1,
	['serverOnly'] = true,
	['values'] = {false, true},
	['strings'] = {
		g_i18n:getText("ui_off"),
		g_i18n:getText("ui_on")
	}
}
LumberJack.SETTINGS.maxWoodchips = {
-- LumberJack.maxWoodchips = 2000
	['default'] = 2,
	['serverOnly'] = true,
	['values'] = {1000, 2000, 3000, 4000, 5000},
	['strings'] = {
		"1000 "..g_i18n:getText("unit_liter"),
		"2000 "..g_i18n:getText("unit_liter"),
		"3000 "..g_i18n:getText("unit_liter"),
		"4000 "..g_i18n:getText("unit_liter"),
		"5000 "..g_i18n:getText("unit_liter"),
	}
}
LumberJack.SETTINGS.destroyFoliageSize = {
-- LumberJack.destroyFoliageSize = 2
	['default'] = 1,
	['serverOnly'] = true,
	['values'] = {0,1,1.5,2,2.5,3,4,5},
	['strings'] = {
	g_i18n:getText("ui_off"),
		"1m",
		"1.5m",
		"2m",
		"2.5m",
		"3m",
		"4m",
		"5m",
	}
}

--PLAYER
LumberJack.SETTINGS.cutAnywhere = {
-- LumberJack.cutAnywhere = true
	['default'] = 2,
	['permission'] = 'chainsawSettings',
	['values'] = {false, true},
	['strings'] = {
		g_i18n:getText("ui_off"),
		g_i18n:getText("ui_on")
	}
}
LumberJack.SETTINGS.superStrengthValue = {
-- LumberJack.superStrengthValue = 1000
	['default'] = 13,
	['permission'] = 'superStrength',
	['values'] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 20.0, 50.0, 100.0, 200.0, 500.0, 1000.0, 100000000},
	['strings'] = {
		"1 " .. g_i18n:getText("text_TONNE"),
		"2 " .. g_i18n:getText("text_TONNE"),
		"3 " .. g_i18n:getText("text_TONNE"),
		"4 " .. g_i18n:getText("text_TONNE"),
		"5 " .. g_i18n:getText("text_TONNE"),
		"6 " .. g_i18n:getText("text_TONNE"),
		"7 " .. g_i18n:getText("text_TONNE"),
		"8 " .. g_i18n:getText("text_TONNE"),
		"9 " .. g_i18n:getText("text_TONNE"),
		"10 " .. g_i18n:getText("text_TONNE"),
		"20 " .. g_i18n:getText("text_TONNE"),
		"50 " .. g_i18n:getText("text_TONNE"),
		"100 " .. g_i18n:getText("text_TONNE"),
		"200 " .. g_i18n:getText("text_TONNE"),
		"500 " .. g_i18n:getText("text_TONNE"),
		"1000 " .. g_i18n:getText("text_TONNE"),
		g_i18n:getText("text_INFINITE").."!"
	}
}
LumberJack.SETTINGS.normalStrengthValue = {
-- LumberJack.normalStrengthValue = 0.2
	['default'] = 2,
	['permission'] = 'superStrength',
	['values'] = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0},
	['strings'] = {
		"100 "..g_i18n:getText("text_KG"),
		"200 "..g_i18n:getText("text_KG"),
		"300 "..g_i18n:getText("text_KG"),
		"400 "..g_i18n:getText("text_KG"),
		"500 "..g_i18n:getText("text_KG"),
		"600 "..g_i18n:getText("text_KG"),
		"700 "..g_i18n:getText("text_KG"),
		"800 "..g_i18n:getText("text_KG"),
		"900 "..g_i18n:getText("text_KG"),
		"1,000 "..g_i18n:getText("text_KG"),
	}
}
LumberJack.SETTINGS.superDistanceValue = {
-- LumberJack.superDistanceValue = 12
	['default'] = 2,
	['permission'] = 'superStrength',
	['values'] = {10, 12, 15, 20, 25, 30, 35, 40, 45, 50},
	['strings'] = {
		"10 "..g_i18n:getText("text_METRE"),
		"12 "..g_i18n:getText("text_METRE"),
		"15 "..g_i18n:getText("text_METRE"),
		"20 "..g_i18n:getText("text_METRE"),
		"25 "..g_i18n:getText("text_METRE"),
		"30 "..g_i18n:getText("text_METRE"),
		"35 "..g_i18n:getText("text_METRE"),
		"40 "..g_i18n:getText("text_METRE"),
		"45 "..g_i18n:getText("text_METRE"),
		"50 "..g_i18n:getText("text_METRE"),
	}
}
LumberJack.SETTINGS.normalDistanceValue = {
-- LumberJack.normalDistanceValue = 3
	['default'] = 1,
	['permission'] = 'superStrength',
	['values'] = {3, 4, 5, 6, 7, 8},
	['strings'] = {
		"3 "..g_i18n:getText("text_METRE"),
		"4 "..g_i18n:getText("text_METRE"),
		"5 "..g_i18n:getText("text_METRE"),
		"6 "..g_i18n:getText("text_METRE"),
		"7 "..g_i18n:getText("text_METRE"),
		"8 "..g_i18n:getText("text_METRE"),
	}
}
LumberJack.SETTINGS.maxCutDistance = {
-- LumberJack.maxCutDistance = 4.0
	['default'] = 4,
	['permission'] = 'chainsawSettings',
	['values'] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10},
	['strings'] = {
		"1 "..g_i18n:getText("text_METRE"),
		"2 "..g_i18n:getText("text_METRE"),
		"3 "..g_i18n:getText("text_METRE"),
		"4 "..g_i18n:getText("text_METRE"),
		"5 "..g_i18n:getText("text_METRE"),
		"6 "..g_i18n:getText("text_METRE"),
		"7 "..g_i18n:getText("text_METRE"),
		"8 "..g_i18n:getText("text_METRE"),
		"9 "..g_i18n:getText("text_METRE"),
		"10 "..g_i18n:getText("text_METRE"),
		"11 "..g_i18n:getText("text_METRE"),
		"12 "..g_i18n:getText("text_METRE")
	}
}
LumberJack.SETTINGS.longHoldThreshold = {
-- LumberJack.longHoldThreshold = 1000
	['default'] = 1,
	['permission'] = 'superStrength',
	['values'] = {500, 1000, 1500, 2000, 2500},
	['strings'] = {
		"0.5 "..g_i18n:getText("text_SECOND"),
		"1.0 "..g_i18n:getText("text_SECOND"),
		"1.5 "..g_i18n:getText("text_SECOND"),
		"2.0 "..g_i18n:getText("text_SECOND"),
		"2.5 "..g_i18n:getText("text_SECOND"),
	}
}
LumberJack.SETTINGS.doubleTapThreshold = {
-- LumberJack.doubleTapThreshold = 500
	['default'] = 3,
	['permission'] = 'superStrength',
	['values'] = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0},
	['strings'] = {
		"0.1 "..g_i18n:getText("text_SECOND"),
		"0.2 "..g_i18n:getText("text_SECOND"),
		"0.3 "..g_i18n:getText("text_SECOND"),
		"0.4 "..g_i18n:getText("text_SECOND"),
		"0.5 "..g_i18n:getText("text_SECOND"),
		"0.6 "..g_i18n:getText("text_SECOND"),
		"0.7 "..g_i18n:getText("text_SECOND"),
		"0.8 "..g_i18n:getText("text_SECOND"),
		"0.9 "..g_i18n:getText("text_SECOND"),
		"1.0 "..g_i18n:getText("text_SECOND"),
	}
}

-- HELPER FUNCTIONS
function LumberJack.setValue(id, value)
	LumberJack[id] = value
end

function LumberJack.getValue(id)
	return LumberJack[id]
end

function LumberJack.getStateIndex(id, value)
	local value = value or LumberJack.getValue(id) 
	local values = LumberJack.SETTINGS[id].values
	if type(value) == 'number' then
		local index = LumberJack.SETTINGS[id].default
		local initialdiff = math.huge
		for i, v in pairs(values) do
			local currentdiff = math.abs(v - value)
			if currentdiff < initialdiff then
				initialdiff = currentdiff
				index = i
			end 
		end
		return index
	else
		for i, v in pairs(values) do
			if value == v then
				return i
			end 
		end
	end
	print(id .. " USING DEFAULT")
	return LumberJack.SETTINGS[id].default
end

-- READ/WRITE SETTINGS
function LumberJack.writeSettings()

	local key = "lumberjack"
	local userSettingsFile = Utils.getFilename("modSettings/LumberJack.xml", getUserProfileAppPath())
	
	local xmlFile = createXMLFile("settings", userSettingsFile, key)
	if xmlFile ~= 0 then
	
		local function setXmlValue(id)
		
			if not id or not LumberJack.SETTINGS[id] then
				return
			end
			if LumberJack.SETTINGS[id].serverOnly and g_server == nil then
				return
			end

			local xmlValueKey = "lumberjack." .. id .. "#value"
			local value = LumberJack.getValue(id)
			if type(value) == 'number' then
				setXMLFloat(xmlFile, xmlValueKey, value)
			elseif type(value) == 'boolean' then
				setXMLBool(xmlFile, xmlValueKey, value)
			end
		end
		
		for _, id in pairs(LumberJack.menuItems) do
			setXmlValue(id)
		end

		saveXMLFile(xmlFile)
		delete(xmlFile)
	end
end

function LumberJack.readSettings()

	local userSettingsFile = Utils.getFilename("modSettings/LumberJack.xml", getUserProfileAppPath())
	
	if not fileExists(userSettingsFile) then
		print("CREATING user settings file: "..userSettingsFile)
		LumberJack.writeSettings()
		return
	end
	
	local xmlFile = loadXMLFile("lumberjack", userSettingsFile)
	if xmlFile ~= 0 then
	
		local function getXmlValue(id)
			local setting = LumberJack.SETTINGS[id]
			if setting then
				local xmlValueKey = "lumberjack." .. id .. "#value"
				local value = LumberJack.getValue(id)
				local value_string = tostring(value)
				if hasXMLProperty(xmlFile, xmlValueKey) then
				
					if type(value) == 'number' then
						value = getXMLFloat(xmlFile, xmlValueKey) or value
						
						if value == math.floor(value) then
							value_string = tostring(value)
						else
							value_string = string.format("%.3f", value)
						end
						
					elseif type(value) == 'boolean' then
						value = getXMLBool(xmlFile, xmlValueKey) or false
						value_string = tostring(value)
					end

					if g_server == nil and type(value) == 'number' then
						-- print("CLIENT - restrict to closest value")
						value = setting.values[LumberJack.getStateIndex(id, value)]
					end
					LumberJack.setValue(id, value)
					return value_string
				end
			end
			return "MISSING"
		end
		
		print("LUMBERJACK SETTINGS")
		for _, id in pairs(LumberJack.menuItems) do
			local valueString = getXmlValue(id)
			print("  " .. id .. ": " .. valueString)
		end

		delete(xmlFile)
	end
	
end

function LumberJack:onMenuOptionChanged(state, menuOption)
	
	local id = menuOption.id
	local setting = LumberJack.SETTINGS
	local value = setting[id].values[state]
	
	if value ~= nil then
		LumberJack.setValue(id, value)
	end

	if id == 'createWoodchips' then
		ToggleSawdustEvent.sendEvent(LumberJack.createWoodchips)
	end

	-- if id == 'superStrengthValue' or  id == 'normalStrengthValue' or
	   -- id == 'superDistanceValue' or  id == 'normalDistanceValue' then
		-- SuperStrengthEvent.sendEvent(LumberJack.superStrength)
	-- end
	
	LumberJack.writeSettings()
end

function LumberJack.injectMenu()
	print("LumberJack - INJECT MENU")
	
	-- print("IN GAME MENU")
	-- local inGameMenu = g_gui.screenControllers[InGameMenu]
	-- local settingsGeneral = inGameMenu.pageSettingsGeneral

	-- print("GAME SETTINGS")
	-- local gameSettings = g_gui.frames["ingameMenuSettings"]
	-- local gameSettingsLayout = g_inGameMenu["gameSettingsLayout"]

	function LumberJack.addMenuOption(id)
			
		local callback = "onMenuOptionChanged"
		local i18n_title = "setting_lumberJack_" .. id
		local i18n_tooltip = "toolTip_lumberJack_" .. id
		local options = LumberJack.SETTINGS[id].strings

		local original = settingsGeneral.inputHelpModeElement
		local menuOption = original:clone(settingsGeneral.boxLayout)
		menuOption.target = LumberJack
		menuOption.id = id
		
		menuOption:setCallback("onClickCallback", callback)
		menuOption:setDisabled(false)

		--menuOption.elements[1].text = g_i18n:getText(i18n_title)
		
		local setting = menuOption.elements[1]
		local toolTip = menuOption.elements[5]

		setting:setText(g_i18n:getText(i18n_title))
		toolTip:setText(g_i18n:getText(i18n_tooltip))
		
		menuOption:setTexts({unpack(options)})
		menuOption:setState(LumberJack.getStateIndex(id))
		
		LumberJack.CONTROLS[id] = menuOption
		
		print(" added " .. id)
		-- DebugUtil.printTableRecursively(menuOption.elements, "--", 0, 1)

		return menuOption
	end
	
	-- for _, id in pairs(LumberJack.menuItems) do
		-- LumberJack.addMenuOption(id)
	-- end
	
	-- gameSettingsLayout:invalidateLayout()
end

-- MULTIPLAYER PERMISSIONS
-- local multiplayerUsers = inGameMenu.pageMultiplayerUsers

-- function LumberJack.addMultiplayerPermission(id)

	-- local newPermissionName = id..'PermissionCheckbox'
	-- local i18n_title = "permission_lumberJack_" .. id
	-- multiplayerUsers:registerControls({newPermissionName})

	-- local original = multiplayerUsers.cutTreesPermissionCheckbox.parent
	-- local newPermissionRow = original:clone(multiplayerUsers.permissionsBox)
	-- table.insert(multiplayerUsers.permissionRow, newPermissionRow)

	-- local newPermissionLabel = newPermissionRow.elements[1]
	-- newPermissionLabel:setText(g_i18n:getText(i18n_title))

	-- local newPermissionCheckbox = newPermissionRow.elements[2]
	-- newPermissionCheckbox.id = newPermissionName

	-- multiplayerUsers.controlIDs[newPermissionName] = true
	-- multiplayerUsers.permissionCheckboxes[id] = newPermissionCheckbox
	-- multiplayerUsers.checkboxPermissions[newPermissionCheckbox] = id

-- end

-- for _, id in pairs(LumberJack.multiplayerPermissions) do
	-- LumberJack.addMultiplayerPermission(id)
-- end

--ENABLE/DISABLE OPTIONS FOR CLIENTS
-- InGameMenuGeneralSettingsFrame.onFrameOpen = Utils.appendedFunction(InGameMenuGeneralSettingsFrame.onFrameOpen, function()

	-- local isAdmin = g_currentMission:getIsServer() or g_currentMission.isMasterUser
	
	-- for _, id in pairs(LumberJack.menuItems) do
	
		-- local menuOption = LumberJack.CONTROLS[id]
		-- menuOption:setState(LumberJack.getStateIndex(id))
	
		-- if LumberJack.SETTINGS[id].disabled then
			-- menuOption:setDisabled(true)
		-- elseif LumberJack.SETTINGS[id].serverOnly and g_server == nil then
			-- menuOption:setDisabled(not isAdmin)
		-- else
		
			-- local permission = LumberJack.SETTINGS[id].permission
			-- local hasPermission = g_currentMission:getHasPlayerPermission(permission)
		
			-- local canChange = isAdmin or hasPermission or false
			-- menuOption:setDisabled(not canChange)
			
		-- end

	-- end

-- end)

--SEND SETTINGS TO CLIENT:
FSBaseMission.sendInitialClientState = Utils.appendedFunction(FSBaseMission.sendInitialClientState,
function(self, connection, user, farm)

	ToggleSawdustEvent.sendEvent(LumberJack.createWoodchips)
	
end)
