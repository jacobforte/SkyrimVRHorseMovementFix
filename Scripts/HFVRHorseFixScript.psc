scriptName HFVRHorseFixScript extends activemagiceffect
{This script will toggle bUseWandDirectionalMovement
on and off based upon whether the player is
on or off a horse}

Bool CurrentValue = false

function OnUpdate()
	if game.GetPlayer().GetAnimationVariableBool("bIsRiding") == true && CurrentValue == false
		utility.SetINIBool("bUseWandDirectionalMovement:VRInput", true)
		CurrentValue = true
	elseIf game.GetPlayer().GetAnimationVariableBool("bIsRiding") == false && CurrentValue == true
		utility.SetINIBool("bUseWandDirectionalMovement:VRInput", false)
		CurrentValue = false
	endIf
	self.RegisterForSingleUpdate(0.250000)
endFunction

function OnEffectStart(Actor akTarget, Actor akCaster)

	self.RegisterForSingleUpdate(0.250000)
endFunction

function OnEffectFinish(Actor akTarget, Actor akCaster)

	self.UnregisterForUpdate()
endFunction