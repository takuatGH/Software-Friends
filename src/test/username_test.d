module test.username_test;

import username;
import std.stdio;
import core.exception: AssertError;
import std.exception;

//Testing output for empty username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.username == " ");
}
//Testing output for short username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.username == "csdfe");
}
//Testing output for long username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.username == "csdreabdfe");
}
//Testing output for a valid username
unittest 
{   
    auto username_test = new Username();
    assertNotThrown!AssertError(username_test.username == "person2");
}
//Testing output for a username of valid length but non alphanumeric characters
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.username == "45$%v#vs");
}