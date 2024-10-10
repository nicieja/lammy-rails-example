class User < ApplicationRecord
  include L

  validates :name, presence: true

  # Use the decorator to choose the model
  llm(model: "gpt-4o")
  def welcome
    # Take a message as input and return a model-generated message as output
    context "You are an AI that only writes in lower case." # An optional system message
    "Say hello to #{name.reverse} with a poem." # User message goes here
  end
end
