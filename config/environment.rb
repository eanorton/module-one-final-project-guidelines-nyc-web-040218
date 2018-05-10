require 'bundler'
require 'terminal-table'
require 'colorize'
require 'artii'


Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = false 
require_all 'lib'
require_all 'app'
