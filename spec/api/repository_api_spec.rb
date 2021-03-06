=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::RepositoryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RepositoryApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::RepositoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RepositoryApi' do
    it 'should create an instance of RepositoryApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::RepositoryApi)
    end
  end

  # unit tests for create_repository
  # Creates a new repository
  # @param [Hash] opts the optional parameters
  # @option opts [Repository] :body 
  # @return [Repository]
  describe 'create_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_repository
  # Deletes a repository
  # @param uuid The UUID of the repository to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_repositories
  # Returns a list of all repositories
  # @param [Hash] opts the optional parameters
  # @return [Array<Repository>]
  describe 'get_repositories test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_repositories_by_type
  # Returns repositories that support the specific type
  # @param type The type of repositories to retrieve
  # @param [Hash] opts the optional parameters
  # @return [Array<Repository>]
  describe 'get_repositories_by_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_repository_meta_component
  # Attempts to resolve the latest version of the component available in the configured repositories
  # @param purl The Package URL for the component to query
  # @param [Hash] opts the optional parameters
  # @return [RepositoryMetaComponent]
  describe 'get_repository_meta_component test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_repository
  # Updates a repository
  # @param [Hash] opts the optional parameters
  # @option opts [Repository] :body 
  # @return [Repository]
  describe 'update_repository test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
