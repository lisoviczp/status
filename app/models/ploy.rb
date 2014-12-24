class Ploy < ActiveRecord::Base
    serialize :activity, Array
    serialize :place_type, Array
    # serialize :agree_ids, Array
    serialize :agrees, Array

    belongs_to :user
    # belongs_to :wave

    has_many :favorites
    has_many :user_favorites, through: :favorites, source: :user
end
