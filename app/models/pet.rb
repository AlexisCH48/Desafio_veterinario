class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client
  def history_count
    self.pet_histories.count
    #TODO-implement
  end

  def avg_weight
    if self.pet_histories.count > 0
      (self.pet_histories.sum(:weight)/self.pet_histories.count).round(2)
    else
      "su mascota no cuenta con historial"
    end
      #TODO-implement
  end

  def avg_height
    if self.pet_histories.count > 0
      (self.pet_histories.sum(:height)/self.pet_histories.count).round(2)
    else
      "su mascota no cuenta con historial"
    end
    #TODO-implement
  end

  def max_weight
    if self.pet_histories.count > 0
      self.pet_histories.maximum("weight")
    else
      "su mascota no cuenta con historial"
    end
    #TODO-implement
  end

  def max_height
    if self.pet_histories.count > 0
      self.pet_histories.maximum("height")
    else
      "su mascota no cuenta con historial"
    end
    #TODO-implement
  end

end
