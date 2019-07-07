require("prototypes/angels-mods/items/items")
require("prototypes/angels-mods/fluids/fluids")
require("prototypes/angels-mods/recipes/recipes")

--find and fix game crashing errors first if any

--pycp
--find and remove all fuelrod + x recipes/ something went wrong recipes
--remove all ore-sorting recipes to replace them with my own

	if data.raw["assembling-machine"]["ore-sorting-facility"] ~= nil then
	
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-2"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-3"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-4"].crafting_categories, "tba-ore-sorting")
		
	end

--recipe replacement
	--recipe ingredient replace
	--ore1
	fun.ingredient_replace("angelsore1-chunk","angels-ore1-crushed","tba-ore1-crushed-slag")
	fun.ingredient_replace("angelsore1-crystal","angels-ore1-chunk","tba-ore1-chunk-slag")
	fun.ingredient_replace("angelsore1-pure","angels-ore1-crystal","tba-ore1-crystal-slag")
	
	--ore3
	fun.ingredient_replace("angelsore3-chunk","angels-ore3-crushed","tba-ore3-crushed-slag")
	fun.ingredient_replace("angelsore3-crystal","angels-ore3-chunk","tba-ore3-chunk-slag")
	fun.ingredient_replace("angelsore3-pure","angels-ore3-crystal","tba-ore3-crystal-slag")
	
	--adjust science pack 1
	require("prototypes/angels-mods/recipes/sci1")

--tech additions

	--add new recipes to existing tech
	table.insert(data.raw.technology["ore-crushing"].effects,{type="unlock-recipe",recipe="tba-angelsore1-crushed-processing"})
	table.insert(data.raw.technology["ore-floatation"].effects,{type="unlock-recipe",recipe="tba-angelsore1-chunk-processing"})
	table.insert(data.raw.technology["ore-leaching"].effects,{type="unlock-recipe",recipe="tba-angelsore1-crystal-processing"})
	table.insert(data.raw.technology["ore-refining"].effects,{type="unlock-recipe",recipe="tba-angelsore1-pure-processing"})
	
	table.insert(data.raw.technology["ore-crushing"].effects,{type="unlock-recipe",recipe="tba-angelsore3-crushed-processing"})
	table.insert(data.raw.technology["ore-floatation"].effects,{type="unlock-recipe",recipe="tba-angelsore3-chunk-processing"})
	table.insert(data.raw.technology["ore-leaching"].effects,{type="unlock-recipe",recipe="tba-angelsore3-crystal-processing"})
	table.insert(data.raw.technology["ore-refining"].effects,{type="unlock-recipe",recipe="tba-angelsore3-pure-processing"})
--pyfe


--pyht
--check for bob electronics



--pyin


--pyph

	require("prototypes/angels-mods/recipes/hydrocarbons")

--pyro


--pyal


--pya