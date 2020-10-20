
package com.project.schoolTrainer.services;

import com.project.schoolTrainer.model.Trainer;
import com.project.schoolTrainer.repos.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class TrainerServiceImpl implements TrainerServiceInterface {
    
    @Autowired
    TrainerRepository trainerRepository ; 

    @Override
    @Transactional
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
        
    }

    @Override
    public List<Trainer> findAllTrainers() {
       List<Trainer> trainers= trainerRepository.findAll();
       return trainers;
      
    }

    @Override
    @Transactional
    public void deleteTrainer(int id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public Trainer fetchTrainerById(int id) {
        Trainer t=trainerRepository.getOne(id);
        return t;
    }
}
