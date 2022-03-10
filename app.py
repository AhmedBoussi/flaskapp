from flask import Flask, render_template, request
import json



app = Flask(__name__)




@app.route('/')
def home():
	return render_template("index.html")

@app.route('/', methods=['POST'])
def main():
	if request.method == 'POST':
		num = float(request.form['number'])
		marks = [[num*2]]
	return render_template("index.html", marks = marks)


if __name__ == '__main__':
	app.run(debug = False)
