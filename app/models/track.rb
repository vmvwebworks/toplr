class Track < ApplicationRecord
  belongs_to :user
  include RailsSortable::Model
  set_sortable :sort
end
