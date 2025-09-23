package poly.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "hello";
    }

    @GetMapping("/poly/hello")
    public String hello() {
        return "hello";
    }
}
