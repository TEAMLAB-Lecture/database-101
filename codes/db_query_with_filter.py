# 1 - imports
from datetime import date

from models import *
from sqlalchemy.orm import sessionmaker

# 2 - generate database schema
from sqlalchemy import create_engine
engine = create_engine('mysql+pymysql://root:ime2018@localhost:3306/test')
Base.metadata.create_all(engine)

# 3 - create a new session
Session = sessionmaker(bind=engine)
session = Session()

movies = session.query(Movie) \
    .filter(Movie.release_date > date(2015, 1, 1)) \
    .all()

print('### Recent movies:')
for movie in movies:
    print(f'{movie.title} was released after 2015')
print('')

# 6 - movies that Dwayne Johnson participated
the_rock_movies = session.query(Movie) \
    .join(Actor, Movie.actors) \
    .filter(Actor.name == 'Dwayne Johnson') \
    .all()

print('### Dwayne Johnson movies:')
for movie in the_rock_movies:
    print(f'The Rock starred in {movie.title}')
print('')

# 7 - get actors that have house in Glendale
glendale_stars = session.query(Actor) \
    .join(ContactDetails) \
    .filter(ContactDetails.address.ilike('%glendale%')) \
    .all()

print('### Actors that live in Glendale:')
for actor in glendale_stars:
    print(f'{actor.name} has a house in Glendale')
print('')
