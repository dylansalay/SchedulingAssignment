namespace :import_loc do
  desc "TODO"
  task locations: :environment do
  
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csv", "locations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      l = Location.new
      l.name = row["name"]
      l.city = row["city"]
      l.save
      puts "#{l.name}, #{l.city} saved"
    end
  end
end