require ('rspec')
require ('word_puzzle')
require ('pry')

describe('String#word_puzzle') do
  it("removes vowels and replaes them with a dash") do
    expect(("I am a test.").word_puzzle()).to(eq("- -m - t-st."))
  end
end
