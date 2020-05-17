module run;

import account;
import vehicle;
import std.stdio;
import std.math;
import std.conv;

class Run
{
  void main()
  {    
    string response = " ";
    Account myAccount = new Account(0);
    writeln("**ELEN 4010 Banking**");
    writeln("Press 'Y' to perform deposits/withdrawals, or 'E' to exit.");

    readf("%s\n", &response);

    while (response != "E")
    {
      if (response == "Y")
      {
        response = " ";
        writeln("How many transaction(deposits/withdraws) would you like to make?");
        readf("%s\n", &response);
        const j = to!int(response);
        int g = j-1;

        for (int i=0; i<j; i++)
        {
          writeln("To deposit, press 'D' to withdraw, press 'W'.");
          readf("%s\n", &response);
          if(response == "D")
          {
          writeln("Enter amount:");
          readf("%s\n", &response);
          float amount = to!float(response);
          myAccount.deposit(amount);
          }

          else if (response == "W")
          {
          writeln("Enter amount:");
          readf("%s\n", &response);
          float amount = to!float(response);
          myAccount.withdraw(amount);
          }
          writeln("Successful, ", g--, " operation(s) remaining.");
        }  
        auto a = myAccount.returnDeposited();
        auto b = myAccount.returnWithdrawn();
        auto c = myAccount.displayBalance();

        writeln("You have performed R" , a, " worth of deposits, and R", b, " worth of withdrawals.");
        writeln("You current account has a balance of R", c, ".");
      }
      writeln(" ");
      writeln("To invest in a Simple Interest account, press 'S', for Compound Interest, press 'C' or 'E' to exit.");
      readf("%s\n", &response);
      Vehicle invest = new Vehicle(0);
      if (response == "S")
      { 
        writeln("Input the interest rate you qualify for: ");
        readf("%s\n", &response);
        float rate = to!float(response);

        writeln("Input the investment duration: ");
        readf("%s\n", &response);
        float duration = to!float(response);

        auto principal = myAccount.displayBalance();
        auto returns = invest.simpleInterest(principal,rate,duration);
        writeln(">>>> ", returns);
        writeln("On a simple interest basis your R", principal, " investment becomes R", returns,".");
      }
      else if (response == "C")
      {
        writeln("Input the interest rate you qualify for: ");
        readf("%s\n", &response);
        float rate = to!float(response);

        writeln("Input the investment duration: ");
        readf("%s\n", &response);
        float duration = to!float(response);

        writeln("Input many times in the above duration would you like to reinvest: ");
        readf("%s\n", &response);
        float reinvestment = to!float(response);

        auto principal = myAccount.displayBalance();
        auto returns = invest.compoundInterest(principal,rate,duration,reinvestment);
        writeln(">>>> ", returns);
        writeln("On a compound interest basis your R", principal, " investment becomes R", returns,".");
      }
    }
    writeln("Thank you for using the service.");
  }
}