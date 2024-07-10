public class CommonUtility {
    public static void DoDMLOperations()
    {
        // De- Activate the user record. (Setup Object)
       User userToDeActivate = [SELECT id, firstName, lastName, 
                                email, userName, isActive 
                                FROM User 
                                WHERE userName ='yogesh1@gmail.com' 
                                AND 
                                isActive = true];
        
        if(userToDeActivate.Id!= Null)
        {
            userToDeActivate.IsActive = false;
            Update userToDeActivate;
            
            //Call the Method to create Lead Record
            // CreateLeadRecord();
        }     
           
    }
    
    @future()
     public static void CreateLeadRecord()    {
    
    // Insert a New Lead Record.(Non-Setup Object)
        
        Lead ldRecord = new Lead();
        
        ldRecord.FirstName = 'Test';
        ldRecord.LastName = 'Record';
        ldRecord.Company = 'Wipro Technologies'; 
        ldrecord.Rating = 'Hot';
        ldRecord.Industry = 'Manufacturing'; 
        ldRecord.AnnualRevenue = 2100000; 
        ldRecord.Title = 'Technical Lead';
        ldRecord.Status = 'Working - Contacted';
        ldRecord.Email = 'testrecord@gmail.com';
        ldRecord.Phone = '9900993344';
        ldRecord.Fax = '9944557788';
        ldRecord.Website = 'www.gmail.com';
        ldRecord.LeadSource = 'Web';
        ldRecord.City = 'Pune';
        ldRecord.State = 'Maharashtra ';
        ldRecord.Country = 'India';
        
        INSERT ldRecord;
        
        IF(ldRecord.Id != Null)
            System.debug('Lead Record has been Inserted. Lead Id is ...:' +ldRecord.Id);
    }

}