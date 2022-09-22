function onCreate()
	makeLuaText('lyricsU', '', 600, 340, 550)
	setTextSize('lyricsU', '26')
	setProperty('lyricsU.alpha', 0.35)
	setTextAlignment('lyricsU', 'left')
	addLuaText('lyricsU')

	makeLuaText('lyrics', '', 600, 340, 550)
	setTextSize('lyrics', '26')
	setTextAlignment('lyrics', 'left')
	addLuaText('lyrics')
end

function onEvent(name, value1, value2)
	if name == 'Lyrics' then
		if value1 == "" and value2 == "" then
			doTweenAlpha('fadetween1', 'lyrics', 0, 2, 'quadOut')
			doTweenAlpha('fadetween2', 'lyricsU', 0, 2, 'quadOut')
		elseif value1 ~= "" and value2 ~= "" then
			setTextColor('lyrics', 'FFFFFF')
			setTextColor('lyricsU', 'FFFFFF')
			if curStep >= 575 and curStep <= 608 or curStep >= 959 and curStep <= 993 or curStep >= 1087 and curStep <= 1121 then
				setTextColor('lyrics', 'FF0000')
				setTextColor('lyricsU', 'FF0000')
			end
			setProperty('lyrics.alpha', 1)
			setProperty('lyricsU.alpha', 0.35)
			setTextString('lyrics', value1)
			setTextString('lyricsU', value2)
		end
	end
end