Hooks:PostHook( PlayerTweakData, "init", "Saiga12GModStanceTweakData", function(self)

--AK
	
	self.stances.heffy_12g_ads = deep_clone(self.stances.flint)
	local ironsight_translation = Vector3(0, -13, 0.518)
	self.stances.heffy_12g_ads.steelsight.shoulders.translation = self.stances.heffy_12g_ads.steelsight.shoulders.translation + ironsight_translation 

end )