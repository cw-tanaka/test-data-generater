# -*- coding: utf-8 -*-
require 'forgery_ja'

sentence = []
open('./dict/sentence.txt') {|file|
  while l = file.gets
    sentence.push(l.chomp)
  end
}

len = sentence.length

loop do
 p "名前:" + ForgeryJa(:name).full_name +
   "("     + ForgeryJa(:name).full_name(:to => ForgeryJa::HIRA) + ") |" +
   "住所:" + ForgeryJa(:address).full_address + "|" +
   "所持金:" + ForgeryJa(:monetary).formatted_money + "|" +
   "tweet:" + sentence[rand(len - 1)]
end
