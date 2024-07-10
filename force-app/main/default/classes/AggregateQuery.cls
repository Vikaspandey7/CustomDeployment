public class AggregateQuery {
    
    public static void main(){
        Account acc = [Select id from Account LIMIT 1];
        Integer a = [SELECT COUNT() FROM ACCOUNT];
        AggregateResult agr = [Select COUNT(Name), sum (AnnualRevenue), count(Industry) from account];
        System.debug('agr is' + agr);
    }
}