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

Zalecana konfiguracja
1. Konfiguracja bazy danych
    1. Stwórz bazę danych KompDB
    2. login: postgres hasło: admin
    3. Powinna działać na porcie 5432
    4. Uruchom skrypt kompdb.sql załączony wraz z projektem
2. Konfiguracja tomcat z poziomu Intellij
    1. Klikamy opcję "Add Configuration"
    2. W oknie w lewym panelu klikamy "Add new"
    3. Z listy wybieramy "Tomcat Server > Local"
    4. W zakładce Deployment > + > KOMP:war exploded
    5. Application Context ustawiamy na "/"
    6. Wracamy do zakładki Server
    7. W JRE wybieramy wersję Javy >= Java 11
    8. On 'Update' action: Redeploy
    9. On frame deactivation: Update resources
    10. Before launch > + > Run Maven Goal > W "command line" wpisujemy "clean"
    11. Przesuwamy strzałką w górę clean na pierwsze miejsce
    12. Klikamy OK
3. Konfiguracja tomcat z poziomu serwera
    1. Pobieramy PostgreSQL JDBC 4.2 Driver, 42.4.0 z https://jdbc.postgresql.org/download.html
    2. Wklejamy go do {TOMCAT}/lib/
    3. W folderze {TOMCAT}/conf/ otwieramy plik context.xml
    4. Jeżeli baza danych została skonfigurowana tak jak zostało to wyżej opisane to pomiędzy <context></context> wklejamy
    	<Resource name="jdbc/postgres" auth="Container"
              type="javax.sql.DataSource" driverClassName="org.postgresql.Driver"
              url="jdbc:postgresql://localhost:5432/KompDB"
              username="postgres" password="admin" maxTotal="20" maxIdle="10" maxWaitMillis="-1"/>
    5. Jeżeli coś było zmieniane to zmiany w <Resource/> należy uwzględnić tak jak i w plikach src/resources/hibernate.cfg.xml i src/resources/META-INF/persistance.xml
4. Jeżeli wszystko zostało skonfigurowane to odpalamy aplikację

W skrypcie bazodanowym zdefiniowanych jest parę testowych produktów, kategorii oraz podstawowe konta użytkowników dla każdej z ról
- Administrator: login: admin hasło: admin
- Moderator: login: pracownik hasło: pracownik
- Użytkownik: login: jan hasło: kowalski

Baza danych zawiera tabele:
- product - tabela produktów
- category - tabela kategorii
- account - tabela kont
- placed_order - tabela zamówień
- order_product - tabela łącząca zamówienia z produktami
- warehouse - tabela magazynów
- warehouse_produkt - tabela łącząca magazyny z produktami