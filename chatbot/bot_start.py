import os
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from models import *

@app.route('/keyboard')
def Keyboard():
 
    dataSend = {
        "type" : "buttons",
        "buttons" : ["시작하기", "도움말"]
    }
 
    return jsonify(dataSend)
 
 
 
@app.route('/message', methods=['POST'])
def Message():
    
    dataReceive = request.get_json()
    content = dataReceive['content']
    user_key = dataReceive['user_key']
    user = User.query.filter_by(username=user_key).first()
    print(user)

    if user is None:
        import random
        rand_number = int(random.random()*100000)
        new_user = User(username=user_key, email='{}@example.com'.format(rand_number))
        db.session.add(new_user)
        db.session.commit()

    user = User.query.filter_by(username=user_key).first()
    msg = Msg(message = content, user_id = user.id)
    db.session.add(msg)
    db.session.commit()
 
    if content == u"시작하기":
        dataSend = {
            "message": {
                "text": "아직 개발중이라 대답을 잘 못해도 이해해줘^^;"
            }
        }
    elif content == u"도움말":
        dataSend = {
            "message": {
                "text": "이제 곧 정식 버전이 출시될거야. 조금만 기다려~~~"
            }
        }
    elif u"안녕" in content:
        dataSend = {
            "message": {
                "text": "{0} 안녕~~ 반가워 ㅎㅎ".format(data)
            }
        }
    else:
        dataSend = {
            "message": {
                "text": "만세만세 만만세"
            }
        }
 
    return jsonify(dataSend)
 
 
if __name__ == "__main__":
    app.run(host='0.0.0.0', port = 5000)
