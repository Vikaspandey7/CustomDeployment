public class BatchJobMessagingHelper {
    
    Public static void SendEmailAlerts(AsyncApexJob jobInfo, String jobName, Decimal totalRevenue){
     
     if(jobInfo.Id!=Null){
        
     //Write the code to send the Email Alert...
     Messaging.SingleEmailMessage sEmail = new Messaging.SingleEmailMessage();
    
     String[] toAddress = new String[]{jobInfo.CreatedBy.Email, 'techknowledge191@gmail.com'};
     sEmail.setToAddresses(toAddress);
                        
    
    
    //Sender Display Name 
     sEmail.setSenderDisplayName('HP Customer Support Center.');
                        
     /*if the person clicked on the replay button then automatically it should be 
      adding this cards@icicibank.com as to address by default over.*/
      sEmail.setReplyTo('support@dell.com');
                        
     String emailSubject = 'Dell weekly customer details update batch status alert : ('+ jobName + '(' + jobInfo.Id+')';
     sEmail.setSubject(emailSubject); 
    
     String emailContent = 'Dear Customer Support, <br/> <br/>'+
                              'We are pleased to inform you that your weekly customer detail update. batch has been processed <br/> <br/>'+
                                              'We are pleased to inform you, that your Weekely Customer Details Update Batch has been processed Successfully.'+
                                              'Here are your Batch Job Details.....:<br/> <br/>'+
                                              ' Batch Job Name is....:'+ jobName +
                                              'Batch Job ID.....:'+ jobInfo.Id+
                                              '<br/>Batch Job Status is.....:'+ jobInfo.Status+
                                              '<br/>Total Number of Batches....:'+ jobInfo.TotalJobItems+
                                              '<br/>Number of Batches Processed....:'+ jobInfo.JobItemsProcessed+
                                              '<br/>Number of Batches failed....:'+ jobInfo.numberOfErrors+
                                              '<br/>Batch Job Owner Email Address....:'+ jobInfo.CreatedBy.Email+
                                              '<br/>Batch Job Owner Email Address....:'+ jobInfo.CreatedBy.Email+
                                              '<br/><br/> Total Revenue is ....'+ totalRevenue +
                                              '***<i>This is a Auto-Generated Email. Please Do Not Reply.<br/><br/>'+
                                              'Thanks & Regards, <br/> Customer Support, <br/>, HP Inc.';
                            
                           sEmail.setHtmlBody(emailContent);
    
                           Messaging.sendEmail(new Messaging.SingleEmailMessage[]{sEmail});
                           
        }
    }

}