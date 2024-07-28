package in.softronix.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.softronix.service.UserService;

import in.softronix.entity.User;

@Controller
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("1"); // Maps to 1.jsp
        return mav;
    }

    @GetMapping("/contact")
    public ModelAndView contactPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("contact"); // Maps to contact.jsp
        return mav;
    }

    @PostMapping("/contact")
    public ModelAndView contactUs() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("cs"); // Maps to success.jsp
        mav.addObject("message", "Your message has been received. You will be contacted shortly.");
        return mav;
    }
    @PostMapping("/cs")
    public ModelAndView cs() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("cs"); // Maps to contact.jsp
        return mav;
    }

    @GetMapping("/donate")
    public ModelAndView donatePage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("donate"); // Maps to donate.jsp
        return mav;
    }

    @PostMapping("/donate")
    public ModelAndView donatepage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("bs"); // Maps to success.jsp
        mav.addObject("message", "Your message has been received. You will be contacted shortly.");
        return mav;
    }
    @PostMapping("/bs")
    public ModelAndView bs() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("bs"); // Maps to contact.jsp
        return mav;
    }


    @GetMapping("/login")
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login"); // Maps to login.jsp
        return mav;
    }

    @PostMapping("/login")
    public ModelAndView loginUser(@RequestParam String email, @RequestParam String password) {
        Optional<User> user = userService.getUserByEmailAndPassword(email, password);
        ModelAndView mav = new ModelAndView();
        if (user.isPresent()) {
            mav.setViewName("success"); // Maps to success.jsp
            mav.addObject("message", "Login successful!");
        } else {
            mav.setViewName("login"); // Maps to login.jsp
            mav.addObject("message", "Invalid email or password. Please try again.");
        }
        return mav;
    }

    @GetMapping("/receive")
    public ModelAndView receivePage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("receive"); // Maps to receive.jsp
        return mav;
    }

    @GetMapping("/register")
    public ModelAndView registrationPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Registrationform"); // Maps to Registrationform.jsp
        return mav;
    }

    @GetMapping("/finduser")
    public ModelAndView findUser() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("finduser"); // Maps to finduser.jsp
        return mav;
    }
    
    @PostMapping("/register")
    public ModelAndView registerUser(@ModelAttribute("user") User user) {
        userService.registerUser(user);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("rs"); // Maps to rs.jsp
        mav.addObject("message", "Registration successful!");
        return mav;
    }

//    @GetMapping("/editProfile")
//    public ModelAndView editProfilePage() {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("editProfile"); // Maps to editProfile.jsp
//        return mav;
//    }
//
//    @PostMapping("/editProfile")
//    public ModelAndView editProfile(@ModelAttribute("profile") User user) {
//        userService.updateUser(user.getId(), user);
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("success"); // Maps to success.jsp
//        mav.addObject("message", "Profile updated successfully!");
//        return mav;
//    }
//
//    @GetMapping("/update")
//    public ModelAndView showUpdateForm() {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("updateform"); // Maps to updateform.jsp
//        return mav;
//    }
//
//    @PostMapping("/update")
//    public ModelAndView updateUser(@ModelAttribute("user") User userDetails) {
//        userService.updateUser(userDetails.getId(), userDetails);
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("success"); // Maps to success.jsp
//        mav.addObject("message", "User details updated successfully!");
//        return mav;
//    }
    
    @GetMapping("/updateform")
    public ModelAndView showUpdateForm(
    		@RequestParam("id") Long id
    		) {

        ModelAndView mav = new ModelAndView("updateform");
         userOptional = userService.getUserById(id);
        if (userOptional.isPresent()) {
            mav.addObject("user", userOptional.get());
        } else {
            mav.addObject("message", "User not found with ID: " + id);
        }
        return mav;
    }

    @PostMapping("/update")
    public ModelAndView updateUser(@ModelAttribute("user") User userDetails) {
        in.softronix.service.UserService.updateUser(userDetails.getId(), userDetails);
        ModelAndView mav = new ModelAndView("success");
        mav.addObject("message", "User details updated successfully!");
        return mav;
    }
}
