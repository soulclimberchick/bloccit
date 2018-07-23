require 'rails_helper'

RSpec.describe Answer, type: :model do
  let (:question ) { Question.create!(title: "New Question Title", body: "New Post Body", resolved: true) }
  let (:answer) { Answer.create!(body: 'Answer Body', question: question) }


  describe "attributes" do
    it "has body attributes" do
      expect(answer).to have_attributes(body: "Answer Body")
    end
  end
end
