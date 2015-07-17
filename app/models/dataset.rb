class Dataset < ActiveRecord::Base
  has_many :title_params
  accepts_nested_attributes_for :title_params, :allow_destroy => true

  belongs_to :user
end
