json.extract! tour_review, :id, :content, :created_at, :updated_at
json.url tour_review_url(tour_review, format: :json)
