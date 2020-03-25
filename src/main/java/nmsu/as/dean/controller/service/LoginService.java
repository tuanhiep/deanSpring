package nmsu.as.dean.controller.service;

import nmsu.as.dean.model.entity.User;
import nmsu.as.dean.model.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginService {
    @Autowired
    UserRepository userRepository;

    public boolean validateUser(String name, String password) {

        List<User> users = userRepository.findAll();

        for (User user : users ) {
            if (user.getName().equals(name)) {
                return true;
            }

        }
        return false;
    }

}
