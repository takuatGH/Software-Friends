import account;
import std.math;

class Vehicle : Account{

public float amount;
this (float input){
    this.amount = input;
}

/** 
 * Calculate the Simple Interest
 * Params:
 *   principal = the amount to be invested.
 *   rate =  the interest rate for the investment.
 *   time = the period for which the investment will take place.
 * Returns: The Simple Interest for the given parameters.
 */
float simpleInterest(float principal, float rate, float time)
   in 
  {
    assert(time > 0, "An investment can not be seeded for zero units of time.");
    assert(principal != 0, "A null investment cannot be made.");
    assert(rate > 0, "An investment can not have a zero rate.");
  }
  out
  {
    assert(amount == amount, "An investment has to yield a return in some capacity.");
  }
  do
  {
  amount = principal*(1 + (rate/100)*time);
  return amount;
  }
 /** 
  * Calculate the Compound Interest
  * Params:
  *   principal = the amount to be invested.
  *   rate = the interest rate for the investment.
  *   time = the period for which the investment will take place.
  *   frequency = the number of times for which the principal amount will be reinvested.
  * Returns: 
  */

float compoundInterest(float principal, float rate, float time, float frequency)
      in 
    {  assert(principal > 1000, "A principal amount of at least R1001 is needed to use this vehicle.");
       assert(rate > 0, "An account cannot have a zero interest rate.");
       assert(time > 0, "An investment can not be seeded for zero units of time.");
       assert(frequency > 0, "An investment can not have a reinvest frequency of 0.");
    }
    out
    {
      assert(amount > principal, "An investment has to yield a return in some capacity.");
    }
     
     do
    {
     amount=principal*pow((1+(rate/100)),time);
     return amount;
    }
}

