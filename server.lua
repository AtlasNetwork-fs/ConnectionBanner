AddEventHandler('playerConnecting', function(name, skr, d)
    d.defer()
    Wait(50)
    -- Nom Nom Nom
    d.presentCard([==[{
		"type": "AdaptiveCard",
		"$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
		"version": "1.2",
		"body": [
			{
				"type": "Container",
				"items": [
					{
						"type": "TextBlock",
						"text": "Golden State Roleplay Community
						"wrap": true,
						"fontType": "Default",
						"size": "ExtraLarge",
						"weight": "Bolder",
						"color": "Light"
					},
					{
						"type": "TextBlock",
						"text": "     ",
						"wrap": true,
						"size": "Large",
						"weight": "Bolder",
						"color": "Light"
					},
					{
						"type": "TextBlock",
						"text": "Select from multiple buttons bellow!
						"wrap": true,
						"color": "Light",
						"size": "Medium"
					},
					{
						"type": "ColumnSet",
						"height": "stretch",
						"minHeight": "5px",
						"bleed": true,
						"selectAction": {
							"type": "Action.OpenUrl"
						},
						"columns": [
							{
								"type": "Column",
								"width": "stretch",
								"items": [
									{
										"type": "ActionSet",
										"actions": [
											{
												"type": "Action.OpenUrl",
												"title": "Discord",
												"url": "https://discord.gg/gstrp
												"style": "positive",
												"iconUrl": ""
											}
										]
									}
								]
							},
							{
								"type": "Column",
								"width": "stretch",
								"items": [
									{
										"type": "ActionSet",
										"actions": [
											{
												"type": "Action.Submit",
												"title": "Play",
												"style": "positive",
												"id": "connect"
											}
										]
									}
								],
								"backgroundImage": {}
							},
							{
								"type": "Column",
								"width": "stretch",
								"items": [
									{
										"type": "ActionSet",
										"actions": [
											{
												"type": "Action.OpenUrl",
												"title": "CAD/MDT
												"style": "positive",
												"url": "https://app.sonorancad.com/#/?comid=GSTRP&name=Golden%20State%20Roleplay&subtitle=GSTRPs%20Official%20CAD/MDT&img=http://147.135.36.39/logo.png&bkgLogin=bd9015&bkgLoginBox=191919"
											}
										]
									}
								]
							}
						],
						"horizontalAlignment": "Center"
					}
				],
				"style": "default",
				"bleed": true,
				"height": "stretch",
				"isVisible": true
			}
		]
	}]==],
			function(data, rawData)
				if (data.submitId == 'connect') then 
					clicked = true;
					d.done()
				end
		end)
	end)
