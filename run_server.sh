export PORT=8282
echo ">>>|The [client identifier](https://tools.ietf.org/html/rfc6749#section-2.2) which your app should send to the OAuth2 server in authentication requests and access token requests.|"
export EXPECTED_CLIENT_ID=dummy-client-id
echo ">>>The [client secret](https://tools.ietf.org/html/rfc6749#section-2.3.1) which your SUT should send to the OAuth2 server in access token requests.|"
export EXPECTED_CLIENT_SECRET=dummy-client-secret
echo ">>>|The HTTP path of the OAuth2 [authorization endpoint](https://tools.ietf.org/html/rfc6749#section-3.1) which the fake server listens on|"
export AUTH_REQUEST_PATH=/o/oauth2/v2/auth
echo ">>>|The HTTP path of the [access token request](https://tools.ietf.org/html/rfc6749#section-4.1.3) which the fake server listens on|"
export ACCESS_TOKEN_REQUEST_PATH=/oauth2/v4/token
export USERINFO_REQUEST_URL=/oauth2/v3/userinfo
#export PERMITTED_REDIRECT_URLS=http://localhost/drupal8test/gsis,http://localhost:8181/auth/login,http://localhost/drupal84/gsis
echo ">>>|comma-separated list of permitted [redirection endpoints]("
export PERMITTED_REDIRECT_URLS=http://localhost/drupal84/gsis,http://localhost/formspde-test/oauth2/authorized,http://localhost/formspde-test/oauth2callback,http://localhost/formspde-test/gsis_callback,http://localhost/formspde-test/gsis,https://www.getpostman.com/oauth2/callback
echo ">>>USE_RANDOM_RESPONCES =0 : (0=return the data you enter in the form , 1= return random data)"
export USE_RANDOM_RESPONCES=0
export REQUEST_LOGOUT_URL=/oauth2server/logout/

node server.js