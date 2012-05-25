# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe CombinedUniquenessValidator do

  before do
    class Person
      def initialize args
        args.each_pair {|key, value| self.send("#{key}=", value)}
      end

      include ActiveModel::Validations
      attr_accessor :name, :surname
      validates_with CombinedUniquenessValidator, :fields => [:name, :surname ]
    end
  end

  describe "validate both fields, happy path" do
    before do
      Person.stub(:where).with({:name => "John", :surname => "Doe"}).and_return([])
    end

    subject { Person.new(:name => "John", :surname => "Doe") }
    it      { should be_valid }
  end

  describe "validate both fields, validation fails" do
    before do
      Person.stub(:where).with({:name => "John", :surname => "Doe"}).and_return([:something])
    end

    subject { Person.new(:name => "John", :surname => "Doe") }
    it      { should_not be_valid }
  end
end
