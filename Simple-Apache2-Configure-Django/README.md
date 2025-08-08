
# Simple-DevOps-With-Apache2

How to use <b>Apache2</b> to run Django Website with frontend hosting.

---

## ✅ Serve Frontend with Apache2 (Optional)

Put your static frontend files (HTML, CSS, JS, images) inside:

```bash
/var/www/html/‍‍
```

For example:

```sudo cp -r ./frontend/* /var/www/html/```

Then visit your site at:
📍 <http://localhost>
📍 or <http://your-server-ip>

Apache will automatically serve index.html inside that folder.
✅ Install Apache2

```sudo apt update && sudo apt install apache2 -y```

✅ Enable Apache2 and Required Modules

- ```sudo systemctl start apache2```
- ```sudo a2enmod proxy```
- ```sudo a2enmod proxy_http```
- ```sudo systemctl restart apache2```

✅ Configure Apache2 as a Proxy for Django

Create new config file:

```sudo nano /etc/apache2/sites-available/backend.conf```

Paste the content of
<a href='https://github.com/EstarioRios/Simple-DevOps-With-Apache2/blob/main/Simple-Apache2-Configure-Django/backend.conf'>backend.conf</a>

Then enable it:

- ```sudo a2ensite backend.conf```
- ```sudo systemctl reload apache2```

✅ Run Your Django Project

Make sure your Django is running on 127.0.0.1:8000

- ``python3 manage.py runserver 127.0.0.1:8000``

Now all requests to /api/ via Apache2 will be forwarded to Django.

✅ Example frontend fetch request (works without setting port 8000):

```
fetch('/api/auth/logout/', {
  method: 'POST',
  headers: {
    'Authorization': 'Bearer YOUR_TOKEN'
  }
})
```
