public class AccConOpp {
public Account ac{set;get;}
    public Contact cc{set;get;}
    public Opportunity oc{set;get;}
   
    
    public AccConOpp()
    {
        ac=new Account();
        cc=new Contact();
        oc=new Opportunity();
    }

public pagereference save()
{
   insert ac;
   cc.AccountId=ac.Id;
    insert cc;
  oc.Accountid=ac.Id;
   insert oc;
 
  pagereference pf=new pagereference('/' + ac.id   );
    return pf;
   

}
    public pagereference cancel()
{
     pagereference gf=new pagereference('/apex/AccConOpp');
        return gf;
}
}