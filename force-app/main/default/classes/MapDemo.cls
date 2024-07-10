public class MapDemo {
    public void mapDemoMethod(){
        Map<Integer,String> intToStrMap = new Map<Integer,String>();
        Map<Integer,String> intToStrMap1 = new Map<Integer,String>();
        intToStrMap.put(1,'Sakshi');
        intToStrMap.put(2,'Vikas');
        intToStrMap.put(3,'Shweta');
        System.debug('intToStrMap'+intToStrMap);
        
        intToStrMap.put(2,'Khushi');// overriding the value of key 2.
        System.debug('intToStrMap'+intToStrMap);
        
        intToStrMap.remove(1);// removing value at key 1.
        System.debug('intToStrMap->'+intToStrMap.size());// Checking Size.
        
        System.debug('intToStrMap->'+ intToStrMap.values());// Checking values of Map.
        
        //Method 2 (Assign Value to paricular data type)
        List<String> strList = new List<String>(); 
        strList = intToStrMap.values(); // Assigning values of intToStrMap to strList 
         System.debug('intToStrMap->'+ strList);
        
         System.debug('intToStrMap->'+ intToStrMap.keySet());// Checking keySet of Map.
        
         //Method 2 (Assign keySet to paricular data type)
        Set<Integer> strList1 = new Set<Integer>(); // Because keyvalue are integer.
        strList1 = intToStrMap.keySet(); // Assigning keySet of intToStrMap to strList 
         System.debug('intToStrMap->'+ strList1);
        
        // Note: Value are store in list because it can be duplicate.
        // Note: ValKetSet are store in Set because it can't be duplicate.
        
        intToStrMap1=intToStrMap.clone();// Clone all data
        System.debug('intToStrMap->'+ intToStrMap);//cloned value of intToStrMap
        System.debug('intToStrMap1->'+ intToStrMap1);
        
        System.debug('intToStrMap->'+ intToStrMap.containsKey(2));// Return T/F at key 2
        
        System.debug('intToStrMap->'+ intToStrMap.equals(intToStrMap1));// compares key value pairof both map and return in t/f.
        
        System.debug('intToStrMap->'+ intToStrMap.get(3)); // Get value of key 2 in output
        
        System.debug('intToStrMap1->'+ intToStrMap1.isEmpty()); // Checking whwether map is empty is not
        
        Map<ID,Account> IdToAccountMap = new Map<ID,Account> ([SELECT ID, Name from account LIMIT 2]);
        System.debug('IdToAccountMap->'+ IdToAccountMap);
        
        //for (Account acc:IdToAccountMap){
         //  System.debug('IdToAccountMap->'+ IdToAccountMap);  
        //}   -------- Not Working
        
       intToStrMap.clear();// Clear all data 
       System.debug('intToStrMap->'+ intToStrMap);
        
    }

}