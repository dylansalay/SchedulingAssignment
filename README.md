# Technician Schedule Application

This application is designed to store locations, technicians, and work orders in a database, and display them on a scheduling grid, ordered by time. If a user clicks on a populated cell in the table, an alert will appear detailing the duration of the current work order. If a user clicks on an empty cell in the table, an alert will appear detailing the amount of time between the technician's previous work order and upcoming work order. 

## Built With:
- Ruby version 2.4
- Rails version 5.2.3
- JavaScript

## Setup

```bash
bundle install
```

Rake Tasks:
To populate the databse with the data from the CSV files, you will need to run the following rake task commands:
```bash
rails import_loc:locations 
rails import_tech:technicians
rails import_wkor: work_orders
```

## Usage
```bash
rails s
```
Navigate to http://localhost:3000/tech_schedule

Select and click on the cell in the table that you wish to see information for. 






