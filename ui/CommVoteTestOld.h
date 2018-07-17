//Exported via Arma Dialog Creator (https://github.com/kayler-renslow/arma-dialog-creator)

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
			font = "TahomaB";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			tooltipColorBox[] = {0.502,0.502,0.502,1};
			
		};
		class Applicants
		{
			type = 5;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.29861112;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.42013889;
			style = 16;
			colorBackground[] = {0.4,0.4,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.902,0.902,0.8,1};
			colorText[] = {0.702,0.702,0.302,1};
			font = "TahomaB";
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
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.37695313;
			y = safeZoneY + safeZoneH * 0.73611112;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "Run for commander";
			borderSize = 0;
			colorBackground[] = {0.6,0,0,1};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "TahomaB";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class VoteAsComm
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.50390625;
			y = safeZoneY + safeZoneH * 0.73611112;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.03819445;
			style = 0+2;
			text = "Vote as commander";
			borderSize = 0;
			colorBackground[] = {0.702,0.702,0.102,1};
			colorBackgroundActive[] = {1,0.902,0.502,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "TahomaB";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
