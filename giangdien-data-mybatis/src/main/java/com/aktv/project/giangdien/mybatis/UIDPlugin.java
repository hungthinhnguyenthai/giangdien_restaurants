package com.aktv.project.giangdien.mybatis;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.aktv.project.giangdien.data.generator.UIDGenerator;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;

import java.util.Properties;

@Intercepts({@Signature(
        type = Executor.class,
        method = "update",
        args = {MappedStatement.class, Object.class})})
public class UIDPlugin implements Interceptor {
  @Override
  public Object intercept(Invocation invocation) throws Exception {
    Object objectToSave = invocation.getArgs()[1];
    if (objectToSave instanceof UIDBaseEntity && ((UIDBaseEntity) objectToSave).getId() == null) {
      ((UIDBaseEntity) objectToSave).setId(UIDGenerator.randomUID());
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
