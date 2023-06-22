all:
	echo option
	echo 	resetdatabase
	echo 	createdatabase
resetdatabase:
	del db.sqlite3
	rmdir /s /q .\model_app\migrations\__pycache__
	del .\model_app\migrations\*.py
	type nul >.\model_app\migrations\__init__.py
	echo 'success!'
createdatabase:
	python manage.py makemigrations
	python manage.py migrate