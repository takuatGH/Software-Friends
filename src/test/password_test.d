module test.password_test;

import password;
import std.stdio;
import core.exception: AssertError;
import std.exception;

//Testing output for empty password string
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(username_test.username == " ");
}
//Testing output for a short password
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(username_test.username == "12");
}
//Testing output for a long password
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(username_test.username == "145682");
}
//Testing output for a correct password
unittest 
{   
    auto password_test = new Password();
    assertNotThrown!AssertError(username_test.username == "4678");
}