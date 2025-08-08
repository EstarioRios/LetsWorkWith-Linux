sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2


sudo nano /etc/apache2/sites-available/backend.conf


sudo a2ensite backend.conf
sudo systemctl reload apache2


python3 manage.py runserver 127.0.0.1:8000