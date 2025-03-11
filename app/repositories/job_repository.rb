class JobRepository
  def self.find_all
    Job.all.map{|job| JobEntity.new(**job.attributes.symbolize_keys)}
  end
  
  def self.find_by(id)
    job=Job.find_by(id: id)
    job ? JobEntity.new(**job.attributes.symbolize_keys): nil
  end

  def self.create(params)
    job = Job.create(params)
    JobEntity.new(**job.attributes.symbolize_keys) if job.persisted?
  end
end