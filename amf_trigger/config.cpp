class CfgPatches {
	class AMF_Trigger {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.60;
		requiredAddons[] = {"AMF_Core"};
		author[] = {"blang (ported to A3 by ugene143)"};
		version = "0.0.1";
		versionStr = "0.0.1";
		versionAr[] = {0,0,1};
		authorUrl = "https://github.com/echo12/";
	};
};

class Extended_PreInit_EventHandlers {
	class AMF_Trigger {
        clientInit = "call compile preprocessFileLineNumbers 'x\amf\addons\trigger\XEH_PreInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\amf\addons\trigger\XEH_PreInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers {
	class AMF_Trigger {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\amf\addons\trigger\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\amf\addons\trigger\XEH_PostServerInit.sqf'";
    };  
};