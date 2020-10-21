public class JenkinsCallout {
    
@InvocableMethod(label='Callout to Jenkins')    
public static void makePostCallout(List<string> MAid) {
conductCallout(MAid[0]);
    }
    
@future( callout=true )
public static void conductCallout(String MAid) {
        Mulesoft_Application__c MA = [SELECT Id, Job_URL__c,Application_Name__c,Version__c,Current_Environment__c,User_Story_Id__c from Mulesoft_Application__c MA WHERE Id = : MAid];
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(MA.Job_URL__c);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getHeader('Location'));
			String locId = response.getHeader('Location');
            String environment = MA.Current_Environment__c;
            if(environment.contains('SO')){environment='DEV';}
            else{if(environment.contains('DEV')){environment='INT';} 
                 else{
                   if(environment.contains('INT')){environment='QA';}
                     else{if(environment.contains('QA')){environment='PRD';}}
                 }  
                }
            String MDName = 'Deployment for: ' + MA.Application_Name__c+', '+MA.Version__c;
			Mulesoft_Deployment__c MD = new Mulesoft_Deployment__c(Name=MDName, Job_Id__c=locId, User_Story__c=MA.User_Story_Id__c,Status__c='Pending', Start_Date__c=system.now(),Environment__c=environment,Mulesoft_Application__c=MA.Id,Application_Name__c=MA.Application_Name__c,Version__c=MA.Version__c);
            insert MD;
        }
    }    
}