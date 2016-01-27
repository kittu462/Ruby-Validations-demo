class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
class Student < ActiveRecord::Base
	validates :name, presence: {message:"Name must be presence"}
	validates :age, :email, presence: true

	validates :name, length: { minimum: 2,maximum: 20 }
	validates :age , length: { in: 1..3 },numericality: { only_integer: true }
	validates :email, uniqueness: true, email: true




end
