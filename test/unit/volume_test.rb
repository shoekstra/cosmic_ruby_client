require 'test/unit'
require 'yaml'
require_relative '../../lib/cosmic_ruby_client'

class VolumeTest < Test::Unit::TestCase

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

  def test_attach_volume
    assert_raise(ArgumentError) do
      @client.attach_volume
    end
  end

  def test_upload_volume
    assert_raise(ArgumentError) do
      @client.upload_volume
    end
  end

  # ACS has a bug on this api command
  # def test_detach_volume
  #   assert_raise(ArgumentError) do
  #     @client.detach_volume
  #   end
  # end

  def test_create_volume
    assert_raise(ArgumentError) do
      @client.create_volume
    end
  end

  def test_delete_volume
    assert_raise(ArgumentError) do
      @client.delete_volume
    end
  end

  def test_list_volumes
    assert_equal({}, @client.list_volumes)
  end

  def test_extract_volume
    assert_raise(ArgumentError) do
      @client.extract_volume
    end
  end

  def test_migrate_volume
    assert_raise(ArgumentError) do
      @client.migrate_volume
    end
  end

  def test_resize_volume
    assert_raise(ArgumentError) do
      @client.resize_volume
    end
  end
end
