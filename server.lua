AddEventHandler('playerConnecting', function(name, skr, d)
    d.defer()
    Wait(50)
    -- Nom Nom Nom v2
    d.presentCard([==[{
    "type": "AdaptiveCard",
    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
    "version": "1.3",
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
                    "text": "Select a button bellow to begin the journey @GSTRP",
                    "wrap": true,
                    "color": "Light",
                    "size": "Medium"
                },
                {
                    "type": "ColumnSet",
                    "height": "stretch",
                    "minHeight": "100px",
                    "bleed": true,
                    "horizontalAlignment": "Center",
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
                                            "iconUrl": "",
                                            "url": "https://discord.gg/gstrp",
                                            "style": "positive"
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
                                            "iconUrl": "",
                                            "id": "played"
                                        }
                                    ],
                                    "horizontalAlignment": "Center",
                                    "height": "stretch"
                                }
                            ],
                            "verticalContentAlignment": "Center",
                            "height": "stretch",
                            "style": "good"
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
                                            "title": "Sonoran CAD/MDT",
                                            "style": "positive",
                                            "url": "https://app.sonorancad.com/#/?comid=GSTRP&name=Golden%20State%20Roleplay&subtitle=GSTRPs%20Official%20CAD/MDT&img=http://147.135.36.39/logo.png&bkgLogin=bd9015&bkgLoginBox=191919",
                                            "iconUrl": "https://i.gayazo.com/c629f37bb1aeed2c1bc1768fdc93bc1a.gif"
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                }
            ],
            "style": "default",
            "bleed": true,
            "height": "stretch",
            "isVisible": true
        },
        {
            "type": "ActionSet",
            "height": "stretch"
        }
    ]
}]==],
			function(data, rawData)
				if (data.submitId == 'played') then 
					clicked = true;
					d.done()
				end
		end)
	end)
