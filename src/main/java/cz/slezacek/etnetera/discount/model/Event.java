package cz.slezacek.etnetera.discount.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Event {

    /**
     */
    private String name;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "event")
    private Set<Code> codes = new HashSet<Code>();
}
