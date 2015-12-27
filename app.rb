require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @answer = params.fetch('word').word_puzzle
  erb(:result)
end
