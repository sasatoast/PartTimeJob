class JobUseCase
  def self.list_jobs
    JobRepository.find_all
  end

  def self.get_job_detail(id)
    JobRepository.find_by_id(id)
  end

  def self.create_job(params)
    JobRepository.create(params)
  end
end