package cz.slezacek.etnetera.discount.serviceHL;

import cz.slezacek.etnetera.discount.exception.NoSuchCodeFound;
import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.service.CodeService;
import cz.slezacek.etnetera.discount.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by slezicz on 2.4.14.
 */
@Service
public class DiscountConsumerServiceImpl implements DiscountConsumerService {

    @Autowired
    EventService eventService;

    @Autowired
    CodeService codeService;



    @Override
    @Transactional(rollbackFor={})
    public Event createEventAndGenerateCodes(String eventName, int numberOfGeneratedCodes, int lengthOfCode, Date codeValidDate) {

        Event event = new Event();

        event.setName(eventName);
        eventService.saveEvent(event);

        codeService.generateCodesForEvent(event, numberOfGeneratedCodes, lengthOfCode, codeValidDate);

        return event;
    }

    @Override
    public Code validateCode(Event event, String codeValue) throws NoSuchCodeFound {
        return codeService.findCodeByCodeValueAndEvent(event, codeValue);
    }
}
