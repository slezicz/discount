package cz.slezacek.etnetera.discount.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Phonenumber {

    /**
     */
    @NotNull
    private String phonenumber;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "phonenumber")
    private Set<Code> codes = new HashSet<Code>();
}
