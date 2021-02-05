package com.aktv.project.giangdien.mybatis;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.*;
import org.joda.time.DateTime;

import java.util.Properties;

/**
 * Plugin MyBatis qui se charge de mettre à jour les attributs des instances d'{@link Auditable}
 *
 * @author Loïc Guerrin <guerrin@fullsix.com>
 */
@Intercepts({@Signature(
        type = Executor.class,
        method = "update",
        args = {MappedStatement.class, Object.class})})
public class AuditablePlugin implements Interceptor {

  @Override
  public Object intercept(Invocation invocation) throws Exception {
    Object objectToSave = invocation.getArgs()[1];
    if (objectToSave instanceof Auditable) {
      Auditable auditable = (Auditable) objectToSave;
      // Voir regles ici: DIGIPOSTE-863
      if (auditable.getCreatedAt() == null) {
        auditable.setCreatedAt(DateTime.now());
        auditable.setUpdatedAt(DateTime.now());
      } else {
        auditable.setUpdatedAt(DateTime.now());
      }
    }
    return invocation.proceed();
  }

  @Override
  public Object plugin(Object target) {
    return Plugin.wrap(target, this);
  }

  @Override
  public void setProperties(Properties properties) {

  }
}
