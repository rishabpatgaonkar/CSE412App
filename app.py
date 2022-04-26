from locale import currency
import time
from typing import ValuesView
import webbrowser
import psycopg2
import os
import re
from bs4 import BeautifulSoup as bs
from psycopg2 import Error
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

ENV = 'dev'

hostname = 'kashin.db.elephantsql.com'
database = 'rdbxscrg'
username = 'rdbxscrg'
pwd = 'ry0nqAde0R4mOupouZfsN2a_ykNNEAYO'
port_id = '5432'

# Returns user to home page


@app.route('/')
def index():
    return render_template('index.html')

# Code for Search button


@app.route('/submit', methods=['POST'])
def submit():
    if request.method == 'POST':
        make = request.form['make']
        model = request.form['model']
        year = request.form['year']
        color = request.form['color']
        price = request.form['price']
        # Prints user selection
        #print(make, model, year, color, price)

        '''if make == '' or model == '' or year == '' or color == '' or price == '':
            return render_template('index.html', message='Please enter required fields')'''

    # Connects to elephantSQL database and performs queries based on users selections
    try:
        conn = psycopg2.connect(
            host=hostname,
            dbname=database,
            user=username,
            password=pwd,
            port=port_id
        )

        # SELECT query based on users selections
        # if user makes selection for all fields
        if make != '' and model != '' and year != '' and color != '' and price != '':
            sql_select_Query = """select * from car where c_make = %s and c_model = %s and c_year = %s and c_color = %s"""
            cursor = conn.cursor()
            # Executing the query
            cursor.execute(sql_select_Query, [make, model, year, color])

        elif model != '':
            sql_select_Query = """select * from car where c_model = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [model])

        elif make != '':
            sql_select_Query = """select * from car where c_make = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make])

        elif year != '':
            sql_select_Query = """select * from car where c_year = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [year])

        # if user makes a selection for make field only
        elif make != '' and model == '' and year == '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_make = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make])
        # if user makes a selection for make and model fields only
        elif make != '' and model != '' and year == '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_make = %s and c_model = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, model])
        # if user makes a selection for make and year fields only
        elif make != '' and model == '' and year != '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_make = %s and c_year = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, year])
        # if user makes a selection for make and color fields
        elif make != '' and model == '' and year == '' and color != '' and price == '':
            sql_select_Query = """select * from car where c_make = %s and c_color = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, color])
        # if user makes a selection for make and price fields
        elif make != '' and model == '' and year == '' and color == '' and price != '':
            sql_select_Query = """select * from car where c_make = %s and c_price = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, price])
        # if user makes a selection for make, model and year fields
        elif make != '' and model != '' and year != '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_make = %s and c_model = %s and c_year = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, model, year])
        elif make != '' and model != '' and year == '' and color != '' and price == '':
            sql_select_Query = """select * from car where c_make = %s and c_model = %s and c_color = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, model, color])
        # user selection for make, model, and price fields
        elif make != '' and model != '' and year == '' and color == '' and price != '':
            sql_select_Query = """select * from car where c_make = %s and c_model = %s and c_price = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [make, model, price])
        # user selection for model only
        elif make == '' and model != '' and year == '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_model = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [model])
        # user selection for year only
        elif make == '' and model == '' and year != '' and color == '' and price == '':
            sql_select_Query = """select * from car where c_year = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [year])
        # user selection for color only
        elif make == '' and model == '' and year == '' and color != '' and price == '':
            sql_select_Query = """select * from car where c_color = %s"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query, [color])
        else:
            sql_select_Query = """select * from car order by c_make"""
            cursor = conn.cursor()
            cursor.execute(sql_select_Query)
        conn.commit()
        # get all records
        records = cursor.fetchall()
        print("Total number of rows in table: ", cursor.rowcount)
        p = []
        tbl = "<tr><td id=\"c_make\">Make</td><td id=\"c_model\">Model</td><td id=\"c_year\">Year</td><td id=\"c_color\">Color</td><td id=\"c_zipcode\">ZipCode</td><td id=\"c_price\">Price</td><td id=\"c_engine\">Engine</td><td id=\"c_transmission\">Transmission</td><td></td></tr>"
        p.append(tbl)
        # Displays user selected query
        print("\nPrinting each row")
        for row in records:
            print("Cid = ", row[0], )
            print("Sid = ", row[1])
            print("Make  = ", row[2])
            a = "<tr><td>%s</td>" % row[2]
            p.append(a)
            print("Model  = ", row[3])
            b = "<td>%s</td>" % row[3]
            p.append(b)
            print("Year  = ", row[4])
            c = "<td>%s</td>" % row[4]
            p.append(c)
            print("Color  = ", row[5])
            d = "<td>%s</td>" % row[5]
            p.append(d)
            print("Price  = ", row[6])
            e = "<td>%s</td>" % row[7]
            p.append(e)
            print("ZipCode  = ", row[7])
            f = "<td>%s</td>" % row[6]
            p.append(f)
            print("Engine  = ", row[8])
            g = "<td>%s</td>" % row[8]
            p.append(g)
            print("Transmission  = ", row[9], "\n")
            h = "<td>%s</td>" % row[9]
            p.append(h)
            i = "<td>%s</td></tr>" % "<a href=./templates/car-listing421.html?make=$c_make>View</a>"
            p.append(i)
            print(a)

        contents = '''<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
        <html>
        <head>
        <link rel="stylesheet" href="./static/style.css">
        <meta content="text/html; charset=ISO-8859-1"
        http-equiv="content-type">
        <title>Python Webbrowser</title>
        </head>
        <body>
        <div class="car-details">
        <dl class="description-list">
        <table method="GET">
        %s
        </table>
        </body>
        </html>
        ''' % (p)

        filename = 'webbrowser.html'
        output = open(filename, "w")
        output.write(contents)
        output.close()
        webbrowser.open(filename, new=0)

        '''base = os.path.dirname(os.path.abspath(__file__))

        html = open(os.path.join(base, 'templates/car-listing421.html'))

        soup = bs(html, 'html.parser')

        old_text = soup.find_all("dd")

        print(old_text)

        for tag in old_text:
            print(tag.string)
            if 'Default Make' in tag.string:
                print('debug')
                new_text = old_text.find(
                    text=re.compile('Default Make')).replace_with(row[2])
                print('it worked')
            elif tag.string == "Default Model":
                tag.string.replace_with(row[3])

        # new_text = old_text.find(text=re.compile(
            # 'Default')).replace_with(row[2])

        with open("templates/car-listing421.html", "wb") as f_output:
            f_output.write(soup.prettify("utf-8"))'''

        #cursor = conn.cursor()
        # Print PostgreSQL details
        print("PostgreSQL server information")
        print(conn.get_dsn_parameters(), "\n")
        # Executing a SQL query
        cursor.execute("SELECT version();")
        # Fetch result
        record = cursor.fetchone()
        print("You are connected to - ", record, "\n")

    except (Exception, Error) as error:
        print("Error while connecting to PostgreSQL", error)
    finally:
        if (conn):
            cursor.close()
            conn.close()
            print("PostgreSQL connection is closed")

            return render_template('index.html')


if __name__ == '__main__':
    app.debug = True
    app.run()
