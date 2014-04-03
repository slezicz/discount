package cz.slezacek.etnetera.discount.serviceHL;

import cz.slezacek.etnetera.discount.exception.NoSuchCodeFound;
import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;

import java.util.Date;

/**
 * Created by slezicz on 2.4.14.
 */

public interface DiscountConsumerService {
    Event createEventAndGenerateCodes(String eventName, int numberOfGeneratedCodes, int lengthOfCode, Date codeValidDate);
    public Code validateCode(Event event, String codeValue) throws NoSuchCodeFound;
}
