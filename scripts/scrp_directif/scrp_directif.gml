// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrp_directif(variable, operator, val, directions, commands, stage){
	var condition;
	
	//Get from the variable string which variable we want
	var index = script_execute(scrp_stringtopointerint, variable);
	var test = global.pointer[index];
	
	//Check if condition is filled
	switch (operator){
		case "equals":      condition = test == val; break;
		case "lessthan":    condition = test <  val; break;
		case "greaterthan": condition = test >  val; break;
		case "atleast":     condition = test >= val; break;
		case "atmost":      condition = test <= val; break;
		default: show_error("Invalid operator '" + operator + "' provided.", false); 
	}
	
	//If so, exectute directions with commands appended afterwards
	if (condition){
		var remains = directions;
		for (var i = 0; i < array_length(commands); i++){
			array_push(remains, commands[i]);
		}
		
		script_execute(scrp_dialoguemanager, remains, stage);
		//script_execute(scrp_dialoguemanager, commands);
	}
	//If not, just execute commands
	else{
		script_execute(scrp_dialoguemanager, commands, stage);
	}
}