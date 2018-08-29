require 'pg'

class Bookmarks

  def self.fetch_bookmarks
    db_connect = PG.connect( dbname: 'bookmark_manager' )
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
    db_result.map { |bookmark| "#{bookmark['url']} " }
  end

  


end
