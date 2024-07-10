public class addremove {
public string  st{get;set;}
    public list<String> st1 {get;set;}
    
    public addremove(){
        st1=new list<String>();
        st = '';
    }
    
    public void addit(){
        st1.add(st);
        st='';
    }
    public void removeit(){
        st1.remove(st1.size()-1);
    }
}