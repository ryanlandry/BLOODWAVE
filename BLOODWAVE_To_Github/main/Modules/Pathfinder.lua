local M = {}

--x14, y18
--16x16



function M.current_tile(self, map)
	local pos = go.get_position()
	local map_pos = go.get_position(map)
	local x = math.floor(pos.x/16)
	local y = math.floor((pos.y - map_pos.y)/16)
	print("map is",map)
	local map = msg.url(msg.url(map).socket, msg.url(map).path, "Obstacle_s")
	local map = go.get(map, "map")
	print(tilemap.get_tile(map, "layer1", x, y))
end




function M.find (self, map)
	M.current_tile(self, map)
end


return M