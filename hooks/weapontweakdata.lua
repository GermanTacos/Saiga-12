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
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_ns", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 7.75, -0.2 ), -- -16
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_fl", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.4, 0, -1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_gl", 
        base_a_obj = "a_fl", 
        position = Vector3( -2.88, 27.2, -3.1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -7, 0.5 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_os", 
        base_a_obj = "a_os", 
        position = Vector3( 0, 1.5, 1.1 ), 
        rotation = Rotation( 0, 10, 0 )
	})
--- Scope Mount ---
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_mount", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0, 2.85 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Sights ---
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_front", 
        base_a_obj = "a_o", 
        position = Vector3( 0, 9, 0.5 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_utg", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -2, 0.5 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Pistol Grips ---
--- Gadgets ---
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_fl_utg", 
        base_a_obj = "a_fl", 
        position = Vector3( -0.2, 0, -2.7 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
--- Stock Pads ---
	
--- Stocks ---
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_s_akmsu", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0.875, 0.6875 ), --0.7, 0.55 | 0.175, 0.1375
        rotation = Rotation( 0, 5, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_s_ak101", 
        base_a_obj = "a_body", 
        position = Vector3( 0, 0.875, 1.8 ), --0.7, 0.55 | 0.175, 0.1375
        rotation = Rotation( 0, 5, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_s_akmsu_ak47", 
        base_a_obj = "a_body", 
        position = Vector3( 0, -0.35, -0.275 ), 
        rotation = Rotation( 0, -2.5, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_s", 
        base_a_obj = "a_s", 
        position = Vector3( 0, 0, 1 ), 
        rotation = Rotation( 0, -2, 0 ) 
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_s_v_akmsu", 
        base_a_obj = "a_s", 
        position = Vector3( 0, 0, 1 ), 
        rotation = Rotation( 0, 2, 0 ) 
	})
	
--- Magazines ---
	
end
end)



