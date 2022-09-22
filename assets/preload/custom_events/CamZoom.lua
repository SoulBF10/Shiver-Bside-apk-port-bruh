function onEvent(name, value1, value2)
	if name == 'CamZoom' then
		ZoomAmount = tonumber(value1)

		if ZoomAmount >= 0.1 then
			if value2 == '' then
				setProperty('defaultCamZoom', ZoomAmount);
			elseif value2 == '+' then
				setProperty('defaultCamZoom', getProperty('defaultCamZoom') + ZoomAmount);
			elseif value2 == '-' then
				setProperty('defaultCamZoom', getProperty('defaultCamZoom') - ZoomAmount);
			elseif value2 == '*' then
				setProperty('defaultCamZoom', getProperty('defaultCamZoom') * ZoomAmount);
			end
		end
	end
end