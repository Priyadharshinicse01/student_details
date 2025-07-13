package com.demo.Stud_details1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.Stud_details1.Model.LoginModel;
import com.demo.Stud_details1.Model.PathModel;
import com.demo.Stud_details1.Repository.Repository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Controller1 {

    @Autowired
    Repository repo;

    @GetMapping("/home")
    public String home() {
        return "pages/index"; 
    }
    
    /*@PostMapping("/submit")
    public String submit(@ModelAttribute PathModel student) {
        repo.save(student);
        return "redirect:/view";
      }

    
    @GetMapping("/view")
    public String view(HttpServletRequest request)
    {
    	List<PathModel> students=repo.findAll();
    	request.setAttribute("students", students);
    	return "view";
    }
    
    @GetMapping("/add")
    public String showStudentForm(Model model) {
        model.addAttribute("student", new PathModel());
        return "index"; 
    }

    
    
    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; 
    }*/
    
    @GetMapping("/login")
    public String loginPage() {
        return "pages/login";
    }

    @PostMapping("/submitlogin")
    public String submitLogin(@ModelAttribute("login") LoginModel login, Model model) {
        String validUsername = "admin";
        String validPassword = "admin@123";

        if (validUsername.equals(login.getUsername()) && validPassword.equals(login.getPassword())) {
            return "pages/add";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "pages/login"; 
        }
    }
    /*public String submitLogin(LoginModel login) {
        repo1.save(login);
        return "add";
    }*/

    @GetMapping("/add")
    public String addstudent() {
        return "pages/add";
    }

    /*@PostMapping("/submit")
    public String submitBook(PathModel student) {
        repo.save(student);
        return "view";
    }*/
    
    @PostMapping("/submit")
    public String submit(@ModelAttribute PathModel student) {
        repo.save(student);
        return "redirect:pages/view";
    }
    
    @GetMapping("/view")  
    public String view(HttpServletRequest request)
    {
    	List<PathModel> students=repo.findAll();
    	request.setAttribute("students", students);
    	return "pages/view";
    }
    
    @GetMapping("/edit")
    public String editStudent(@RequestParam("id") int id, Model model) {
        PathModel student = repo.findById(id).orElse(null);
        if (student != null) {
            model.addAttribute("student", student);
            return "pages/edit";
        } else {
            return "redirect:pages/view";
        }
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute PathModel student) {
        repo.save(student);
        return "redirect:pages/view";
    }

    @GetMapping("/delete")
    public String deleteStudent(@ModelAttribute("id") int id) {
        repo.deleteById(id);
        return "redirect:pages/view";
    }

    @GetMapping("/logout")
    public String logout() {
    	return "pages/login";
    }
}
