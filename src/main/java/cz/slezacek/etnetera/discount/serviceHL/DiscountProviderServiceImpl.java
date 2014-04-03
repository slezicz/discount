package cz.slezacek.etnetera.discount.serviceHL;

import cz.slezacek.etnetera.discount.exception.NoMoreCodesAvailableException;
import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.model.Phonenumber;
import cz.slezacek.etnetera.discount.service.CodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by slezicz on 2.4.14.
 */

@Service
public class DiscountProviderServiceImpl implements DiscountProviderService {

    @Autowired
    CodeService codeService;

    @Override
    public void requestCode(Event event, Phonenumber requesterPhonenumber) {
        List<Code> availableCodesForPhonenumber;


        availableCodesForPhonenumber = codeService.findCodesByEventAndPhonenumberIsNull(event);

        if( !availableCodesForPhonenumber.isEmpty() ){
            // there is still some discount code available
            // let's assign phonenumber to it

            Code codeToAssign;
            codeToAssign = availableCodesForPhonenumber.get(0);

            // TODO call service that sends SMS with the code

        }

        // no more discount codes available
        // RollBack (RuntimeException invokes Rollback when annotated with @Transactional)
        throw new NoMoreCodesAvailableException();
    }
}
