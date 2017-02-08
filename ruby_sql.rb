require "sqlite3"

class Chef

  def initialize(first_name, last_name, birthday, email, phone, created_at, updated_at)
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
    @email = email
    @phone = phone
    @created_at = created_at
    @updated_at = updated_at
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

  def self.seed
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          (@first_name, @last_name, @birthday, @email, @phone, @created_at, @updated_at)),
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

  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end

#prueba = Chef.new('Greg', 'Scrumphultomhomphas', '2006-03-31', 'fusionsufle@mw10t.com', '11122666336', '2017-02-07', '2017-02-07')
#Chef.all



