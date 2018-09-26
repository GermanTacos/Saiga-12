Hooks:PostHook( WeaponTweakData, "init", "SaigaModInit", function(self)

if ( self.heffy_12g ) then

---- Bipod Stuff ----
--[[self.heffy_919.animations.bipod_enter = "bipod_enter"
	self.heffy_919.animations.bipod_exit = "bipod_exit"
	self.heffy_919.animations.bipod_recoil = "bipod_recoil"
	self.heffy_919.animations.bipod_recoil_enter = "bipod_recoil"
	self.heffy_919.animations.bipod_recoil_loop = "bipod_recoil_loop"
	self.heffy_919.animations.bipod_recoil_exit = "bipod_recoil_exit"
	self.heffy_919.animations.use_stance = "ak74"	
	self.heffy_919.spread.bipod = default_bipod_spread
	self.heffy_919.bipod_camera_spin_limit = 45
	self.heffy_919.bipod_camera_pitch_limit = 20
	self.heffy_919.bipod_weapon_translation = Vector3(-8.5,20,-7.5)
	self.heffy_919.bipod_deploy_multiplier = 1
	self.heffy_919.timers.deploy_bipod = 1]]--
	
---- CAP aka YEEET ----	

--- Base stuff ---	

	
--- Pistol Grips ---
	
--- Stock Pads ---
	
--- Magazines ---
	
end
end)



