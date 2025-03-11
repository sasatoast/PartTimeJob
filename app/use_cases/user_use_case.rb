# app/use_cases/user_use_case.rb
class UserUseCase
  def self.list_user
    UserEntity.find_all
  end
  def self.get_user_detail(id)
    UserEntity.find_by_id(id)
  end
  def self.create_user(params)
    UserEntity.create(params)
  end
end