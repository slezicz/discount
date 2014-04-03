package cz.slezacek.etnetera.discount.service;
import cz.slezacek.etnetera.discount.exception.NoSuchCodeFound;
import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import org.springframework.roo.addon.layers.service.RooService;

import java.util.Date;
import java.util.List;

@RooService(domainTypes = { cz.slezacek.etnetera.discount.model.Code.class })
public interface CodeService {
    public Code findCodeByCodeValueAndEvent(Event event, String codeValue) throws NoSuchCodeFound;
    public List<Code> findCodesByEventAndPhonenumberIsNull(Event event);
    public List<Code> generateCodesForEvent(Event event, int numberOfGeneratedCodes, int lengthOfCode, Date codeValidDate);
}
