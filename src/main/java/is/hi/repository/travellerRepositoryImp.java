package is.hi.repository;


import is.hi.model.Traveller;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class travellerRepositoryImp implements travellerRepository {
    private final List<Traveller> travellers;
   // private Traveller mockTraveller;
    public travellerRepositoryImp(){
        this.travellers = new ArrayList<Traveller>();
        Traveller traveller = new Traveller("ofm1", "ofm1@hi.is", "password");
        travellers.add(traveller);
    }

    @Override
    public List<Traveller> getAll(){
        return travellers;
    }
    @Override
    public void add (Traveller traveller){
        travellers.add(traveller);
    }
}
