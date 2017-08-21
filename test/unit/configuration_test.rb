require 'test/unit'
require 'yaml'
require_relative '../../lib/cosmic_ruby_client'

class ConfigurationTest < Test::Unit::TestCase

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

  def test_update_configuration
    assert_raise(ArgumentError) do
      @client.update_configuration
    end
  end

  def test_list_configurations
    assert_equal(305, @client.list_configurations['count'])
  end

  def test_list_capabilities
    assert_not_nil(@client.list_capabilities)
  end

  def test_update_hypervisor_capabilities
    assert_raise(ArgumentError) do
      @client.update_hypervisor_capabilities
    end
  end

  def test_list_hypervisor_capabilities
    assert_not_nil(@client.list_hypervisor_capabilities)
  end

  def test_list_events
    assert_not_nil(@client.list_hypervisor_capabilities)
  end

  def test_list_event_types
    assert_not_nil(@client.list_event_types)
  end
end
