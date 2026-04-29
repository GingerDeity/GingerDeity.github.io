--run once at beginning
function _init()
	palt(14,true)
	pos=64
end

--runs before a frame is drawn
--keep math here
function _update()
	if btn(➡️) then pos+=1 end
	if btn(⬅️) then pos-=1 end	
end

--draws the sprites, ui stuff
--keep art here
function _draw()
	cls()
	spr(0,pos,64)
end