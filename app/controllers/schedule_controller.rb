class ScheduleController < ApplicationController
  def home
    @locations = Location.all
    @technicians = Technician.all
    @work_orders  = WorkOrder.all
    @time_of_day = ["06:00 AM", "07:00 AM", "08:00 AM", "09:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "13:00 PM", "14:00 PM", "15:00 PM", "16:00 PM", "17:00 PM", "18:00 PM"]
    
    @work_order = WorkOrder.find_by_sql("
    SELECT * from work_orders 
    INNER JOIN technicians ON technicians.id = work_orders.technician_id 
    INNER JOIN locations on locations.id = work_orders.location_id
    ORDER BY work_orders.time")

    # @schedule = WorkOrder.joins(:location, :technician).group(technician.id, :time).select("technician.id as technician_id, time, sum(duration) as sum_duration, sum(price) as sum_price, string_agg(concat(location.name, ', ', location.city, ', '), ', ') ") 

  end
end
