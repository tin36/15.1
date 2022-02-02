import sqlite3


def animal(id):
    '''Получение словаря для вывода информации по фильму'''
    with sqlite3.connect("animal.db") as con:
        lists_base = []
        cur = con.cursor()
        query = (
            f"SELECT id, age, animal_id, type, name, breed, color_1, color_2, date_of_birth, outcome_subtype, outcome_type, outcome_month, outcome_year FROM animals_NF WHERE id = {id}")
        result = cur.execute(query)
        db = cur.fetchall()

        for i in db:
            dict = {"age": i[1],
                    "animal_id": i[2],
                    "type": i[3],
                    "name": i[4],
                    "breed": i[5],
                    "color_1": i[6],
                    "color_2": i[7],
                    "date_of_birth": i[8],
                    "outcome_subtype": i[9],
                    "outcome_type": i[10],
                    "outcome_month": i[11],
                    "outcome_year": i[12],
                    }
            return dict


def animals():
    '''Получение словаря для вывода информации по фильму'''
    with sqlite3.connect("animal.db") as con:
        lists_base = []
        cur = con.cursor()
        query = (
            f"SELECT * FROM animals_NF")
        result = cur.execute(query)
        db = cur.fetchall()

        for i in db:
            dict = {"id": i[0],
                    "age": i[1],
                    "animal_id": i[2],
                    "type": i[3],
                    "name": i[4],
                    }
            lists_base.append(dict)
        return lists_base


for i in animals():
    print(i)
