package org.example.task2;

import java.util.regex.Pattern;

public class BillingService {

    public boolean validateProduct(String product) {
        return Pattern.matches("[a-zA-Z ]+", product);
    }

    public double calculateBill(double price, int quantity) {
        return price * quantity;
    }

    public void printBill(String product, double price, int quantity, double total) {
        System.out.println("Product  : " + product);
        System.out.println("Price    : " + price);
        System.out.println("Quantity : " + quantity);
        System.out.println("Total    : " + total);
    }
}