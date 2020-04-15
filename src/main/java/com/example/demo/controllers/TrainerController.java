/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.controllers;

import com.example.demo.model.Trainer;
import com.example.demo.services.TrainerInterface;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;


          @Controller
public class TrainerController {
    
    
  

        
        
        @Autowired
    TrainerInterface trf;   
        
        
        
        
        @GetMapping(value="/welcome")
           public String welcomePage(){
               return "welcome";
           }  
        
@GetMapping(value="insert")
public String insertForm(){
    
    
    return "insert";
}


    
    @PostMapping(value = "submitform") 
    public String submitForm(ModelMap mm,
            @RequestParam(name = "name") String name, 
            @RequestParam(name = "surname") String surname){
   
        
        mm.addAttribute("name", "Name: " + name);
        mm.addAttribute("surname", "Surname: " + surname);
    Trainer p = new Trainer (null,name,surname);

    trf.insertTrainer(p); 
    
    return "redirect:/trainerlist";
    }
    
    
    @GetMapping(value = "/getalltrainers")
public String fetchallTrainers(ModelMap mm)

{ List<Trainer> result = trf.getAllTrainers();
mm.addAttribute("trainer", result);
return "getalltrainers";

}
    @GetMapping(value = "/trainerlist")
public String fetchallTrainer(ModelMap mm)

{ List<Trainer> result = trf.getAllTrainers();
mm.addAttribute("trainer", result);
return "trainerlist";

}
@GetMapping(value="/deletetrainer")
public String deleteTrainer (@RequestParam (value="trainerid") Integer id){
    trf.deleteTrainer(id);
    return "redirect:/trainerlist";
}
 


    @GetMapping(value="/preupdate/{id}")
    public String preupdate(@PathVariable (name="id")Integer id,
            ModelMap mm){
   
    mm.addAttribute("trainer",trf.getTrainerById(id));
    
    return "updateform";
    }
      
   
    @PostMapping(value = "/updatetrainer")
    public String updateTrainer(ModelMap mm, @RequestParam(name = "trainerId") Integer trainerId,@RequestParam(name = "trainerName") String trainerName,
            @RequestParam(name = "trainerSurname") String trainerSurname) {
        Trainer t = new Trainer();
        t.setTrainerId(trainerId);
        t.setTrainerName(trainerName);
        t.setTrainerSurname(trainerSurname);
       
        trf.updateTrainer(t);
        

        return "redirect:/trainerlist"; 
    }
    
    
          
          }