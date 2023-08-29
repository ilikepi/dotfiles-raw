
# IRB history seems broken in 1.8...
unless RUBY_VERSION =~ /^1\.8/
  IRB.conf[:SAVE_HISTORY] = 1024
  IRB.conf[:HISTORY_FILE] = '~/.irb_history'
end

# The multiline editor is not fully baked (incomplete color support, crashes
# in vi-mode, etc).
if RUBY_VERSION =~ /^(2\.7|3)/
  IRB.conf[:USE_SINGLELINE] = true
end

# Dump the same logging info to the console that would normally appear in the
# development.log file.  Inspired by:
# http://www.sofer.com/blog/rails-console.html
if ENV.include? 'RAILS_ENV' and !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end
