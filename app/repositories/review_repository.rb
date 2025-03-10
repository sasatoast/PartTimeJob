# app/repositories/review_repository.rb
class ReviewRepository
  def self.find_by_job(job_id)
    Review.where(job_id: job_id)
  end

  def self.create(params)
    Review.create(params)
  end
end