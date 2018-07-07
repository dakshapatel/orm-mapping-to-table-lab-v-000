class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade
  attr_reader :id

  def attributes(name:, grade:)
    @name = name
    @grade = grade
  end

  def self.create_table (name:, grade:)
    sql = <<~SQL
      CREATE TABLE IF NOT EXISTS students(
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      )
      SQL
      DB[:conn].execute(sql)
  end

  def drop_table

  end


  def save

  end

  def
end
