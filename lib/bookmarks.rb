require 'pg'

class Bookmarks

attr_reader :url, :title, :id

  def initialize(url, title, id)
    @url = url
    @title = title
    @id = id
  end

  
  def self.fetch_bookmarks
    decide_database.exec( "SELECT * FROM bookmarks")
  end

  def self.prettify_bookmarks(input) # this is to create an array of objects from the return from DB
    input.map { |bookmark| Bookmarks.new(bookmark['url'], bookmark['title'], bookmark['id'])  }
  end

  def self.add(url, title)
    decide_database.exec( "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')")
  end

  
  def self.delete(id)
    decide_database.exec( "DELETE FROM bookmarks WHERE id = '#{id}'" )
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
