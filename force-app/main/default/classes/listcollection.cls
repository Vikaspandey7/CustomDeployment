public class listcollection {

    public void method(){
       List<String> st= new  List<String>();
       List<String> st1= new  List<String>();
        
        st.add('Pune');
        st.add('Mumbai');
        st.add('Nagpur');
        st.add('Nashik');
        st.add('Thane');
        st.add('Kalyan');
        st1.add('Goa');
        system.debug('Value os string is:-'+st.get(4));
       system.debug('Value os string is:-'+ st);
       system.debug('Value os string is:-'+ st.indexof('Nashik'));// to find at what index
       system.debug('Value os string is:-'+ st.isEmpty());// It will check & return value in true/false.
       system.debug('Value os string is:-'+ st1.isEmpty()); // It will check & return value in true/false.
        
       system.debug('Value os string is:-'+ st.size()); // return size in numeric value
       st.add(3, 'Kharagar'); // Add element at specified position
       system.debug('Value os string is:-'+ st);         
       system.debug('Value os string is:-'+ st.indexof('Nashik'));
       system.debug('Value os string is:-'+ st);
       st.addall(st1);  
       system.debug('Value os string is:-'+ st); //Adding st1 in st.
        
       st1.addall(st);
       system.debug('Value os string is:-'+ st1);//Adding st in st1.
        
       st1=st.clone(); // override
       system.debug('Value os string is:-'+ st1); 
       
       list<contact> cc = new list<contact>();
       cc=[Select id, lastname, phone, email from contact];
       system.debug('Value of contact is:-'+ cc);
       
        for (contact c:cc){//foreach loop
            system.debug('Value are'+ c);
        }
       
    }

}