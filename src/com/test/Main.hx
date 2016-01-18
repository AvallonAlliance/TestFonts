package com.test;

import com.test.Fonts;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.text.AntiAliasType;
import openfl.text.TextField;
import openfl.text.TextFormat;


class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		var format:TextFormat = new TextFormat();
		format.font = com.test.Fonts.getFontName("arial");
		format.color = 0xffffff;
		format.size = 48;
		format.letterSpacing = 10;// <- this not works on iOS and Android
		
		var field:TextField = new TextField();
		field.border = true;
		field.borderColor = 0xffffff;
		field.defaultTextFormat = format;
		field.embedFonts = true;
		field.antiAliasType = AntiAliasType.ADVANCED;
		field.selectable = false;
		field.text = "This Is Test Text";
		field.x = 100;
		field.y = 100;
		field.width = 600;
		field.height = 100;
		addChild(field);
	}

}
