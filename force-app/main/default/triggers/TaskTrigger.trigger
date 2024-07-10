trigger TaskTrigger on Task (before insert) {
    if (Trigger.isBefore && Trigger.isInsert){
        for(Task tkRec: Trigger.new){ 
            tkRec.Priority = 'High';
            //update TaskRecord - governor limit - DM(150) && SOQL(150)
        }
    }
}