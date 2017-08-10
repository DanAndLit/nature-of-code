//Nature of Code 
//Exercise I.2
//What is the probability of drawing two aces in a row from
//a deck of fifty-two cards?
//Executed by Dan Anderson-Little
//July 2017

float initial_ace = 4.0;
float initial_card = 52.0;

float initial_prob = initial_ace / initial_card;

float second_ace = 3.0;
float second_card = 51.0;

float second_prob = second_ace / second_card;

float final_prob = initial_prob * second_prob * 100;

str(final_prob);

println(final_prob + " percent");