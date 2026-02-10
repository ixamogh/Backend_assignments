import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;   
class InvalidNameException extends Exception {
    public InvalidNameException(String s) {
        super(s);
    }
}

public class Problem5 {

    private static final Logger logger = Logger.getLogger(Problem5.class.getName());

    public static void main(String[] args) throws IOException {
        FileHandler handler = new FileHandler("process.log", true);
        handler.setFormatter(new SimpleFormatter());
        logger.addHandler(handler);

        ArrayList<String> rawList = new ArrayList<>();
        ArrayList<String> validList = new ArrayList<>();
        ArrayList<String> invalidList = new ArrayList<>();
        HashSet<String> set = new HashSet<>();
        try (BufferedReader br = new BufferedReader(new FileReader("Practs1.txt"))) {
            String line;
            StringBuilder sb = new StringBuilder();
            while ((line = br.readLine()) != null) {
                sb.append(line.trim());
                rawList.add(sb.toString());
                sb.setLength(0);
            }
            logger.info("File read successfully");

        } catch (FileNotFoundException e) {
            logger.severe("Input file not found");
            return;
        }
        set.addAll(rawList);
        logger.info("Duplicate entries removed");
        ArrayList<String> ac = new ArrayList<>(set);
        for (String s : ac) {
            try {
                String parts[] = s.split(",");

                if (parts.length != 3)
                    throw new Exception("Invalid format");
                String idStr = parts[0].trim();
                String name = parts[1].trim().replaceAll("\\s+", "");
                String ageStr = parts[2].trim();
                int id = Integer.parseInt(idStr);
                logger.info("ID Validated: " + id);
                validateName(name);
                logger.info("Name Validated: " + name);
                int age = Integer.parseInt(ageStr);
                validateAge(age);
                logger.info("Age Validated: " + age);
                validList.add(id + "," + name + "," + age);

            } catch (Exception e) {
                invalidList.add(s);
                logger.warning("Invalid record: " + s + " | Reason: " + e.getMessage());
            }
        }
        try (BufferedWriter bw = new BufferedWriter(new FileWriter("valid.txt"))) {
            for (String v : validList) {
                bw.write(v);
                bw.newLine();
            }
            logger.info("Valid records written.");

        }
        try (BufferedWriter bw = new BufferedWriter(new FileWriter("invalid.txt"))) {
            for (String x : invalidList) {
                bw.write(x);
                bw.newLine();
            }
            logger.info("Invalid records written.");
        }

        logger.info("Processing completed.");
    }
    public static void validateName(String s) throws InvalidNameException {
        if (!s.matches("[A-Za-z]+")) {
            throw new InvalidNameException("Invalid Name: " + s);
        }
    }
    public static void validateAge(int age) throws Exception {
        if (age < 18) {
            throw new Exception("Age must be 18 or above");
        }
    }
}