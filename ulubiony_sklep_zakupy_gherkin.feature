Feature: Zakupy w meteor.pl
    Scenario: Wizyta w sklepie internetowym
       Given Wpisanie w przeglądarkę adresu sklepu internetowego https://meteor.pl/
       When Ładowanie strony sklepu
       Then Strona sklepu internetowego się otwiera
    Scenario: Wyszukiwanie produktu
       Given Najechanie myszą na grupy produktowe
       Then Podświetlają się podgrupy produktowe
       Given Kliknięcie na podgrupę "Hulajnogi" w grupie "SKATE"
       Then Wyświetla się lista produktów z wybranej podgrupy
    Scenario: Dodawanie produktu do koszyka
       Given Wybranie produktu "Hulajnoga Muffy żółta"
       When Klikam ikonę wybranego produktu
       Then Otwiera się karta produktu
       And Klikam przycisk "Dodaj do koszyka"
       Then Widzę komunikat "Dodano do koszyka"
       When Klikam ikonę koszyka
       Then Widzę w koszyku dodany przeze mnie produkt
    Scenario: Zakup produktu
       Given Znajduję się na podstronie "TWÓJ KOSZYK"
       When Klikam przycisk "Przejdź dalej"
       And Klikam przycisk "Zamów bez rejestracji"
       And Wpisuję dane do wysyłki
       And Klikam w okienko wyboru "Akceptuję warunki regulaminu. Zgadzam się na otrzymywanie informacji dotyczących zamówień w myśl ustawy z dnia 18 lipca 2002r. o świadczeniu usług drogą elektroniczną."
       And Klikam przycisk "Przejdź dalej"
       And Wybieram jedną z podanych na liście "Opcje zapłaty"
       And Klikam przycisk "Przejdź dalej"
       And Klikam w okienko wyboru "Akceptuję warunki regulaminu. Zgadzam się na otrzymywanie informacji dotyczących zamówień w myśl ustawy z dnia 18 lipca 2002r. o świadczeniu usług drogą elektroniczną."
       And Klikam w okienko wyboru "Zapoznałem się z moim prawem do odstąpienia od umowy."
       And Klikam przycisk "Zamawiam i płacę"
       Then Widzę komunikat potwierdzający złożenie zamówienia
