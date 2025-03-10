# app/entities/user_entity.rb
class UserEntity
  attr_reader :id, :name, :email, :university, :faculty

  def initialize(id:, name:, email:, university:, faculty:)
    @id = id
    @name = name
    @email = email
    @university = university
    @faculty = faculty
  end
end