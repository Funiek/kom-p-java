package com.ds360.komp.web.Model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.bind.annotation.ModelAttribute;

@Getter
@Setter
public class User {
    String login;
    String password;
}
