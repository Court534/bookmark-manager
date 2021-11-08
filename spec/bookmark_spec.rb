require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'responds to the method #all' do
      expect(subject).to respond_to(:all)
    end
  end
end