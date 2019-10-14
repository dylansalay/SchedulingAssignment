class WorkOrder < ApplicationRecord
    belongs_to :location
    belongs_to :technician
    
    scope :technician_schedule_by_time, -> { joins(:location, :technician).unscoped.group(:time, :id).select("*").order(:time)}
    
    after_initialize :convert_json

    def convert_json()
        self.duration.to_json
    end

end
