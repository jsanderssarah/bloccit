require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:questions) { Questions.create!(title: "New Questions Title", body: "New Questions Body", resolved: boolean) }
  let(:answers) { Answers.create!(body: "New Answers Body") }

  describe "attributes" do
    it "has body attribute" do
      expect(answers).to have_attributes(body: "New Answer Body")
    end
  end

end
