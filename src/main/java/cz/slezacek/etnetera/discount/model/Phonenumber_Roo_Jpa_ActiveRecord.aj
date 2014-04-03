// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.slezacek.etnetera.discount.model;

import cz.slezacek.etnetera.discount.model.Phonenumber;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Phonenumber_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Phonenumber.entityManager;
    
    public static final List<String> Phonenumber.fieldNames4OrderClauseFilter = java.util.Arrays.asList("phonenumber", "codes");
    
    public static final EntityManager Phonenumber.entityManager() {
        EntityManager em = new Phonenumber().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Phonenumber.countPhonenumbers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Phonenumber o", Long.class).getSingleResult();
    }
    
    public static List<Phonenumber> Phonenumber.findAllPhonenumbers() {
        return entityManager().createQuery("SELECT o FROM Phonenumber o", Phonenumber.class).getResultList();
    }
    
    public static List<Phonenumber> Phonenumber.findAllPhonenumbers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Phonenumber o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Phonenumber.class).getResultList();
    }
    
    public static Phonenumber Phonenumber.findPhonenumber(Long id) {
        if (id == null) return null;
        return entityManager().find(Phonenumber.class, id);
    }
    
    public static List<Phonenumber> Phonenumber.findPhonenumberEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Phonenumber o", Phonenumber.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Phonenumber> Phonenumber.findPhonenumberEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Phonenumber o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Phonenumber.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Phonenumber.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Phonenumber.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Phonenumber attached = Phonenumber.findPhonenumber(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Phonenumber.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Phonenumber.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Phonenumber Phonenumber.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Phonenumber merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}