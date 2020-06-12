import unittest
import mock
from script import get_tweets
from script import send_tweets_to_spark
from script import start


class MyTestCase(unittest.TestCase):

    @mock.patch('requests.get')
    def test_get_tweets(self, mock_request):
        res = {'res': 'response'}
        mock_request.return_value = res
        result = get_tweets()
        assert result == res

    def test_send_tweets_to_spark(self):
        resp = mock.Mock()
        tcp_connection = mock.Mock()
        resp.iter_lines.return_value = {'created_at': 'time',
                                        'place': {'country': 'country'},
                                        'entities': {'hashtags': ['hashtag1', 'hashtag2']}}
        result = send_tweets_to_spark(resp, tcp_connection)
        assert tcp_connection.called_once()

    @mock.patch('script.get_tweets')
    @mock.patch('script.send_tweets_to_spark')
    @mock.patch('socket.socket')
    def test_start(self, mock_socket, mock_send_tweets_to_spark, mock_get_tweets):
        mock_socket.bind.return_value = mock.Mock()
        mock_socket.accept.return_value = mock.Mock()
        start()
        assert mock_get_tweets.called_once()
        assert mock_send_tweets_to_spark.called_once()


if __name__ == '__main__':
    unittest.main()
