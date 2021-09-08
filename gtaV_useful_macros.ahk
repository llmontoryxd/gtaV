; ---------------------------------
;		Config
;	    (keys, delay)
; ---------------------------------

; Keys (you may change the keys for you own)
FoodKey := "Delete" ;
VestKey := "End" ;
AFKKey := "'" ; 
ExitAFKKey :="+'" ;
CEOKey := "+?" ;
CPHKey := "+." ;
PersonalVehicleKey := "]" ;
CallMechanicKey := "[" ;
ExitGameKey := "+F4" ;

; Ingame keys (you should enter your ingame bingings here)
ingame_phone := "Up" ;
ingame_imenu := "m" ;
ingame_phoneCall := "Space" ;

; Hotkey mapping
Hotkey, %FoodKey%, Food
Hotkey, %VestKey%, Vest
Hotkey, %AFKKey%, AFK
Hotkey, %ExitAFKKey%, ExitAFK
Hotkey, %CEOKey%, ToggleCEO
Hotkey, %CPHKey%, ToggleCPH
Hotkey, %PersonalVehicleKey%, PersonalVehicle
Hotkey, %CallMechanicKey%, CallMechanic
Hotkey, %ExitGameKey%, ExitGame

; Delay
setkeydelay, 25, 5
phoneDelay := 500 ;
phoneDelay2 := 50 ;
escDelay := 150 ;
exitDelay := 4000 ;

Return


; ---------------------------------
;		Sub
;   (functions, macros, scripts)
; ---------------------------------

; Global variables
CEO = false ;
CPH = false ;
AFKA = false ;

; AFK script (press a and d to move left and right in a loop to not get afk mode and kicked)
AFK:
	global AFKA
	AFKA := true 
		Loop { 
			sleep, 1000
			send, {a}
	
			sleep, 1000
			send, {d}

			if (AFKA = false) {
				break
			}						
		}

Return

; Stop AFK script
ExitAFK:
	global AFKA
	AFKA := false 		
Return 

; Toggle CEO mode
ToggleCEO:
	global CEO	
	if (CEO = false) {
		CEO := true
		
	} else {
		CEO := false
			
	}
	
	Sleep 1000
	
Return

; Toggle Cayo Perico Heist mode
ToggleCPH:
	global CPH
	if (CPH = false) {
		CPH := true
		
	} else {
		CPH := false
			
	}

	Sleep 1000
	
Return

; Function, checking if CEO or CPH mode is activated, and if one (or more) is activated, sending down-key
isAddActivated() {
	global CEO
	global CPH
	if (CEO = false) {
		Send {Down}
	}
	
	if (CPH = false) {
		Send {Down}
		Send {Down}
	}
}





; ---------------------------------
;		Main
;   (functions, macros, scripts)
; ---------------------------------

Vest:
	Send {%ingame_imenu%}
	isAddActivated()
	Send {Down}
	Send {Down}
	Send {Enter}
	Send {Down}
	Send {Down}
	Send {Down}
	Send {Enter}
	Send {Up}
	Send {Up}
	Send {Up}
	Send {Enter}
	Send {%ingame_imenu%}
Return 

Food:
	Send {%ingame_imenu%}
	isAddActivated()
	Send {Down}
	Send {Down}
	Send {Enter}
	Send {Down}
	Send {Down}
	Send {Down}
	Send {Down}
	Send {Enter}
Return

CallMechanic:
	Send {%ingame_phone%}
	Sleep, phoneDelay

	Send {Up}
	Sleep, phoneDelay
	Send {Right}
	Sleep, phoneDelay
	Send {Enter}
	Sleep, phoneDelay
	Send {Space}
	Sleep, phoneDelay
	Send, {Right}
	Sleep, phoneDelay2
	Send, {Right}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Left}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Down}
	Sleep, phoneDelay2
	Send, {Down}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Up}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Down}
	Sleep, phoneDelay2
	Send, {Down}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Up}
	Sleep, phoneDelay2
	Send, {Up}
	Sleep, phoneDelay2
	Send, {Up}
	Sleep, phoneDelay2
	Send, {Left}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send {Right}
	Sleep, phoneDelay2
	Send, {Down}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Up}
	Sleep, phoneDelay2
	Send {Right}
	Sleep, phoneDelay2
	Send, {Enter}
	Sleep, phoneDelay2
	Send, {Space}	
Return

PersonalVehicle:
	Send {%ingame_imenu%}
	isAddActivated()
	Send {Down}
	Send {Down}
	Send {Down}
	Send {Down}
	Send {Enter}
	Send {Enter}
	Send {Esc}
	Send {Esc}
Return

ExitGame:

 	Send {Esc}
	Sleep, escDelay
	Send {Right}
	Sleep, 500
	Send {Enter}
	Sleep, escDelay
	Send {Up}
	Sleep, escDelay
	Send {Enter}
	Sleep, exitDelay
	Send {Enter}
Return





