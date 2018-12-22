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
				log("AK12_ERROR: (" .. func .. ")Attempt to index Part ID: '" .. value .. "' (a nil value)")
			elseif error_id == "wpn" then
				log("AK12_ERROR: (" .. func .. ")Attempt to index Weapon ID: '" .. value .. "' (a nil value)")
			elseif error_id == "mod_type" then
				log("AK12_ERROR: (" .. func .. ")Attempt to index mod_type: '" .. value .. "' (a nil value)")
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
local all_saigafl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg"
}
--- Grips ---

--- Bolts ---


--- Multi ---

--- Compatibility Array Insertion ---

--------------------------------------------------------
----<V><I><T><Y><A><Z> -Override- <V><I><T><Y><A><Z>----
--------------------------------------------------------
for i, o_id in pairs(all_saigasight) do
	self.parts.wpn_fps_sho_heffy_12g_lfg_utg_long.override[o_id] = {a_obj="a_o_utg"}
	self.parts.wpn_fps_sho_heffy_12g_lfg_utg_short.override[o_id] = {a_obj="a_o_front"}
	self.parts.wpn_fps_sho_heffy_12g_ro_rail.override[o_id] = {a_obj="a_o_front"}
end
for i, fl_id in pairs(all_saigafl) do
	self.parts.wpn_fps_sho_heffy_12g_lfg_utg_long.override[fl_id] = {a_obj="a_fl_utg"}
	self.parts.wpn_fps_sho_heffy_12g_lfg_utg_short.override[fl_id] = {a_obj="a_fl_utg"}
end
--- Barrel ---

-- Default length barrel barrel extension and front sight override --

-- Other length barrel Front Sight overrides --


--- Receiver aka Lower ---

-- Defaults

----------------------------------------------------
----<V><I><T><Y><A><Z> -Adds- <V><I><T><Y><A><Z>----
----------------------------------------------------

--- Gun ---
for i, o_id in pairs(all_saigasight) do
	self.wpn_fps_sho_heffy_12g.adds[o_id] = {"wpn_fps_upg_o_saiga12_scopemount"}
end
-------------------------------------------------------
----<V><I><T><Y><A><Z> -Forbids- <V><I><T><Y><A><Z>----
-------------------------------------------------------

------------------------------------------------------
----<V><I><T><Y><A><Z> -Stance- <V><I><T><Y><A><Z>----
------------------------------------------------------

--- Vanilla sights ---
-- non-acoc, default sights --
for id, o_id in pairs(nonacog_aksight) do
	self.parts[o_id].stance_mod.wpn_fps_sho_heffy_12g = {translation = Vector3(0, 7, -4.4)}
end
-- other sights --
self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_sho_heffy_12g 			   = {translation = Vector3(0, 5, -4.4)}
self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_sho_heffy_12g 		   = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_flint)
self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_sho_heffy_12g = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_flint)
self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_sho_heffy_12g 		   = deep_clone(self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_flint)

------------------------------------------------------
----<V><I><T><Y><A><Z> -Tweaks- <V><I><T><Y><A><Z>----
------------------------------------------------------

--- Barrel Extensions ---
self.parts.wpn_fps_sho_heffy_12g_md_dummy.pcs = nil
------------------------------------------------------
----<V><I><T><Y><A><Z> -CLONES- <V><I><T><Y><A><Z>----
------------------------------------------------------


---------------------------------------------------
----<V><I><T><Y><A><Z> -WIP- <V><I><T><Y><A><Z>----
---------------------------------------------------

end )
