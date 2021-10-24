package com.example.trainers.services;

import com.example.trainers.models.Trainer;
import java.util.List;

public interface TrainerServiceInterface {

    public void insertTrainer(Trainer u);//insert

    public void updateTrainer(Trainer u);//update

    public List<Trainer> getAllTrainers();//read

    public Trainer getById(int id);//read by id

    public void deleteTrainer(int id);//delete

}
