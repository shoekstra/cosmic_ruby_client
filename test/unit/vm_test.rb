require 'test/unit'
require 'yaml'
require_relative '../../lib/cosmic_ruby_client'

class VirtualMachineTest < Test::Unit::TestCase

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

  def test_deploy_virtual_machine
    assert_raise(ArgumentError) do
      @client.deploy_virtual_machine
    end
  end

  def test_destroy_virtual_machine
    assert_raise(ArgumentError) do
      @client.destroy_virtual_machine
    end
  end

  def test_reboot_virtual_machine
    assert_raise(ArgumentError) do
      @client.reboot_virtual_machine
    end
  end

  def test_start_virtual_machine
    assert_raise(ArgumentError) do
      @client.start_virtual_machine
    end
  end

  def test_stop_virtual_machine
    assert_raise(ArgumentError) do
      @client.stop_virtual_machine
    end
  end

  def test_reset_password_for_virtual_machine
    assert_raise(ArgumentError) do
      @client.reset_password_for_virtual_machine
    end
  end

  def test_reset_ssh_key_for_virtual_machine
    assert_raise(ArgumentError) do
      @client.reset_ssh_key_for_virtual_machine
    end
  end

  def test_update_virtual_machine
    assert_raise(ArgumentError) do
      @client.update_virtual_machine
    end
  end

  def test_list_virtual_machines
    assert_equal({}, @client.list_virtual_machines)
  end

  def test_get_vm_password
    assert_raise(ArgumentError) do
      @client.get_vm_password
    end
  end
  
  def test_restore_virtual_machine
    assert_raise(ArgumentError) do
      @client.restore_virtual_machine
    end
  end

  def test_change_service_for_virtual_machine
    assert_raise(ArgumentError) do
      @client.change_service_for_virtual_machine
    end
  end

  def test_assign_virtual_machine
    assert_raise(ArgumentError) do
      @client.assign_virtual_machine
    end
  end

  def test_migrate_virtual_machine
    assert_raise(ArgumentError) do
      @client.migrate_virtual_machine
    end
  end

  def test_migrate_virtual_machine_with_volume
    assert_raise(ArgumentError) do
      @client.migrate_virtual_machine_with_volume
    end
  end

  def test_recover_virtual_machine
    assert_raise(ArgumentError) do
      @client.recover_virtual_machine
    end
  end

  def test_add_nic_to_virtual_machine
    assert_raise(ArgumentError) do
      @client.add_nic_to_virtual_machine
    end
  end

  def test_remove_nic_from_virtual_machine
    assert_raise(ArgumentError) do
      @client.remove_nic_from_virtual_machine
    end
  end

  def test_update_default_nic_for_virtual_machine
    assert_raise(ArgumentError) do
      @client.update_default_nic_for_virtual_machine
    end
  end

  def test_create_instance_group
    assert_raise(ArgumentError) do
      @client.create_instance_group
    end
  end

  def test_delete_instance_group
    assert_raise(ArgumentError) do
      @client.delete_instance_group
    end
  end

  def test_update_instance_group
    assert_raise(ArgumentError) do
      @client.update_instance_group
    end
  end

  def test_list_instance_groups
    assert_equal({}, @client.list_instance_groups)
  end
end
