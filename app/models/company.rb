class Company < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Company.create! row.to_hash
    end
  end
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names # generate header row
      all.each do |company| # generate content of each company object 
        csv << company.attributes.values_at(*column_names)
      end
    end
  end
end
