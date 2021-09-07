class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.genarate
    first_name = ['provat', 'sumon', 'khokon', 'nanda', 'krishna', 'gour' ]
    last_mane = ['sutradhar', 'paul', 'kumar', 'das', 'thakur', 'bonik']
    number = rand.to_s[2..4]

    username = "#{first_name.sample}-#{last_mane.sample}-#{number}"
    create(username: username)
  end
end
