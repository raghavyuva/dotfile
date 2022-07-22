local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local wbutton = require("ui.widgets.button")

--- Power off Widget
--- ~~~~~~~~~~~~~~

return function()
	local power = wibox.widget({
		{
			id = "icon",
			text = "⏻",
			align = "center",
			valign = "center",
			font = beautiful.icon_font .. "Round 18",
			widget = wibox.widget.textbox,
		},
		layout = wibox.layout.align.horizontal,
	})

	local widget = wbutton.elevated.state({
		child = power,
		normal_bg = beautiful.wibar_bg,
		on_release = function()
			awful.spawn("poweroff", false)
		end,
	})
	return widget
end
