// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.OBJEKT;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OBJEKT_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager OBJEKT.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer OBJEKT.version;
    
    public Integer OBJEKT.getVersion() {
        return this.version;
    }
    
    public void OBJEKT.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void OBJEKT.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void OBJEKT.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            OBJEKT attached = OBJEKT.findOBJEKT(this.objekt_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void OBJEKT.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void OBJEKT.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public OBJEKT OBJEKT.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        OBJEKT merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager OBJEKT.entityManager() {
        EntityManager em = new OBJEKT().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long OBJEKT.countOBJEKTS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM OBJEKT o", Long.class).getSingleResult();
    }
    
    public static List<OBJEKT> OBJEKT.findAllOBJEKTS() {
        return entityManager().createQuery("SELECT o FROM OBJEKT o", OBJEKT.class).getResultList();
    }
    
    public static OBJEKT OBJEKT.findOBJEKT(Long objekt_id) {
        if (objekt_id == null) return null;
        return entityManager().find(OBJEKT.class, objekt_id);
    }
    
    public static List<OBJEKT> OBJEKT.findOBJEKTEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM OBJEKT o", OBJEKT.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
