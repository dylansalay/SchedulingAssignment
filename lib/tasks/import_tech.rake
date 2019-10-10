namespace :import_tech do
  desc "TODO"
  task technicians: :environment do
  
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csv", "technicians.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Technician.new
      t.name = row["name"]
      t.save
      puts "#{t.name} saved"
    end
  end
end