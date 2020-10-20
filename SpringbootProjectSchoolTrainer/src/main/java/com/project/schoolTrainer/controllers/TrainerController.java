
package com.project.schoolTrainer.controllers;

import com.project.schoolTrainer.model.Trainer;
import com.project.schoolTrainer.services.TrainerServiceInterface;
import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TrainerController {
   
    @Autowired
    TrainerServiceInterface trainerServiceInterface;
    
    @GetMapping("/preinserttrainer")
    public String showForm(ModelMap mm){
    mm.addAttribute("newtrainer",new Trainer());
    return "trainerform";
    }
    
    @PostMapping("/doinserttrainer")
    public String insertTrainer(@Valid @ModelAttribute("newtrainer") Trainer t,BindingResult bindingResult ,ModelMap mm){
       if(bindingResult.hasErrors()){
       return "trainerform";
       }else{
       
    mm.addAttribute("trainer",t);
    trainerServiceInterface.insertTrainer(t);
    return "result";
       }
    }
    
    @GetMapping("/showtrainers")
    public String showTrainers(ModelMap mm){
        
    List<Trainer> trainers=trainerServiceInterface.findAllTrainers();
    mm.addAttribute("listtrainers",trainers);
    return "alltrainers";
    }
    
    @GetMapping("/alltrainers")
    public String deleteTrainer(ModelMap mm,@RequestParam(name="id") int id){
        
    trainerServiceInterface.deleteTrainer(id);
    List<Trainer> trainers=trainerServiceInterface.findAllTrainers();
    mm.addAttribute("listtrainers",trainers);
    return "alltrainers";
    }
    
    @GetMapping("/preupdatetrainer")
    public String fetchTrainer(ModelMap mm,@RequestParam(name="id") int id){
        
    Trainer t=new Trainer();
    t=trainerServiceInterface.fetchTrainerById(id);
    mm.addAttribute("updatetrainer",t );
    return "updateform";
    }
    
    @PostMapping("doupdatetrainer")
    public String updateTrainer(@Valid @ModelAttribute("updatetrainer") Trainer t,BindingResult bindingResult,ModelMap mm){
        if(bindingResult.hasErrors()){
       return "updateform";
       }else{
    mm.addAttribute("trainer",t);
    trainerServiceInterface.insertTrainer(t);
    List<Trainer> trainers=trainerServiceInterface.findAllTrainers();
    mm.addAttribute("listtrainers",trainers);
    return "alltrainers";
    }
}
}