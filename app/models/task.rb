class Task < ApplicationRecord
  def laundry?
    if title.downcase.include?("laundry") or description.downcase.include?("laundry")
      true
    else
      false
    end
  end
end