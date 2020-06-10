import socket
import sys
import requests
import requests_oauthlib
import json


API_KEY = 'PfkSyve5w0fAR7g50PSX4HiBc'
API_SECRET = 'UlGZF549G3WA9VKUkk1fkh0CHg3O9tAUbnKFVCesPi78Zv8WwI'
ACCESS_TOKEN = '1252139667710980096-GnpsQlFLrJ4LvWqwipPIC2ffC4wyog'
ACCESS_TOKEN_SECRET = 'VgNG5hYqzSoaAwNS1LVrlDENXBJoOzr2EPYjtTelPn1iF'


def get_tweets():
    """
    This function is used to authenticate and fetch the tweets from the api.
    :return: returns the response.
    """
    my_auth = requests_oauthlib.OAuth1(API_KEY, API_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
    url = 'https://stream.twitter.com/1.1/statuses/filter.json'
    query_data = [('language', 'en'), ('locations', '-130,-20,100,50')]
    query_url = url + '?' + '&'.join([str(t[0]) + '=' + str(t[1]) for t in query_data])
    response = requests.get(query_url, auth=my_auth, stream=True)
    return response


def send_tweets_to_spark(http_resp, tcp_connection):
    """

    :param http_resp:
    :param tcp_connection: for creating a tcp connection.
    :return:
    """
    for line in http_resp.iter_lines():
        print(line)
        try:
            full_tweet = json.loads(line)
            tweet_time = full_tweet['created_at']
            country = full_tweet['place']['country']
            hashtag = full_tweet['entities']['hashtags']

            if len(hashtag) > 0:

                hashtag_data = ','.join(['#'+i['text'] for i in hashtag])

                tweet_data = {
                                       'country': country,
                                        'hashtag': hashtag_data,
                                        'time': tweet_time
                                    }
                print(tweet_data)
                b = json.dumps(tweet_data).encode('utf-8')
                tcp_connection.send(b)

        except:
            e = sys.exc_info()[0]
            print("Error: %s" % e)


def start():
    """
    creating socket and binding it to a tcp port.
    :return:
    """
    TCP_IP = "localhost"
    TCP_PORT = 9001

    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    s.listen(1)

    print("Waiting for TCP connection...")
    conn, addr = s.accept()

    print("Connected... Starting getting tweets.")

    resp = get_tweets()
    send_tweets_to_spark(resp, conn)


if __name__ == "__main__":
    start()
