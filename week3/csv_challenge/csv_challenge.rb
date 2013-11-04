require 'csv'
require 'date'

class Person
attr_reader :id, :first_name, :last_name, :email, :phone, :created_at

  def initialize(row)
    @id = row[0] || row[:id]
    @first_name = row[1] || row[:first_name]
    @last_name = row[2] || row[:last_name]
    @email = row[3] || row[:email]
    @phone = row[4] || row[:phone]
    @created_at = row[5] || row[:created_at]
  end

  def person_data
    array = []
    [self.id, self.first_name, self.last_name, self.email, self.phone, self.created_at]

end

class PersonParser
  attr_reader :file, :people

  def initialize(file)
    @file = file
    @people = nil
  end

  def people
    return @people if @people
    @people = []
    CSV.open(file, 'r').each { |row| @people << Person.new(row) }
    end
  end

  def add_people(info)
    @people << Person.new(info)
  end


  def save
    CSV.open(file, 'wb') do |csv|
      @people.each { |row| csv << row }
    end
  end
end

parser = PersonParser.new('people.csv')
p parser.people[1]
# p parser.add_people(id: 201, first_name: "Elaine", last_name: "Tsai", phone: "5555555555")
# p parser.save



puts "There are #{parser.people.size} people in the file '#{parser.file}'."