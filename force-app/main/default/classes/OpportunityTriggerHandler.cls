public class OpportunityTriggerHandler {
    public static void handleActivitiesBeforeUpdate(List<Opportunity> newList, Map<ID,Opportunity> oldMap){
        //figure out if stage has been modified or not
        //find the record from new list, compare and find the same record in old list and then check if stage values are different
        //METHOD 1
    /*  Opportunity newopp = newList[0];
        Opportunity oldopp = oldList[0];
        if(newopp.stageName!= oldopp.stageName){
            System.debug('Hi, I M modified');
        }*/
        //METHOD 2
      /*  for (Opportunity newOpp: newList){
            for( Opportunity  oldOpp :oldList){
                if (newOpp.ID == oldOpp.ID && newopp.stageName!= oldopp.stageName){
                     System.debug('Hi, I M modified');
            }
        }
    }  */
        //METHOD 3
        for (Opportunity newOpp: newList){
            //OldMap: key->Value pair Record Id of Opp -> Opportunity Record
            //oldMap.get(newOpp.id).StageName -> return the entire opportunity ->ofcourse with old values
            if (oldMap.get(newOpp.id).StageName!= newOpp.StageName){
                newOpp.Amount = newOpp.Probability * newOpp.ExpectedRevenue;
            }
        }
}
    
    public static void handleActivitiesAfterUpdate(List<Opportunity> oppList){
        list<Task> taskListToInsert = new list<Task>();
        for (Opportunity opp : oppList){
            if (opp.StageName =='Closed Lost'){
                Task taskRec = new Task();
                taskRec.Priority = 'High';
                taskRec.OwnerId = opp.OwnerId;
                taskRec.Description = 'Please split the revenue amongst the team members';
                taskRec.Status = 'Not Started';
                taskRec.subject = 'Split Revenue';
                taskRec.WhatId = opp.Id;
                taskListToInsert.add(taskRec);
            }
        }
        if (!taskListToInsert.isEmpty()){
            UPDATE taskListToInsert;
        }
    }
    
    
    public static void addTeamMember(List<Opportunity> oppList,Map<Id,Opportunity> oldMap){
    }
}