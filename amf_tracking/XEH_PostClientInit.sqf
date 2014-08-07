#include "script_component.hpp"
TRACE_1("Process","ClientPostInit");

if(isNil QGVAR(enabled)) exitWith {};

[] spawn FUNC(markerLoop);