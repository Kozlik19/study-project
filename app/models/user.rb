class User < ApplicationRecord
  def abcd
		self.update(password: self.password.split('').shuffle.join)
  end

	def self.qwer(user)
		new_user = user.dup.attributes.slice('email', 'password')
		saved = User.create(new_user)
		saved.abcd
	end
end