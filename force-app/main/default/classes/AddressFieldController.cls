public class AddressFieldController {
  
    public Insurance_Policy__c record{get; private set;}
    public Account acct{get; private set;}
    
  public AddressFieldController(ApexPages.StandardController stdcontroller) {
    
     
      record = (Insurance_Policy__c)stdController.getRecord();
     // ID carrier = record.Carrier__c;
      
    //  acct = [SELECT Id, Name, BillingCountry, BillingPostalCode, BillingState, BillingCity, BillingStreet, 
           //   BillingLatitude, BillingLongitude 
           //  FROM Account WHERE Id = :carrier
         //  ]; 
  } 
}