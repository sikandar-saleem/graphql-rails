class TimeSlot < ApplicationRecord
  belongs_to :user

  before_validation do
    if self.user.time_slots.where("(start_at BETWEEN ? AND ?) OR (end_at BETWEEN ? AND ?)", self.start_at, self.end_at, self.start_at, self.end_at).present?
      self.errors.add(:base, 'Overlapping with slot')
    end
  end
end



MAPPER = {
  "A" => 0,
}