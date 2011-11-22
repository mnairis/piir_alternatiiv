// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.RIIGI_ADMIN_YKSUSE_LIIK;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RIIGI_ADMIN_YKSUSE_LIIK_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager RIIGI_ADMIN_YKSUSE_LIIK.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer RIIGI_ADMIN_YKSUSE_LIIK.version;
    
    public Integer RIIGI_ADMIN_YKSUSE_LIIK.getVersion() {
        return this.version;
    }
    
    public void RIIGI_ADMIN_YKSUSE_LIIK.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void RIIGI_ADMIN_YKSUSE_LIIK.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RIIGI_ADMIN_YKSUSE_LIIK.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RIIGI_ADMIN_YKSUSE_LIIK attached = RIIGI_ADMIN_YKSUSE_LIIK.findRIIGI_ADMIN_YKSUSE_LIIK(this.riigi_admin_yksuse_liik_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RIIGI_ADMIN_YKSUSE_LIIK.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RIIGI_ADMIN_YKSUSE_LIIK.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RIIGI_ADMIN_YKSUSE_LIIK RIIGI_ADMIN_YKSUSE_LIIK.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RIIGI_ADMIN_YKSUSE_LIIK merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager RIIGI_ADMIN_YKSUSE_LIIK.entityManager() {
        EntityManager em = new RIIGI_ADMIN_YKSUSE_LIIK().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long RIIGI_ADMIN_YKSUSE_LIIK.countRIIGI_ADMIN_YKSUSE_LIIKs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RIIGI_ADMIN_YKSUSE_LIIK o", Long.class).getSingleResult();
    }
    
    public static List<RIIGI_ADMIN_YKSUSE_LIIK> RIIGI_ADMIN_YKSUSE_LIIK.findAllRIIGI_ADMIN_YKSUSE_LIIKs() {
        return entityManager().createQuery("SELECT o FROM RIIGI_ADMIN_YKSUSE_LIIK o", RIIGI_ADMIN_YKSUSE_LIIK.class).getResultList();
    }
    
    public static RIIGI_ADMIN_YKSUSE_LIIK RIIGI_ADMIN_YKSUSE_LIIK.findRIIGI_ADMIN_YKSUSE_LIIK(Long riigi_admin_yksuse_liik_id) {
        if (riigi_admin_yksuse_liik_id == null) return null;
        return entityManager().find(RIIGI_ADMIN_YKSUSE_LIIK.class, riigi_admin_yksuse_liik_id);
    }
    
    public static List<RIIGI_ADMIN_YKSUSE_LIIK> RIIGI_ADMIN_YKSUSE_LIIK.findRIIGI_ADMIN_YKSUSE_LIIKEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RIIGI_ADMIN_YKSUSE_LIIK o", RIIGI_ADMIN_YKSUSE_LIIK.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
