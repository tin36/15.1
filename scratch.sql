---
CREATE TABLE "animal_type"
(
    "id"   TEXT PRIMARY KEY,
    "type" TEXT
);
---
CREATE TABLE "breeds"
(
    "id"    TEXT PRIMARY KEY,
    "breed" TEXT
);

CREATE TABLE "age_upon_outcome"
(
    "id"  TEXT PRIMARY KEY,
    "age" TEXT
);

CREATE TABLE "animal_id"
(
    "id"        TEXT PRIMARY KEY,
    "animal_id" TEXT
);

CREATE TABLE "name"
(
    "id"   TEXT PRIMARY KEY,
    "name" TEXT
);

CREATE TABLE "outcome_subtype"
(
    "id"              TEXT PRIMARY KEY,
    "outcome_subtype" TEXT
);

CREATE TABLE "outcome_type"
(
    "id"           TEXT PRIMARY KEY,
    "outcome_type" TEXT
);

CREATE TABLE "outcome_month"
(
    "id"            TEXT PRIMARY KEY,
    "outcome_month" TEXT
);

CREATE TABLE "outcome_year"
(
    "id"           TEXT PRIMARY KEY,
    "outcome_year" TEXT
);

CREATE TABLE "date_of_birth"
(
    "id"            TEXT PRIMARY KEY,
    "date_of_birth" TEXT
);

CREATE TABLE "color_1"
(
    "id"      TEXT PRIMARY KEY,
    "color_1" TEXT
);

CREATE TABLE "color_2"
(
    "id"      TEXT PRIMARY KEY,
    "color_2" TEXT
);

CREATE TABLE "animals_NF"
(
    "id"              INTEGER PRIMARY KEY AUTOINCREMENT,
    "age"             TEXT,
    "animal_id"       TEXT,
    "type"            TEXT,
    "name"            TEXT,
    "breed"           TEXT,
    "color_1"         TEXT,
    "color_2"         TEXT,
    "date_of_birth"   DATE,
    "outcome_subtype" TEXT,
    "outcome_type"    TEXT,
    "outcome_month"   TEXT,
    "outcome_year"    TEXT,
    FOREIGN KEY (type) REFERENCES animal_type ("id"),
    FOREIGN KEY (breed) REFERENCES breeds ("id"),
    FOREIGN KEY (age) REFERENCES age_upon_outcome ("id"),
    FOREIGN KEY (animal_id) REFERENCES animal_id ("id"),
    FOREIGN KEY (name) REFERENCES name ("id"),
    FOREIGN KEY (outcome_subtype) REFERENCES outcome_subtype ("id"),
    FOREIGN KEY (outcome_type) REFERENCES outcome_type ("id"),
    FOREIGN KEY (outcome_month) REFERENCES outcome_month ("id"),
    FOREIGN KEY (outcome_year) REFERENCES outcome_year ("id"),
    FOREIGN KEY (date_of_birth) REFERENCES date_of_birth ("id"),
    FOREIGN KEY (color_1) REFERENCES color_1 ("id"),
    FOREIGN KEY (color_2) REFERENCES color_2 ("id")
);

INSERT INTO animal_type (id, type)
SELECT DISTINCT (animal_type), (animal_type)
from animals
WHERE animal_type NOT NULL
ORDER BY animal_type;

INSERT INTO breeds (id, breed)
SELECT DISTINCT (breed), (breed)
from animals
WHERE breed NOT NULL
ORDER BY breed;

INSERT INTO age_upon_outcome (id, age)
SELECT DISTINCT (age_upon_outcome), (age_upon_outcome)
from animals
WHERE age_upon_outcome NOT NULL
ORDER BY age_upon_outcome;

INSERT INTO animal_id (id, animal_id)
SELECT DISTINCT (animal_id), (animal_id)
from animals
WHERE animal_id NOT NULL
ORDER BY animal_id;

INSERT INTO name (id, name)
SELECT DISTINCT (name), (name)
from animals
WHERE name NOT NULL
ORDER BY name;

INSERT INTO outcome_subtype (id, outcome_subtype)
SELECT DISTINCT (outcome_subtype), (outcome_subtype)
from animals
WHERE outcome_subtype NOT NULL
ORDER BY outcome_subtype;

INSERT INTO outcome_type (id, outcome_type)
SELECT DISTINCT (outcome_type), (outcome_type)
from animals
WHERE outcome_type NOT NULL
ORDER BY outcome_type;

INSERT INTO outcome_month (id, outcome_month)
SELECT DISTINCT (outcome_month), (outcome_month)
from animals
WHERE outcome_month NOT NULL
ORDER BY outcome_month;

INSERT INTO outcome_year (id, outcome_year)
SELECT DISTINCT (outcome_year), (outcome_year)
from animals
WHERE outcome_year NOT NULL
ORDER BY outcome_year;

INSERT INTO date_of_birth (id, date_of_birth)
SELECT DISTINCT (date_of_birth), (date_of_birth)
from animals
WHERE date_of_birth NOT NULL
ORDER BY date_of_birth;

INSERT INTO color_1 (id, color_1)
SELECT DISTINCT (color1), (color1)
from animals
WHERE color1 NOT NULL
ORDER BY color1;

INSERT INTO color_2 (id, color_2)
SELECT DISTINCT (color2), (color2)
from animals
WHERE color2 NOT NULL
ORDER BY color2;

INSERT INTO animals_NF (age, animal_id, type, name, breed, color_1, color_2, date_of_birth, outcome_subtype, outcome_type, outcome_month, outcome_year)
SELECT age_upon_outcome, animal_id, animal_type, name, breed, color1, color2, date_of_birth, outcome_subtype, outcome_type, outcome_month, outcome_year
from animals;