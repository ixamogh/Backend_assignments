import java.util.*;

public class Problem4 {
    public static void main(String[] args) {

        String[] str = {"10", "20.5", "abc", "30", "-5", "40.0xyz", "50"};
        List<Number> ls = new ArrayList<>();
        for (String s : str) {
            try {
                if (s.contains(".")) {
                    Double d = Double.parseDouble(s);
                    ls.add(d);            
                } else {
                    Integer i = Integer.parseInt(s);
                    ls.add(i);            
                }
            } catch (NumberFormatException e) {
                System.out.println("Invalid number format: " + s);
            }
        }
        int sum = 0;
        double dsum = 0.0;
        int countOfDoubles = 0;
        for (Number n : ls) {
            if (n instanceof Integer) {
                sum += n.intValue();      
            } else if (n instanceof Double) {
                dsum += n.doubleValue();  
                countOfDoubles++;
            }
        }

        System.out.println("Sum of integers: " + sum);

        if (countOfDoubles > 0) {
            double davg = dsum / countOfDoubles;
            System.out.println("Average of doubles: " + davg);
        } else {
            System.out.println("No double values found.");
        }
    }
}
