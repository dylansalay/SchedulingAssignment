class ScheduleController < ApplicationController
  def home
    @locations = Location.all
    @technicians = Technician.all
    @work_orders  = WorkOrder.all
    @time_of_day = ["06:00 AM", "07:00 AM", "08:00 AM", "09:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "13:00 PM", "14:00 PM", "15:00 PM", "16:00 PM"]
    
    
    @work_order = WorkOrder.technician_schedule_by_time
    gon.work_order = WorkOrder.first.to_json


    # The three queries below all produce the same result as the custom scope used above. 

    # @work_order = WorkOrder.joins(:location, :technician).unscoped.group(:time, :id).select("*").order(:time)
    
    # @work_order = WorkOrder.find_by_sql("
    # SELECT * from work_orders 
    # INNER JOIN technicians ON technicians.id = work_orders.technician_id 
    # INNER JOIN locations on locations.id = work_orders.location_id
    # ORDER BY work_orders.time")
    
    # @work_order = WorkOrder.unscoped.find_by_sql("
    # SELECT *
    # FROM work_orders 
    # INNER JOIN technicians ON technicians.id = work_orders.technician_id 
    # INNER JOIN locations ON locations.id = work_orders.location_id
    # GROUP BY work_orders.time, work_orders.id, technicians.id, locations.id
    # ORDER BY work_orders.time")
  end
end
