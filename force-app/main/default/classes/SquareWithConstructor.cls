public class SquareWithConstructor {
  Decimal var, a, p;
    public SquareWithConstructor(){
        var = 10.0;
    }
    
     public SquareWithConstructor(Decimal variable){
        var = variable;
    }
    public void area(){// Method
        a= var * var;
        System.debug('Area is'+ a);
        
    }
    
    public void perimeter(){// Method
        p = 4 * (var);
        System.debug('perimeter is'+ p);
        
    }
}