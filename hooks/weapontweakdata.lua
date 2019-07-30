Hooks:PostHook( WeaponTweakData, "init", "SaigaModInit", function(self)

if ( self.heffy_12g ) then

if self.new_m4.reload_timed_stance_mod then
	self.heffy_12g.reload_timed_stance_mod = {
		empty = {
			hip = {
				{t = 1.5, translation = Vector3(-30, 15, -10), rotation = Rotation(-50, 0, -40), speed = 0.5}, -- turn gun over to check that bolt has released
				{t = 0.9, translation = Vector3(0, 0, 0), rotation = Rotation(0, 0, 0), speed = 0.5} -- return to default position
			}
		}
	}
end
--[[]]
---- Bipod Stuff ----
--[[]]
	
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
	--- Russian Sights ---
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_1p29",
		base_a_obj = "a_o",
		position = Vector3(0.6, -13, 0.2),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_1pn93",
		base_a_obj = "a_o",
		position = Vector3(-0.7, -13, 1.55),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_ekp_1s_03",
		base_a_obj = "a_o",
		position = Vector3(0, -7, -1.2),	--	position = Vector3(-0.3, -2, -1.7),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_okp7",
		base_a_obj = "a_o",
		position = Vector3(-0.5, -5.85, -2.2),
		rotation = Rotation(0, 0, 0)
	})
	self:SetupAttachmentPoint("heffy_12g", {
		name = "a_o_pso1",
		base_a_obj = "a_o",
		position = Vector3(-0.7, -7, -1.2),
		rotation = Rotation(0, 0, 0)
	})
end
end)



