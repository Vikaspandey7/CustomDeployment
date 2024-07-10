// Scenario - Writer trigger on opportunity that populate owners manager on opportunity from owners user record
/*trigger OwnerManager on Opportunity (before insert, before update) {
   for (opportunity opp : trigger.new){
       if (opp.OwnerId != null){
          user currentOwner = [select id, managerID from user where ID =: opp.OwnerId]; 
           //this code will break if we insert/update more than 100 opportunity because of SOQL 101 Error 
          opp.Owner_s_Manger__c = currentOwner.managerID;
           }
     }
}
 //this code will break if we insert/update more than 100 opportunity because of SOQL 101 Error 
 //what are our solutions we need to have query outside of the loop.
 //*/
 
/*trigger OwnerManager on Opportunity (before insert, before update) {
    set<Id> allAssociatedOwnerIds = new set<Id> (); // to get unique Id's
   for (opportunity opp : trigger.new){
       allAssociatedOwnerIds.add(opp.OwnerId);      
     }
    List<user> allAssociatedUser = [select id, managerId from user where id IN : allAssociatedOwnerIds];
    // This will avoid SOQL 101 error
    for (opportunity opp : trigger.new){
        for(user currentuser : allAssociatedUser){
            if(opp.OwnerId == currentuser.Id){
                opp.Owner_s_Manger__c = currentuser.ManagerId;
            }
        }      
     }
}

//Never have for loop under for loop
//this approach will work but this also have issue like having a nested loop which is really bad for performance, you may also get governor limits.
// How to avoid it - Maps
 */
trigger OwnerManager on Opportunity (before insert, before update) {
    set<Id> allAssociatedOwnerIds = new set<Id> (); // to get unique Id's
   for (opportunity opp : trigger.new){
       allAssociatedOwnerIds.add(opp.OwnerId);      
     }
    List<user> allAssociatedUser = [select id, managerId from user where id IN : allAssociatedOwnerIds];
    // This will avoid SOQL 101 error
    map<id,id> usertoMangerIds = new map<id,id> ();
    for (user u : allAssociatedUser){
        usertoMangerIds.put(u.id, u.ManagerId);
    }
    for (opportunity opp : trigger.new){
        if (usertoMangerIds.containsKey(opp.OwnerId)) {
            opp.Owner_s_Manger__c = usertoMangerIds.get(opp.OwnerId);
        }     
     }
}