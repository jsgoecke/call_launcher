require 'rubygems'
require 'yaml'
require 'drb'

@config = YAML.load(File.open('config.yml'))
@adhearsion = DRbObject.new_with_uri @config["ahn_drb_uri"]