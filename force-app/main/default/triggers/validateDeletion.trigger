trigger validateDeletion on Reinsurer__c (before delete) {

for(Reinsurer__c rein : trigger.old){

    if(rein.Signed__c > 0) {rein.adderror('Reinsurer Cannot be deleted');
   }
}}