public class PositionQueueableHelper implements System.Queueable
{
    
    Hiring_Manger__c hrInfo; // Third party variable to access hrRecord
    
    public PositionQueueableHelper(Hiring_Manger__c hrRecord)
    {
        hrInfo = hrRecord;
    }
    
    Public void Execute (System.QueueableContext qContext)
    {
        // Write the code for related Position Record
        // 
        if(hrInfo.Id != Null)
        {
            Position__c pos = new Position__c();

            pos.Name = 'Java Developer';
            pos.Location__c = 'Mumbai, India';
            pos.Open_Date__c = System.today(); 
            pos.Min_Pay__c = 120000;
            pos.Max_Pay__c = 190000;
            pos.Job_Description__c = 'Required 4+ year of Experience in Java Applicatiom Development';
            pos.Skills_Required__c = 'Required 4+ year of Experience in Java Applicatiom Development';
            pos.Hiring_Manager__c = hrInfo.Id;
            
            Insert pos;
            
            if(pos.Id !=Null)
                System.debug('Position Record Inserted Succesfully. Record Id is ...:'+pos.Id);
        }
    }

}
/*
 PositionQueueableHelper pHelper = new PositionQueueableHelper();

 */