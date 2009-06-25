#!/usr/bin/ruby
require 'lib/launcher'

p '*'*50
@config["number_of_calls"].each_with_index do |index|
  result = call_into_context(@config["channel"], 
                            @config["context"], 
                            { :variables => { "call_launcher" => "true",
                                              "sleep_time"    => @config["sleep_time"],
                                              "file_to_play"  => @config["file_to_play"] } })
                                            
  p "Launched call number #{(index + 1).to_s}..."
  p result
  p '*'*50
end

p 'Done!'