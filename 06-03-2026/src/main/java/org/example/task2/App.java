package org.example.task2;

import java.util.InputMismatchException;
import java.util.Scanner;

public class App {

    public static void main(String[] args) {

        try {
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter product name: ");
            String product = sc.nextLine();
            System.out.print("Enter product price: ");
            double price = sc.nextDouble();
            System.out.print("Enter quantity: ");
            int quantity = sc.nextInt();
            BillingService service = new BillingService();
            BillingController controller = new BillingController(service);
            controller.processBill(product, price, quantity);

        }
        catch (InputMismatchException e) {
            System.out.println("Invalid input type.");
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}