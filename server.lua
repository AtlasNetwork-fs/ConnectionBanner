AddEventHandler('playerConnecting', function(name, skr, d)
    d.defer()
    Wait(50)
    --Stuff bellow can be edited ;) if u need help jus msg me NotCobraaa#0001
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
						"text": "Welcome to Golden State Roleplay",
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
						"text": "To begin select the play button!",
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
												"url": "https://discord.gg/gstrp",
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
								"backgroundImage": "https://imgur.com/zthdeo8"
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
												"title": "Instagram",
												"style": "positive",
												"url": "https://www.instagram.com/gstrp/?hl=en-gb"
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