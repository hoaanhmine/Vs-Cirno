function onCreate()

    

    makeLuaSprite('sky', 'pmath/phase1/sky', -150,-150);
	setScrollFactor('sky', 1, 1);

	makeLuaSprite('farbg', 'pmath/phase1/farbg', -150,-150);

    makeLuaSprite('middlebg', 'pmath/phase1/middlebg', -150,-150);

    makeLuaSprite('frontbg', 'pmath/phase1/frontbg', -150,-150);

    makeLuaSprite('ground', 'pmath/phase1/ground', -150,-150);
    
    makeLuaSprite('bgScroll', 'pmath/phase2/bgScroll', 130,-150);
    
    makeLuaSprite('bus', 'pmath/phase2/bus', 120,0);
    
    makeAnimatedLuaSprite('desks', 'pmath/phase1/desks', -30,0);
	addAnimationByPrefix('desks', 'BOP','BOP',24,true)
	objectPlayAnimation('desks', 'BOP',false)
    
    
    makeLuaSprite('sign', 'pmath/phase1/sign', 0,-500);
    setObjectCamera('sign', 'camother', false);

    makeLuaText('HMFNF','Port by HMFNF','width',0,500)
    setTextSize('HMFNF',20)
   
   
   
    addLuaSprite('sky', false);
    addLuaSprite('farbg', false);
    addLuaSprite('middlebg', false);
	addLuaSprite('frontbg', false);
	addLuaSprite('ground', false)
	addLuaSprite('desks',false);
    addLuaSprite('sign', false);
    addLuaText('HMFNF',true);
end

function onBeatHit()
 if curBeat == 1 then
doTweenY('nameTween', 'sign',  -50, 1, 'linear')
end

if curBeat == 10 then
doTweenY('nameTween', 'sign',  -500, 1, 'linear')
end
 if curBeat == 15 then
removeLuaSprite('sign', false);

end
if curBeat == 30 then
setProperty('defaultCamZoom', 1.3)
doTweenX('nameTween', 'HMFNF',  -500, 1, 'linear')
end

if curBeat == 32 then
    addLuaSprite('bgScroll', false);
    addLuaSprite('bus', false);
setCharacterX('boyfriend', 750);
setCharacterY('boyfriend', -250);
    end
 if curBeat == 32 then
    removeLuaSprite('farbg', false);
    removeLuaSprite('middlebg', false);
	removeLuaSprite('frontbg', false);
	removeLuaSprite('ground', false)
	removeLuaSprite('desks', false);
end
end