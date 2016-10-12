require 'spec_helper'

feature "Enter names do" do
  scenario "fill in form" do
    visit("/")
    fill_in "name1", :with => "Nicole"
    fill_in "name2", :with => "Anna"
    click_button "Do a dance"
    expect(page).to have_text("Nicole is player one!")
    expect(page).to have_text("Anna is player two!")
  end
end
