/**
 * @package Hello_Dolly
 * @version 1.6
 * 
Name: This Pig Script shows the usage of:-Replicated Join
URI: 
Description: 
Version: 1.0
Author URI:  
*/

states = LOAD 'states_ip' Using PigStorage() As (city_code:chararray, city_name:chararray);

temperatues = LOAD 'temperatures' Using PigStorage() As (city_code:chararray, min_tem:int, max_temp:int);

joinrep = JOIN temperatues BY city_code, states BY city_code USING 'replicated';

dump joinrep;
