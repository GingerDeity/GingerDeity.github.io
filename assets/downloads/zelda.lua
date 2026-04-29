-- zelda style walking - level 4
-- by lazy devs academy
--modded by atreyu mclewin

function _init()
 palt(0,false)
 palt(14,true)
 poke(0x5f2e,1)
 pal(11,11+128,1)
 
 px=32
 py=64
 
 mode="idle"
 
 walku={4,6} --up
 walkr={8,10} --right
 walkl={12,14} --left
 walkd={0,2} --down
 anim_timer=0
 anim_frame=1
 anim=walkd
 
 hboxl={4,9,4,12}   --left
 hboxr={11,9,11,12} --right
 hboxu={6,7,9,7}    --up
 hboxd={6,15,9,15}  --down
 hbox=hboxd
 
 lastbtn=0
end

function _draw()
 map()
 spr(anim[anim_frame],px,py,2,2)
end

function _update60() input() end

function move()
 px+=vx
 py+=vy 
end

function animate()
 anim_timer+=1
 if anim_timer>=8 then
  anim_timer=0
  anim_frame=(anim_frame%2)+1
 end
end

function _checkbtn(bttn,newvx,newvy,newanim,newhbox)
	if btn(bttn) then
		if newvx!=0 then vx=newvx end
		if newvy!=0 then vy=newvy end
		anim=newanim
		hbox=newhbox
		return 1
	end
	return 0
end

function input()
 local press=0
 vx=0
 vy=0
 
 press+=_checkbtn(⬅️,-1,0,walkl,hboxl)
 press+=_checkbtn(➡️,1,0,walkr,hboxr)
 press+=_checkbtn(⬆️,0,-1,walku,hboxu)
 press+=_checkbtn(⬇️,0,1,walkd,hboxd)
 
 if press>0 then
 
  --normalize
  if press>=2 then
   vx*=0.7
   vy*=0.7
  end
  
  --anti cobblestone
  if lastbtn!=btn() then
   px=flr(px)
   py=flr(py)
  end
  
  local nocol=can_move(vx,vy)
  
  if not nocol then
   if press==1 then
    --corner slip
    local slpx=vx==0 and 1 or 0
    local slpy=vy==0 and 1 or 0
    
    local j=1
   	repeat
     for i=1,3 do
      local slpdx=vx+slpx*i*j
      local slpdy=vy+slpy*i*j
      if can_move(slpdx,slpdy) then
       vx=sgn(slpdx)
       vy=sgn(slpdy)
       nocol=true
       break
      end
     end
     j-=2
    until nocol or j<-1
   
   elseif press>=2 then
    --diagonal slide
    if can_move(vx,0) then
     vy=0
     nocol=true
    elseif can_move(0,vy) then
     vx=0
     nocol=true   
    end
   end
  end

  if nocol then
   move()
  end
  
  animate()
 else
  anim_timer=7
  anim_frame=1
 end
 
 lastbtn=btn()
end

function can_move(dx,dy)
 local newx=px+dx
 local newy=py+dy
 
 points={
  {newx+hbox[1],newy+hbox[2],7},
  {newx+hbox[3],newy+hbox[4],7}
 }
 for p in all(points) do
  if not walkable(p[1],p[2]) then
   p[3]=8
   return false
  end
 end
 return true
end

function walkable(pnx,pny)
 mytile=mget(pnx/8,pny/8)
 return not fget(mytile,0)
end