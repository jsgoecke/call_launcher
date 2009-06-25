#!/usr/bin/ruby
require 'lib/launcher'

cnt = 0
p '*'*50
@config["number_of_calls"].times do
  result = @adhearsion.originate({ :channel   => @config["channel"], 
                                   :context    => @config["context"], 
                                   :extension => '1000',
                                   :priority  => 1,
                                   :callerid  => "TopicTelTest",
                                   :variable  => "call_launcher=true|sleep_time=#{@config['sleep_time']}|file_to_play=#{@config['file_to_play']}" })
                                            
  p "Launched call number #{(cnt += 1).to_s}..."
  p result
  p '*'*50
end

p 'Done!'