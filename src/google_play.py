from flask import Flask, render_template
from json2html import *
import json
import db
import queries

# Initialize Flask app
app = Flask(__name__)

# Configure database callbacks for this app
db.init_app(app)

## ROUTING
@app.route('/')
def root():
    return render_template('index.html')

## API ROUTES
@app.route('/vision_query_1', methods=['POST'])
def vision_query_1():
    returned_value = {
        'title': 'Vision Query 1',
        'subtitle': 'Promotion Film Members',
        'data': queries.promotion_film_members()
    }

    return json.dumps(returned_value, default=str)

@app.route('/vision_query_2', methods=['POST'])
@app.route('/vision_query_2/<float:minutes>', methods=['POST'])
@app.route('/vision_query_2/<int:minutes>', methods=['POST'])
def vision_query_2(minutes = 3):
    returned_value = {
        'title': 'Vision Query 2',
        'subtitle': 'Artistas e álbuns com musicas mais longas do que {} minutos'.format(minutes),
        'data': queries.artists_and_albuns_with_longer_musics(minutes)
    }

    return json.dumps(returned_value, default=str)

@app.route('/normal_query_1', methods=['POST'])
def normal_query_1():
    returned_value = {
        'title': 'Normal Query 1',
        'subtitle': 'Downloads per user',
        'data': queries.download_statistics()
    }

    return json.dumps(returned_value, default=str)

@app.route('/normal_query_2', methods=['POST'])
@app.route('/normal_query_2/<string:cast>', methods=['POST'])
def normal_query_2(cast = 'Jason Momoa'):
    returned_value = {
        'title': 'Normal Query 2',
        'subtitle': 'People which downloaded movies with {} in the cast'.format(cast),
        'data': queries.movie_by_cast(cast)
    }

    return json.dumps(returned_value, default=str)

@app.route('/normal_query_3', methods=['POST'])
@app.route('/normal_query_3/<string:language>', methods=['POST'])
def normal_query_3(language = 'Português'):
    returned_value = {
        'title': 'Normal Query 3',
        'subtitle': 'Wishlist Books in {}'.format(language),
        'data': queries.wishlist_books_by_language(language)
    }

    return json.dumps(returned_value, default=str)

@app.route('/special_query_1', methods=['POST'])
def special_query_1():
    returned_value = {
        'title': 'Special Query 1 - Group by',
        'subtitle': 'Downloads by App Developer',
        'data': queries.downloads_by_developer()
    }

    return json.dumps(returned_value, default=str)

@app.route('/special_query_2', methods=['POST'])
def special_query_2():
    returned_value = {
        'title': 'Special Query 2 - Subquery',
        'subtitle': 'Albuns with higher download rates than the average',
        'data': queries.higher_than_average_albuns()
    }

    return json.dumps(returned_value, default=str)

@app.route('/special_query_3', methods=['POST'])
@app.route('/special_query_3/<string:other_email>', methods=['POST'])
def special_query_3(other_email = 'rbaudibert@inf.ufrgs.br'):
    returned_value = {
        'title': 'Special Query 3 - Not Exists Operator',
        'subtitle': 'People that didn\'t downloaded the same apps as {}'.format(other_email),
        'data': queries.person_didnt_downloaded_same_apps(other_email)
    }

    return json.dumps(returned_value, default=str)

@app.route('/pre_trigger_query', methods=['POST'])
@app.route('/post_trigger_query', methods=['POST'])
def trigger_query():
    returned_value = {
        'title': 'Trigger Query',
        'subtitle': 'All categorizations',
        'data': queries.get_all_categorizations()
    }

    return json.dumps(returned_value, default=str)

@app.route('/add_categorization/<string:item_uuid>/<string:category_name>/<string:category_type>', methods=['POST'])
def add_categorization(item_uuid, category_name, category_type):
    returned_value = {
        'title': 'Add Categorization',
        'subtitle': 'Add categorization {} - {} on {}'.format(category_name, category_type, item_uuid),
        'data': queries.add_categorization(item_uuid, category_name, category_type)
    }
    return json.dumps(returned_value, default=str)