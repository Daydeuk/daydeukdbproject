from flask import Flask, render_template, url_for
import sqlite3

app= Flask(__name__)

@app.route('/')
@app.route('/home')
def home():
    return render_template('daedeuk_home.html')

@app.route('/list')
def List():
    db= sqlite3.connect("daydeuk_list.sql")
    db.row_factory =sqlite3.Row
    item=db.execute('select id, cname, price, cstatus, sell_id, reservation from book_item').fetchall()
    db.close()
    return render_template('daedeuk_list.html', items= items)

@app.route('/sell/edit/<int:book_id>/', methods=['GET', 'POST'])
def editbook(book_id):
    if request.method=='POST':
        db=sqlite3.connect("daydeuk_list.db")
        db.row_factory=sqlite3.Row
        db.execute(
            'update menu_item
            'set name=?'
            'where id=?'
            (request.form['book_name'], book_id)
        )
        db.commit()
        db.close()
        return redirect(url_for(showMenu))