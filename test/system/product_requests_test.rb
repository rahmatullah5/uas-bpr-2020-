require "application_system_test_case"

class ProductRequestsTest < ApplicationSystemTestCase
  setup do
    @product_request = product_requests(:one)
  end

  test "visiting the index" do
    visit product_requests_url
    assert_selector "h1", text: "Product Requests"
  end

  test "creating a Product request" do
    visit product_requests_url
    click_on "New Product Request"

    fill_in "Amount", with: @product_request.amount
    fill_in "Name", with: @product_request.name
    fill_in "Price", with: @product_request.price
    fill_in "Product code", with: @product_request.product_code
    fill_in "Supplier", with: @product_request.supplier_id
    fill_in "User", with: @product_request.user_id
    click_on "Create Product request"

    assert_text "Product request was successfully created"
    click_on "Back"
  end

  test "updating a Product request" do
    visit product_requests_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @product_request.amount
    fill_in "Name", with: @product_request.name
    fill_in "Price", with: @product_request.price
    fill_in "Product code", with: @product_request.product_code
    fill_in "Supplier", with: @product_request.supplier_id
    fill_in "User", with: @product_request.user_id
    click_on "Update Product request"

    assert_text "Product request was successfully updated"
    click_on "Back"
  end

  test "destroying a Product request" do
    visit product_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product request was successfully destroyed"
  end
end
