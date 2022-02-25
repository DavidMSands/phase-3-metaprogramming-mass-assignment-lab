class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

josh_attributes = { name: "Josh", height: "6'", eye_color: "Brown" }

josh = Person.new(josh_attributes)

puts josh.name