json.array!(@apprenticeships) do |apprenticeship|
  json.extract! apprenticeship, :id, :teacher_id, :student_id
  json.url apprenticeship_url(apprenticeship, format: :json)
end
