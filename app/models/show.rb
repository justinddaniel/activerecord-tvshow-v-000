class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.order(rating: :desc).limit(1)
    show
  end

end
