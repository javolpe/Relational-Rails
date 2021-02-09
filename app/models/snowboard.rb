class Snowboard < ApplicationRecord
  belongs_to :shop

  def self.filter_length(filter_length)
    if !filter_length.nil?
      where('length > ?', filter_length)
    else
      self.all
    end
  end

  def self.alphabetize(alpha)
    if !alpha.nil?
      order(:name)
    else
      self.all
    end
  end
end
