package gr.aueb.cf.schoolapp.validator;

import gr.aueb.cf.schoolapp.dao.IUserDAO;
import gr.aueb.cf.schoolapp.dao.UserDAOImpl;
import gr.aueb.cf.schoolapp.dto.InsertUserDTO;
import gr.aueb.cf.schoolapp.exceptions.UserDAOException;
import gr.aueb.cf.schoolapp.dto.BaseUserDTO;
import gr.aueb.cf.schoolapp.service.IUserService;
import gr.aueb.cf.schoolapp.service.UserServiceImpl;

import java.util.HashMap;
import java.util.Map;

public class UserValidator<T> {

    private final static IUserDAO userDAO = new UserDAOImpl();
    private final static IUserService userService = new UserServiceImpl(userDAO);

    private UserValidator() {}

    public static <T extends InsertUserDTO> Map<String, String > validate(T dto)
            throws UserDAOException {
        Map<String, String> errors = new HashMap<>();

        if (!dto.getPassword().equals(dto.getConfirmPassword())) {
            errors.put("confirmPassword", "Το password και το confirm password δεν είναι ίδια.");
        }

        if (dto.getPassword().length() < 5 || dto.getPassword().length() > 32 ) {
            errors.put("password", "Το password πρέπει να είναι μεταξύ 5 και 32 χαρακτήρων");
        }

        if (dto.getUsername().matches("^.*\\s+.*$")) {
            errors.put("username", "Το username δεν πρέπει να περιλαμβάνει κενά");
        }

        if (dto.getPassword().matches("^.*\\s+.*$")) {
            errors.put("password", "Το password δεν πρέπει να περιλαμβάνει κενά");
        }

        if (dto.getRole() == null || dto.getRole().isBlank()) {
            errors.put("role", "Δεν έχετε επιλέξει ρόλο");
        }

        if (userService.isEmailExists(dto.getUsername())) {
            errors.put("username", "Το e-mail/username υπάρχει ήδη");
        }

        return errors;
    }
}
