class Employee {
    private int id;
    private String name;
    private double monthlySalary;
    static String companyName = "Innova Tech";
    Employee(int id, String name, double monthlySalary) {
        this.id = id;
        this.name = name;
        this.monthlySalary = monthlySalary;
    }
    public double calculateAnnualSalary() {
        return monthlySalary * 12;
    }
    public void displayEmployeeDetails() {
        System.out.println("Company Name: " + companyName);
        System.out.println("Employee ID: " + id);
        System.out.println("Name: " + name);
        System.out.println("Monthly Salary: " + monthlySalary);
        System.out.println("Annual Salary: " + calculateAnnualSalary());
        System.out.println();
    }
}

public class Problem5 {
    public static void main(String[] args) {
        Employee e1 = new Employee(101, "Amogh", 50000);
        Employee e2 = new Employee(102, "Rohit", 42000);
        e1.displayEmployeeDetails();
        e2.displayEmployeeDetails();
    }
}
