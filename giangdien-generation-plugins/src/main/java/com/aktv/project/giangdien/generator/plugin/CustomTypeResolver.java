//Copyright 2012 Lucas Libraro
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.

package com.aktv.project.giangdien.generator.plugin;

import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.joda.time.LocalTime;
import org.mybatis.generator.api.JavaTypeResolver;
import org.mybatis.generator.api.dom.java.FullyQualifiedJavaType;
import org.mybatis.generator.internal.types.JavaTypeResolverDefaultImpl;

import java.sql.Types;


/**
 * Reuse standard MyBatis Generator TypeResolver, but register Joda-Time object instead of JDK ones.
 *
 * <p>
 *   It currently maps the following SQL types :
 *   <ul>
 *     <li>{@code Types.DATE} &rArr; {@code LocalDate}</li>
 *     <li>{@code Types.TIME} &rArr; {@code LocalTime}</li>
 *     <li>{@code Types.TIMESTAMP} &rArr; {@code DateTime}</li>
 *   </ul>
 * </p>
 *
 */
public class CustomTypeResolver extends JavaTypeResolverDefaultImpl implements JavaTypeResolver {

  public CustomTypeResolver() {
    super();
    registerJodaTimeTypes();
  }



  private void registerJodaTimeTypes() {
    typeMap.put(
        Types.DATE,
        new JdbcTypeInformation(
            "DATE", //$NON-NLS-1$
            new FullyQualifiedJavaType(LocalDate.class.getName())
        )
    );
    typeMap.put(
        Types.TIME,
        new JdbcTypeInformation(
            "TIME", //$NON-NLS-1$
            new FullyQualifiedJavaType(LocalTime.class.getName())
        )
    );
    typeMap.put(
        Types.TIMESTAMP,
        new JdbcTypeInformation(
            "TIMESTAMP", //$NON-NLS-1$
            new FullyQualifiedJavaType(DateTime.class.getName())
        )
    );
  }
}

