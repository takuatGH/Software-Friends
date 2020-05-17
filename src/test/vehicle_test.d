module test.vehicle_test;

import vehicle;
import std.math;
import std.stdio;
import core.exception: AssertError;
import std.exception;

//Checking Simple Interest Contracts are throwing appropriate exceptions
unittest 
{
    auto testVehicle = new Vehicle(0);
    assertThrown!AssertError(testVehicle.simpleInterest(6.0,5.4,0)); 
    assertThrown!AssertError(testVehicle.simpleInterest(0,12.4,13.0));
    assertThrown!AssertError(testVehicle.simpleInterest(4.2,0,3.2));
}

//Checking Compound Interest Contracts are throwing appropriate exceptions
unittest
{
    auto testVehicle = new Vehicle(0);
    assertThrown!AssertError(testVehicle.compoundInterest(900,5,5,5));
    assertThrown!AssertError(testVehicle.compoundInterest(1100,-1,5,5));
    assertThrown!AssertError(testVehicle.compoundInterest(1100,5,-1,5));
    assertThrown!AssertError(testVehicle.compoundInterest(1100,5,5,-1));
}


//Checking the outputs of the Simple Interest function
unittest 
{
    auto testVehicle = new Vehicle(0);
    auto interest = testVehicle.simpleInterest(1300,4,4);
    assert(interest == 1508);
}

//Checking the output of the Compound Interest function
unittest
{
    auto testVehicle = new Vehicle(0);
    auto interest = testVehicle.compoundInterest(1005,1,1,1);
    assert(approxEqual(interest, 1015.05));
}