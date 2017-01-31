require 'nokogiri'

def username
  doc = Nokogiri::HTML(File.open('twitter_account.html'))
  username = doc.search(".ProfileHeaderCard-name > a")
  puts "Username: #{username.first.inner_text}"
end

def stats
  doc = Nokogiri::HTML(File.open('twitter_account.html'))
  tweets = doc.search('[data-nav="tweets"] > .ProfileNav-value')
  tweets = tweets.first.inner_text
  siguiendo = doc.search('[data-nav="following"] > .ProfileNav-value')
  siguiendo = siguiendo.first.inner_text
  seguidores = doc.search('[data-nav="followers"] > .ProfileNav-value')
  seguidores = seguidores.first.inner_text
  favoritos = doc.search('[data-nav="favorites"] > .ProfileNav-value')
  favoritos = favoritos.first.inner_text
  puts "Stats: Tweets: #{tweets}, Siguiendo: #{siguiendo}, Seguidores: #{seguidores}, Favoritos: #{favoritos}"
end

def tweets
  doc = Nokogiri::HTML(File.open('twitter_account.html'))
  texto = doc.search('.tweet-text')
  fecha = doc.search('._timestamp')
  retweet = doc.search('[data-modal="ProfileTweet-retweet"] .ProfileTweet-actionCountForPresentation')
  favoritos = doc.search('.js-actionFavorite .ProfileTweet-actionCountForPresentation')
  puts "Tweets:\n#{fecha[0].inner_text}.: #{texto[0].inner_text}\n\u267B #{retweet[0].inner_text}, \u2665 #{favoritos[0].inner_text}\n\n"
  puts "#{fecha[1].inner_text}.: #{texto[1].inner_text}\n\u267B #{retweet[2].inner_text}, \u2665 #{favoritos[2].inner_text}\n\n"
  puts "#{fecha[2].inner_text}.: #{texto[2].inner_text}\n\u267B #{retweet[4].inner_text}, \u2665 #{favoritos[4].inner_text}"
end

username
stats
tweets
