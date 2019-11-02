/* Name: Meet Patel       ID: 214304869 */

public class LabA6 {

    public static void main(String[] args) {
    int x,y,z;
    x=Integer.parseInt(args[0]);
    System.out.println(Integer.toBinaryString(x));
    
    y = x | (1 << 10);
   
    
    System.out.println(y);
    
    System.out.println("X changes to 1 at bit #10 " + Integer.toBinaryString(y));
    
    z = (y & ((~(1 << 11))));
    
    System.out.println("X changes to 0 at bit #11 " + Integer.toBinaryString(z));
      
    
    }
}
    
