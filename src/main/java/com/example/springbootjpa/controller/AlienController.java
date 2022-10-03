package com.example.springbootjpa.controller;

import com.example.springbootjpa.model.Alien;
import com.example.springbootjpa.repo.AlienRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class AlienController {
    @Autowired
    AlienRepo repo;

    @GetMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping("/addAlien")
    public String addAlien(Alien alien) {
        repo.save(alien);

        return "home.jsp";
    }

    @GetMapping("/getAlien")//here, we don't need to do anything in our URL.
    public ModelAndView getAlien(@RequestParam int aid) {
        ModelAndView mv = new ModelAndView("showAlien.jsp");
        Alien alien = repo.findById(aid).orElse(new Alien());
        System.out.println(alien);//ask why it is not showing the tech when printing out?


        mv.addObject(alien);
        System.out.println(alien);
        return mv;//here, we are returning a model along with the view.
    }

    @GetMapping("/getAlienById/{id}")//here, we need to provide the path variables while doing the mapping.
    public ModelAndView getAlienById(@PathVariable int id) { //the {id} is read using the @PathVariable annotation
        ModelAndView modelView = new ModelAndView("showAlien.jsp");
        Alien alien = repo.findById(id).orElse(new Alien());
        modelView.addObject(alien);
        return modelView;
    }

    @GetMapping("/aliens")
    @ResponseBody
    public List<Alien> getAliens() {
        return repo.findAll();
    }

    @GetMapping("/alien/{aid}")//making aid as a wildcard.
    @ResponseBody
    public Optional<Alien> fetchAlien(@PathVariable("aid") int aid) {
        return repo.findById(aid);
    }
}