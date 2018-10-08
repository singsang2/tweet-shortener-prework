# Write your code here.

def word_substituter(tweet)
  dict = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
  list = tweet.split(" ").collect do |word|
    if dict.keys.include?(word.downcase)
      word = dict[word.downcase]
    else
      word
    end
  end
  list.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  new_tweet.length > 140 ? new_tweet[0..136]+"..." : new_tweet
end