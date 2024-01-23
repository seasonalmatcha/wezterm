local M = {}

function M.merge_table(first_table, second_table)
	for k, v in pairs(second_table) do
		first_table[k] = v
	end
end

return M
