package com.repair.car.controller;


//@Controller
//public class RegistrationController {
//    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(RegistrationController.class);
//    private static final String REGISTER_FORM = "registrationForm";
//
//    @Autowired
//    private UserService accountService;
//
//    @RequestMapping(value = "/register", method = RequestMethod.GET)
//    public String register(Model model) {
//        model.addAttribute(REGISTER_FORM, new UserRegisterForm());
//        return "register";
//    }


//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public String register(@Valid @ModelAttribute(REGISTER_FORM)
//                                   UserRegisterForm registrationForm,
//                           BindingResult bindingResult, HttpSession session,
//                           RedirectAttributes redirectAttributes) {
//
//        if (bindingResult.hasErrors()) {
//
//            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
//            return "register";
//        }
//
//        try {
//            User user = UserConverter.buildUserObject(registrationForm);
//            accountService.register(user);
//            session.setAttribute("username", registrationForm.getEmail());
//
//        } catch (Exception exception) {
//            //if an error occurs show it to the user
//            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
//            logger.error("User registration failed: " + exception);
//            return "redirect:/register";
//        }
//
//
//        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
//        return "redirect:/";
//
//
//    }


//}
