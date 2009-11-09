require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "ActiveResource" do
  describe "Base" do
    it "should validate client side without requiring a \"create\" or \"save\" call" do
      class Book < ActiveResource::Base
        self.site = ''
        protected
        def validate
          errors.add(:author, 'is required') if (author.blank? rescue false)
        end
      end
      @book = Book.new :author => ''
      @book.valid?.should == false
      @book.errors.on(:author).should == "is required"
      @book.errors.count.should == 1
    end
    
    it "should not fail if the user has not defined the validate method" do
      class Novel < ActiveResource::Base
        self.site = ''
      end
      @book = Novel.new :author => ''
      @book.valid?.should == true
      @book.errors.on(:author).should == nil
      @book.errors.count.should == 0
    end
  end
end