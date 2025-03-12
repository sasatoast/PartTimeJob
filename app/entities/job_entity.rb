# app/entities/job_entity.rb
class JobEntity
  attr_reader :id, :name, :location, :latitude, :longitude, :wage, :working_time_start, :working_time_end, :created_at, :updated_at, :email

  def initialize(id:, name:, location:, latitude:, longitude:, wage:, working_time_start:, working_time_end:, created_at:, updated_at:, email:
    )
    @id = id
    @name = name
    @location = location
    @latitude = latitude
    @longitude = longitude
    @wage = wage
    @working_time_start = working_time_start
    @working_time_end=working_time_end
    @email=email
  end
end
