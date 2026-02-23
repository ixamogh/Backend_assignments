import java.util.*;
public class Problem1 {
        public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        try {
        System.out.println("Enter a number");
        int n=sc.nextInt();
        if(n>0){
            System.out.println("Number is Positive");
        }
        else if(n<0){
            System.out.println("Number is Negative");
        }
        else{
            System.out.println("Zero");
        }
        if((n&1)==0){
            System.out.println("Number is Even");
        }
        else{
            System.out.println("Number is Odd");
        }   
        } catch (Exception e) {
            System.out.println("Please enter a valid integer.");
        }
    }
}