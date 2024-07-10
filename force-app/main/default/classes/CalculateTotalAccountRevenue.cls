Global class CalculateTotalAccountRevenue implements Database.Batchable<SObject>, Database.Stateful 
{   
    
    Global Decimal totalAnnualRevenue = 0.0;
    Global Database.QueryLocator Start (Database.BatchableContext bContext) 
   {
       
    String accountsQuery = 'Select id, name, rating, industry, AnnualRevenue from Account WHERE AnnualRevenue != Null';
    return Database.getQueryLocator(accountsQuery);
   }
    Global void Execute (Database.BatchableContext bContext, List<SObject> accountRecords)
   {
       if(! accountRecords.isEmpty())
    {      
        for(SObject objRecord: accountRecords){
            //Explicit Type Casting .. (Convert Sobject to Account Type)
            Account accRecord = (Account) objRecord;
            
            // Assign the values..
            totalAnnualRevenue += accRecord.AnnualRevenue;

        }
    }
   }
    
    Global void Finish (Database.BatchableContext bContext)   {
       System.debug('Batch Job is.....' + bContext.getJobId());
    
    //Track the result of the Batch Job..
    AsyncApexJob jobDetails = [Select id, Status, totalJobItems, jobItemsProcessed, numberOfErrors, CreatedBy.Email from AsyncApexJob Where id =:
                                bContext.getJobId()];
    
    // Invoke the Method to send the Email Alerts..
    BatchJobMessagingHelper.SendEmailAlerts(jobDetails, 'CalculateTotalAccountRevenue', totalAnnualRevenue);
           
   }

}