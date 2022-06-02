package com.ds360.komp.web.Controller;

import com.ds360.komp.web.Model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    @RequestMapping(value = "user", method = RequestMethod.GET)
    public ModelAndView showUser() {
        return new ModelAndView("userHome","user", new User());
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute User user, BindingResult bindingResult, ModelMap modelMap) {
        if (bindingResult.hasErrors()) {
            return "error";
        }

        Map<String, String> content = new HashMap<>();

        content.put("login", user.getLogin());
        content.put("password", user.getPassword());

        return "userDetails";
    }

}
