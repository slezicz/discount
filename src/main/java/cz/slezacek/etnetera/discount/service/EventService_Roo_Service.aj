// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.slezacek.etnetera.discount.service;

import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.service.EventService;
import java.util.List;

privileged aspect EventService_Roo_Service {
    
    public abstract long EventService.countAllEvents();    
    public abstract void EventService.deleteEvent(Event event);    
    public abstract Event EventService.findEvent(Long id);    
    public abstract List<Event> EventService.findAllEvents();    
    public abstract List<Event> EventService.findEventEntries(int firstResult, int maxResults);    
    public abstract void EventService.saveEvent(Event event);    
    public abstract Event EventService.updateEvent(Event event);    
}
