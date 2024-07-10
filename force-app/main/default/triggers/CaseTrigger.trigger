trigger CaseTrigger on Case (before insert) {
    if (Trigger.isBefore && Trigger.isInsert){
        for(Case cRec: Trigger.New){
            if(cRec.Origin == 'Phone'){
                cRec.Priority = 'High';
            }else{
                 cRec.Priority = 'Low';
            }
        }
    }
}