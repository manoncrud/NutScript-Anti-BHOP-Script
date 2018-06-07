PLUGIN.name = "Anti-Bunny Hop"
PLUGIN.author = "Pingers"
PLUGIN.desc = "Stop people from constantly jumping on servers"
--This time, ego free!

hook.Add( "CreateMove", "Stamina:DisableJumpKey", function( input )
	if ( LocalPlayer( ):IsAdmin( ) ) then 
		return end
	if ( input:KeyDown( IN_JUMP ) ) then
		if ( LocalPlayer( ):GetJumpPower( ) < PLAYER_JUMP_POWER_MIN ) then 
			local _buttons = input:GetButtons();
			input:SetButtons( _buttons - IN_JUMP )
		end
	end
end )

--[[ Put antibhop.lua in the /plugins/ folder in your schema!--]] 


--[[ https://team.paragonservers.com/pingers--]] 
