import account;
import std.math;

class Vehicle : Account{

public float amount;
this (float input){
    this.amount = input;
}

float simpleInterest(float x,float principal, float rate, float time)
   in//Requires any amount of money as a principal investment. 
  {
    assert(rate != 0, "An account cannot have a zero interest rate.");
    assert(time != 0, "An investment can not be seeded for zero units of time.");
    assert(principal != 0, "A null investment cannot be made.");
  }//This method returns the simple interest 
  out
  {
    assert(amount != amount, "An investment has to yield a return in some capacity.");
  }
  do
  {
  amount = principal*(1 + rate*time);
  return amount;
  }
    


float compoundInterest(float x,float currentBalance, float rate, float time, float frequency)
      in //Requires at least 1000 as a principal investment.
     //This method returns the compound interest.
    {  assert(currentBalance > 1000, "A principal amount of at least R1000 is needed to use this vehicle.");
       assert(rate != 0, "An account cannot have a zero interest rate.");
       assert(time != 0, "An investment can not be seeded for zero units of time.");
    }
    out
    {
      assert(amount != amount, "An investment has to yield a return in some capacity.");
    }
     
     do
    {
     amount = currentBalance*(1 + (rate/frequency));//^(frequency*time);
     amount = pow(amount, (frequency*time));
     return amount;
    }
}

