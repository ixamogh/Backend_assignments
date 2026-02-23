import java.util.*;
public class Problem2{
    public static void main(String[] args){
        //print number from 1 to n using while loop
        Scanner sc=new Scanner(System.in);
        try{
        System.out.println("Enter a number");
        int n=sc.nextInt();
        int num=1;
        if (n<1) {
            System.out.println("Please enter a positive number.");
            return;
        }
        while(num<=n){
            System.out.println(num);
            num++;
        }
        //Even numbers from 1 to n using for loop
        System.out.println("Even numbers from 1 to "+n+":");
        for(int k=2;k<=n;k+=2){
            System.out.println(k);
        }
        //sum of numbers from 1 to n
        int sum=0;
        for(int k=1;k<=n;k++){
            sum+=k;
        }

        System.out.println("Sum:"+sum);
        }
        catch(InputMismatchException e){
            System.out.println("Please enter a valid integer.");
        }
    }
}
