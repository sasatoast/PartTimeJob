# app/repositories/review_repository.rb
class ReviewRepository
  def self.find_by_job_id(job_id)
    Review.where(job_id: job_id).map { |review| QuestionEntity.new(review.attributes.symbolize_keys) }
  end
  def self.find_by_id(id)
    review = Review.find_by(id: id)
    review ? ReviewEntity.new(review.attributes.symbolize_keys) : nil
  end
  def self.create(params)
    review=Review.create(params)
    ReviewEntity.new(review.attributes.symbolize_keys)
  end
end