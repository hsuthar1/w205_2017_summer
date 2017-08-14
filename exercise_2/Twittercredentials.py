import tweepy

consumer_key = "ebLM5WpFpaW3YcxJqiy422Jn7";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "OKRcC2L7dMIHvPxoqG9kicEFseNtHxqO0Gp74ovVHwbmItzwDJ";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "896986620485746688-eTQtVbctrQ5flXFL6CKWgzpZKOUvu6x";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "7GQyHxBbx9V6OdjDgNGpj5TRYmZZiFPNyFhGSHQoHtjHY";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



