# app/entities/user_entity.rb
class UserEntity
  attr_reader :id, :name, :email, :university, :faculty, :created_at, :updated_at


  def initialize(id:, name:, email:, university:, faculty:, created_at:, updated_at:
    )
    @id = id
    @name = name
    @email = email
    @university = university
    @faculty = faculty
  end
end