// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.PIIRIVALVE_SEADUS_INTSIDENDI;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PIIRIVALVE_SEADUS_INTSIDENDI_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PIIRIVALVE_SEADUS_INTSIDENDI.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PIIRIVALVE_SEADUS_INTSIDENDI.version;
    
    public Integer PIIRIVALVE_SEADUS_INTSIDENDI.getVersion() {
        return this.version;
    }
    
    public void PIIRIVALVE_SEADUS_INTSIDENDI.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRIVALVE_SEADUS_INTSIDENDI.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRIVALVE_SEADUS_INTSIDENDI.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRIVALVE_SEADUS_INTSIDENDI attached = PIIRIVALVE_SEADUS_INTSIDENDI.findPIIRIVALVE_SEADUS_INTSIDENDI(this.piirivalve_seadus_intsidendi_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRIVALVE_SEADUS_INTSIDENDI.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRIVALVE_SEADUS_INTSIDENDI.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRIVALVE_SEADUS_INTSIDENDI PIIRIVALVE_SEADUS_INTSIDENDI.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRIVALVE_SEADUS_INTSIDENDI merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRIVALVE_SEADUS_INTSIDENDI.entityManager() {
        EntityManager em = new PIIRIVALVE_SEADUS_INTSIDENDI().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRIVALVE_SEADUS_INTSIDENDI.countPIIRIVALVE_SEADUS_INTSIDENDIs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRIVALVE_SEADUS_INTSIDENDI o", Long.class).getSingleResult();
    }
    
    public static List<PIIRIVALVE_SEADUS_INTSIDENDI> PIIRIVALVE_SEADUS_INTSIDENDI.findAllPIIRIVALVE_SEADUS_INTSIDENDIs() {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVE_SEADUS_INTSIDENDI o", PIIRIVALVE_SEADUS_INTSIDENDI.class).getResultList();
    }
    
    public static PIIRIVALVE_SEADUS_INTSIDENDI PIIRIVALVE_SEADUS_INTSIDENDI.findPIIRIVALVE_SEADUS_INTSIDENDI(Long piirivalve_seadus_intsidendi_id) {
        if (piirivalve_seadus_intsidendi_id == null) return null;
        return entityManager().find(PIIRIVALVE_SEADUS_INTSIDENDI.class, piirivalve_seadus_intsidendi_id);
    }
    
    public static List<PIIRIVALVE_SEADUS_INTSIDENDI> PIIRIVALVE_SEADUS_INTSIDENDI.findPIIRIVALVE_SEADUS_INTSIDENDIEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRIVALVE_SEADUS_INTSIDENDI o", PIIRIVALVE_SEADUS_INTSIDENDI.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}