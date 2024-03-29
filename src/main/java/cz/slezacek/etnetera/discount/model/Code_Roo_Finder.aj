// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.slezacek.etnetera.discount.model;

import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import cz.slezacek.etnetera.discount.model.Phonenumber;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Code_Roo_Finder {
    
    public static Long Code.countFindCodesByCodeValueEquals(String codeValue) {
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.codeValue = :codeValue", Long.class);
        q.setParameter("codeValue", codeValue);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Code.countFindCodesByEvent(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.event = :event", Long.class);
        q.setParameter("event", event);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Code.countFindCodesByEventAndCodeValueEquals(Event event, String codeValue) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.event = :event AND o.codeValue = :codeValue", Long.class);
        q.setParameter("event", event);
        q.setParameter("codeValue", codeValue);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Code.countFindCodesByEventAndPhonenumber(Event event, Phonenumber phonenumber) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (phonenumber == null) throw new IllegalArgumentException("The phonenumber argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.event = :event AND o.phonenumber = :phonenumber", Long.class);
        q.setParameter("event", event);
        q.setParameter("phonenumber", phonenumber);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Code.countFindCodesByEventAndPhonenumberIsNotNull(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NOT NULL", Long.class);
        q.setParameter("event", event);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Code.countFindCodesByEventAndPhonenumberIsNull(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NULL", Long.class);
        q.setParameter("event", event);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Code> Code.findCodesByCodeValueEquals(String codeValue) {
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.codeValue = :codeValue", Code.class);
        q.setParameter("codeValue", codeValue);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByCodeValueEquals(String codeValue, String sortFieldName, String sortOrder) {
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.codeValue = :codeValue";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("codeValue", codeValue);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEvent(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.event = :event", Code.class);
        q.setParameter("event", event);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEvent(Event event, String sortFieldName, String sortOrder) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.event = :event";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("event", event);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndCodeValueEquals(Event event, String codeValue) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.event = :event AND o.codeValue = :codeValue", Code.class);
        q.setParameter("event", event);
        q.setParameter("codeValue", codeValue);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndCodeValueEquals(Event event, String codeValue, String sortFieldName, String sortOrder) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (codeValue == null || codeValue.length() == 0) throw new IllegalArgumentException("The codeValue argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.event = :event AND o.codeValue = :codeValue";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("event", event);
        q.setParameter("codeValue", codeValue);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumber(Event event, Phonenumber phonenumber) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (phonenumber == null) throw new IllegalArgumentException("The phonenumber argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber = :phonenumber", Code.class);
        q.setParameter("event", event);
        q.setParameter("phonenumber", phonenumber);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumber(Event event, Phonenumber phonenumber, String sortFieldName, String sortOrder) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        if (phonenumber == null) throw new IllegalArgumentException("The phonenumber argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber = :phonenumber";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("event", event);
        q.setParameter("phonenumber", phonenumber);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumberIsNotNull(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NOT NULL", Code.class);
        q.setParameter("event", event);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumberIsNotNull(Event event, String sortFieldName, String sortOrder) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NOT NULL";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("event", event);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumberIsNull(Event event) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        TypedQuery<Code> q = em.createQuery("SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NULL", Code.class);
        q.setParameter("event", event);
        return q;
    }
    
    public static TypedQuery<Code> Code.findCodesByEventAndPhonenumberIsNull(Event event, String sortFieldName, String sortOrder) {
        if (event == null) throw new IllegalArgumentException("The event argument is required");
        EntityManager em = Code.entityManager();
        String jpaQuery = "SELECT o FROM Code AS o WHERE o.event = :event AND o.phonenumber IS NULL";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Code> q = em.createQuery(jpaQuery, Code.class);
        q.setParameter("event", event);
        return q;
    }
    
}
