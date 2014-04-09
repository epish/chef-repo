# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "epishan"
client_key               "#{current_dir}/epishan.pem"
validation_client_name   "hhs-validator"
validation_key           "#{current_dir}/hhs-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/hhs"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

#knife ec2 section
knife[:aws_access_key_id]       = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key]   = ENV['AWS_SECRET_ACCESS_KEY']
knife[:region]                  = ENV['AWS_DEFAULT_REGION']
knife[:aws_ssh_key_id]          = "aws-key1"
knife[:flavor]                  = "t1.micro"
knife[:image]                   = "ami-660c3023"
knife[:groups]                  = "default"
knife[:ssh_user]                = "ubuntu"
knife[:use_sudo]                = "true"
