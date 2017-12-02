class Student
  attr_accessor :name, :grade

  def initialize(name,grade)
    @name, @grade= name,grade
  end

  def self.create_table
    sql=<<-sql
    CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    sql
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql=<<-sql
    DROP TABLE students
    sql
    DB[:conn].execute(sql)
  end

  def save
    sql=<<-sql
    INSERT INTO students (name,grade)
    VALUES (?,?)
    )
    sql
    DB[:conn].execute(sql, self.name, self.grade)
  end

  def create
  end


  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
