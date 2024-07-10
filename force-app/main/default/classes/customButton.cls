public class customButton {
   public Parent__c pc{get;set;}
    
    public customButton() {
        pc= new Parent__c();
        //pc.lastname='Vikas';
    }
    
    public pagereference saverec(){
        insert pc; // ID is getting creted here
        pagereference pg= new pagereference('/'+pc.ID);
        return pg;
    }
    
}