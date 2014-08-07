#include "script_component.hpp"

TRACE_1("Process","PreInit");

//Nonai 
if(isMultiplayer) then {
    LOG("is Multiplayer");
 	FUNC(NonAi) = {
	  	{
	        if(_x in playableunits) exitWith{true};
	        
	    } foreach _this;
    };
}else{
    LOG("Non Multiplayer");
    FUNC(NonAi) = {
	  	{
	        if(_x in switchableunits) exitWith{true};
	        
	    } foreach _this;
    };
};

//aliveNonai 
if(isMultiplayer) then {
    LOG("is Multiplayer");
 	FUNC(AliveNonAi) = {
	  	{
	        if((_x in playableunits) && alive _x) exitWith{true};
	        
	    } foreach _this;
    };
}else{
    LOG("Non Multiplayer");
    FUNC(AliveNonAi) = {
	  	{
	        if((_x in switchableunits) && alive _x) exitWith{true};
	        
	    } foreach _this;
    };
};

//Nonai onground
if(isMultiplayer) then {
    LOG("is Multiplayer");
 	FUNC(NonAiOnGround) = {
	  	{
	        if((_x in playableunits) && (((getPos _x) select 2) < 3)) exitWith{true};
	        
	    } foreach _this;
    };
}else{
    LOG("Non Multiplayer");
    FUNC(NonAiOnGround) = {
	  	{
	        if((_x in switchableunits) && (((getPos _x) select 2) < 3)) exitWith{true};
	        
	    } foreach _this;
    };
};

//Alive Nonai onground
if(isMultiplayer) then {
    LOG("is Multiplayer");
 	FUNC(AliveNonAiOnGround) = {
	  	{
	        if((_x in playableunits) && alive _x && (((getPos _x) select 2) < 3)) exitWith{true};
	        
	    } foreach _this;
    };
}else{
    LOG("Non Multiplayer");
    FUNC(AliveNonAiOnGround) = {
	  	{
	        if((_x in switchableunits) && alive _x && (((getPos _x) select 2) < 3)) exitWith{true};
	        
	    } foreach _this;
    };
};