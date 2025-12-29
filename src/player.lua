function make_player()
  px = 64
  py = 64
  psprite = 1
end

function move_player()
  if (btn(0)) px -=1; --left
  if (btn(1)) px +=1; --right
  if (btn(2)) py -=1; --up
  if (btn(3)) py +=1; --down
end

function draw_player()
  spr(psprite,px,py)
end
