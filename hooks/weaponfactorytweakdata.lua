------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--                                                                                      --
--                          ||       ||   ||        ||||||                              --
--                         ||||      ||  ||        ||    ||                             --
--                        ||  ||     || ||         ||    ||                             --
--                       ||||||||    ||||           |||||||                             --
--                      ||      ||   || ||              ||                              --
--                     ||        ||  ||  ||           |||                               --
--                    ||          || ||   ||        |||                                 --
--                                                                                      --
------------------------------------------------------------------------------------------
--																						--
--						  	 		   > [Functions]									--
--									   > [Arrays]		   								--
--									   > [Override]				    					--
--									   > [Adds] 										--
--									   > [Forbids] 										--
--									   > [Stance]										--
--									   > [Underbarrel] 							    	--
--									   > [Tweaks] 										--
--									   > [WIP] 											--
--																						--
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------


---------------------------------------------------------
----<V><I><T><Y><A><Z> -Functions- <V><I><T><Y><A><Z>----
---------------------------------------------------------

--- Forbid Setup ---
function WeaponFactoryTweakData:akpack_setup_forbid( mod_one, mod_two )
	if self.parts[mod_one] and self.parts[mod_two] then
		self.parts[mod_one].forbids = self.parts[mod_one].forbids or {}
		table.insert(self.parts[mod_one].forbids, mod_two)
		self.parts[mod_two].forbids = self.parts[mod_two].forbids or {}
		table.insert(self.parts[mod_two].forbids, mod_one)
	else
		if not self.parts[mod_one] then
			self:akpack_write_error( "forbid_setup", "fti", "part", mod_two )	
		end
		if not self.parts[mod_two] then
			self:akpack_write_error( "forbid_setup", "fti", "part", mod_two )	
		end
	end
end

--- Override Base ---
function WeaponFactoryTweakData:akpack_check_override( mod_type, mod_woa ) 
	if mod_type == "wpn" then
		if self[mod_woa] then
			self[mod_woa].override = self[mod_woa].override or {}
		else 
			self:akpack_write_error( "override_check", "fti", mod_type, mod_woa )
		end
	elseif mod_type == "part" then
		if self.parts[mod_woa] then
			self.parts[mod_woa].override = self.parts[mod_woa].override or {}
		else 
			self:akpack_write_error( "override_check", "fti", mod_type, mod_woa )
		end
	else
		self:akpack_write_error( "override_check", "fti", "mod_type", mod_type )
	end
end

--- Adds Base ---
function WeaponFactoryTweakData:akpack_check_adds( mod_type, mod_woa ) 
	if mod_type == "wpn" then
		if self[mod_woa] then
			self[mod_woa].adds = self[mod_woa].adds or {}
		else 
			self:akpack_write_error( "adds_check", "fti", mod_type, mod_woa )
		end
	elseif mod_type == "part" then
		if self.parts[mod_woa] then
			self.parts[mod_woa].adds = self.parts[mod_woa].adds or {}
		else 
			self:akpack_write_error( "adds_check", "fti", mod_type, mod_woa )
		end
	else
		self:akpack_write_error( "adds_check", "fti", "mod_type", mod_type )
	end
end

--- Part Copy Base ---
function WeaponFactoryTweakData:vityaz19_copy_part( att_og, att_cp )
    if self.parts[att_og] then
        self.parts[att_cp] = deep_clone(self.parts[att_og])
        self.parts[att_cp].pcs = {}
        self.parts[att_cp].is_a_unlockable = true
        table.insert(self.wpn_fps_smg_heffy_919.uses_parts, att_cp)
    else
        self:akpack_write_error( "copy_part", "fti", "part", att_og )    
    end
end

--- ERROR Base ---
function WeaponFactoryTweakData:akpack_write_error( func, cause, error_id, value  )
	if func and cause and error_id then 
		-- fti = failed to index
		if cause == "fti" and value then
			if error_id == "part" then
				log("AK101_ERROR: (" .. func .. ")Attempt to index Part ID: '" .. value .. "' (a nil value)")
			elseif error_id == "wpn" then
				log("AK101_ERROR: (" .. func .. ")Attempt to index Weapon ID: '" .. value .. "' (a nil value)")
			elseif error_id == "mod_type" then
				log("AK101_ERROR: (" .. func .. ")Attempt to index mod_type: '" .. value .. "' (a nil value)")
			end
		end
	end
end 

Hooks:PostHook( WeaponFactoryTweakData, "init", "Saiga12gModInit", function(self)

------------------------------------------------------
----<V><I><T><Y><A><Z> -Arrays- <V><I><T><Y><A><Z>----
------------------------------------------------------

--- Stocks ---

--- Stock Pads ---

--- Fore Grip ---
-- Default length --


--- Barrel ---
-- Default length --

--- Front Sights ---

--- Barrel Extensions --

--- Gadgets (Flashlights/Lasers) ---

--- Sights ---
local all_saigasight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}
local nonacog_aksight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}

--- Grips ---

--- Bolts ---


--- Multi ---

--- Compatibility Array Insertion ---

