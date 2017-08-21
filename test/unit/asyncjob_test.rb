require 'test/unit'
require 'yaml'
require_relative '../../lib/cosmic_ruby_client'

class AsyncjobTest < Test::Unit::TestCase

  def setup
    config      = YAML.load_file("test/config.yml")
    _host       = config['cosmic']['host']
    _port       = config['cosmic']['port']
    _admin_port = config['cosmic']['admin_port']
    _api_key    = config['cosmic']['api_key']
    _secret_key = config['cosmic']['secret_key']
    @client     = CosmicRubyClient::Client.new \
                                          "http://#{_host}:#{_port}/client/api",
                                          "#{_api_key}",
                                          "#{_secret_key}"
  end

  def teardown
    # Do nothing here!
  end

  def test_list_async_jobs
    assert_equal([], @client.list_async_jobs)
  end
  
  def test_query_async_job_result
    assert_raise(ArgumentError) do
      @client.query_async_job_result
    end
  end

end
