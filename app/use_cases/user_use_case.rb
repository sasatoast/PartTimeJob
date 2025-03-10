# app/use_cases/user_use_case.rb
class UserUseCase
  def self.create_user(params)
    User.create(params)
  end
end