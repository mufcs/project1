Club.destroy_all

Club.create :title => 'Manchester United', :country => 'England', :city => 'Manchester',:founded => '1879-02-22', :image => 'https://logos-download.com/wp-content/uploads/2016/05/Manchester_United_logo_logotype_crest.png'
Club.create :title => 'Arsenal', :country => 'England', :city => 'Australian', :founded => '1879-02-22', :image => 'https://upload.wikimedia.org/wikipedia/commons/3/32/Norman_Lindsay_1931.jpg'

puts "#{ Club.count } clubs created."


User.destroy_all

User.create :email => 'mu@gmail.com', :name => 'Manchester United', :user_type => 'Club', :password => 'chicken', :admin => true
User.create :email => 'd@gmail.com', :name => 'David Beckham', :user_type => 'Player', :password => 'chicken'
User.create :email => 'a@gmail.com', :name => 'Amish', :user_type => 'user', :password => 'chicken'

puts "#{ User.count } users created."


Player.destroy_all

Player.create :name => 'Mason Greenwood', :dob => '2001', :position => 'Forward', :image => 'https://images.indianexpress.com/2020/07/ManU.png'
Player.create :name => 'Marcus Rashford', :dob => '1997', :position => 'Forward', :image => 'https://www.seekpng.com/png/full/415-4152599_marcus-rashford-juan-mata.png'
Player.create :name => 'Jack Grealish', :dob => '1995', :position => 'Winger', :image => 'https://e2.365dm.com/19/08/800x600/skysports-jack-grealish-aston-villa_4739419.png'


puts "#{ Player.count } players created."

player = Player.first
club = Club.first

club.players << player
