class CfgPatches {
  class AMF_Tracking {
    version = "0.0.1";
    versionStr = "0.0.1";
    versionAr[] = {0,0,1};
    author[] = {"Coati (blang)"};
    authorUrl = "https://github.com/blang/";
    units[] = {};
    weapons[] = {};
    requiredVersion = 0.60;
    requiredAddons[] = {"AMF_Core"};
	};
};

class CfgVehicles {
  class AMF_Module;
  class AMF_Tracking_Module_Enable: AMF_Module {
    displayName = "$STR_AMF_TRACKING_MODULE_ENABLE";
    author = "AMF Team";
    scope = 2;
    isGlobal = 0; //Execute on server
    class Eventhandlers {
      init = "if (isServer) then {amf_tracking_enabled = true; publicVariable 'amf_tracking_enabled'};";
    };
  };
};

class Extended_PreInit_EventHandlers
{
  class AMF_Tracking {
        clientInit = "call compile preprocessFileLineNumbers 'x\amf\addons\tracking\XEH_PreClientInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\amf\addons\tracking\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
    class AMF_Tracking {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\amf\addons\tracking\XEH_PostClientInit.sqf'";
    };  
};