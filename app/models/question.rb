class Question < ApplicationRecord
  BODY_TYPES = {
    1 => BodyImage,
    2 => BodyText
  }.freeze

  SELECTION_TYPES = {
    1 => SelectionText
  }.freeze

  BODY_SYMBOLS = %i(
    body_image
    body_text
  ).freeze

  SELECTION_SYMBOLS = %i(
    selection_text
  ).freeze

  BODY_SYMBOLS.map do |sym|
    has_one sym, dependent: :destroy
  end

  SELECTION_SYMBOLS.map do |sym|
    has_one sym, dependent: :destroy
  end

  scope :all_questions, -> { includes(BODY_SYMBOLS, SELECTION_SYMBOLS) }

  def body
    public_send(BODY_TYPES[body_type].to_s.underscore.to_sym)
  end

  def selection
    public_send(SELECTION_TYPES[selection_type].to_s.underscore.to_sym)
  end
end
