module test.password_test;

import password;
import std.stdio;
import std.file;
import core.exception: AssertError;
import std.exception;

void unitmain()
{
    File file = File("passwords.txt", "r");
}
//Testing output for empty password string
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(password_test.FindPassword(" ", 0));
}
//Testing output for a short password
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(password_test.FindPassword("12",0));
}
// //Testing output for a long password
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(password_test.FindPassword("145682",0));
}
// //Testing output for a correct password
// unittest 
// {   
//     auto password_test = new Password();
//     assertNotThrown!AssertError(password_test.FindPassword("4678",0));
// }
// //Testing out for a password of correct length but with an alphanumeric character
unittest 
{   
    auto password_test = new Password();
    assertThrown!AssertError(password_test.FindPassword("482#",0));
}
