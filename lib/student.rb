class Student
  attr_accessor :name, :grade

  def initialize(name:,grade:)
    @name,@grade= name,grade
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
