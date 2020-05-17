module username;

import std.stdio; 
import std.string;
import std.file;
import std.string;
import std.ascii;


class Username
{
    this(){};
    private string username = "";
    private string password = "";
    this(string password, string username)
    {
        this.password = password;
        this.username = username;
    }
    /** 
 * Check if an inputted username exists in the Username.txt file
 * Params:
 * username = the inputted username it is looking for.
 * Returns: An index marking the location of the username found.
 */
    int FindUsername(string username) 
    in 
       {
           assert(username != " ", "A Username cannot be empty");
           assert(username.length < 8, "A Username cannot be greater than 7 characters.");
           assert(username.length >= 6,"A Username cannot be shorter than 5 characters.");
           foreach (e; username) 
           {
             assert(isAlpha(e), "Usernames must only have alphanumeric characters.");
           }
       }
       out 
       {
           assert(username.length == 7 || username.length == 6, "A valid username has either 6 or 7 characters.");
       }
        do
         {  
            int userIndex = 0;
            File file = File("usernames.txt", "r");
            while (!file.eof())
            {
            string check_ = chomp(file.readln());
            if(username == check_)
            {
                writeln("Username Found");
                break;
            }
            else if(file.eof())
            {
                writeln("Username Not Found");
            }
            userIndex = userIndex + 1;
            } 
                file.close();
                return userIndex;
        
        } 
}

