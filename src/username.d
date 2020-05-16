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
    
    int FindUsername(string username) 
    in 
       {
           assert(username != " ", "A Username cannot be empty");
           assert(username.length < 8, "A Username cannot be greater than 7 characters.");
           assert(username.length > 6,"A Username cannot be shorter than 5 characters.");
           foreach (e; username) 
           {
             assert(isAlpha(e), "Usernames must only have alphanumeric characters.");
           }
       }
       out 
       {
           assert(username.length == 7, "A valid username has 6 characters.");
       }
        do
         {  
            int userIndex = 0;
            // File file = File("usernames.txt", "w"); 
            // file.writeln("person1\nperson2\nperson4");
            // file.close();
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

