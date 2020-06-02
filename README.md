# culinary-app - Piotr Połeć, Błażej Kustra

Aplikacja internetowa przeznaczona do udostępniania oraz poznawania przepisów kulinarnych. 

Technologie: 
 - Python (Django)
 - PostgreSQL

### Funkcjonalności: 

 - Rejestracja, logowanie użytkowników
 - Dodawanie/Usuwanie/Modyfikacja przepisów (Operacje CRUD)
 - Panel administratora do zarządzania przepisami
 - Wyszukiwarka przepisów

### Schemat bazy:

![schemat_bazy](diagram.png)

### Przewodnik po kodzie:

 - **`manage.py`** - Główny plik django, serce aplikacji
 
 - **Folder `recipe`** - Pliki generowane przez django
    - `settings.py` - Podstawowe ustawienia aplikacji np. adres do bazy danych
    - `urls.py` - Lista routingu do widoków aplikacji
    - `wsgi.py` - Web Server Gateway Interface
    - `asgi.py` - Asynchronous Server Gateway Interface
    
 - **Folder `recipes`**
    - `apps.py` - Podstawowa konfiguracja aplikacji np. nazwa
    - `models.py` - Modele obiektów
    - `views.py` - Wygląd poszczególnych stron
    - `urls.py` - Lista routingu do widoków aplikacji
    - `help_classes.py` - Klasy uzupełniające
    - `help_functions.py` - Funkcje pomocnicze (utils)
    - `admin.py` - Panel administratora
    - `tests.py` - Testy
    - Folder `migrations` - Folder z migracjami
    - Folder `static` - Style stron + grafiki
    - Folder `templates` - Templatki stron w html
