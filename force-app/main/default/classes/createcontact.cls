public class createcontact {
    public contact cc{get;set;}
    
    public createcontact() {
        cc= new contact();
        //cc.lastname='Vikas';
    }
    
    public pagereference save(){
        insert cc; // ID is getting creted here
        pagereference pg= new pagereference('/'+cc.ID);
        return pg;
    }
    
}