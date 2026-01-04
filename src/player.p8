-- create player entity and all of its functions
function init_player()
  local player = {};
  player.x = 64;
  player.y = 64;
  player.sprite = 1;

  
  -- main update function for the player
  -- place all player update functions here
  player.update = function()
    player.move_player()
  end

  -- main draw function for the player
  -- place all player render functions here
  player.draw = function()
    spr(player.sprite,player.x,player.y)
  end
  
  -- Player movement function  
  player.move_player = function()
    if (btn(0)) player.x -=1; --left
    if (btn(1)) player.x +=1; --right
    if (btn(2)) player.y -=1; --up
    if (btn(3)) player.y +=1; --down
  end

  return player;
end