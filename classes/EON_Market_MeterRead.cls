public class EON_Market_MeterRead {
    
@InvocableMethod(label='Callout to ERP')  
public static void makePostCallout(List<string> USid) {
    EON_Usage__c US = [SELECT Id, Callout_to_ERP__c	 from EON_Usage__c US WHERE Id = : USid[0]];
 	US.Callout_to_ERP__c=True;
    update US;
    }
    
}