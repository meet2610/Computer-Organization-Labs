public class LabA7 {

    public static void main(String[] args) {
    int x,y,z,x1,x2,t1,t2;
    x=Integer.parseInt(args[0]);
    System.out.println("X after bit#10 with bit value bit#20~~" + Integer.toBinaryString(x));
    
    t1 = x;
    t1 = x >> 10 ;
    t1 = t1 & 1;
    
        
    t2 = x;
    t2 = x >> 20;
    t2 = t2 & 1;
    
    
    y = (x - (t1 << 10));
    z = (y - (t2 << 20));
   
        
    x1 = (t2 << 10) | z;
    
    x2 = (t1 << 20) | x1;
    
    
    System.out.println("X after bit#10 with bit value bit#20: " + Integer.toBinaryString(x1));
    
    
    
    System.out.println("X after bit#20 with bit value bit#10: " + Integer.toBinaryString(x2));
    }
}
    
