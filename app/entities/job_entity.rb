# app/entities/job_entity.rb
class JobEntity
  attr_reader :id, :name, :location, :wage, :working_time_start, :working_time_end

  def initialize(id:, name:, location:, wage:, working_time_start:, working_time_end:)
    @id = id
    @name = name
    @location = location
    @wage = wage
    @working_time_start = working_time_start
    @working_time_end=working_time_end
  end
end
