def db(app):
      app.secret_key = '324jkh3jk42JvV23'

    # Enter database connection details
    # For docker app container with docker database
      app.config['MYSQL_HOST'] = 'db'
      app.config['MYSQL_USER'] = ''
      app.config['MYSQL_PASSWORD'] = ''
      app.config['MYSQL_DB'] = 'chatapp'
      
      # For venv with docker database
      #app.config['MYSQL_HOST'] = '127.0.0.1'
      #app.config['MYSQL_USER'] = ''
      #app.config['MYSQL_PASSWORD'] = ''
      #app.config['MYSQL_DB'] = 'chatapp'