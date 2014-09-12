#include "script_component.hpp"

if(!(isNil "e12_amf_perflog_disable")) exitWith {};

// Activate Server debug
if (isServer) then{
	[] spawn FUNC(perfLogServer);    
};