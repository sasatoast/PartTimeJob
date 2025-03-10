# app/use_cases/review_use_case.rb
class ReviewUseCase
  def self.list_reviews(job_id)
    Review.where(job_id: job_id)
  end

  def self.create_review(params)
    Review.create(params)
  end
end