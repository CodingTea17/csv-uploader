class Address < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: false) do |row|
      hash = {
        property_id: row[0],
        address: row[1],
        city: row[2],
        state: row[3],
        zip: row[4]
      }
      Address.create!(hash)
    end
  end
end
