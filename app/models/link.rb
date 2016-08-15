class Link < ApplicationRecord
  belongs_to :user
  has_many :vists
  validates :user_id, :slug, :target_url, presence: true
  validates :user_id, uniqueness: true

  def standardize_target_url!
    target_url.gsub!("http://", "")
    target_url.gsub!("https://", "")
  end

  def visit_count
    visits.count
  end

end
