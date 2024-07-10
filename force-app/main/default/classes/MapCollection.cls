public class MapCollection {
    public void mapDemoMethod(){
   Map<Integer, String> mp = new Map<Integer, String>();
   Map<Integer, String> mp1 = new Map<Integer, String>();
   mp.put(1, 'USA');
   mp.put(2, 'India');
   mp.put(3, 'UK');
   mp.put(4, 'USSR');
   mp.put(5, 'France');
        mp1.put(1, 'India');
 
     System.debug('Value: ' + mp);
         System.debug('Value: ' + mp.size());
         System.debug('Value: ' + mp.values());
         System.debug('Value: ' + mp.keyset());
         System.debug('Value: ' + mp.containsKey(2));
         System.debug('Value: ' + mp.IsEmpty());
         System.debug('Value: ' + mp.equals(mp1));
        
}
}