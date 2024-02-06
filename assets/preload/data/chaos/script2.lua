wideScreen = 0

local widescreen = false
local widescreentog = false

function onCreate()
	
	addHaxeLibrary("Lib", "openfl");
	if widescreentog == false then
		setPropertyFromClass("flixel.FlxG", "width", 1066.666667)
		setPropertyFromClass("openfl.Lib", "current.stage.stageWidth", 1066.666667)
		setPropertyFromClass("openfl.Lib", "application.window.width", 1066.666667)
		setPropertyFromClass("openfl.Lib", "application.window.height", 720)
		setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") - wideScreen)
		setProperty("camGame.x", -wideScreen)
		setPropertyFromClass("openfl.Lib", "application.window.resizable", false)
	end
end

function onUpdate()
	for i = 4,7 do
		setPropertyFromGroup("strumLineNotes", i, "scale.x", 4.6)
		setPropertyFromGroup("strumLineNotes", i, "scale.y", 4.6)
		setPropertyFromGroup("strumLineNotes", i, "antialiasing", false)
		
		if not downscroll then
			setPropertyFromGroup("strumLineNotes", i, "y", 75)
		else
			setPropertyFromGroup("strumLineNotes", i, "y", 630)
		end
	end
	
	for i = 0,7 do
		setPropertyFromGroup("grpNoteSplashes", i, "scale.x", 4.6)
		setPropertyFromGroup("grpNoteSplashes", i, "offset.x", -75)
		setPropertyFromGroup("grpNoteSplashes", i, "y", 75)
		setPropertyFromGroup("grpNoteSplashes", i, "scale.y", 4.6)
		setPropertyFromGroup("grpNoteSplashes", i, "antialiasing", false)
	end
	
		setPropertyFromGroup("unspawnNotes", 0, "antialiasing", false)
		setPropertyFromGroup("unspawnNotes", 1, "antialiasing", false)
		setPropertyFromGroup("unspawnNotes", 2, "antialiasing", false)
		setPropertyFromGroup("unspawnNotes", 3, "antialiasing", false)

if curStep >= 0 and curStep <= 1 then
runHaxeCode([[
    var stage = Lib.current.stage;
    var resolutionX = 0;
    var resolutionY = 0;

    if (stage.window != null)
    {
        var display = stage.window.display;

        if (display != null)
        {
            resolutionX = Math.ceil(display.currentMode.width * stage.window.scale);
            resolutionY = Math.ceil(display.currentMode.height * stage.window.scale);
        }
    }

    if(resolutionX <= 0){
        resolutionX = stage.stageWidth;
        resolutionY = stage.stageHeight;
    }

  Lib.application.window.x = (resolutionX - Lib.application.window.width)/2;
  Lib.application.window.y = (resolutionY - Lib.application.window.height)/2;
]]);
end
end

function onSpawnNote(index, direction, noteType, isSustainNote, strumTime)

-- thank you neb for this
    setPropertyFromGroup("unspawnNotes", index, "scale.x", 4.6)
   

    local anim = getPropertyFromGroup("unspawnNotes", index, "animation.name")
    local isEnd = anim:sub(#anim-2,#anim)=='end';
    if (isEnd or not isSustainNote) then
        setPropertyFromGroup("unspawnNotes", index, "scale.y", 4.6)
    end
   if(isEnd)then
     setPropertyFromGroup("unspawnNotes", index, "offsetY", getPropertyFromGroup("unspawnNotes", index, "offsetY")+(13 * 4.6))
   end
end

function onDestroy()

		setPropertyFromClass("flixel.FlxG", "width", 1280)
		setPropertyFromClass("openfl.Lib", "current.stage.stageWidth", 1280)
		setPropertyFromClass("openfl.Lib", "application.window.width", 1280)
		setPropertyFromClass("openfl.Lib", "application.window.height", 720)
		setPropertyFromClass("openfl.Lib", "application.window.x", getPropertyFromClass("openfl.Lib", "application.window.x") - wideScreen)
		setPropertyFromClass("openfl.Lib", "application.window.resizable", true)

runHaxeCode([[
    var stage = Lib.current.stage;
    var resolutionX = 0;
    var resolutionY = 0;

    if (stage.window != null)
    {
        var display = stage.window.display;

        if (display != null)
        {
            resolutionX = Math.ceil(display.currentMode.width * stage.window.scale);
            resolutionY = Math.ceil(display.currentMode.height * stage.window.scale);
        }
    }

    if(resolutionX <= 0){
        resolutionX = stage.stageWidth;
        resolutionY = stage.stageHeight;
    }

  Lib.application.window.x = (resolutionX - Lib.application.window.width)/2;
  Lib.application.window.y = (resolutionY - Lib.application.window.height)/2;
]]);
	
	setPropertyFromClass('openfl.Lib', 'application.window.borderless', false)
	setPropertyFromClass('openfl.Lib', 'application.window.title', "Friday Night Funkin': Psych Engine")
end