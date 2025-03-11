# app/use_cases/review_use_case.rb
class ReviewUseCase
  def self.list_reviews(job_id)
    ReviewRepository.find_by_job(job_id)
  end
  def self.get_review_detail(id)
    ReviewRepository.find_by_id(id)
  end
  def self.create_review(params)
    ReviewRepository.create
  end
end