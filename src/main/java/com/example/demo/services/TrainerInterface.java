/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.services;

import com.example.demo.model.Trainer;
import java.util.List;

/**
 *
 * @author Μαρια
 */
public interface TrainerInterface {
    
    
   public  void insertTrainer(Trainer tr);
    
    public Trainer getTrainerById(Integer tr);
    
   public List <Trainer> getAllTrainers();
   
   public void deleteTrainer(Integer tr);
   
   public void updateTrainer(Trainer tr);
}
