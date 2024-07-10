public class addrecord {
    
  Public Account accList {get;set;}
  public Contact con{get;set;}
  public List <Contact> conlist{get;set;}
  public String currentRecordId {get;set;}
  public Integer rowIndex {get;set;}
    
  
     
            public addrecord(){
               conlist = new list<Contact>();
               conlist.add(new Contact());
                accList = new account();
                con = new contact();
                currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
                accList.Id = currentRecordId;
                
                
              }
            public void  addcontact(){
            conlist.add(new Contact());
                
            }
    
           public pagereference savecontact(){
               for(Contact con:conlist){
                   con.AccountID =currentRecordId;
                   
               }
             insert conlist;
             return null;
           }
    
          public PageReference deleteRow(){
          rowIndex = Integer.valueOf(ApexPages.currentPage().getParameters().get('rowIndex'));
          conlist.remove(rowIndex);
          return null;
    }
       
          public PageReference cancelmethod(){
              return null;
        }

}