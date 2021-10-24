package com.example.trainers.controllers;

import com.example.trainers.models.Trainer;
import com.example.trainers.services.TrainerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/trainers")
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerservice;

    @GetMapping("/")//gia na deixei olous tous trainers
    public String showAllTrainers(ModelMap mm) {
        mm.addAttribute("allTrainers", trainerservice.getAllTrainers());
        return ("alltrainers");
    }

    @GetMapping("/addTrainerForm")//gia prosthiki trainer
    public String showTrainersForm(ModelMap mm) {
        mm.addAttribute("trainer", new Trainer());
        mm.addAttribute("title", "Προσθήκη Εκπαιδευτή");
        mm.addAttribute("formTitle", "Εισαγωγή Εκπαιδευτή");
        mm.addAttribute("action", "/trainers/new");
        mm.addAttribute("submit", "Προσθήκη Νέου Εκπαιδευτή");
        return ("trainerform");
    }

    @GetMapping("/editTrainerForm")//gia edit Trainer
    public String editTrainer(ModelMap mm, @RequestParam("id") int id) {
        mm.addAttribute("trainer", trainerservice.getById(id));
        mm.addAttribute("title", "Επεξεργασία Εκπαιδευτή");
        mm.addAttribute("formTitle", "Επεξεργασία Εκπαιδευτή");
        mm.addAttribute("action", "/trainers/update");
        mm.addAttribute("submit", "Ενημέρωση Εκπαιδευτή");
        return ("trainerform");
    }

    @PostMapping("/new")//gia na kanei insert ton trainer
    public String insertTrainer(ModelMap mm, @ModelAttribute(name = "trainer") Trainer t) {
        trainerservice.insertTrainer(t);
        return ("redirect:/trainers/");
    }

    @PostMapping("/update")//gia na kanei update ton trainer
    public String updateTrainer(ModelMap mm, @ModelAttribute(name = "trainer") Trainer t) {
        trainerservice.updateTrainer(t);
        return ("redirect:/trainers/");
    }

    @GetMapping("/deleteTrainer/{id}")//gia na kanw delete ton Trainer
    @ResponseBody
    public String editTrainer(@PathVariable("id") int id) {
        trainerservice.deleteTrainer(id);
        return ("success");
    }
}
