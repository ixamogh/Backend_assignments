import java.util.logging.Logger;

public class Problem3 {

    static Logger logger = Logger.getLogger(Problem3.class.getName());

    public static void main(String[] args) {

        String username = "Amogh_5";
        int age = 20;
        String email = "amogh@gmail.com";

        try {
            Validator.validateUsername(username);
            Validator.validateAge(age);
            Validator.validateEmail(email);

            System.out.println("Validation successful");

        } catch (InvalidUserException e) {
            System.out.println("User Error: " + e.getMessage());

        } catch (InvalidAgeException e) {
            System.out.println("Age Error: " + e.getMessage());

        } finally {
            logger.info("Validation is completed");
        }
    }
}
class InvalidUserException extends Exception {
    public InvalidUserException(String message) {
        super(message);
    }
}

class InvalidAgeException extends RuntimeException {
    public InvalidAgeException(String message) {
        super(message);
    }
}


class Validator {
    public static void validateUsername(String username) throws InvalidUserException {

        if (username == null) {
            throw new InvalidUserException("Username cannot be null");
        }

        if (!username.matches("^[a-zA-Z][a-zA-Z0-9_]{2,}$")) {
            throw new InvalidUserException("Username must be valid");
        }
    }

    public static void validateAge(int age) {

        if (age <= 0) {
            throw new InvalidAgeException("Age must be positive");
        }

        if (age > 150) {
            throw new InvalidAgeException("Age must be less than 150");
        }
    }

    public static void validateEmail(String email) throws InvalidUserException {

        if (email == null) {
            throw new InvalidUserException("Email cannot be null");
        }

        if (!email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$")) {
            throw new InvalidUserException("Invalid email format");
        }
    }
}
