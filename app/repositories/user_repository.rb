# app/repositories/user_repository.rb
class UserRepository
  def self.create(params)
    User.create(params)
  end
end