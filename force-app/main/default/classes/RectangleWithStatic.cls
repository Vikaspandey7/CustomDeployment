public class RectangleWithStatic {
    
    public static void area(){// Method
        Decimal l= 12.5, b = 8.7, a;
        a= l * b;
        System.debug('Area is'+ a);
        
    }
    
    public static void perimeter(){// Method
        Decimal l= 12.5, b = 8.7, p;
        p = 2 * (l * b);
        System.debug('perimeter is'+ p);
        
    }
}