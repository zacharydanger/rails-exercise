require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    subject { described_class.new }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(40) }
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:published_at) }
  end
end
