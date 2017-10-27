class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = Show.highest_rating
    Show.where("rating = ?", rating)[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    rating = Show.lowest_rating
    Show.where("rating = ?", rating)[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end
end
