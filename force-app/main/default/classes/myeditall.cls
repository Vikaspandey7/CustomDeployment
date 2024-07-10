public class myeditall {
    public id recid{get;set;}
    public list<contact> conlis {get;set;}
    public myeditall(){
        conlis = new  list<contact> ();
        recid= ApexPages.CurrentPage().getparameters().get('id');
        conlis = [Select name, title, email, phone from contact where accountid=: recid];
        System.debug('Value' + conlis);
    }
    //public void update(){
        
   // }
    
   public pagereference cancel(){
        pagereference pg = new pagereference('/'+ recid );
        return pg;
    }

}