package com.javamaster.controller;

import com.javamaster.entity.Estate;
import com.javamaster.service.EstateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class EstateController {

    @Autowired
    private EstateService estateService;

    @GetMapping("/")
    public String homeGet(Model model) {
        model.addAttribute("estates", estateService.getEstates().getBody());
        return "TableView";
    }

    @GetMapping("/add")
    public String addGet() {
        return "Add";
    }

    @PostMapping("/add")
    public String addPost(
            @RequestParam String name,
            @RequestParam String city,
            @RequestParam String address,
            @RequestParam Double area,
            @RequestParam Integer cost
    ) {
        if (name == null || city == null || address == null || area == null || cost == null) {
            return "error";
        }
        estateService.addEstate(new Estate(name, city, address, area, cost));
        return "redirect:/";
    }

    @GetMapping("/{id}/delete")
    public String deleteGet(@PathVariable(value = "id") Long id, Model model) {
        Estate estate = estateService.getEstate(id).getBody();
        System.out.println(estate);
        model.addAttribute("estate", estate);
        model.addAttribute("id", id);
        return "Delete";
    }

    @PostMapping("/{id}/delete")
    public String deleteGet(@PathVariable(value = "id") Long id) {
        estateService.deleteEstate(id);
        return "redirect:/";
    }
}
