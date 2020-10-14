--===============================================
-- INIT
--===============================================
local bdUI, c, l = unpack(select(2, ...))

local developer_names = {}
developer_names["Padder"] = true
developer_names["Nodis"] = true
developer_names["Bloo"] = true
developer_names["Redh"] = true
local developer = developer_names[UnitName("player")]

-- Config Table
local config = {
	{
		key = "enabled",
		type = "toggle",
		label = "Enable New Bag Code (not ready)",
		value = false,
	},

	{
		key = "bag_size",
		type = "range",
		min = 10,
		max = 50,
		step = 2,
		value = 30,
		label = "Bag Button Size"
	},

	{
		key = "bag_height",
		type = "range",
		min = 200,
		max = 800,
		step = 20,
		value = 300,
		label = "Bag Max Height"
	},

	{
		key = "bag_max_column",
		type = "range",
		min = 2,
		max = 20,
		step = 1,
		value = 11,
		label = "Category Max Columns"
	},
}

local hide = false
if (not developer) then 
	-- hide = true
elseif (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) then
	hide = true
end

local mod = bdUI:register_module("Bags (beta)", config, {
	hide_ui = hide
})