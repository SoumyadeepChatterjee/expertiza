class BookmarkRatingQuestionnaire < Questionnaire
  after_initialize :post_initialization
  @@print_name = "Bookmark Rating Rubric"

  def self.print_name
    @@print_name
  end

  def post_initialization
    self.display_type = 'Bookmark Rating'
  end

  def symbol
    "bookmark".to_sym
  end

  def get_assessments_for(participant)
    participant.bookmark_reviews
  end
end
