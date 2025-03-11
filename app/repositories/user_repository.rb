# app/repositories/user_repository.rb
class UserRepository
  def self.find_all
    User.all.map{|user| UserEntity.new(**attributes.symbolize_keys)}
  end
  def self.find_by_id(id)
    user=User.find_by(id: id)
    user ? UserEntity.new(**user.attributes.symbolize_keys): nil
  end
  def self.create(params)
    user=User.create(params)
    UserEntity.new(**user.attributes.symbolize_keys): nil
  end
end