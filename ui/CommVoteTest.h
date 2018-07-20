#include "CustomControlClasses.h"
class CommVoteTest
{
	idd = 1500;
	enableSimulation = true;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class Dilledong
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.28819445;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.48611112;
			style = 0;
			text = "";
			colorBackground[] = {0,0.2,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class FirstText
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.0625;
			style = 0+2+192;
			text = "Vote commander";
			colorBackground[] = {0.102,0.302,0.102,1};
			colorText[] = {0.502,0.702,0.502,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			tooltipColorBox[] = {0.502,0.502,0.502,1};
			
		};
		class Applicants
		{
			type = 5;
			idc = 124;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.29861112;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.427013889;
			style = 16;
			colorBackground[] = {0.4,0.4,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.902,0.902,0.8,1};
			colorText[] = {0.702,0.702,0.302,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class RunForComm
		{
			type = 16;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.37239584;
			y = safeZoneY + safeZoneH * 0.73703704;
			w = safeZoneW * 0.109375;
			h = safeZoneH * 0.02777778;
			style = 2;
			text = "Run for commander";
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureDisabled = "#(argb,8,8,3)color(0.2,0.2,0.2,1)";
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
			color[] = {1,1,1,1};
			color2[] = {1,0.702,0.4,1};
			colorBackground[] = {0.6,0,0,1};
			colorBackground2[] = {0.102,0.102,0.102,1};
			colorBackgroundFocused[] = {0,0,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {1,0.7131,0,1};
			font = "PuristaMedium";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1.0};
			textureNoShortcut = "";
			onButtonClick = "[player] call CNC_fnc_runForCommPlayer;";
			shadow = 0;
			shortcuts[] = {};
			tooltipColorBox[] = {0,0,0,1};
			tooltipColorText[] = {1,1,1,1};
			class HitZone
			{
				top = 0;
				right = 0;
				bottom = 0;
				left = 0;
				
			};
			class ShortcutPos
			{
				top = 0;
				left = 0;
				w = 0;
				h = 0;
				
			};
			class TextPos
			{
				top = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2;
				right = 0.005;
				bottom = 0;
				left = 0.25 * (((safezoneW / safezoneH) min 1.2) / 40);
				
			};
			
		};
		class VoteAsComm
		{
			type = 16;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.51074219;
			y = safeZoneY + safeZoneH * 0.73958334;
			w = safeZoneW * 0.11523438;
			h = safeZoneH * 0.02430556;
			style = 0;
			text = "Vote as commander";
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureDisabled = "#(argb,8,8,3)color(0.2,0.2,0.2,1)";
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
			animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
			color[] = {1,1,1,1};
			color2[] = {1,0.902,0.6,1};
			colorBackground[] = {0.102,0.302,0.102,1};
			colorBackground2[] = {0.102,0.102,0.102,1};
			colorBackgroundFocused[] = {0,0,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {1,0.7131,0,1};
			font = "PuristaMedium";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1.0};
			textureNoShortcut = "";
			onButtonClick = "[lbCurSel 124] call CNC_fnc_voteAsComm";
			class HitZone
			{
				top = 0;
				right = 0;
				bottom = 0;
				left = 0;
				
			};
			class ShortcutPos
			{
				top = 0;
				left = 0;
				w = 0;
				h = 0;
				
			};
			class TextPos
			{
				top = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2;
				right = 0.005;
				bottom = 0;
				left = 0.25 * (((safezoneW / safezoneH) min 1.2) / 40);
				
			};
			
		};
		
	};
	
};
