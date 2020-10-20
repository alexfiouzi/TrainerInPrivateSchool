
package com.project.schoolTrainer.services;

import com.project.schoolTrainer.model.Trainer;
import java.util.List;


public interface  TrainerServiceInterface {
    public void insertTrainer(Trainer t);
    List<Trainer> findAllTrainers();
    public void deleteTrainer(int id);
    Trainer  fetchTrainerById(int id);
}
