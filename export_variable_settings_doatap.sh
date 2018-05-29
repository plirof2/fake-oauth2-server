export PORT=8282
export EXPECTED_CLIENT_ID=dummy-client-id
echo ">>>|The [client identifier](https://tools.ietf.org/html/rfc6749#section-2.2) which your SUT should send to the OAuth2 server in authentication requests and access token requests.|"
export EXPECTED_CLIENT_SECRET=dummy-client-secret
echo ">>>The [client secret](https://tools.ietf.org/html/rfc6749#section-2.3.1) which your SUT should send to the OAuth2 server in access token requests.|"
export AUTH_REQUEST_PATH=/o/oauth2/v2/auth
echo ">>>|The HTTP path of the OAuth2 [authorization endpoint](https://tools.ietf.org/html/rfc6749#section-3.1) which the fake server listens on|"
export ACCESS_TOKEN_REQUEST_PATH=/oauth2/v4/token
export USERINFO_REQUEST_URL=/oauth2/v3/userinfo
echo ">>>|The HTTP path of the [access token request](https://tools.ietf.org/html/rfc6749#section-4.1.3) which the fake server listens on|"
#export PERMITTED_REDIRECT_URLS=http://localhost/drupal8test/gsis,http://localhost:8181/auth/login,http://localhost/drupal84/gsis
export PERMITTED_REDIRECT_URLS=http://localhost/drupal84/gsis,http://192.168.1.142/lara3/api/callback
echo ">>>|comma-separated list of permitted [redirection endpoints]("


echo "$this->tokenUrl = 'http://localhost:8282/oauth2/v4/token'";
echo "$this->userinfoUrl = 'http://localhost:8282/oauth2/v3/userinfo'";
echo "$this->authorizeUrl = 'http://localhost:8282/o/oauth2/v2/auth'";


node server.js