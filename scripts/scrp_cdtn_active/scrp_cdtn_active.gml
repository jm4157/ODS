// A collectin of functions that check what parts of the game are active


/// @function            after_date(date);
/// @param {real}  date  The date to check
/// @description         Checks if it is after date

function after_date(date){
	return global.date > date;
}


/// @function            before_date(date);
/// @param {real}  date  The date to check
/// @description         Checks if it is before date

function before_date(date){
	return global.date < date;
}


/// @function            is_date(date);
/// @param {real}  date  The date to check
/// @description         Checks if it is currently date

function is_date(date){
	return global.date == date;
}


/// @function            after_time(time);
/// @param {real}  time  The time to check
/// @description         Checks if it is after time

function after_time(time){
	return global.time > time;
}


/// @function            before_time(time);
/// @param {real}  time  The date to check
/// @description         Checks if it is before time

function before_time(time){
	return global.time < time;
}


/// @function            is_time(time);
/// @param {real}  time  The time to check
/// @description         Checks if it is currently time

function is_time(time){
	return global.time == time;
}


/// @function            after_datetime(date, time);
/// @param {real}  date  The date to check
/// @param {real}  time  The time to check
/// @description         Checks if it is after date and time

function after_datetime(date, time){
	return global.date > date || (global.date == date && global.time > time);
}


/// @function            before_datetime(date, time);
/// @param {real}  date  The date to check
/// @param {real}  time  The time to check
/// @description         Checks if it is before date and time

function before_datetime(date, time){
	return global.date < date || (global.date == date && global.time < time);
}


/// @function            is_datetime(datetime);
/// @param {real}  date  The date to check
/// @param {real}  time  The time to check
/// @description         Checks if it is currently date and time

function is_datetime(date, time){
	return global.date == date && global.time == time;
}


/// @function     hand_empty();
/// @description  Checks if Oolong is holding something

function hand_empty(){
	return global.inventory[INVEN_HAND] == EMPTY;
}


/// @function          is_active_layer(lay);
/// @param {real} lay  The layer to check
/// @description       Checks if lay is currently active

function is_active_layer(lay){
	return global.active_layer <= lay;
}


/// @function                is_affection_target(character);
/// @param {real} character  The character to check
/// @description             Checks if Oolong is trying to date character
function is_affection_target(character){
	return global.pointer[GLOBAL_PATH] == character;
}
