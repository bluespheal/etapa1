require "sqlite3"

class Chef

  def initialize(first_name, last_name, birthday, email, phone)
    @@first_name = first_name
    @@last_name = last_name
    @@birthday = birthday
    @@email = email
    @@phone = phone
  end

  def self.create_table
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed()
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('#{@@first_name}', '#{@@last_name}', '#{@@birthday}', '#{@@email}', '#{@@phone}', DATETIME('now'), DATETIME('now'));
      SQL
    )
  end

  def self.all
    Chef.db.execute(
      <<-SQL
      SELECT * FROM chefs
      SQL
      )
  end

  def self.where(var, val)
    Chef.db.execute(
      "SELECT * FROM chefs WHERE #{var} = ?", val
      )
  end

  def save
    Chef.db.execute(
       <<-SQL
      INSERT INTO chefs 
        (first_name, last_name, birthday, email, phone, created_at, updated_at)
      VALUES
        ('#{@@first_name}', '#{@@last_name}', '#{@@birthday}', '#{@@email}', '#{@@phone}', DATETIME('now'), DATETIME('now'))
      SQL
      )
  end

  def self.delete(var, val)
    Chef.db.execute(
    "DELETE FROM chefs WHERE #{var} = ?", val
    )
  end

  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end