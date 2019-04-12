require 'watir'
require 'selenium-webdriver'
require 'webdriver'
require 'launchy'

def check_if_user_gave_input
    abort("Please after the name of the ruby file put a space and the name of your search") if ARGV.empty?
end

def google_search
    Launchy.open("https://www.google.com/search?q=#{ARGV.join('+')}")
    puts "Ok créé"
end

google_search

=begin

==> METHODE 2
def get_search
    return string_search = ARGV
end

def google_search(your_search)

    search = your_search.each { |word| word.to_s}.join('+')

    Launchy.open("https://www.google.com/search?q=#{search}")
    puts "Ok créé"
end

def perform
    check_if_user_gave_input
    x = get_search
    google_search(x)
end

perform
=end
