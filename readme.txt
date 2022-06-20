Sklep internetowy - Komp
Autorzy: Dawid Dimitruk, Maciej Fender, Krzysztof Funkowski
Lista funkcjonalności:
    - Połączenie z bazą danych za pośrednictwem puli Tomcata
    - Dziennik zdarzeń ( pliki pod nazwą komp-report.log i komp-report-1.log )
    - Wyświetlanie listy produktów po kategoriach
    - Wyświetlanie listy produktów promocyjnych
    - Wyświetlanie strony produktowej
    - Dodawanie do koszyka
    - Wyświetlenie koszyka
    - Złożenie zamówienia
    - Logowanie
    - Rejestracja
    - Wyświetlenie panelu użytkownika
    - Panel administracyjny ( dostęp administrator lub moderator )
    - Przeglądanie produktów z poziomu panelu administratora ( dostęp administrator lub moderator )
    - Dodawanie produktów z poziomu panelu administratora ( dostęp administrator lub moderator )
    - Przeglądanie kont z poziomu panelu administratora ( dostęp administrator lub moderator )
    - Dodawanie kont z poziomu panelu administratora ( dostęp administrator )
    - Wyświetlanie zamówień z poziomu panelu administratora ( dostęp administrator lub moderator )

INSTRUKCJA

Minimalna Java 11 ( Zalecana Java 18 )
Tomcat 9.0.64
Postgresql 14

Zalecana konfiguracja ( najłatwiejsza )
1. Konfiguracja bazy danych
    1. Stwórz bazę danych KompDB
    2. login: postgres hasło: admin
    3. Powinna działać na porcie 5432
    4. Uruchom skrypt kompdb.sql załączony wraz z projektem
2. Konfiguracja tomcat z poziomu Intellij
    1. Klikamy opcję "Add Configuration"
    2. W oknie w lewym panelu klikamy "Add new"
    3. Z listy wybieramy "Tomcat Server > Local"

