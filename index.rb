require 'forgery_ja'

loop do
 p  "名前:" + ForgeryJa(:name).full_name + "|" +
    "住所:" + ForgeryJa(:address).full_address + "|" +
    "所持金:" + ForgeryJa(:monetary).formatted_money
end
