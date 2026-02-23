import java.util.*;
public class Problem3{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
        //Sum of two numbers using method
        System.out.println("Enter first number:");
        int a = sc.nextInt();
        System.out.println("Enter second number:");
        int b = sc.nextInt();
        int sum = add(a, b);
        System.out.println("Sum: " + sum);
        //To check even or odd using method
        System.out.println("Enter a number to check even or odd:");
        int n = sc.nextInt();
        if (isEven(n)) {
            System.out.println("Number is Even");
        } else {
            System.out.println("Number is Odd");
        }
        //find factorial using method
        System.out.println("Enter a number to find factorial:");
        int f = sc.nextInt();
        System.out.println(findFactoria(f));
        }      
         catch (Exception e) {
            System.out.println("Please enter a valid integer.");
        }
    }
    public static int add(int x,int y) {
        return x+y;
    }
    public static boolean isEven(int x) {
        return (x&1)==0;
    }
    public static int findFactoria(int x) {
        if (x<0) {
        System.out.println("Number must be positive");
        return -1;
    }
        if(x==0) {
            return 1;
        }
        else {
            return x*findFactoria(x-1);
        }
    }
}