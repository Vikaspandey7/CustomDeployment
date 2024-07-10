public class RectangleWithConstructor {
    Decimal l , b , a, p;
    public RectangleWithConstructor() {
        l = 15.7;
        b = 29.3;
    }
    public RectangleWithConstructor(Decimal length, Decimal breadth) {
        l = length;
        b = breadth;
    }
    public void area(){// Method
        a= l * b;
        System.debug('Area is'+ a);
        
    }
    
    public void perimeter(){// Method
        p = 2 * (l * b);
        System.debug('perimeter is'+ p);
        
    }
    
}