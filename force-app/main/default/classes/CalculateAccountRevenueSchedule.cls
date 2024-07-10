Global class CalculateAccountRevenueSchedule implements System.Schedulable 
{
    Global void Execute(System.SchedulableContext sContext)
    {
        //This is batch class. These is how we can executing
        //It can be normal apex class as well.
        CalculateTotalAccountRevenue revenueBatch = new CalculateTotalAccountRevenue();
        Database.executeBatch (revenueBatch,5);    // Size is 5
        
       // DatabaseHelper.ExportAllAccounts(); //It can be normal apex class as well.
    }

}