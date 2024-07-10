trigger OpportunityTrigger on Opportunity (after Update, before update) {
    if (Trigger.isBefore && Trigger.isUpdate){
        OpportunityTriggerHandler.handleActivitiesBeforeUpdate(Trigger.New,Trigger.OldMap);
    }
    
    if (Trigger.isAfter && Trigger.isUpdate){
        OpportunityTriggerHandler.handleActivitiesAfterUpdate(Trigger.New);
    }

}