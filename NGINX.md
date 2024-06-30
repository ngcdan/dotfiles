```
The default port has been set in /opt/homebrew/etc/nginx/nginx.conf to 8080 so that
nginx can run without sudo.

nginx will load all files in /opt/homebrew/etc/nginx/servers/.

To start nginx now and restart at login:
  brew services start nginx
  Or, if you don't want/need a background service you can just run:
    /opt/homebrew/opt/nginx/bin/nginx -g daemon\ off\;
```




