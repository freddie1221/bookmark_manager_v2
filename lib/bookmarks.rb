require 'pg'

class Bookmarks

  def self.fetch_bookmarks
    db_result = decide_database.exec( "SELECT * FROM bookmarks")
  end

  def self.prettify_bookmarks(input)
    input.map { |bookmark| [bookmark['url'], bookmark['title']]  }
  end

  def self.add(url, title)
    db_result = decide_database.exec( "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')")
  end

  private
  def self.decide_database
    if in_test?
      PG.connect( dbname: 'bookmark_manager_test' )
    else
      PG.connect( dbname: 'bookmark_manager' )
    end
  end

  def self.in_test?
    ENV['RACK_ENV'] == 'test' 
  end
end
