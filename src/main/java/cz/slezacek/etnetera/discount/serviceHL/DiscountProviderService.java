package cz.slezacek.etnetera.discount.serviceHL;

import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.model.Phonenumber;

/**
 * Created by slezicz on 2.4.14.
 */

public interface DiscountProviderService {
    public void requestCode(Event event, Phonenumber requesterPhonenumber);
}
