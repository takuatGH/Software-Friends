//import clients;
import std.stdio;
class Account 
{
    //this(Account){}
    this(){};
    public float currentBalance;
    public float deposited = 0;
    public float withdrawn = 0;
    this(float inputAmount)
    {
        this.currentBalance = inputAmount;
    }
    //Deposit Function and Assertions
    /** 
     * /Deposit Function
     * Params:
     *   x = the input amount a user would use to operate on an account
     *Returns: Does not return anything but computes the new balance.
     */
    void deposit(float x)
    in
    {
         assert (x > 0, "You cannot credit zero credits into an account");
        
    }
    out
    {
        assert((currentBalance != currentBalance + x), "After a deposit, the result cannot be the same as balance before transaction.");
    }
    do
    {
        currentBalance = currentBalance + x;
        deposited = deposited+x;
    }
    
    //Withdraw Function and Assertions
    /** 
     * /Withdraw Function
     * Params:
     *   x = the input amount a user would use to operate on an account
     *Returns: Does not return anything but computes the new balance.
     */
    void withdraw(float x)
    in
    {
         assert (x > 0, "You cannot debit zero credits into an account");
         //assert (typeof(x) )
         //You cannot deposit zero credits.
    }
    out
    {
      assert((currentBalance > 0), "More money than available cannot be taken out of an account");   
    }
    do
    {
        currentBalance = currentBalance - x;
        withdrawn = withdrawn + x;
    }

    //Balance Display Function
    /** 
     *Balance Display Function
     * Params: Does not take Parameters
     * Returns: The current balance.
     */
    float displayBalance()
    {
        return currentBalance;
    }
    
    /** 
     *Total withdrawn Function
     * Params: Does not take Parameters
     * Returns: The total amount that has been withdrawn from the account.
     */
    float returnWithdrawn()
    {
        return withdrawn;
    }
     /** 
     *Total deposited Function
     * Params: Does not take Parameters
     * Returns: The total amount that has been deposited into the account.
     */
    float returnDeposited()
    {
        return deposited;
    }
}