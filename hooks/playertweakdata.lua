Hooks:PostHook( PlayerTweakData, "init", "Saiga12GModStanceTweakData", function(self)

--Saiga
	
	self.stances.heffy_12gk_ads = deep_clone(self.stances.heffy_12g)
	self.stances.heffy_12gk_ads.steelsight.shoulders.translation = Vector3(-10.25, -2, 5)
	self.stances.heffy_12gk_ads.steelsight.shoulders.rotation = Rotation(0, 0, 0)

end )