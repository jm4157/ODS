// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_stringtoroom(str){
	switch (str){
		case "HALLWAY_A": return rm_hallway_a
		case "HALLWAY_B": return rm_hallway_b
		case "HALLWAY_C": return rm_hallway_c
		case "HALLWAY_D": return rm_hallway_d
		case "HALLWAY_E": return rm_hallway_e
		case "CLASSROOM_A": return rm_classroom_a
		case "CLASSROOM_B": return rm_classroom_b
		case "CLASSROOM_C": return rm_classroom_c
		case "CLASSROOM_D": return rm_classroom_d
		case "OFFICE": return rm_office
		case "RESTROOM": return rm_restroom
		case "ENDING_DATELESS": return rm_ending_dateless 
		case "ENDING_SUPERFRIENDS": return rm_ending_superfriends
		case "ENDING_NSFW" : return rm_ending_osha
		case "WEDNESDAY": return rm_wednesday
		case "FRIDAY": return rm_friday
		default: show_error("Invalid room '" + string(str) + "' provided.", true)
	}
}