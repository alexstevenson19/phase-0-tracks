
## Release 0 - Find the Thing
2. 
* 200 - OK
* 300 - Multiple Choices
* 301 - Moved Permanently
* 302 - Found
* 303 - See Other
* 304 - Not Modified
* 307 - Temporary Redirect
* 400 - Bad Request
* 401 - Unauthorized
* 403 - Forbidden
* 404 - Not Found
* 410 - Gone
* 500 - Internal Server Error
* 501 - Not Implemented
* 503 - Service Unavailable
* 550 - Permission Denied

3. GET vs POST
* GET - Requests data from a specific resource
    GET requests can be cached, remain in browser history, can be bookmarked
    should never be used with sensitive data, have length restrictions
    should only be used to retrieve data, visible to everyone in URL
* POST - Submits data to be processed to a specific resource
    POST requests are never cached, don't remain in history
    cannot be bookmarked, have no restrictions on data length,
    not visible in URL

* Use GET for safe actions, POST for unsafe actions i.e. sensitive data.
*  Also use POST when dealing with long requests

4. Cookies
