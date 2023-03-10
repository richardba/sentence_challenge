require "application_system_test_case"

class EntitiesTest < ApplicationSystemTestCase
  setup do
    @entity = entities(:one)
  end

  test "visiting the index" do
    visit entities_url
    assert_selector "h1", text: "Entities"
  end

  test "creating a Entity" do
    visit entities_url
    click_on "New Entity"

    fill_in "Sentence", with: @entity.sentence_id
    fill_in "Text", with: @entity.text
    fill_in "Type", with: @entity.etype
    click_on "Create Entity"

    assert_text "Entity was successfully created"
    click_on "Back"
  end

  test "updating a Entity" do
    visit entities_url
    click_on "Edit", match: :first

    fill_in "Sentence", with: @entity.sentence_id
    fill_in "Text", with: @entity.text
    fill_in "Type", with: @entity.etype
    click_on "Update Entity"

    assert_text "Entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Entity" do
    visit entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entity was successfully destroyed"
  end
end
