require "rails_helper"

describe "Navigating movies" do

  it "allows navigation from the detail page to the listing page" do
    movie = Movie.create(movie_attributes)
     visit movie_url(movie)
     click_link "Released"
     expect(current_path).to eq(root_path)
  end

  it "allows navigation from the listing page to a detail page" do
    movie = Movie.create(movie_attributes)
    visit movies_url
    click_link movie.title
    expect(current_path).to eq(movie_path(movie))
  end

end