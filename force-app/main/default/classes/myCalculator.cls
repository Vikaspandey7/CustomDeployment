public class myCalculator {
 public Double num1 {get;set;}
    public Double num2 {get;set;}
    public Double output {get;set;}
    public String cal {get;set;}
   
    public myCalculator()
    {
    }
   
    public void find()
    {
        if(cal == 'add')
        {
            output = num1 + num2;
        }
        else if(cal == 'sub')
        {
             output = num1 - num2;
        }
        else if(cal == 'div')
        {
             output = num1 / num2;
        }
        else
        {
             //Integer temp =  math.mod(Integer.valueOf(num1) , Integer.valueOf(num2));
             //result = Double.valueOf(temp);
             output = num1 / num2;
        }
    }
  
}