public class DomDocument {

    public DomDocument(ApexPages.StandardController controller) { }

 
    //Markitspaces Standard REST/ XML service--scenario ISO ERC connection
    // Pass in the URL for the rating request
    // For the purposes of this sample,assume that the URL
    // returns the XML shown above in the response body
  
    @invocablemethod (label='Get ISO Rate' description='ISO callout' callout=true)
    
    static public list<decimal> parseResponseDom(list<string> url)
    
    {
        //Http h = new Http();
        //HttpRequest req = new HttpRequest();
        
        //extract target URl from list
        //string url1 = url.get(0);
        
       //url that returns the XML in the response body
        //req.setEndpoint(url1);
        //req.setMethod('GET');
        
     	//HttpResponse res = h.send(req);
     	//Dom.Document doc = res.getBodyDocument();
         Dom.Document doc = new Dom.Document();
       //System.debug('URL: ' + res.getBodyDocument());
       //Retrieve the root element for this document.
       //
       Dom.XmlNode dataset = doc.createRootElement('root','http://defaultns/','');
   
        //Dom.XMLNode dataset = doc.getRootElement();
        
       // System.debug('URL: ' + dataset);
       // obtain elements for SFDC record insert
        
    	//String rateid = dataset.getChildElement('RateID', null).getText();
       	//String ratestate = dataset.getChildElement('RateState', null).getText();
       	//String rateamount = dataset.getChildElement('Rate', null).getText();
        //String rateolimit = dataset.getChildElement('OccurenceLimit', null).getText();
        //String ratealimit = dataset.getChildElement('AggregateLimit', null).getText();
        //String ratededuct = dataset.getChildElement('Deductible', null).getText();
        //String rateclaim = dataset.getChildElement('ClaimsBasis', null).getText();
        //String ratehazardgrade = dataset.getChildElement('HazardGrade', null).getText();
        //String rateratecategory = dataset.getChildElement('RateCategory', null).getText();
        //String rateSIC = dataset.getChildElement('RateSIC', null).getText();
        //String ratebasis = dataset.getChildElement('RateBasis', null).getText();
        
      
        // print out specific elements in log
       
       //System.debug('State: ' + RateState);
       //System.debug('Rate: ' + rateamount);
       //System.debug('RateID: ' + rateid);
        
        //creare SFDC sobject
        //DEMO_ISO_Table__c newrate = new DEMO_ISO_Table__c();
        
        //assign field values and insert record
        //newrate.name= rateid;
        //newrate.RateState__c = ratestate;
        //newrate.rate__c = rateamount;
        //newrate.Claims_Basis__c= rateclaim;
        //newrate.Deductible__c = ratededuct;
        //newrate.Aggregate_Limit__c = ratealimit;
        //newrate.Occurence_Limit__c = rateolimit;
        //newrate.Hazard_Grade_HG__c = integer.valueof(ratehazardgrade);
        
        //newrate.SIC_Description__c = rateSIC;
       // newrate.Basis__c = ratebasis;
//newrate.Basis__c = 'Per $1,000 gross sales (policy year)';


        
        
        
        //insert newrate;
        
        //System.debug('URL: ' + url);
        //SFDC requirement for using flows--needed to insert Apex
       integer rateamount=0;
        List<Decimal> new_rate = new List<Decimal>();
        //new_rate.add(decimal.valueof(rateamount)); 
        new_rate.add(decimal.valueof(rateamount)); 
        
       // return url;
        return new_rate;
        // Alternatively, loop through the child elements.
        // This prints out all the elements of the address
       // for(Dom.XMLNode child : dataset.getChildElements()) {
       //   System.debug(child.getText());
      //  }
    }
}