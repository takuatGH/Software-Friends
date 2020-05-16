import account;
class Clients : Account{

    private string pin;
    private string id;

     this(string pinNumber){
     this.pin = pinNumber;
     }

    this(string ID){
        this.id = ID;
    }


    void setPin(string pin)
    in
    {
        assert(pin.sizeof < 8, "ID cannot be greater than 7 characters.");
    }
    out
    {
        assert(pin.sizeof < 8);
    }
    do
    {
        pin = pin;
    }



    void setID(string ID)
    in
    {
        assert(ID.sizeof < 8, "ID cannot be greater than 7 characters.");
    }
    out
    {
        assert(ID.sizeof < 8);
    }
    do
    {
        id = ID;
    }


    int changePin(int pin)
    {
        int newPin;
        return newPin;
    }
}
