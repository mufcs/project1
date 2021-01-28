Club.destroy_all

Club.create :title => 'Manchester United', :country => 'England', :city => 'Manchester',:founded => '1879-02-22', :image => 'https://logos-download.com/wp-content/uploads/2016/05/Manchester_United_logo_logotype_crest.png'
Club.create :title => 'Ars', :country => 'Australian', :city => 'Australian',:founded => '1879-02-22', :image => 'https://upload.wikimedia.org/wikipedia/commons/3/32/Norman_Lindsay_1931.jpg'

puts "#{ Club.count } clubs created."


User.destroy_all

User.create :email => 'mu@gmail.com', :name => 'Manchester United', :user_type => 'Club', :password => 'chicken', :admin => true
User.create :email => 'd@gmail.com', :name => 'David Beckham', :user_type => 'Player', :password => 'chicken'
User.create :email => 'a@gmail.com', :name => 'Amish', :user_type => 'user', :password => 'chicken'

puts "#{ User.count } users created."
