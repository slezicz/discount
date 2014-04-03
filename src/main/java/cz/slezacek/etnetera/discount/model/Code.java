package cz.slezacek.etnetera.discount.model;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.stereotype.Repository;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import java.util.Date;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findCodesByEvent", "findCodesByEventAndPhonenumber", "findCodesByEventAndPhonenumberIsNotNull", "findCodesByEventAndPhonenumberIsNull", "findCodesByCodeValueEquals", "findCodesByEventAndCodeValueEquals" })
public class Code {

    /**
     */
    @NotNull
    private String codeValue;

    /**
     */
    @NotNull
    private int codeLength;

    /**
     */
    @NotNull
    private Boolean used;

    @NotNull
    @Future
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date validUntil;

    /**
     */
    @ManyToOne
    private Event event;

    /**
     */
    @ManyToOne
    private Phonenumber phonenumber;
}
