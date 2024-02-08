require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validation tests' do
    it 'is not valid without a title' do
      article = Article.new(content: 'sample content')
      expect(article).to be_invalid
    end

    it 'is not valid without content' do
      article = Article.new(title: 'sample title')
      expect(article).to be_invalid
    end

    it 'is not valid with a title shorter than 5 characters' do
      article = Article.new(title: 'sample content', content: 'sample content' )
      expect(article).to be_invalid
    end

    it 'is not valid with content shorter than 50 characters' do
      article = Article.new(title: 'sample title', content: 'sample content')
      expect(article).to be_invalid
    end
  end
end