--[[if self.wpn_fps_smg_heffy_762 then

	local ak47stocks = {
		"wpn_fps_smg_heffy_all_st_ak47",
		"wpn_fps_smg_heffy_762_st_akm",
		"wpn_fps_smg_heffy_762_st_akm_worn",
		"wpn_fps_smg_heffy_762_st_akms",
		"wpn_fps_smg_heffy_762_st_akmsu",
		"wpn_fps_smg_heffy_762_st_rpk",
		"wpn_fps_smg_heffy_762_st_ak103",
		"wpn_fps_smg_heffy_762_st_vepr",
		"wpn_fps_smg_heffy_762_st_bl_t56",
		"wpn_fps_smg_heffy_762_st_br_t56",
		"wpn_fps_smg_heffy_762_st_mpi",
		"wpn_fps_smg_heffy_762_st_2_mpi",
		"wpn_fps_smg_heffy_762_st_amd63",
		"wpn_fps_smg_heffy_762_st_amd65",
		"wpn_fps_smg_heffy_762_st_m70",
		"wpn_fps_smg_heffy_762_st_tabuk",
		"wpn_fps_smg_heffy_762_st_rk62",
	}
	
	for i, part_id in pairs(ak47stocks) do
		table.insert(all_vityazstock, part_id)
		table.insert(vityazstock, part_id)
	end
	
	for i, part_id in pairs(ak47stocks) do
		if part_id ~= "wpn_fps_smg_heffy_all_st_ak47" and part_id ~= "wpn_fps_smg_heffy_762_st_ak103" then
			self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu"}
		elseif part_id == "wpn_fps_smg_heffy_all_st_ak47" then
			self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu_ak47"}
		end
	end
	
	local ak47stockparts = {
		"wpn_fps_smg_heffy_762_sp_ak47",
		"wpn_fps_smg_heffy_762_sp_mpi",
		"wpn_fps_smg_heffy_762_sp_2_mpi",
		"wpn_fps_smg_heffy_762_sp_akm",
		"wpn_fps_smg_heffy_762_sp_tabuk",
		"wpn_fps_smg_heffy_762_stp_mpi",
		"wpn_fps_smg_heffy_762_sp_amd63",
	}
	
	for i, part_id in pairs(ak47stockparts) do
		table.insert(vityazstockpad, part_id)
	end
	
	for i, part_id in pairs(ak47stockparts) do
		if part_id ~= "wpn_fps_smg_heffy_762_sp_ak47" then
			self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu"}
		else
			self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu_ak47"}
		end
	end
	
	local ak47grips = {
		"wpn_fps_smg_heffy_all_pg_ak47",
		"wpn_fps_smg_heffy_762_pg_akm",
		"wpn_fps_smg_heffy_762_pg_ak103",
		"wpn_fps_smg_heffy_762_pg_bl_t56",
		"wpn_fps_smg_heffy_762_pg_br_t56",
		"wpn_fps_smg_heffy_762_pg_mpi",
		"wpn_fps_smg_heffy_762_pg_amd63",
		"wpn_fps_smg_heffy_762_pg_amd65",
		"wpn_fps_smg_heffy_762_pg_m92",
		"wpn_fps_smg_heffy_762_pg_rk62",
	}
	
	for i, part_id in pairs(ak47grips) do
		table.insert(vityazgrips, part_id)
	end

end

if self.wpn_fps_smg_heffy_545 then

	local ak74stocks = {
		"wpn_fps_smg_heffy_all_st_ak74",
		"wpn_fps_smg_heffy_545_st_rpk74",
		"wpn_fps_smg_heffy_545_st_mpi",
	}
	
	for i, part_id in pairs(ak74stocks) do
		table.insert(all_vityazstock, part_id)
		table.insert(vityazstock, part_id)
	end
	
	for i, part_id in pairs(ak74stocks) do
		self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu"}
	end
	
	local ak74stockparts = {
		"wpn_fps_smg_heffy_545_stp_ak74",
		"wpn_fps_smg_heffy_545_stp_ak74_2",
		"wpn_fps_smg_heffy_545_stp_rpk74",
		"wpn_fps_smg_heffy_545_str_rpk74",
		"wpn_fps_smg_heffy_545_stp_mpi",
	}
	
	for i, part_id in pairs(ak74stockparts) do
		table.insert(vityazstockpad, part_id)
	end
	
	for i, part_id in pairs(ak74stockparts) do
		self.parts.wpn_fps_smg_heffy_919_lr_vityaz.override[part_id] = {a_obj="a_s_akmsu"}
	end
	
	local ak74grips = {
		"wpn_fps_smg_heffy_all_pg_ak74",
		"wpn_fps_smg_heffy_545_pg_mpi",
	}
	
	for i, part_id in pairs(ak74grips) do
		table.insert(vityazgrips, part_id)
	end

end]]--

--------------------------------------------------------
----<V><I><T><Y><A><Z> -Override- <V><I><T><Y><A><Z>----
--------------------------------------------------------

--- Barrel ---

-- Default length barrel barrel extension and front sight override --

-- Other length barrel Front Sight overrides --


--- Receiver aka Lower ---

-- Defaults

----------------------------------------------------
----<V><I><T><Y><A><Z> -Adds- <V><I><T><Y><A><Z>----
----------------------------------------------------

--- Gun ---

	
-------------------------------------------------------
----<V><I><T><Y><A><Z> -Forbids- <V><I><T><Y><A><Z>----
-------------------------------------------------------

------------------------------------------------------
----<V><I><T><Y><A><Z> -Stance- <V><I><T><Y><A><Z>----
------------------------------------------------------

--- Vanilla sights ---
-- non-acoc, default sights --

-- other sights --

------------------------------------------------------
----<V><I><T><Y><A><Z> -Tweaks- <V><I><T><Y><A><Z>----
------------------------------------------------------

--- Barrel Extensions ---

------------------------------------------------------
----<V><I><T><Y><A><Z> -CLONES- <V><I><T><Y><A><Z>----
------------------------------------------------------


---------------------------------------------------
----<V><I><T><Y><A><Z> -WIP- <V><I><T><Y><A><Z>----
---------------------------------------------------

end )
