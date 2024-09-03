//Created by Andrew McCluskey http://nalgames.com/

//x,y: Coordinates to draw
//str: String to draw
//arugment3 = outwidth: Width of outline in pixels
//argument4 = outcol: Colour of outline (main text draws with regular set colour)
//argument5 = outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)
//argument6 = separation, for the draw_text_EXT command.
//argument7 = width for the draw_text_EXT command.

function scrp_draw_text_outline(x,y,str,outwidth,outcol,outfidelity,separation,width){
	//2,c_dkgray,4,20,500 <Personal favorite preset. (For fnt_3)
	var dto_dcol=draw_get_color();

	draw_set_color(outcol);

	for(var dto_i=45; dto_i<405; dto_i+=360/outfidelity)
	{
	  //draw_text_ext(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2,argument6,argument7);
	  draw_text_ext(x+round(lengthdir_x(outwidth,dto_i)),y+round(lengthdir_y(outwidth,dto_i)),str,separation,width);
	}

	draw_set_color(dto_dcol);

	draw_text_ext(x,y,str,separation,width);
}