require "application_system_test_case"

class CountersTest < ApplicationSystemTestCase
  setup do
    @counter = counters(:one)
  end

  test "visiting the index" do
    visit counters_url
    assert_selector "h1", text: "Counters"
  end

  test "creating a Counter" do
    visit counters_url
    click_on "New Counter"

    fill_in "Name", with: @counter.name
    fill_in "Value", with: @counter.value
    click_on "Create Counter"

    assert_text "Counter was successfully created"
    click_on "Back"
  end

  test "updating a Counter" do
    visit counters_url
    click_on "Edit", match: :first

    fill_in "Name", with: @counter.name
    fill_in "Value", with: @counter.value
    click_on "Update Counter"

    assert_text "Counter was successfully updated"
    click_on "Back"
  end

  test "destroying a Counter" do
    visit counters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counter was successfully destroyed"
  end
end
