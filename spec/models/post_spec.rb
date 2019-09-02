require 'rails_helper'

RSpec.describe Post, type: :model do

  before(:each) do
    @post = Post.create!(title: "test name", image: "test.jpg", description: "asdfasdf")
  end

  describe "creation" do
    it "should have one item created after being created" do
      expect(Post.all.count).to eq(1)
    end  
  end

  describe "validations" do
    it "should not let an image be created without an image" do
      @post.image = nil
      expect(@post).to_not be_valid
    end
  end 
end 
=begin 
    it "should not let a user be created without a password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end
  end

  describe "length validations" do
    it "should not allow a name longer than 50 characters" do
      @user.name = "j" * 51
      expect(@user).to_not be_valid
    end
  end
end
 =end
# create_table "posts", force: :cascade do |t|
#   t.string "title"
#   t.string "image"
#   t.text "description"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false