=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::TeamApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TeamApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::TeamApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamApi' do
    it 'should create an instance of TeamApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::TeamApi)
    end
  end

  # unit tests for create_team
  # Creates a new team along with an associated API key
  # @param [Hash] opts the optional parameters
  # @option opts [Team] :body 
  # @return [Team]
  describe 'create_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_api_key
  # Deletes the specified API key
  # @param apikey The API key to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_team
  # Deletes a team
  # @param [Hash] opts the optional parameters
  # @option opts [Team] :body 
  # @return [nil]
  describe 'delete_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_api_key
  # Generates an API key and returns its value
  # @param uuid The UUID of the team to generate a key for
  # @param [Hash] opts the optional parameters
  # @return [ApiKey]
  describe 'generate_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_team
  # Returns a specific team
  # @param uuid The UUID of the team to retrieve
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'get_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teams
  # Returns a list of all teams
  # @param [Hash] opts the optional parameters
  # @return [Array<Team>]
  describe 'get_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for regenerate_api_key
  # Regenerates an API key by removing the specified key, generating a new one and returning its value
  # @param apikey The API key to regenerate
  # @param [Hash] opts the optional parameters
  # @return [ApiKey]
  describe 'regenerate_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_team
  # Updates a team&#39;s fields including
  # @param [Hash] opts the optional parameters
  # @option opts [Team] :body 
  # @return [Team]
  describe 'update_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
