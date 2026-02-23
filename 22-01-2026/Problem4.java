class Student {
    private int id;
    private String name;
    private int marks;
    Student(int id, String name, int marks) {
        this.id=id;
        this.name=name;
        this.marks=marks;
    }
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getMarks() {
        return marks;
    }
    public void setId(int id) {
        this.id=id;
    }

    public void setName(String name) {
        this.name=name;
    }

    public void setMarks(int marks) {
        this.marks=marks;
    }
    public boolean isPassed() {
        return marks>=40;
    }
    public void displayResult() {
        System.out.println("ID: " + id);
        System.out.println("Name: " + name);
        System.out.println("Marks: " + marks);
        System.out.println("Passed: " + (isPassed() ? "Yes" : "No"));
        System.out.println();
    }
}

public class Problem4 {
    public static void main(String[] args) {
        Student s1 = new Student(1, "Amogh", 96);
        Student s2 = new Student(2, "Rohit", 35);
        s1.displayResult();
        s2.displayResult();
    }
}
