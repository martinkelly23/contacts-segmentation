class FiltersController < ApplicationController
  def filt
    column = params[:select1]
    operator = params[:select2]
    value = params[:input1]
    if(column != "age")
      puts case operator
      when 'same as'
        operator = ' = ' + '?'
      when 'contains'
        operator = ' LIKE ' + '?'
        value = '%' + value + '%'
      when 'begins with'
        operator = ' LIKE ?'
        value = value + '%'
      else
        operator = ' LIKE ?'
        value = '%' + value
      end
    else
      puts case operator
      when 'equal to'
        operator = ' = ' + '?'
      when 'less than'
        operator = ' < ' + '?'
      when 'less than or equal to'
        operator = ' <= ?'
      when 'greater than'
        operator = ' > ?'
      else
        operator = ' >= ?'
      end
    end

    logicOperator = params[:select3]

    if((logicOperator == "AND") | (logicOperator == "OR"))
      column2 = params[:select4]
      operator2 = params[:select5]
      value2 = params[:input2]
      if(column2 != "age")
        puts case operator2
        when 'same as'
          operator2 = ' = ' + '?'
        when 'contains'
          operator2 = ' LIKE ' + '?'
          value2 = '%' + value2 + '%'
        when 'begins with'
          operator2 = ' LIKE ?'
          value2 = value2 + '%'
        else
          operator2 = ' LIKE ?'
          value2 = '%' + value2
        end
      else
        puts case operator2
        when 'equal to'
          operator2 = ' = ' + '?'
        when 'less than'
          operator2 = ' < ' + '?'
        when 'less than or equal to'
          operator2 = ' <= ?'
        when 'greater than'
          operator2 = ' > ?'
        else
          operator2 = ' >= ?'
        end
      end
      column2 = logicOperator + ' ' + column2
      @users = User.find_by_sql(["SELECT * FROM users WHERE " + column + operator + column2 + operator2, value, value2])
    else
      @users = User.find_by_sql(["SELECT * FROM users WHERE " + column + operator, value])
    end
  end
end
