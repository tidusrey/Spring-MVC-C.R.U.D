/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.services;

import com.example.demo.model.Trainer;
import com.example.demo.repository.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Μαρια
 */
@Service
@Transactional
public class TrainerInterfaceImpl implements TrainerInterface {

    @Autowired
    TrainerRepository trp;
    
    @Override
    public void insertTrainer(Trainer tr) {
       trp.save(tr);
    }

    @Override
    public List<Trainer> getAllTrainers() {
     List<Trainer> result = (List<Trainer>) trp.findAll();
return result;
} 

    @Override
    public void deleteTrainer(Integer tr) {
       trp.deleteById(tr);
    }

    @Override
    public void updateTrainer(Trainer tr) {
       trp.save(tr);
    }

    @Override
    public Trainer getTrainerById(Integer id) {
        Trainer result=trp.findById(id).get();
      
        return result;
    }

  
 
}
