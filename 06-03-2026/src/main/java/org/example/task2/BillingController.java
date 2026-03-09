package org.example.task2;

public class BillingController {

    private BillingService service;

    public BillingController(BillingService service) {
        this.service = service;
    }

    public void processBill(String product, double price, int quantity) throws Exception {

        if (!service.validateProduct(product)) {
            throw new Exception("Product name must contain only letters.");
        }

        if (price <= 0) {
            throw new Exception("Price must be greater than zero.");
        }

        if (quantity <= 0) {
            throw new Exception("Quantity must be greater than zero.");
        }

        double total = service.calculateBill(price, quantity);

        service.printBill(product, price, quantity, total);
    }
}