require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:questions) { Questions.create!(title: "New Questions Title", body: "New Questions Body", resolved: boolean) }

  describe "attributes" do
    it "has title body and resolved attributes" do
      expect(questions).to have_attributes(title: "New Questions Title", body: "New Questions Body", resolved: boolean)
    end
  end
end
