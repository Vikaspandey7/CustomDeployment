public class mycustomclass {
    //public string companyname='Vikas'; --- This is static way od declaring 
    //getting the value(get) ---> 
    //Response in the UI that is some thing called sending the value(string, integer, boolean, decimal)
    public string companyname{get;set;}
    public integer empid{get;set;}
    public boolean atttendance{get;set;}
    public decimal currentsalary{get;set;}
    public account acc{get;set;} //here account is api name of account object
    //required -- when ever you are creating the object
    public list<contact> conlist{get;set;}
    //required -- when ever you are creating the object list, set or map do intialize it as well
    public mycustomclass (){
        acc= new account ();// intialization (self start)
        conlist = new list<contact>();// intialization (self start)
        system.debug('Shweta love Vikas');
        // all queries inside the constructer
        method2();
        method3();
        method4();
    }
    public mycustomclass (string aa, string ed){// parameter is a kind of value which we pass dynacially from UI in to constructor
        system.debug('Vikas Shweta love vishu ');
    }
    public mycustomclass (string aa, integer ed){
        system.debug('Hi learn fast');
    }
    public mycustomclass(decimal aa, integer ed){
        system.debug('Hi learn fast');
    }
    //Returnable & non returnable method
    public void method1(){// Method is call by performing action. 
        integer total_Salary;
        integer incentive=50; // local variable
        integer currentsalary=300; 
        total_Salary= incentive+currentsalary;
        System.debug('Total salary including incentive is' + total_Salary);
    }
    public void method2(){// put method in contructor to call automatically
         System.debug('Total salary including incentive is');
    }
     public void method3(){
         System.debug('Total salary including incentive is');
    }
     public void method4(){
         System.debug('Total salary including incentive is');
    }
}