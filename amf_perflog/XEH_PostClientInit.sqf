#include "script_component.hpp"

if(!(isNil "e12_amf_perflog_disable")) exitWith {};

//Execute on HC
if (!hasInterface && !isServer) then{
	[] spawn FUNC(perfLogHC);    
};


