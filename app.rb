require('sinatra')
require('sinatra/reloader')
require('./lib/palindromes')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/score') do
  @answer = params.fetch('word').palindrome?
  erb(:score)
end
