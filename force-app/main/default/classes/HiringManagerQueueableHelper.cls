public class HiringManagerQueueableHelper implements System.Queueable
{  
   Public void Execute (System.QueueableContext qContext)
   {
       // Write the Code to Insert a Hiring Manager Record... 
            Hiring_Manger__c hrRecord = new Hiring_Manger__c();
               hrRecord.Name = 'Bhuvan Kumar';
               hrRecord.Location__c = 'India';
               hrRecord.Designation__c = 'HR Recuriter';
               hrRecord.Email_Address__c = 'bhuvan.kumar@gmail.com'; 
               hrRecord.Contact_Number__c = '9900334478';
               hrRecord.Current_CTC__c = 1000000;
            Insert hrRecord;
       
       If(hrRecord.id!= NUll)
       {
           System.debug('Hiring Manager Record Inserted Sucessfully. Record Id...' + hrRecord.Id);
           
           //Invoke the PositionQueueable....
           Id jobId = System.enqueueJob(new PositionQueueableHelper(hrRecord));
           
           AsyncApexJob jobDetails = [Select id, status, totalJobItems, jobItemsProcessed,
                                                            numberOfErrors,CreatedBy.Email
                                                                from AsyncApexJob
                                                                    Where id=: jobId ];        
       }
    }
}