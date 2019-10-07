class ScheduleController < ApplicationController
  def home
    @locations = Location.all
    @technicians = Technician.all
    @work_orders  = WorkOrder.all
  
    @work_ord = WorkOrder.joins(:technician, :location) 

    # @schedule = WorkOrder.joins(:location, :technician).group(technician.id, :time).select("technician.id as technician_id, time, sum(duration) as sum_duration, sum(price) as sum_price, string_agg(concat(location.name, ', ', location.city, ', '), ', ') ") 

  end
end
