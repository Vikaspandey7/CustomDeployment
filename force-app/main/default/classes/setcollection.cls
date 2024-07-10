public class setcollection {
 public void display(){
       Set<String> st= new Set<String>();
       Set<String> st1= new Set<String>();
        
        st.add('Pune');
        st.add('Mumbai');
        st.add('Nagpur');
        st.add('Nashik');
        st.add('Thane');
        st.add('Kalyan');
        st1.add('Goa');
        st1.add('Indore');
        st1.add('Banaras');
      system.debug('Value of set is:-'+ st);
      system.debug('Value of set is:-'+ st1);
      
     st.addall(st1);// Add all elements of st1
     system.debug('Value of set is:-'+ st);
     
     st.removeall(st1);// remove all elements of st1
     system.debug('Value of set is:-'+ st);
     
     st.remove('Thane');// remove specified elements of st1
     system.debug('Value of set is:-'+ st);
     
     system.debug('Value of set is:-'+ st.equals(st1)); // return in boolean form (t/f)
     
     system.debug('Value of set is:-'+ st.contains('Mumbai'));// return in boolean form (t/f)
     system.debug('Value of set is:-'+ st1.contains('Mumbai'));// return in boolean form (t/f)
     
     system.debug(st.size());
      system.debug(st1.size());
     
     st.add('Thane');
     system.debug(st.size());
     
     system.debug(st.isempty());
     system.debug(st1.isempty());
     
     system.debug( st.containsall(st1));// True only when all elements are present
     
    st1.clear();
    system.debug('Value of set is:-'+ st1);   
     
    st1=st.clone(); // override
    system.debug('Value os string is:-'+ st1);
    system.debug('Value os string is:-'+ st); 
    
     st.remove('Pune');// remove specified elements of st1
     st.remove('Thane');
     st.remove('Mumbai');
     st.removeall(st);
     system.debug('Value of set is:-'+ st);
     system.debug('Value of set is:-'+ st1);
     
     st.retainall(st1);//dispaly the common value of st by comparing with st1 (if any)
     system.debug('Value of set is:-'+ st);
 }   
}