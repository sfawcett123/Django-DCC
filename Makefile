certificate:
	mkcert -cert-file cert.pem -key-file key.pem localhost 127.0.0.1

migrate:
	python3 manage.py makemigrations
	python3 manage.py migrate

superuser:
	python3 manage.py migrate
	python3 manage.py createsuperuser

clean:
	find . -name "*.pyc" -exec rm {} \;

run:
	python3 manage.py migrate
	python3 manage.py runserver_plus --cert-file cert.pem --key-file key.pem
