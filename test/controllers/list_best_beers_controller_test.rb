require "test_helper"

class ListBestBeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_best_beer = list_best_beers(:one)
  end

  test "should get index" do
    get list_best_beers_url
    assert_response :success
  end

  test "should get new" do
    get new_list_best_beer_url
    assert_response :success
  end

  test "should create list_best_beer" do
    assert_difference("ListBestBeer.count") do
      post list_best_beers_url, params: { list_best_beer: { description: @list_best_beer.description, text: @list_best_beer.text, title: @list_best_beer.title } }
    end

    assert_redirected_to list_best_beer_url(ListBestBeer.last)
  end

  test "should show list_best_beer" do
    get list_best_beer_url(@list_best_beer)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_best_beer_url(@list_best_beer)
    assert_response :success
  end

  test "should update list_best_beer" do
    patch list_best_beer_url(@list_best_beer), params: { list_best_beer: { description: @list_best_beer.description, text: @list_best_beer.text, title: @list_best_beer.title } }
    assert_redirected_to list_best_beer_url(@list_best_beer)
  end

  test "should destroy list_best_beer" do
    assert_difference("ListBestBeer.count", -1) do
      delete list_best_beer_url(@list_best_beer)
    end

    assert_redirected_to list_best_beers_url
  end
end
