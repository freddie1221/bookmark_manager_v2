# require 'pg'

def truncate_test_table

  db_connect = PG.connect( dbname: 'bookmark_manager_test' )
  db_connect.exec("DROP TABLE bookmarks")
  
  db_connect.exec("CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(100), title VARCHAR(100))")

  db_connect.exec("INSERT INTO bookmarks(url, title) VALUES('http://www.makersacademy.com', 'Makers Academy')")
  db_connect.exec("INSERT INTO bookmarks(url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy Software')")
  db_connect.exec("INSERT INTO bookmarks(url, title) VALUES('http://www.google.com', 'Google' )")
  db_connect.exec("INSERT INTO bookmarks(url, title) VALUES('https://imgur.com', 'Google' )")

end