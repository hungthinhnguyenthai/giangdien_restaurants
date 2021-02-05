package com.aktv.project.giangdien.mybatis.typehandler;

import com.aktv.project.giangdien.data.enums.EnumStatusValue;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * StatusEnumTypeHandler -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class StatusEnumTypeHandler<E extends EnumStatusValue<Integer>> extends BaseTypeHandler<E> {

    private Class<E> type;
    private Map<Integer,E> mappedByCode;

    // needed for Java -> SQL (update/delete/insert queries)
    public StatusEnumTypeHandler() {
    }

    // needed for SQL -> Java (resultmap)
    public StatusEnumTypeHandler(Class<E> type) {
        List<E> enums = Lists.newArrayList(type.getEnumConstants());
        this.type = type;
        this.mappedByCode = Maps.uniqueIndex(enums, new Function<E, Integer>() {
            @Override
            public Integer apply(E e) {
                return e.getCode();
            }
        });
    }

    private E getEnumConstFromCode(Integer code) {
        checkValidState();
        if ( code == null ) {
            return null;
        } else {
            E enumConst = mappedByCode.get(code);
            Preconditions.checkNotNull(enumConst,"No enum could be found for "+type+" with status code " + code);
            return enumConst;
        }
    }

    private void checkValidState() {
        if (type == null) {
            throw new IllegalStateException("This class is being used without the enum type necessary for mapping the SQL result to a Java type" +
                    "This is probably because MyBatis already scanned this mapper and is using the instance with the noarg constructor." +
                    "You should check your typehandler configuration, either in the mybatis setting file or where the 'org.mybatis.spring.SqlSessionFactoryBean' is declared");
        }
    }

    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, E e, JdbcType jdbcType) throws SQLException {
        Integer code= e.getCode();
        if (jdbcType == null) {
            ps.setInt(i, code);
        } else {
            ps.setObject(i, code , jdbcType.TYPE_CODE);
        }
    }

    @Override
    public E getNullableResult(ResultSet resultSet, String s) throws SQLException {
        int code = resultSet.getInt(s);
        return getEnumConstFromCode(code);
    }

    @Override
    public E getNullableResult(ResultSet resultSet, int i) throws SQLException {
        int code = resultSet.getInt(i);
        return getEnumConstFromCode(code);
    }

    @Override
    public E getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        int code = callableStatement.getInt(i);
        return getEnumConstFromCode(code);
    }
}
