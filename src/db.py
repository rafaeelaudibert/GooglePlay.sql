import psycopg2

from flask import current_app
from flask import g
from flask.cli import with_appcontext


def get_db():
    """Connect to the application's configured database. The connection
    is unique for each request and will be reused if this is called
    again.
    """
    if "db" not in g:
        g.db = psycopg2.connect(database='GooglePlay', user="postgres", password="postgres")

    return g.db

def get_cursor():
    """Using the database connection, creates a cursor. The cursor is unique
    for each request and will be reused if this is called again.
    """

    if "cursor" not in g:
        g.cursor = get_db().cursor()

    return g.cursor


def close_db(e=None):
    """If this request connected to the database, close the
    connection.
    """
    db = g.pop("db", None)

    if db is not None:
        db.close()


def init_app(app):
    """Register database functions with the Flask app. This is called by
    the application factory.
    """
    app.teardown_appcontext(close_db)