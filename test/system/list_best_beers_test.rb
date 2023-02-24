require "application_system_test_case"

class ListBestBeersTest < ApplicationSystemTestCase
  setup do
    @list_best_beer = list_best_beers(:one)
  end

  test "visiting the index" do
    visit list_best_beers_url
    assert_selector "h1", text: "List best beers"
  end

  test "should create list best beer" do
    visit list_best_beers_url
    click_on "New list best beer"

    fill_in "Description", with: @list_best_beer.description
    fill_in "Text", with: @list_best_beer.text
    fill_in "Title", with: @list_best_beer.title
    click_on "Create List best beer"

    assert_text "List best beer was successfully created"
    click_on "Back"
  end

  test "should update List best beer" do
    visit list_best_beer_url(@list_best_beer)
    click_on "Edit this list best beer", match: :first

    fill_in "Description", with: @list_best_beer.description
    fill_in "Text", with: @list_best_beer.text
    fill_in "Title", with: @list_best_beer.title
    click_on "Update List best beer"

    assert_text "List best beer was successfully updated"
    click_on "Back"
  end

  test "should destroy List best beer" do
    visit list_best_beer_url(@list_best_beer)
    click_on "Destroy this list best beer", match: :first

    assert_text "List best beer was successfully destroyed"
  end
end
