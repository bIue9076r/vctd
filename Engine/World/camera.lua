-- A neatly structured Camera module
local camera = {}
camera.__index = camera

--------------------------------------------------------------------------------
-- Creates a new Camera object with (x, y, z) coordinates.
--
-- @param x (optional) initial X coordinate
-- @param y (optional) initial Y coordinate
-- @param z (optional) initial Z coordinate
-- @return a table that behaves like a camera object
--------------------------------------------------------------------------------
function camera.new(x, y, z)
    local instance = {
        x = x or 0,
        y = y or 0,
        z = z or 0
    }
    -- Allow methods to be looked up in 'camera',
    -- plus define __call so instance() returns the camera's pos().
    return setmetatable(instance, {
        __index = camera,
        __call  = camera.pos
    })
end

--------------------------------------------------------------------------------
-- Updates the camera position; if an argument is omitted,
-- the coordinate won't change (instead of forcing it to 0).
--
-- @param x (optional) new X coordinate
-- @param y (optional) new Y coordinate
-- @param z (optional) new Z coordinate
--------------------------------------------------------------------------------
function camera:updatePos(x, y, z)
    if x ~= nil then self.x = x end
    if y ~= nil then self.y = y end
    if z ~= nil then self.z = z end
end

--------------------------------------------------------------------------------
-- Returns the current position of the camera as a table {x, y, z}.
--
-- @return table {x = <num>, y = <num>, z = <num>}
--------------------------------------------------------------------------------
function camera:pos()
    return {
        x = self.x,
        y = self.y,
        z = self.z
    }
end

--------------------------------------------------------------------------------
-- If you want to place this into your global or another table structure,
-- you can do: files.game.camera = camera
-- but by default, we'll just return it as a local module:
--------------------------------------------------------------------------------
return camera
