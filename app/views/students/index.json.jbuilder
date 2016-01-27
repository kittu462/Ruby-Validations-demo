json.array!(@students) do |student|
  json.extract! student, :id, :name, :age, :email
  json.url student_url(student, format: :json)
end
