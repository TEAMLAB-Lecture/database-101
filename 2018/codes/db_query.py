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


# 3 - extract all movies
movies = session.query(Movie).all()

# 4 - print movies' details
print('\n### All movies:')
for movie in movies:
    print(f'{movie.title} was released on {movie.release_date}')
print('')
