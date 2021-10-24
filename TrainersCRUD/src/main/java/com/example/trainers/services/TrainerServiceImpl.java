package com.example.trainers.services;

import com.example.trainers.models.Trainer;
import com.example.trainers.repositories.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    public List<Trainer> getAllTrainers() {//epistrefei olous tous trainers
        return trainerRepository.findAll();
    }

    @Override
    public void deleteTrainer(int id) {//kanei delete ton trainer
        trainerRepository.deleteById(id);
    }

    @Override
    public Trainer getById(int id) {//epistrefei trainer symfwna me to id pou dinw
        return trainerRepository.getById(id);
    }

    @Override
    public void insertTrainer(Trainer t) {//kanei insert 
        trainerRepository.save(t);
    }

    @Override
    public void updateTrainer(Trainer t) {//kanei update
        Trainer trainer = trainerRepository.findById(t.getId()).get();//briskw ton trainer apo thn bash kai allazw ta stoixeia tou meta auta ths formas 
        trainer.setFirstname(t.getFirstname());
        trainer.setLastname(t.getLastname());
        trainer.setTsubject(t.getTsubject());
        trainerRepository.saveAndFlush(trainer);
    }

}
