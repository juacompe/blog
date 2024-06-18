require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'has title and body' do
    article = Article.new(title: "Hello Rails", body: "I am on Rails!")

    expect(article.title).to eq "Hello Rails"
    expect(article.body).to eq "I am on Rails!"
  end
end
