public class AddRemoveHw {
    public string st {get; set;} //String to enter 
    public list<String> st1 {get; set;}
     public integer st2{get;set;}// to get value

    
    public integer a;
    public AddRemoveHw(){
        st1 = new list<String>();
        System.debug('Enter the value');
    }
    
    public void add(){
  
        if(st==''){
           Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,'Please enter value');
         Apexpages.addMessage(msg); 
        }
  
        else if(st1.contains(st)){
            Apexpages.Message msg=new Apexpages.Message(Apexpages.Severity.Error,'Value entered is Duplicate');
         Apexpages.addMessage(msg);
        }

        else{
           st1.add(st);
          a=st1.size();
           st='';
        }   
  }
    
    public void remove(){
        st1.remove(st1.size()-1);
    } 
    
     public void clearall(){
        st1.clear();
    }
    
     public void removeindex()
        { 
            st1.remove(st2);
            
        }
        
}