require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :name => "MyString",
      :genre => "MyString",
      :classification => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input[name=?]", "video[name]"

      assert_select "input[name=?]", "video[genre]"

      assert_select "input[name=?]", "video[classification]"

      assert_select "textarea[name=?]", "video[description]"
    end
  end
end
