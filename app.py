from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:void@localhost/agilebite_db'

db = SQLAlchemy(app)

class Inventory(db.Model):
    __tablename__ = 'Inventory'
    item_id = db.Column(db.Integer, primary_key = True)
    item_name = db.Column(db.String(length = 40), nullable = False)
    item_quantity = db.Column(db.Integer(), nullable = False)
    item_description = db.Column(db.String(length = 1020), nullable = False)

# def __init__(self, item_name, item_quantity, item_description):
#     self.item_name = item_name
#     self.item_quantity = item_quantity
#     self.item_description = item_description



@app.route('/')
@app.route('/home')
def home_page():
    return render_template('index.html')


@app.route('/add_inventory')
def add_data():
    return render_template('add_data.html')


#add to inventory button
@app.route('/submit', methods=['POST'])
def submit():
    item_name = request.form['item_name']
    item_quantity = request.form['item_quantity']
    item_description = request.form['item_description']

    inventory_obj = Inventory(item_name=item_name, item_quantity=item_quantity, item_description=item_description)
    db.session.add(inventory_obj)
    db.session.commit()


    # inventory_result = db.session.query(Inventory).filter(Inventory.item_id == 1)
    inventory_result = Inventory.query.filter_by(item_id=inventory_obj.item_id).first()

    # for result in inventory_result:
    #     print(result.item_name)

    # return render_template('success.html', data = item_name)
    return render_template('success.html', data=inventory_result)