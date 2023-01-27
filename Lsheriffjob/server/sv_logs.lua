WebHook = "https://discordapp.com/api/webhooks/1063866849365868544/Rlexy6AEjz7U3yYAkpxXanyl9xsIKeTekQZ_GYpIHKBjPP5zPNjpqrJwNR02EaNIzpMg"
WebHook2 = "https://discordapp.com/api/webhooks/1063866849365868544/Rlexy6AEjz7U3yYAkpxXanyl9xsIKeTekQZ_GYpIHKBjPP5zPNjpqrJwNR02EaNIzpMg"
Name = "L_script"
Logo = "https://resize-europe1.lanmedia.fr/r/622,311,forcex,center-middle/img/var/europe1/storage/images/europe1/international/le-panda-geant-nest-plus-en-danger-mais-reste-menace-2837755/28733065-1-fre-FR/Le-panda-geant-n-est-plus-en-danger-mais-reste-menace.jpg" -- He must finish by .png or .jpg
LogsBlue = 3447003
LogsRed = 15158332
LogsYellow = 15844367
LogsOrange = 15105570
LogsGrey = 9807270
LogsPurple = 10181046
LogsGreen = 3066993
LogsLightBlue = 1752220

RegisterNetEvent('Ise_Logs')
AddEventHandler('Ise_Logs', function(Webhook, Color, Title, Description)
	Ise_Logs(Webhook, Color, Title, Description)
end)

function Ise_Logs(webhook, Color, Title, Description)
	local Content = {
	        {
	            ["color"] = Color,
	            ["title"] = Title,
	            ["description"] = Description,
		        ["footer"] = {
	                ["text"] = Name,
	                ["icon_url"] = Logo,
	            },
	        }
	    }
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = Name, embeds = Content}), { ['Content-Type'] = 'application/json' })
end
