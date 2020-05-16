module password;

import username;
import std.stdio; 
import std.file;
import std.string;

class Password
{
    Username username_ = new Username();
    this(){};
    private string password = "";
    this(string password)
    {
        this.password = password;
    }

    bool FindPassword(string password, int index_)
    in
    {
        assert(index_ > 0, "The index of a stored password must be strictly positive.");
        assert(password.length < 5, "A Password cannot be greater than 5 characters.");
        assert(password != " ", "A Password cannot be empty.");
        assert(password.length > 3,"A Passord cannot be shorter than 3 characters.");
    } 
    out
    {
        assert(password.length == 4, "A valid Password will be 4 characters long.");
    } 
    do
    {

        int passIndex = 0;
        // File file = File("passwords.txt", "w");
        // file.writeln("1234\n4567\n8910");
        // file.close();

        File file = File("passwords.txt", "r");
        // writeln("Password Location: ", index_);
        // writeln("Attempted Password: ", password);
        while(!file.eof())
        {
            string check_ = chomp(file.readln());
            //passIndex = passIndex + 1;
            //writeln("Current Location: ", passIndex);
            //writeln("Current Password: ", check_);
            if(password == check_ && passIndex == (index_))
            {
                writeln("Password Match Found");
                return 1;
            }
            else if(file.eof())
            {
                writeln("Password Match Not Found");
            }
            passIndex = passIndex + 1;
        }
        file.close();
        return 0;
    } 
}