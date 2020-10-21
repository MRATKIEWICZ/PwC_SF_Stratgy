public class JenkinsCheckStatus {
    
@InvocableMethod(label='Status Check in Jenkins')    
public static void makePostCallout(List<string> MDid) {
conductCallout(MDid[0]);
    }
    
@future( callout=true )
    public static void conductCallout(String MDid){
        Mulesoft_Deployment__c MD = [SELECT Id, Job_Id__c,Environment__c,Status__c,Application_Name__c from Mulesoft_Deployment__c MD WHERE Id = : MDid];
        String JobId = MD.Job_Id__c;
        String[] Sep= jobid.split('item/');
        String param = Sep[1].removeEnd('/');
        System.debug(param);
		Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(System.Label.Jenkins_Request_URL+MD.Environment__c+'/job/'+MD.Application_Name__c+'/api/xml?tree=builds[result,queueId]&xpath=//build[queueId='+param+']');
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 200) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
        Dom.Document doc = response.getBodyDocument();
        Dom.XMLNode build = doc.getRootElement();
        if(build.getChildElement('result', null) != null){
        String result = build.getChildElement('result', null).getText();
        System.debug('This is the result' + result);
        MD.Status__c = result;
        update MD;
                }
		}
    }
}