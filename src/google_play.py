from flask import Flask
import json
import db
import queries

# Initialize Flask app
app = Flask(__name__)

# Configure database callbacks for this app
db.init_app(app)


## ROUTING
@app.route('/')
def hello_world():
    return 'Fundamentos de Bancos de Dados'

@app.route('/vision_query_1')
def vision_query_1():
    returned_value = {
        'title': 'Vision Query 1',
        'subtitle': 'Promotion Film Members',
        'data': queries.promotion_film_members()
    }

    return json.dumps(returned_value)

@app.route('/vision_query_2/')
@app.route('/vision_query_2/<float:minutes>')
@app.route('/vision_query_2/<int:minutes>')
def vision_query_2(minutes = 3):
    returned_value = {
        'title': 'Vision Query 2',
        'subtitle': 'Artistas e álbuns com musicas mais longas do que {} minutos'.format(minutes),
        'data': queries.artists_and_albuns_with_longer_musics(minutes)
    }

    return json.dumps(returned_value)

@app.route('/normal_query_1')
def normal_query_1():
    returned_value = {
        'title': 'Normal Query 1',
        'subtitle': 'Downloads per user',
        'data': queries.download_statistics()
    }

    return json.dumps(returned_value)

@app.route('/normal_query_2')
@app.route('/normal_query_2/<string:cast>')
def normal_query_2(cast = 'Jason Momoa'):
    returned_value = {
        'title': 'Normal Query 2',
        'subtitle': 'People which downloaded movies with {} in the cast'.format(cast),
        'data': queries.movie_by_cast(cast)
    }

    return json.dumps(returned_value)

@app.route('/normal_query_3')
@app.route('/normal_query_3/<string:language>')
def normal_query_3(language = 'Português'):
    returned_value = {
        'title': 'Normal Query 3',
        'subtitle': 'Wishlist Books in {}'.format(language),
        'data': queries.wishlist_books_by_language(language)
    }

    return json.dumps(returned_value, default=str)

@app.route('/special_query_1')
def special_query_1():
    returned_value = {
        'title': 'Special Query 1 - Group by',
        'subtitle': 'Downloads by App Developer',
        'data': queries.downloads_by_developer()
    }

    return json.dumps(returned_value)

@app.route('/special_query_2')
def special_query_2():
    returned_value = {
        'title': 'Special Query 2 - Subquery',
        'subtitle': 'Albuns with higher download rates than the average',
        'data': queries.higher_than_average_albuns()
    }

    return json.dumps(returned_value)

@app.route('/special_query_3')
@app.route('/special_query_3/<string:other_email>')
def special_query_3(other_email = 'rbaudibert@inf.ufrgs.br'):
    returned_value = {
        'title': 'Special Query 3 - Not Exists Operator',
        'subtitle': 'People that didn\'t downloaded the same apps as {}'.format(other_email),
        'data': queries.person_didnt_downloaded_same_apps(other_email)
    }

    return json.dumps(returned_value)