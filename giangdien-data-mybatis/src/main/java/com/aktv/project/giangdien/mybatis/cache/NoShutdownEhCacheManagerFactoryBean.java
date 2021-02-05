package com.aktv.project.giangdien.mybatis.cache;

import net.sf.ehcache.CacheManager;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.io.InputStream;

/**
 * Classe copiée de Spring pour permettre d'éviter le shutdown du cache manager EhCache
 *
 * En effet, lors de tests, on ne peut pas utiliser @DirtiesContext par exemple à cause de MyBatis
 *
 * Dans:
 * org.mybatis.caches.ehcache.EhcacheCache
 * Le CacheManager utilisé est static et donc lors de la prochaine creation de contexte spring, le cache manager sera fermé
 * ce qui rend impossible l'utilisation de @DirtiesContext
 *
 * @author Lorber Sebastien <i>(lorber.sebastien@gmail.com)</i>
 */
public class NoShutdownEhCacheManagerFactoryBean implements FactoryBean<CacheManager>, InitializingBean, DisposableBean {

//  protected final Log logger = LogFactory.getLog(getClass());

  private Resource configLocation;

  private boolean shared = false;

  private String cacheManagerName;

  private CacheManager cacheManager;


  /**
   * Set the location of the EHCache config file. A typical value is "/WEB-INF/ehcache.xml".
   * <p>Default is "ehcache.xml" in the root of the class path, or if not found,
   * "ehcache-failsafe.xml" in the EHCache jar (default EHCache initialization).
   * @see CacheManager#create(InputStream)
   * @see CacheManager#CacheManager(InputStream)
   */
  public void setConfigLocation(Resource configLocation) {
    this.configLocation = configLocation;
  }

  /**
   * Set whether the EHCache CacheManager should be shared (as a singleton at the VM level)
   * or independent (typically local within the application). Default is "false", creating
   * an independent instance.
   * @see CacheManager#create()
   * @see CacheManager#CacheManager()
   */
  public void setShared(boolean shared) {
    this.shared = shared;
  }

  /**
   * Set the name of the EHCache CacheManager (if a specific name is desired).
   * @see CacheManager#setName(String)
   */
  public void setCacheManagerName(String cacheManagerName) {
    this.cacheManagerName = cacheManagerName;
  }


  public void afterPropertiesSet() throws IOException {
//    logger.info("Initializing EHCache CacheManager");
    if (this.configLocation != null) {
      InputStream is = this.configLocation.getInputStream();
      try {
        this.cacheManager = (this.shared ? CacheManager.create(is) : new CacheManager(is));
      }
      finally {
        is.close();
      }
    }
    else {
      this.cacheManager = (this.shared ? CacheManager.create() : new CacheManager());
    }
    if (this.cacheManagerName != null) {
      this.cacheManager.setName(this.cacheManagerName);
    }
  }


  public CacheManager getObject() {
    return this.cacheManager;
  }

  public Class<? extends CacheManager> getObjectType() {
    return (this.cacheManager != null ? this.cacheManager.getClass() : CacheManager.class);
  }

  public boolean isSingleton() {
    return true;
  }


  public void destroy() {
//    logger.info("WILL NOT SHUT DOWN EHCache CacheManager");
    //this.cacheManager.shutdown();
  }


}