import run;
import std.stdio;
import password;
import username;


void main() {  

   Run myRun = new Run();
   Username clientName = new Username();
   Password clientPass = new Password(); 
   string username = " ";
   string password = " ";

   writeln("Enter your username: ");
   readf("%s\n", &username);
   writeln("Enter your password: ");
   readf("%s\n", &password);
   
   auto validateUser = clientName.FindUsername(username);
   const validatePass = clientPass.FindPassword(password, validateUser);
   if (validatePass)
   {
    writeln("Credentials Approved. \n\n");
    myRun.main();
   }
   else
   {
       writeln("Credentials Incorrect. Goodbye.");
   }
}