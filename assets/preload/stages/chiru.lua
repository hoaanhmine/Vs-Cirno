function onCreate()

    

    makeLuaSprite('cirnobg', 'chiru/cirnobg', -300,-100);
	setScrollFactor('cirnobg', 1, 1);

	makeLuaSprite('idiot', 'chiru/idiot', -300,-90);



    makeLuaSprite('chirutext', 'chiru/chirutext', -1000,50);
	setScrollFactor('chirutext', 4, 1);



    makeLuaSprite('chirutext2', 'chiru/chirutext2', 500,-100);
   setScrollFactor('chirutext2', 4, 1);



    makeLuaSprite('cirnofloor', 'chiru/cirnofloor', -200,-180);
    
    
    
    
    
    addLuaSprite('cirnobg', false);
    addLuaSprite('cirnofloor', false);
	
	end


function onBeatHit()
 if curBeat == 78 then
        addLuaSprite('chirutext', false)
        addLuaSprite('chirutext2', false)
end


if curBeat == 153 then
        addLuaSprite('idiot', false)
        removeLuaSprite('chirutext', false)
        removeLuaSprite('chirutext2', false)
    end

 if curBeat == 280 then
        removeLuaSprite('idiot', false)
        addLuaSprite('chirutext', false)
        addLuaSprite('chirutext2', false)
    end
end