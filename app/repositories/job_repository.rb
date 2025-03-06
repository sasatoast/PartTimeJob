class Job_repository
  def self.find_all
    Job.all.map(|job| JobEntity.new(job.attributes.symbolize_key))
  end
  
  def self.find_by
    job=Job.find_by(id: id)
    job?JobEntity.new(job.attributes.symbolize_key):nil
  end

  def self.create(params)
    Job.create(params)
  end
end