-- We have a default research cost defined in technology.lua,
-- but copying the game's dynamically was a requested feature.
--
-- Done in data-final-fixes because other mods that override the
-- cost of logistics research use both earlier steps.
if settings.startup["Warehousing-copy-logistic-system"].value
	and data.raw["technology"]["logistic-system"] ~= nil
	and data.raw["technology"]["logistic-system"].unit ~= nil then
	local unit = table.deepcopy(data.raw["technology"]["logistic-system"].unit)
	if type(unit.count) == "number" then
		unit.count = math.floor(unit.count * 2)
	elseif type(unit.count_formula) == "string" then
		-- logistic-system has no numeric suffix, so its L/l level is 1.
		-- Bind that value before moving the formula to our level-2 technology.
		local source_formula = unit.count_formula:gsub("%f[%w_][Ll]%f[^%w_]", "1")
		unit.count_formula = "("..source_formula..") * 2"
	else
		unit = nil
	end
	if unit then
		data.raw["technology"]["warehouse-logistics-research-2"].unit = unit
	end
end
