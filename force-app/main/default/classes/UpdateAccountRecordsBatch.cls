Global class UpdateAccountRecordsBatch implements Database.Batchable<SObject>
{
    Global Database.QueryLocator start(Database.BatchableContext bContext){
        
        String accountsQuery = 'Select id, Rating, Type, Ownership, CustomerPriority__c from Account';
        return Database.getQueryLocator(accountsQuery);
        
    }
    Global void execute(Database.BatchableContext bContext, list<Sobject> recordsToBeProcess){
        
        
        if(!recordsToBeProcess.isEmpty()){
            List<Account> accList = New List <Account>();
            for (Sobject accRecord: recordsToBeProcess){
                Account objRecord = (Account) accRecord;
                
                objRecord.Rating = 'Hot';
                objRecord.Type = 'Customer Channel';
                objRecord.Ownership = 'Public';
                objRecord.CustomerPriority__c = 'High';
                accList.add(objRecord);
                
            }
            if(!accList.isEmpty()){
                Update accList;
            }
        }
    }
    Global void finish(Database.BatchableContext bContext){
        
        System.debug('Btach Job id'+ bContext.getJobId());
        
        //to monitor theprogress
        
        AsyncApexJob jobDetails = [Select id, status, jobType, jobItemsProcessed, totalJobItems, numberOfErrors, CreatedBy.Email from AsyncApexJob WHERE ID=:bContext.getJobId()];
    }
}