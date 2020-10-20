
package com.project.schoolTrainer.repos;

import com.project.schoolTrainer.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TrainerRepository extends JpaRepository<Trainer,Integer> {
    
}
