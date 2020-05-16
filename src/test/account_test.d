module account_test;

import account;
import std.stdio;
import core.exception: AssertError;
import std.exception;

//Testing the account class contracts
unittest 
{
    auto account_test = new Account(0);
    assertThrown!AssertError(account_test.deposit(-1));
}

unittest 
{
    auto account_test = new Account(0);
    assertThrown!AssertError(account_test.withdraw(-1));
}

unittest 
{
    auto account_test = new Account(0);
    assertNotThrown!AssertError(account_test.deposit(50));
}



//Testing the account functions
unittest
{
    auto account_test = new Account(0);
    account_test.deposit(400);
    assert(account_test.displayBalance() == 400);
}

unittest
{
    auto account_test = new Account(0);
    account_test.deposit(200);
    account_test.withdraw(100);
    assert(account_test.displayBalance() == 100);
}
unittest
{
    auto account_test = new Account(0);

    account_test.deposit(200);
    account_test.deposit(150);
    account_test.deposit(400);
    account_test.withdraw(100);
    account_test.withdraw(200);
    account_test.withdraw(50);

    assert(account_test.displayBalance() == 400);
}

unittest
{
    auto account_test = new Account(0);

    account_test.deposit(200);
    account_test.deposit(150);
    account_test.deposit(400);
    account_test.withdraw(100);
    account_test.withdraw(200);
    account_test.withdraw(50);

    assert(account_test.returnDeposited() == 750);

}

unittest
{
    auto account_test = new Account(0);

    account_test.deposit(200);
    account_test.deposit(150);
    account_test.deposit(400);
    account_test.withdraw(100);
    account_test.withdraw(200);
    account_test.withdraw(50);

    assert(account_test.returnWithdrawn() == 350);

}