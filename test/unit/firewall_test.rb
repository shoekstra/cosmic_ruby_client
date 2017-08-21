require 'test/unit'
require 'yaml'
require_relative '../../lib/cosmic_ruby_client'

class FirewallTest < Test::Unit::TestCase

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

  def test_list_port_forwarding_rules
    assert_equal({}, @client.list_port_forwarding_rules)
  end

  def test_create_port_forwarding_rule
    assert_raise(ArgumentError) do
      @client.create_port_forwarding_rule
    end
  end

  def test_delete_port_forwarding_rule
    assert_raise(ArgumentError) do
      @client.delete_port_forwarding_rule
    end
  end

  def test_update_port_forwarding_rule
    assert_raise(ArgumentError) do
      @client.update_port_forwarding_rule
    end
  end

  def test_create_firewall_rule
    assert_raise(ArgumentError) do
      @client.create_firewall_rule
    end
  end

  def test_delete_firewall_rule
    assert_raise(ArgumentError) do
      @client.delete_firewall_rule
    end
  end

  def test_list_firewall_rules
    assert_equal({}, @client.list_firewall_rules)
  end

  def test_create_egress_firewall_rule
    assert_raise(ArgumentError) do
      @client.create_egress_firewall_rule
    end
  end

  def test_delete_egress_firewall_rule
    assert_raise(ArgumentError) do
      @client.delete_egress_firewall_rule
    end
  end

  def test_list_egress_firewall_rules
    assert_equal({}, @client.list_egress_firewall_rules)
  end
end
