// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.slezacek.etnetera.discount.model;

import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.model.Phonenumber;
import java.util.Date;

privileged aspect Code_Roo_JavaBean {
    
    public String Code.getCodeValue() {
        return this.codeValue;
    }
    
    public void Code.setCodeValue(String codeValue) {
        this.codeValue = codeValue;
    }
    
    public int Code.getCodeLength() {
        return this.codeLength;
    }
    
    public void Code.setCodeLength(int codeLength) {
        this.codeLength = codeLength;
    }
    
    public Boolean Code.getUsed() {
        return this.used;
    }
    
    public void Code.setUsed(Boolean used) {
        this.used = used;
    }
    
    public Date Code.getValidUntil() {
        return this.validUntil;
    }
    
    public void Code.setValidUntil(Date validUntil) {
        this.validUntil = validUntil;
    }
    
    public Event Code.getEvent() {
        return this.event;
    }
    
    public void Code.setEvent(Event event) {
        this.event = event;
    }
    
    public Phonenumber Code.getPhonenumber() {
        return this.phonenumber;
    }
    
    public void Code.setPhonenumber(Phonenumber phonenumber) {
        this.phonenumber = phonenumber;
    }
    
}
