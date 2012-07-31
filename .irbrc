
# Dump the same logging info to the console that would normally appear in the
# development.log file.  Inspired by:
# http://www.sofer.com/blog/rails-console.html
if ENV.include? 'RAILS_ENV' and !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end 
