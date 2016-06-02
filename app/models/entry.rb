# Entry when finally the user arrives entry is made whose corressponding booking was already ma
# made or can be made on the spot
class Entry < ActiveRecord::Base
  belongs_to :booking
end
