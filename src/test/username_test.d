module test.username_test;

import username;
import std.stdio;
import std.file;
import core.exception: AssertError;
import std.exception;

void tre()
{
    File file = File("usernames.txt", "r");
}
//Testing output for empty username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.FindUsername(" "));
}
//Testing output for short username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.FindUsername("csdfe"));
}
//Testing output for long username string
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.FindUsername("csdreabdfe"));
}
//Testing output for a valid username
// unittest 
// {   
//     auto username_test = new Username();
//     assertNotThrown!AssertError(username_test.FindUsername("Mocnha"));
// }
//Testing output for a username of valid length but non alphanumeric characters
unittest 
{   
    auto username_test = new Username();
    assertThrown!AssertError(username_test.FindUsername("45$%v#vs"));
}