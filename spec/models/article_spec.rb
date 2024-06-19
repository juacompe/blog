require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'has title and body' do
    article = Article.new(title: "Hello Rails", body: "")

    expect(article.title).to eq "Hello Rails"
    expect(article.body).to eq ""
  end

  describe "reverse body" do
    it 'handles an empty string' do
      article = Article.new(title: "title", body: "")
      expect(article.display_body).to eq ""
    end
  
    describe 'handles one word' do
      it '2 chars' do
        article = Article.new(title: "title", body: "on")
        expect(article.display_body).to eq "no"
      end
      it '2 chars again' do
        article = Article.new(title: "title", body: "no")
        expect(article.display_body).to eq "on"
      end
      it 'n chars' do
        article = Article.new(title: "title", body: "one")
        expect(article.display_body).to eq "eno"
      end
    end
  
    describe 'handles multiple words' do
      it '2 words' do
        article = Article.new(title: "title", body: "one two")
        expect(article.display_body).to eq "eno owt"
      end
      it '2 words again' do
        article = Article.new(title: "title", body: "hello world")
        expect(article.display_body).to eq "olleh dlrow"
      end
      it 'n words' do
        article = Article.new(title: "title", body: "I am on Rails!")
        expect(article.display_body).to eq "I ma no !sliaR"
      end
    end
  
    it 'handles punctuation' do
      article = Article.new(title: "title", body: "Rails!")
      expect(article.display_body).to eq "!sliaR"
    end
    
  end
end
