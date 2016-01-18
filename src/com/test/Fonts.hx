package com.test;

import openfl.Assets;
import openfl.errors.Error;
import openfl.text.Font;

class Fonts
{
	static private var _fonts:Map<String, Font>;
	
	private static function init() :Void
	{
		if (_fonts == null)
		{
			_fonts = new Map<String, Font>();
			
			addFont(["arial"], "fonts/arial.ttf");
		}
	}
	
	static private function addFont(names:Array<String>, path:String) :Void
	{
		var font:Font = Assets.getFont(path);
		
		if (font != null)
		{
			for (i in names)
			{
				_fonts.set(i, font);
			}
		}
		else
		{
			throw new Error("Font not found: " + path);
		}
	}
	
	public static function getFontName(name:String):String
	{
		init();
		
		name = name.toLowerCase();
		
		var font:Font = _fonts.get(name);
		
		if (font == null) 
		{
			font = _fonts.get("legionary");
		}
		
		return font.fontName;
	}
}