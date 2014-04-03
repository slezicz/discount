package cz.slezacek.etnetera.discount.tests;

import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.model.Phonenumber;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by slezicz on 1.4.14.
 */
/*
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("classpath:applicationContext.xml")
@ContextConfiguration("file:src/main/resources/META-INF/spring/applicationContext.xml")
public class EntityTest {
    @PersistenceContext
    EntityManager entityManager;


    public void insertEvent(){
        Event eventCircle = new Event("circle");
        eventCircle.persist();
        Event eventSquare = new Event("square");
        eventSquare.persist();

        Phonenumber a = new Phonenumber("a");
        a.persist();
        Phonenumber b = new Phonenumber("b");
        b.persist();

        Code code0 = new Code("0",1, eventCircle);
        code0.persist();
        Code code1 = new Code("1", 1, eventSquare);
        code1.persist();
    }
}
*/