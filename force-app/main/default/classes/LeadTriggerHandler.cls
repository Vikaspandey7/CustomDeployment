public class LeadTriggerHandler {
    public static void SendEmailToLeads (List <Lead> ldlist){
            if (!ldlist.isEmpty()){
                 List<Messaging.SingleEmailMessage> lstEmailAlerts = new List<Messaging.SingleEmailMessage>();
                
                for (Lead ldRecord: ldlist){
                    // If lead record has email then only send email
                    if (ldRecord.Email != Null && ldRecord.Email != ''){ 
                        Messaging.SingleEmailMessage sEmail = new Messaging.SingleEmailMessage();
                        //Addding two email address, once is lead's Email address and one is sample EmailId
                        String[] toAddress = new String[]{ldRecord.Email, 'techknowledge191@gmail.com'};
                        sEmail.setToAddresses(toAddress);
                        
                        List<String> bccAddress = new List <String>{'akashroy241999@gmail.com'};
                        sEmail.setBccAddresses(bccAddress);
                        
                        List<String> ccAddress = new List <String>{'krishna1522003@gmail.com'};
                        sEmail.setCcAddresses(ccAddress);
                        
                        //Sender Display Name 
                        sEmail.setSenderDisplayName('ICICI Bank Credit Cards.');
                        
                        /*if the person clicked on the replay button then automatically it should be 
                        adding this cards@icicibank.com as to address by default over.*/
                        sEmail.setReplyTo('cards@icicibank.com');
                        
                        String emailSubject = 'Congralutions '+ldRecord.FirstName + ' ' + ldRecord.LastName+ '.....!! Your Credit Card Application Submitted Successfully';
                        sEmail.setSubject(emailSubject);   
                        
                        String emailContent = 'Dear '+ ldRecord.FirstName+' '+ ldRecord.LastName+ ', <br/> <br/>'+
                                              'Thanks for showing your Interest in our Credit Card Services. <br/> <br/>'+
                                              'We are pleased to inform you, that your Credit Card Application has been Submitted Successfully. <br/> <br/>'+
                                              'Here are your Application Details.....:<br/> <br/>'+
                                              'Application Reference Number.....:'+ ldRecord.Id+
                                              '<br/>Application Name.....:'+ ldRecord.FirstName + ' ' + ldRecord.LastName +
                                              '<br/>Company Name.....:'+ ldRecord.Company+
                                              '<br/>Current Designation is....:'+ ldRecord.Title+
                                              '<br/>Application Rating....:'+ ldRecord.Rating+
                                              '<br/>Application Industry Type....:'+ ldRecord.Industry+
                                              '<br/>Current CTC is....:'+ ldRecord.AnnualRevenue+
                                              '<br/>Application Status is....:'+ ldRecord.Status+
                                              '<br/>Application Contact Number is....:'+ ldRecord.Phone+
                                              '<br/>Application Email Address is....:'+ ldRecord.Email+
                                              '<br/>Application Fax Number is....:'+ ldRecord.Fax+
                                              '<br/>Communication Address is.... '+ ldRecord.Street+','+ ldRecord.City+','+ ldRecord.State+','+ ldRecord.Country+','+ldRecord.PostalCode+
                                              '<br/><br/>Application is in order Process. One of our Relationship Manager will contact you shortly. <br/> <br/>'+
                                              'Please Contact on the below Address, if any querires.<br/> <br/>'+
                                              '***<i>This is a System-Generated Email. Please Do Not Reply.<i>'+
                                              '<br/> <br/>Thanks & Regards, <br/> <br/> Credit Card Services,<br/>ICICI Bank Inc.,<br/>Email us: card@icicibank.com';
                            
                           sEmail.setHtmlBody(emailContent);
                        
                        //Prepare the Attachment File...
                           Messaging.EmailFileAttachment attachment = new Messaging.EmailFileAttachment();
                               attachment.setFileName(ldRecord.FirstName+ ' '+ldRecord.LastName+ '.pdf');
                               attachment.setContentType('Application/pdf');
                               //Body is property 
                               attachment.body = Blob.toPdf(emailContent); // Converting String to Pdf Type
                        
                        List<Messaging.EmailFileAttachment> lstAttachments = new List<Messaging.EmailFileAttachment>();
                        lstAttachments.add(attachment);
                        
                        //Add the file to Email...
                           sEmail.setFileAttachments(lstAttachments);
                        
                        //Add the Email to collection...
                           lstEmailAlerts.add(sEmail);
                    }
                }
                
                if(!lstEmailAlerts.isEmpty()){
                    Messaging.SendEmailResult[] results =  Messaging.sendEmail(lstEmailAlerts);
                }
            }
    }
}