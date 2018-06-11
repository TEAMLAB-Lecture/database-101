from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.orm import relationship
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://ime_db:ime_db_2018@bot-db.cvv1o1yrngie.ap-northeast-2.rds.amazonaws.com:3306/bot_db'
db = SQLAlchemy(app)

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True)
    email = db.Column(db.String(120), unique=True)
    msg = db.relationship('Msg', backref='user', lazy=True)

class Msg(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    message = db.Column(db.String(255), unique=False)
    pub_date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
