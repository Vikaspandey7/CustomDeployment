public class ACCCLASS {
    
  @InvocableMethod
    public static void method(List<ID> accids){
        
        List<Opportunity> opplist=new List<Opportunity> ();
        
        List<Account>accli=[Select id, name, phone, industry from account where id =:accids];
        
        for(Account aa: accli){
            Opportunity opp=new Opportunity();
            opp.Name=aa.name;
            opp.CloseDate=System.today()+15;
            opp.StageName='Value Proposition';
            opp.AccountId=aa.id;
            opplist.add(opp);
   
        }
        
        insert opplist;
    }
}