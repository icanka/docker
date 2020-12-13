import groovy.sql.Sql

def output = []


Class.forName("com.mysql.jdbc.Driver")
def sql = Sql.newInstance("jdbc:mysql://db:3306/employees", "root", "1234", "com.mysql.jdbc.Driver")
sql.eachRow("SHOW TABLES"){row ->

    output.push(row.tables_in_employees)


}


return output
