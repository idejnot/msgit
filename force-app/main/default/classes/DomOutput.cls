public class DomOutput {

  //  public DomOutput(ApexPages.StandardController controller) { }

 
    // Markitspaces Standard REST/ XML service--scenario call PAS for policy update
    // Pass in the URL for the rating request
    // For the purposes of this sample,assume that the URL
    // returns the XML shown above in the response body
  
    @invocablemethod (label='Update PAS' description='update PAS' callout=true)
    
    static public list<String> sendRequest(list<string> endpoint)
    {
        // Create the request envelope
        DOM.Document doc = new DOM.Document();
        
        String soapNS = 'http://schemas.xmlsoap.org/soap/envelope/';
        String xsi = 'http://www.w3.org/2001/XMLSchema-instance';
        String serviceNS = 'https://my.api.mockaroo.com/pasupdate?key=15fca110';
       // String serviceNS = 'http://www.myservice.com/services/MyService/';
        String Cancel ='cancel' ;
        String policy ='Policy1234';
            
        dom.XmlNode envelope = doc.createRootElement('Envelope', soapNS, 'soapenv');
        envelope.setNamespace('xsi', xsi);
        envelope.setAttributeNS('schemaLocation', soapNS, xsi, null);
        
        dom.XmlNode body= envelope.addChildElement('Body', soapNS, null);
        
        body.addChildElement('PAS_transaction', cancel, 'req')
            .addChildElement('Policy', policy, 'req').
            addTextNode('effective 10/1/2021');
       // system.debug('hello');
        System.debug(doc.toXmlString());
        
       // string url1 = endpoint.get(0);
        
        // Send the request
      // HttpRequest req = new HttpRequest();
      //  req.setMethod('POST');
      // req.setEndpoint(serviceNS);
     //  req.setHeader('Content-Type', 'text/xml');
        
      //  req.setBodyDocument(doc);
        
     //   Http http = new Http();
     //    HttpResponse res = http.send(req);
        
      //  System.assertEquals(200, res.getStatusCode());
        
      //  dom.Document resDoc = res.getBodyDocument();
        
     //   envelope = resDoc.getRootElement();
        
     //   String wsa = 'http://schemas.xmlsoap.org/ws/2004/08/addressing';
        
    //    dom.XmlNode header = envelope.getChildElement('Header', soapNS);
       // System.assert(header != null);
        
       // String messageId
         //   = header.getChildElement('MessageID', wsa).getText();
        
      //  System.debug(messageId);
        //System.debug(resDoc.toXmlString());
        //System.debug(resDoc);
      //  System.debug(header);
        
      //  System.assertEquals(
      //   'http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous',
      //   header.getChildElement(
       //    'ReplyTo', wsa).getChildElement('Address', wsa).getText());
        
        
      //  System.assertEquals(
       //   envelope.getChildElement('Body', soapNS).
          //    getChildElement('echo', serviceNS).
           //   getChildElement('something', 'http://something.else').
           //   getChildElement(
             //   'whatever', serviceNS).getAttribute('bb', null),
             //   'cc');
        
      //  System.assertEquals('classifieds',
       //   envelope.getChildElement('Body', soapNS).
           //   getChildElement('echo', serviceNS).
           //   getChildElement('category', serviceNS).getText());
        
        List<string> PASreturn = new list<string>();
       PASReturn.add(doc.toXmlString());
        return PASreturn;
    }
}