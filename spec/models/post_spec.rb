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
