json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :message, :score
  json.url feedback_url(feedback, format: :json)
end
