class WorkOrder < ApplicationRecord
    belongs_to :location
    belongs_to :technician
    
    scope :technician_schedule_by_time, -> { joins(:location, :technician).unscoped.group(:time, :id).select("*").order(:time)}

end
