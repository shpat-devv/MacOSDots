local colors = require("colors")
local settings = require("settings")
local sbar = require("sketchybar")

-- Load the bar with widgets in the correct position first
sbar.bar({
    alpha = 0,
    y_offset = -10, -- Start off-screen
    position = "top",
    height = 20,
    padding_right = 5,
    padding_left = 5,
    color = colors.bar.bg_transparent,
    margin = 10,
    corner_radius = 6,
    shadow = true,
    blur_radius = 60,
})

-- Animate with a smooth rubber band effect
sbar.animate("sin", 15, function()
    sbar.bar({ y_offset = final_pos + overshoot })

    sbar.animate("sin", 15, function()
        sbar.bar({ y_offset = final_pos, alpha = 1 })
    end)
end)
