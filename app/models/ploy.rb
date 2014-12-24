class Ploy < ActiveRecord::Base
    serialize :activity, Array
    serialize :place_type, Array

    belongs_to :user
    belongs_to :wave
end
