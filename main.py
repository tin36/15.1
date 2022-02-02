from flask import Flask, render_template

import sqlite3
from utils import animal, animals

def get_database():
    '''Получаение кортежей из БД'''
    with sqlite3.connect("animal.db") as con:
        cur = con.cursor()
        query = (
            f"SELECT * FROM animals_NF")
        result = cur.execute(query)
        db = cur.fetchall()
        return db


app = Flask(__name__)

@app.route('/', )
def main():
    animal = animals()
    return render_template('index.html', animal=animal)



@app.route('/animal/<id>', )
def main_page(id):
    animal_info = animal(id)
    return render_template('animal.html', animal_info=animal_info)


app.run()