require 'pg'

class Bookmarks

  def self.fetch_bookmarks
    if in_test?
      db_connect = PG.connect( dbname: 'bookmark_manager_test' )
    else
      db_connect = PG.connect( dbname: 'bookmark_manager' )
    end
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
  end

  def self.prettify_bookmarks(input)
    input.map { |bookmark| "#{bookmark['url']} " }
  end

  private
  def self.in_test?
    ENV['RACK_ENV'] == 'test' 
  end
end
