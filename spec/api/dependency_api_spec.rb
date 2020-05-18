=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::DependencyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DependencyApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::DependencyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DependencyApi' do
    it 'should create an instance of DependencyApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::DependencyApi)
    end
  end

  # unit tests for add_dependency
  # Adds one or more components as a dependency to a project
  # @param [Hash] opts the optional parameters
  # @option opts [DependencyRequest] :body 
  # @return [nil]
  describe 'add_dependency test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dependencies_by_component
  # Returns a list of all dependencies for a specific component
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Array<Dependency>]
  describe 'get_dependencies_by_component test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dependencies_by_project
  # Returns a list of all dependencies for a specific project
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Array<Dependency>]
  describe 'get_dependencies_by_project test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_dependency
  # Removes a component as a dependency from a project
  # @param [Hash] opts the optional parameters
  # @option opts [DependencyRequest] :body 
  # @return [nil]
  describe 'remove_dependency test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end