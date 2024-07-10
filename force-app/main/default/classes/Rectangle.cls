public class Rectangle {
    Decimal l = 10.0, b = 20.3, a, p;
    public void area(){// Method
        a= l * b;
        System.debug('Area is'+ a);
        
    }
    
    public void perimeter(){// Method
        p = 2 * (l * b);
        System.debug('perimeter is'+ p);
        
    }
}