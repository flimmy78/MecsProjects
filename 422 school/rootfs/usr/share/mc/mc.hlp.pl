[Contents]
  OPISDESCRIPTION
  OPCJEOPTIONS
  OpisOverview
  Obs�uga myszyMouse Support

  KlawiszeKeys
    Klawisze r�neMiscellaneous Keys
    Panel Katalog�wDirectory Panels
    Linia Pow�okiShell Command Line
    Podstawowe klawisze ruchuGeneral Movement Keys
    Linia wej�ciowa klawiszyInput Line Keys

  Linia menuMenu Bar
    Lewe i prawe menuLeft and Right Menus
      Tryby wy�wietlania (Listing modes)Listing Mode...
      Porz�dek sortowania (Sort order...)Sort Order...
      Filtry (Filter...)Filter...
      Od�wie� (Reread)Reread
    Menu plik�w (File menu)File Menu
      Szybka zmiana katalog�w (Quick cd) M-cQuick cd
    Menu komend (Command Menu)Command Menu
      Drzewo katalog�w (Directory Tree)Directory Tree
      Znajd� plik (Find File)Find File
      Panel zewn�trznyExternal panelize
      HotlistHotlist
      Edycja rozszerze� pli�w (Extension File Edit)Extension File Edit
      Prace w tle (Background jobs)Background Jobs
      Edycja menu u�ytkownika (Menu File Edit)Menu File Edit
    Menu opcji (Options Menu)Options Menu
      KonfiguracjaConfiguration
      Wygl�d (Layout)Layout
      Potwierdzanie (Confirmation)Confirmation
      Wy�wietlanie znak�w (Display bits)Display bits
      Nauka klawiszy (Learn keys)Learn keys
      Wirtualny system plik�w (Virtual FS)Virtual FS
      Zapisz ustawienia (Save Setup)Save Setup

  Wykonywanie polece� systemu operacyjnego (Executing operating system commands)Executing operating system commands
    Wbudowana komenda cd (The cd internal command)The cd internal command
    Obs�uga makr (Macro Substitution)Macro Substitution
    Obs�uga podpow�oki (The subshell support)The subshell support
  ChmodChmod
  ChownChown
  Zaawansowane chown (Advanced Chown)Advanced Chown
  Operacje na plikach (File Operations)File Operations
  Maski kopiowania/przenoszenia (Mask Copy/Rename)Mask Copy/Rename
  Wbudowany podgl�d plik�wInternal File Viewer
  Wbudowany edytor plik�wInternal File Editor
  Doka�czanieCompletion
  Wirtualny system plik�w (Virtual File System)Virtual File System
    System plik�w FTP (FTP File System)FTP File System
    System plik�w tar (Tar File System)Tar File System
    Transfer plik�w pomi�dzy systemami plik�w (FIle transfer over SHell filesystem)FIle transfer over SHell filesystem
    Sieciowe systemy plik�wNetwork File System
    Odzyskiwanie plik�wUndelete File System
  Polskie znakiPolskie znaki
  KoloryColors
  Specjalne ustawieniaSpecial Settings
  Baza danych terminali (Terminal databases)Terminal databases

  PLIKIFILES
  DOST�PNO��AVAILABILITY
  ZOBACZ TAK�ESEE ALSO
  AUTORZYAUTHORS
  B��DYBUGS
  T�UMACZENIET�UMACZENIE
  LicencjaLicense
  Nieoficjalne t�umaczenie licencjiLicense-pl
  Okna zapytaniaQueryBox
  Jak korzysta� z pomocyHow to use help
[DESCRIPTION]
OPIS

Midnight Commander jest przeszukiwark�
katalog�w/mened�erem plik�w dla system�w Unixopodobnych[OPTIONS]
OPCJE


-a      Wy��cza u�ywanie symboli graficznych przy
        rysowaniu ramek.

-b      Wymusza wy�wietlanie czarno-bia�e.

-c      Wymusza wy�wietlanie w kolorze, zobacz sekcj�
        Kolory �eby zasi�gn�� szerszej informacji.

-C arg  U�ywane do wybierania innego koloru, kt�ry ma by�
        obecny w linii polece�. Format argumentu arg jest
        opisany w sekcji Kolory.

-d      Wy��cza u�ywanie myszy.

-f      Wy�wietla wkompilowane �cie�ki, w kt�rych
        Mindnight Commander szuka swoich plik�w.

-k      Resetuje "mi�kkie" klawisze do ich standardowych
        funkcji z termcap/terminfo. U�yteczne tylko przy
        terminalach HP, kiedy klawisze funkcyjne nie
        dzia�aj�.

-l plik Zachowuje logi z serwer�w ftp do pliku plik.

-P      Przy zako�czeniu programu, Midnight Commander
        wydrukuje na ekranie katalog, w kt�rym
        pracowali�my na ko�cu; to w po�aczeniu z funkcj�
        napisan� poni�ej pozwoli ci na przegl�danie
        swoich katalog�w i automatyczne przej�cie do
        tego, w kt�rym by�e� ostatnio (dzi�kuj� Torbenowi
        Fjerdingstadowi i Sergeyowi za wk�ad w t� funkcj�
        oraz za kod �r�d�owy, kt�ry wprowadzili w �ycie).
u�ytkownicy basha i zsh:

mc ()
{
        MC=$HOME/tmp/mc$$-"$RANDOM"
        /home/john/prjroot/rootfs/usr/bin/mc -P "$@" > "$MC"
        cd "`cat $MC`"
        rm "$MC"
        unset MC;
}

u�ytkownicy tcsh:
alias mc 'setenv MC `/home/john/prjroot/rootfs/usr/bin/mc -P !*`; cd $MC; unsetenv MC'
        Wiem, �e ta funkcja mog�aby by� kr�tsza dla basha
        i zsh, ale ma�e cudzys�owy nie zaakceptowa�y by
        zawieszenia programu kombinacj� C-z.

-s      W��cza tryb powolnego terminala, w kt�rym program
        nie b�dzie rysowa� zbyt obci��aj�cych znak�w
        graficznych oraz wy��czy opcj� weryfikacji.

-t      U�ywane tylko je�li kod by� skompilowany przy
        u�yciu Slanga i terminfo: powoduje, �e Midnight
        Commander b�dzie u�ywa� zmiennej �rodowiskowej
        TERMCAP do pokazywania informacji terminala,
        zamiast informacji w systemowej bazie typ�w
        terminali.

-u      Wy��cza u�ywanie r�wnoleg�ej pow�oki (ma sens
        tylko je�li Midnight Commander by� kompilowany z
        obs�ug� r�wnoleg�ych pow�ok).

-U      W��cza u�ycie jednoczesnego inerpretatora polece�
        (ma sens tylko je�li Midnight Commander by�
        zbudowany z ustawieniem pow�oki w tle jako opcji
        dodatkowej).

-v plik W��cza wbudowany podgl�d w celu obejrzenia
        wybranego pliku plik.

-V      Wy�wietla wersj� programu.

-x      Wymusza w��czenie trybu xterm. U�ywane kiedy
        dzia�a si� na terminalach wyposa�onych w opcje
        xterm (dwa tryby ekranu i mo�liwo�� wysy�ania
        mysz� sygna��w wyj�cia).

Je�li wybrano, pierwszy katalog u�ywany jest do
wy�wietlenia w pierwszym panelu. Drugi wy�wietlany jest w
drugim panelu.[Overview]
Opis

Ekran Midnight Commandera podzielony jest na cztery
cz�ci. Prawie ca�y obszar ekranu zajmuj� dwa panele.
Standardowo przedostatnia od do�u linijka ekranu,
przeznaczona jest do wpisywania polece�, a ostatnia
pokazuje klawisze funkcyjne. Najwy�szy wiersz jest
wierszem menu. Mo�e on by� niewidoczny, ale pojawia si�
zawsze po klikni�ciu w najwy�sz� lini� ekranu, albo po
wci�ni�ciu klawisza F9.

Midnight Commander pozwala na ogl�danie dw�ch paneli w tym
samym czasie. Jeden z nich jest panelem aktywnym
(pod�wietlona linia wyboru znajduje si� w�a�nie w nim).
Niemal wszystkie operacje wykonuje si� na panelu aktywnym.
Niekt�re operacje, jak np. kopiowanie, zmiana nazwy
u�ywaj� jako domy�lnego miejsca docelowego katalogu
otwartego w panelu nieaktywnym (nie martw si�, zawsze
zostaniesz poproszony o potwierdzenie takiej operacji). W
celu zasi�gni�cia szerszych informacji zajrzyj do dzia��w
Panele katalog�w, Lewe i prawe menu oraz Menu plik�w.

Mo�esz wywo�ywa� dowolne komendy systemowe po prostu
wpisuj�c je. Wszystko co piszesz pojawia si� w linii
polece� i po naci�ni�ciu klawisza Enter zostanie wykonane
przez Midnight Commandera. Przeczytaj sekcj� Linia pow�oki
i Linia wej�ciowa klawiszy, �eby nauczy� si� wi�cej na ten
temat.

[Mouse Support]
Obs�uga myszy

Midnight Commander obs�uguje mysz. Modu� ten jest
uruchamiany wtedy kiedy korzystasz z terminala xterm(1)
(dzia�a nawet wtedy, kiedy ��czysz si� przez telnet albo
rlogin z innym komputerem z terminala xterm) lub je�li
korzystasz z linuksa na konsoli z zainstalowanym serwerem
gpm(1).

Kiedy klikniesz lewym przyciskiem na panel z katalogami,
plik zostanie wybrany jako aktywny; je�li klikniesz prawym
przyciskiem zostanie on zaznaczony [lub odznaczony - w
zale�no�ci od jego aktualnego stanu - dzia�anie podobne do
klawisza Insert - przyp. t�umacza].

Podw�jne klikni�cie w plik spowoduje wykonanie pliku,
je�li jest on wykonywalny, a je�li rozszerzenie pliku jest
rozpoznawane przez Midnight Commander'a i dost�pny jest
odpowiedni program, jest on uruchamiany.

Mo�liwe jest r�wnie� wykonywanie komend przypisanych
klawiszom funkcyjnym przez klikni�cie w nie.

Je�li klikni�cie odb�dzie si� w rejonie g�rnej lini panelu
z katalogami, zostanie on przewini�ty jedn� stron� wstecz.
Podobnie klikni�cie na doln� ramk� przewija tekst jedn�
stron� do przodu. Ta opcja klikania w ramki dzia�a r�wnie�
przy przegl�daniu pomocy i przy drzewie katalog�w.

Standardowo czas autopowt�rzenia przy klikaniu mysz�
wynosi 400 milisekund. T� warto�� mo�na zmieni� edytuj�c
plik ~/.mc/ini i zmieniaj�c parametr mouse_repeat_rate.

Je�li u�ywasz Midnight Commandera z obs�ug� myszy, mo�esz
"przeszczepia�" kawa�ki tekst�w i u�ywa� standardowych
zastosowa� myszki (kopiowanie i wklejanie) za pomoc�
klawisza Shift.

[Keys]
Klawisze

Niekt�re komendy Midnight Commandera wywo�uje si�
kombinacj� klawiszy Control (czasem opisywanego jako CTRL
lub CTL) lub Meta (opisywanego ALT lub nawet Compose). W
tym manualu (pliku pomocy) b�dziemy u�ywa� nast�puj�cych
kombinacji: C-<klawisz> - znaczy: trzymaj�c klawisz
Control naci�nij <klawisz>. Wi�c C-f b�dzie oznacza�:
trzymaj�c Control, naci�nij f.

M-<klawisz> - znaczy, �e trzymaj�c klawisz Meta lub alt
naciskamy <klawisz>. Je�li na twojej klawiaturze nie ma
ani klawisza Alt ani Meta, naci�nij ESC, pu�� go i wtedy
naci�nij <klawisz> [skutek ten sam, acz jednak u�ycie
troch� mniej przyjemne i bardziej skomlikowane - przyp.
t�umacza].

Wszystkie linie wprowadzaj�ce Midnight Commandera u�ywaj�
w przybli�eniu tych samych przypisa� klawiszy co wersja
GNU edytora Emacs.

Jest wiele sekcji m�wi�cych o klawiszach. Ta nast�puj�ca
jest najwa�niejsza.

Sekcja Menu plik�wFile Menu opisuje skr�ty klawiszowe do komend
pojawiaj�cych si� w menu plik�w. Ta sekcja zawiera funkcj�
klawiszy. Wi�kszo�� z tych komend wywo�uje jak�� akcj�
przede wszystkim na jednym lub kilku wybranych plikach.

Sekcja Panele katalogoweDirectory Panels opisuje klawisze, kt�re
zaznaczaj� plik lub pliki jako docelowe do dalszych
dzia�a� (akcj� jest najcz�ciej jedna z tych
przedstawionych w menu plik�w).

Sekcja Komendy linii polece� wypisuje list� klawiszy,
kt�re s� u�ywane do wprowadzania lub edytowania tekst�w w
wierszu polece�. Wi�kszo�� z nich kopiuje nazwy, i inne
tego typu, z panelu katalog�w do linii polece� (�eby
unikn�� ich przepisywania), lub pozwala zwiedzi� histori�
komend linii polece�.

Klawisze linii wej�ciowych s� u�ywane do edytowania linii
na wej�ciu (przy wpisywaniu). Oznacza, to �e stosuje si�
je zar�wno do linii polece� jak do okien dialogowych.

[Miscellaneous Keys]
Klawisze r�ne

Jest tu kilka klawiszy, kt�re nie kwalifikuj� si� do
�adnej z wymienionych powy�ej grup:

Enter. Je�li jest wpisany jaki� tekst w linii polece� (na
samym dole, pod panelami), to wpisana komenda jest
wykonywana. Je�li nic nie jest wpisane, i linia wyboru
jest na jakim� katalogu, Midnight Commander wykonuje
komend� chdir(2) (zmiana katalogu) do wybranego katalogu i
od�wie�a zawarto�� panelu; je�li linia wyboru jest na
pliku wykonywalnym jest on wykonywany. I wreszcie je�li
rozszerzenie pliku zgadza si� z ob�ugiwanym przez programy
zewn�trzne, kt�re s� obs�ugiwane prze Midnight Commandera,
s� one wywo�ywane z owym programem.

C-l. Od nowa rysuje wszystkie informacje okna Midnight
Commandera.

C-x c. Uruchamia komend� Chmod dla aktualnego pliku lub
zaznaczonych plik�w.

C-x o. Uruchamia komend� Chown dla aktualnego pliku lub
zaznaczonych plik�w.

C-x l. Uruchamia komend� dowi�zywania.

C-x s. Uruchamia komend� mi�kkiego dowi�zywania.

C-x i. Zmienia aktywny panel.

C-x q. Prze�acza nieaktywny panel w tryb "quick view".

C-x !. Wykonuje komend� z zewn�trznego panelu.

C-x h. Uruchamia komend� dodawania katalog�w do hotlisty.

M-!. Uruchamia komend� filtrowanego podgl�du, opisanego w
sekcji Podgl�d.

M-?. Uruchamia komend� szukania pliku.

M-c. W��cza okno dialogowe quick cd (szybkiej zmiany
katalog�w)

C-o. Je�li program jest uruchamiany na konsoli typu Linux
lub FreeBSD lub te� na konsoli xterm, poka�e wyj�cie
ostatnio wykonywanego programu. Je�li uruchomiono Midnight
Commandera na konsoli type Linux, MC u�ywa zewn�trznego
programu (cons.saver) w celu zachowywyania i odzyskiwania
informacji na ekranie komputera.

Je�li u�ycie trybu pow�oki w tle jest wkompilowane, mo�esz
nacisn�� C-o w dowolnej chwili i zostataniesz przeniesiony
z powrotem bezpo�rednio do g��wnego okna Midnight
Commandera, �eby powr�ci� do wykonywania aplikacji po
prostu naci�nij zn�w C-o. Je�li masz zawieszon� aplikacj�
w�a�nie przez u�ycie tego triku, nie b�dziesz m�g�
"odpala�" innych program�w spod Midnight Commandera dop�ki
nie zamkniesz zawieszonego programu.

Aby dowiedzie� si� czego� na temat polskiech liter w
Midnight Commanderze przeczytaj sekcj� Polskie litery.

[Directory Panels]
Panel Katalog�w

Sekcja opisuje klawisze, kt�re operuj� na panelu
katalog�w. Je�li chcesz wiedzie� jak zmieni� panele zobacz
sekcj� Lewe i prawe menu.

Tab, C-i. Zmienia aktywny panel. Stary panel staje si� w
tym momencie aktywnym panelem, a aktywny staje si� starym.
Linia wyboru zmienia swoje po�o�enia do aktywnego panelu.

Insert, C-t. Do zaznaczania plik�w mo�esz u�ywa� klawisza
Insert lub C-t. �eby odznaczy� plik po prostu zaznacz
jaki� ju� zaznaczony.

M-g, M-r, M-j. U�ywane do wybierania najwy�szego,
�rodkowego i najni�szego pliku w panelu.

C-s, M-s. Uruchamia szukanie pliku w katalogu na podstawie
jego nazwy. Kiedy szukanie jest aktywne, ka�de naci�ni�cie
klawisza doda jeden znak do poszukiwania zamiast wypisania
go linii polece�. Je�li opcja "Show mini-status" jest
w��czona, szukany ci�g znak�w pojawia si� w linii
mini-statusu. Kiedy wpisujemy znak, linia wyboru
przemieszcza si� do nast�pnego pliku zaczynaj�cego si� od
podanych liter. Klawisze backspace lub del mog� by�
u�ywane do poprawiania b��d�w. Je�li C-s zostanie
naci�ni�te ponownie, Midnight Commander rozpoczyna
szukanie nast�pnego pliku zaczynaj�cego si� od podanych
znak�w.

M-t. Prze��cza tryb wy�wietlania do nast�pnego mo�liwego.
U�ywaj�c tej opcji �atwo jest przej�� szybko z d�ugiego do
kr�tkiego trybu wy�wietlania jak r�wnie� do tego
zdefiniowanego przez u�ytkownika.

C-\ (control-backslash). Pokazuje hotlist� katalog�w i
zmienia katalog do wybranego przez u�ytkownika.

+ (plus). U�ywane do zaznaczania grupy plik�w. Midnight
Commander zapyta o wyra�enie opisuj�c� grup�. Je�li opcja
Shell Patterns jest w��czona, typ wyra�e� jest bardzo
podobny do tego w pow�oce (* dla zera i wi�cej znak�w i ?
dla jednego znaku). Je�li za� opcja Shell Patterns jest
wy��czona, spos�b zaznaczania plik�w jest zgodny z
ustawieniami (zobacz ed(1)).

Je�li wyra�enie zaczyna si� od uko�nika (/), wtedy
zaznaczone zostan� katalogi zamiast plik�w.

\ (backslash). U�ywaj znak�w "\" do odznaczania grupy
plik�w. Jest to przeciwie�stwo klawisza plus.

strza�ka do g�ry, C-p. Przenosi lini� wyboru do
poprzedniej pozycji w panelu.

strza�ka do do�u, C-n. Przenosi lini� wyboru do nast�pnej
pozycji w panelu.

home, a1, M-<. Przenosi lini� wyboru do pierwszej pozycji
w panelu.

end, c1, M->. Przenosi lini� wyboru do ostatniej pozycji w
panelu.

PageDown, C-v. Przenosi lini� wyboru jedn� stron� do do�u.

PageUp, M-v. Przenosi lini� wyboru jedn� stron� do g�ry.

M-o. Je�li drugi panel jest zwyk�ym panelem wy�wietlaj�cym
i w aktywnym panelu stoisz na katalogu, drugi panel b�dzie
pokazywa� zawarto�� akutalnego katalogu (tak jak w Emacsie
kombinacja C-o). Je�li nie stoisz na katalogu zawarto�ci�
drugiego katalogu stanie si� katalog o jedno pi�tro wy�szy
od aktualnego.

C-PageUp, C-PageDown. Dzia�a tylko na konsoli typu Linux:
wykonuje przej�cie do katalogu ".." lub do aktualnie
wybranego, w zale�no�ci od kombinacji.

M-y. Przenosi do poprzedniego katalogu w historii, podobne
do klikni�cia myszk�. '<'.

M-u. Przechodzi do nast�pnego katalogu w historii, podobne
do klikni�cie myszk� w '>'.

M-S-h, M-H. Wy�wietla histori� katalog�w, podobne
dzia�anie do klikni�cia myszk� 'v'.

[Shell Command Line]
Linia Pow�oki

Ta sekcja opisuje klawisze, kt�re s� u�yteczne do
efektywniejszego wpisywania podczas podawania komend
pow�oki.

M-Enter. Kopiuje nazw� aktualniego wybranego pliku do
linii polece�.

C-Enter. To samo co M-Enter, dzia�a tylko na konsoli typu
Linux.

M-Tab. Wykonuje doko�czenie nazw plik�w, komend,
zmiennych, u�ytkownik�w, nazw host�w za Ciebie.

C-x t, C-x C-t. Kopiuje nazwy zaznaczonych plik�w (lub
je�li nie ma zaznaczonych - aktywnego) w aktywnym (C-x t)
lub nieaktywnym panelu (C-x C-t) do linii polece�.

C-x p, C-x C-p. Pierwsza kombinacja kopiuje pe�n� �cie�k�
z aktywnego, a druga z nieaktywnego panelu.

C-q. Komenda 'quote' (cytuj) mo�e by� u�ywana do
wpisywania do wiersza polece� znak�w, kt�re normalnie
przechwytywane s� przez Commandera (tak jak znak '+').

M-p, M-n. U�ywaj tych klawiszy, �eby przegl�da� histori�
komend. M-p wy�wietla poprzedni�, a M-n nast�pn� komend�.

M-h. Wy�wietla histori� aktualnej linii polece�.

[General Movement Keys]
Podstawowe klawisze ruchu

Przegl�darka pomocy, podgl�d plik�w i drzewo katalog�w
u�ywaj� podobnych klawiszy do przemieszczania. Przez to
akceptuj� dok�adnie te same klawisze. Ka�de z nich z
reszt� traktuj� je jako swoje w�asne.

Niekt�re partie Midnight Commandera r�wnie� u�ywaj� tych
klawiszy, wi�c niniejsza sekcja mo�e by� u�yteczna r�wnie�
dla tych partii.

strza�ka w g�r�, C-p. Przechodzi jedn� lini� wstecz.

strza�ka w d�, C-n. Przechodzi jedn� lini� naprz�d.

Page Up, M-v. Przechodzi jedn� stron� wstecz.

Next Page, Page Down, C-v. Przechodzi jedn� stron�
naprz�d.

Home, A1. Przechodzi do pocz�tku.

End, C1. Przechodzi na koniec.

Przegl�darka pomocy i podgl�d plik�w akceptuj� nast�puj�ce
klawisze (poza tymi opisanymi powy�ej).

b, C-b, C-h, Backspace, Delete. Przechodzi jedn� stron�
wstecz.

klawisz spacji. Przechodzi jedn� stron� naprz�d.

u, d. Przechodzi p� strony naprz�d lub wstecz.

g, G. Przechodzi do pocz�tku lub do ko�ca.

[Input Line Keys]
Linia wej�ciowa klawiszy

Linie wej�ciowe (te u�ywane w linii komend i w oknach
dialogowych), akceptuj� nast�puj�ce klawisze:

C-a. umieszcza kursor na pocz�tku linii.

C-e. umieszcza kursor na ko�cu linii.

C-b, move-left. przenosi kursor o jedn� pozycj� w lewo.

C-f, move-right. przenosi kursor o jedn� pozycj� w prawo.

M-f. przesuwa kursor o jedno s�owo naprz�d.

M-b. przesuwa kursor o jedno s�owo wstecz.

C-h, backspace. kasuje poprzedni znak.

C-d, Delete. kasuje znak w miejscu kursora (nad nim).

C-@. wstawia zaznaczenie do kasowanie (patrz nast�pne
pozycje).

C-w. kopiuje tekst spomi�dzy kursora i zaznaczenia do
bufora i usuwa go z linii polece�.

M-w. to samo co C-w tylko, �e nie usuwa tekstu z linii.

C-y. wstawia spowrotem zawarto�� wyci�tego bufora.

C-k. wycina tekst od kursora do ko�ca linii.

M-p, M-n. U�ywaj tych klawiszy, �eby przegl�da� histori�
komend. M-p wy�wietla poprzedni�, a M-n nast�pn�.

M-C-h, M-Backspace. kasuje jedno s�owo wstecz
(poprzednie).

M-Tab. Wykonuje doko�czenie nazw plik�w, komend,
zmiennych, u�ytkownik�w, nazw host�w za Ciebie.



[Menu Bar]
Linia menu

Linia menu uaktywnia si� kiedy wciskasz klawisz F9 lub
kiedy klikasz myszk� na najwy�szy wiersz ekranu. Linia
menu ma pi�� podmenu: "left", "file", command", "options"
i "right" (po polsku to jest "lewe", "plik", "komendy",
"opcje", "prawe").

Lewe i prawe menu pozwalaj� ci na modyfikacje wygl�du
lewego i prawego panelu katalogowego.

Menu plik pozwala na wykonanie akcji na aktualnym lub
zaznaczonych plikach.

Menu komend mie�ci w sobie mo�liwe do wykonania akcje,
kt�re s� du�o bardziej globalne i nie maj� zwi�zku z
aktualnym i zaznaczonymi plikami.

[Left and Right Menus]
Lewe i prawe menu

Wygl�d panelu katalogowego mo�e zosta� zmieniony poprzez
menu left i right.

[Listing Mode...]
Tryby wy�wietlania (Listing modes)

Tryby wy�wietlania s� u�ywane do zmienia ustawie� przy
wy�wietlaniu. Dost�pne s� cztery r�ne tryby: Full, Brief,
Long i User. Tryb "Full" pokazuje nazw�, rozmiar i czas
modyfikacji pliku.

Tryb "Brief" pokazuje tylko nazw� pliku i ma dwie kolumny
(dzi�ki temu mo�e pokazywa� nawet dwa razy wi�cej ni� inne
tryby). Tryb "Long" jest podobny do wyniku polecenia ls
-l. Zabiera on szeroko�� ca�ego ekranu.

Je�li wybierzesz tryb "user" (u�ytkownika), b�dziesz m�g�
wybra� w�asny spos�b wy�wietlania.

Tryb u�ytkownika musi zaczyna� si� od okre�lenia wielko�ci
panelu. Mo�e to by� "half" (p�) lub "full" (ca�y) i
okre�la, czy ma by� widoczny jeden du�y panel na ca�y
ekran czy dwa mniejsze.

Po rozmiarze panelu mo�esz w��czy� tryb dw�ch kolumn
panelu. Robi si� to dodaj�c liczb� "2" do tekstu formatu.

Po tym wpisujesz ju� nazwy p�l z podaniem opcjonalnej
wielko�ci. Wszystkie mo�liwe pola jakich mo�esz u�y� to:

name    wy�wietla nazw� pliku.

size    wy�wietla wielko�� pliku.

bsize   jest alternatyw� dla format size. Wy�wietla
        rozmiar plik�w, a dla katalog�w po prostu
        wy�wietla tekst "SUB-DIR" lub "UP--DIR".

type    wy�wietla jednoznakowy opis typu pliku. Ten znak
        jest taki sam co ten wy�wietlany prze komend� ls
        z flag� -F. Wy�wietlana jest gwiazdka dla plik�w
        wykonywalnych, uko�nik dla katalog�w, ma�pa (@)
        dla dowi�za�, znak r�wno�ci dla gniazd, minus dla
        urz�dze� niestniej�cych, znak plus dla urz�dze�
        istniej�cych, pionow� kresk� (|) dla kolejek
        FIFO, tyld� dla dowi�za� symbolicznych, i
        wykrzyknik dla dowi�za� wskazuj�cych na
        nieistniej�cy plik.

mark    Gwiazdka je�li plik jest zaznaczony, spacja je�li
        nie jest.

mtime   czas ostatniej modyfikacji pliku.

atime   czas ostatniego dost�pu do pliku.

ctime   czas utworzenia pliku.

perm    tekst reprezentuj�cy aktualne uprawnienia do
        pliku.

mode    warto�� (cyfrowa) przedstawiaj�ca prawa do pliku.

nlink   liczba dowi�za� do pliku. ngid GID (numeryczny).

nuid    UID (numeryczny).

owner   w�a�ciciel pliku.

group   grupa pliku.

inode   numer i-w�z�a pliku.

Mo�esz r�wnie� u�ywa� nast�puj�cych znak�w dla zmiany
wy�wietlania:

space   spacja w formacie wy�wietlania.

|       Ten znak jest u�ywany w celu dodania pionowej
        linii od formatu wy�wietlania.

�eby wymusi� szeroko�� pola, po prostu dodaj ':' a potem
ilo�� znak�w jakie chcesz �eby mia�o pole. Je�li numer
zaczyna si� od '+', to szeroko�� nie mo�e by� mniejsza od
podanej, je�li program zobaczy, �e jest jeszcze troch�
miejsca na ekranie, rozszerzy to pole.

Na przyk�ad tryb Full wy�wietla w formacie:

half type name | size | mtime

A format Long wy�wietla w formacie:

full perm space nlink space owner space group space size
space mtime space name

A to jest ca�kiem �adny tryb u�ytkownika:

half name | size:7 | type mode:3

Panele mog� by� r�wnie� przestawione do nast�puj�cych
tryb�w:

Info    Tryb info wy�wietla informacj� o aktualnie
        zaznaczonym pliku i (je�li to mo�liwe) o systemie
        plik�w.

Tree (drzewo)
        Widok drzewa jest ca�kiem podobny do widoku
        Drzewa katalog�wDirectory Tree. Zobacz t� sekcj� je�li chcesz
        si� dowiedzie� czego� na ten temat.

Quick View
        W tym trybie, panele zostan� prze��czone w tryb
        zredukowanego podgl�du wy�wietlaj�cego zawarto��
        aktualnego pliku. Je�li zaznaczysz panel
        (klawiszem tab lub myszk�), b�dziesz mia� dost�p
        do wi�kszo�ci komend podgl�du.[Sort Order...]
Porz�dek sortowania (Sort order...)

Istnieje osiem porz�dk�w sortowania. Przez: nazw�,
rozszerzenie, dat� modyfikacje, dat� odczytu, dat� zmiany,
rozmiar, numeru i-w�z�a i niesortowane. Porz�dek
sortowanie mo�esz wybra� w oknie dialogowym porz�dku
sortowania. Mo�liwe jest r�wnie� wybranie porz�dku
wstecznego (od ty�u).

Standardowo, katalogi s� sortowane przed plikami, ale mo�e
to by� zmienione przez opcj� Mix all files (mieszaj
wszystkie pliki).

[Filter...]
Filtry (Filter...)

Komenda filtra pozwala ci na podanie rozszerzenia, kt�re
musi by� spe�nione, �eby pliki by�y widoczne (na przyk�ad
*.tar.gz). Niezale�nie od filtru katalalogi i dowi�zania
do katalog�w s� zawsze pokazywane.

[Reread]
Od�wie� (Reread)

Komenda od�wie� od�wie�a widok wszystkich plik�w w
katalog�w. Jest to u�yteczne je�li inny proces stworzy�
lub usun�� jaki� pliki. Je�li u�y�e� panelu zewn�trznego,
wszystkie informacje zostan� przywr�cone do prawdziwego
stanu.[File Menu]
Menu plik�w (File menu)


Midnight Commander u�ywa klawiszy F1 - F10 jako skr�t�w
klawiszowych do komend wyst�puj�cych w menu plik�w. Na
terminalach bez funkcji klawiszowych (F1 - F10) mo�na
u�ywa� kombinacji klawisza Escape i numeru ( odpowiednio 1
dla F1, 2 dla F2 itd. )

Menu plik�w ma nast�puj�ce komendy (skr�ty klawiszowe
umieszczone s� na dole ekranu):

Pomoc (F1)

Wywo�uje wbudowan� przegl�dark� plik�w pomocy. Wewn�trz
niej mo�na u�ywa� klawisza Tab �eby przej�� do nast�pnego
dowi�zania, Enter �eby przej�� do wybranego dowi�zania.
Klawisze Spacji i Backspace s� u�ywane do poruszania si�
naprz�d i wstecz na stronach pomocy. Naci�nij klawisz F1
�eby uzyska� pe�n� list� dost�pnych klawiszy w pomocy.

Menu (F2)

Wywo�uje menu u�ytkownika. Menu u�ytkownika jest �atwym w
u�yciu narz�dziem s�u��cym do obs�ugi zewn�trznych
program�w i dodatkowych opcji Midnight Commandera.

Podgl�d (F3, Shift-F3)

W��cza podgl�d aktualnie wybranego pliku. Standardowowo
wywo�ywany jest wbudowany podgl�d plik�w, ale je�li opcja
"Use internal view" jest wy��czona, wywo�ywany jest
zewn�trzny program do pogl�du, wskazywany przez zmienn�
PAGER. Je�li jednak zmienna PAGER nie zosta�a jeszcze
zdefiniowana, wywo�ywana jest komenda "view". Je�li
u�yjesz kombinacji klawiszy Shift-F3, pogl�d zostanie
wywo�any bez jakiegokolwiek formatownia pliku.

Filtrowany podgl�d (M-!)

Ta kombinacja klawiszy oczekuje na komend� i jej argument
(argumentem standardowo jest wybrany aktualnie plik), ca�e
wyj�cie programu przekierowywane jest do pliku, kt�ry
zostaje automatycznie wy�wietlony na ekranie w trybie
podgl�du.

Edycja (F4)

Aktualnie ta komenda wywo�uje edytor vi(1) lub edytor
wybrany w zmiennej �rodowiskowej, lub wbudowany wewn�trzny
edytor plik�w je�li opcja use_internal_edit jest w��czona.

Kopiuj (F5)

W��cza okno dialogowe, w kt�rym standardowo znajduje si�
�cie�ka do katalogu w nieaktywnym panelu, po czym kopiuje
aktualny plik (lub wybrane je�li wybrano jakiekolwiek) do
katalogu, kt�ry wybrali�my w oknie dialogowym. Podczas
procesu kopiowania mo�esz go w ka�dej chwili przerwa�
wciskaj�c C-c lub Esc. �eby dowiedzie� si� czego� wi�cej
na temat joker�w w �cie�ce �r�d�owej (kt�rymi najcz�ciej
b�d� * lub ^\(.*\)$) i innych mo�liwych okre�le� w
katalogu docelowym zobacz kategori� "Maski
kopiowania/przenoszenia"

Na niekt�rych systemach mo�liwe jest kopiowanie w tle,
robi si� to klikaj�c na przycisk backgorund (lub
naciskaj�c kombinacj� M-b w oknie dialogowym). Background
Jobs jest u�ywane do kontrolowania prac w tle.

Link (C-x l)

Tworzy sztywne dowi�zanie do aktualnego pliku.

SymLink (C-x s)

Tworzy symboliczne dowi�zanie do aktualnego pliku. Dla
tych, kt�rzy nie wiedz� co to jest dowi�zanie: tworzenie
dowi�zania do pliku jest tak jak kopiowanie pliku, z tym
tylko, �e zar�wno plik �r�d�owy i docelowy reprezentuj�
ten sam plik. Na przyk�ad, je�li edytujesz jeden z tych
plik�w, zmiany, kt�re czynisz pojawiaj� si� w obu plikach.
Niekt�rzy m�wi� na dowi�zania aliasy lub skr�ty.

Twarde dowi�zanie wydaje si� by� prawdziwym plikiem. Po
stworzeniu go nie ma mo�liwo�ci rozr�nienia, kt�ry z
plik�w jest oryginalny, a kt�ry jest dowi�zaniem. Jest
bardzo ci�ko zauwa�y�, �e wskazuj� one na ten sam plik.
U�ywaj dowi�za� twardych wtedy kiedy nie chcesz tego
wiedzie�.

Dowi�zanie symboliczne jest tylko odwo�aniem do
oryginalnego pliku. Je�li ten plik zostanie wyrzucony,
dowi�zanie stanie si� bezu�yteczne. Jest ca�kiem �atwo
zauwa�y�, �e pliki odnosz� si� w gruncie rzeczy do tego
samego. Midnight Commander pokazuje znak "@" przed nazw�
pliku je�li jest dowi�zaniem symbolicznym do innych (poza
katalogami, przed kt�rymi pokazuje tyld� (~)). Oryginalny
plik wskazywany przez dowi�zanie jest pokazywany w linii
mini-statusu, je�li opcja "Show mini-status" jest
w��czona. U�ywaj dowi�za� symbolicznych, je�li chcesz
unik�� problem�w z rozpoznawaniem twardych dowi�za�.

Zmiana nazwy/przeniesienie (F6)

W��cza okno dialogowe, gdzie standardowo wpisana jest
nazwa katalogu w nieaktywnym panelu, i przenosi aktualnie
wybrany plik (lub zaznaczone je�li cho� jeden jest
zaznaczony) do katalogu wpisanego w oknie dialogowym.
Podczas procesu przenoszenia mo�esz u�y� kombinacji
klawiszy C-c lub ESC, �eby przerwa� operacj�. Po wi�cej
szczeg��w zobacz operacj� Kopiuj opisan� powy�ej.
Wi�kszo�� rzeczy jest ca�kiem podobna.

Na niekt�rych systemach mo�liwe jest przenoszenie w tle,
robi si� to klikaj�c na przycisk background (lub
naciskaj�c kombinacj� M-b w oknie dialogowym). Background
Jobs jest u�ywane do kontrolowania prac w tle.

"Utw�rz katalog (F7)"

W��cza menu dialogowe i zak�ada katalog o podanej nazwie

Kasuj (F8)

Kasuje aktualnie wybrany lub zaznaczone pliki w aktywnym
panelu. Podczas procesu mo�esz nacisn�� C-C lub Esc �eby
przerwa� operacj�. [skasowane pliki nie b�d� jednak
odzyskane - przyp. t�umacza].

Zaznacz grup� (+)

U�ywane do zaznaczania grupy plik�w. Midnight Commander
b�dzie ��da� tekstu opisuj�cego grup� plik�w. Je�li opcja
Shell Patterns jest w��czona, tekst b�dzie traktowany jako
globalny dla interpretatora (* oznacza zero lub wi�cej
znak�w a ? oznacza jeden znak). Je�li opcja Shell Patterns
jest wy��czona, wtedy zaznaczanie plik�w jest robione z
zastosowaniem norm zewn�trznych (zobacz ed (1)).

�eby zaznaczy� katalogi zamiast plik�w, tekst musi
zaczyna� sie od znaku '/'.

Odznacz grup� (\)

U�ywane do odznaczania grupy plik�w. Jest przeciwie�stwem
komendy Zaznacz pliki.

Wyjd� (F10, Shift-F10)

Zamyka Midnight Commandera. Shift-F10 jest u�ywany je�li
u�ywasz "wrappera" pow�oki. Shift-F10 nie przeniesie ci�
do katalogu, w kt�rym by�e� ostatnio w Midnight
Commanderze, zamiast tego przejdzie do katalogu, z kt�rego
uruchomi�e� program.

[Quick cd]
Szybka zmiana katalog�w (Quick cd) M-c

Ta komenda jest bardzo u�yteczna, je�li masz ju� pe�n�
lini� polece�, a chcesz przej�� do innego katalogu.
Uruchamia ona ma�e okno dialogowe, w kt�rym podajesz to co
po normalnej komendzie cd po czym naciskasz Enter.
Wszystkie opcje s� dok�adnie takie same jak we wbudowanej
komendzie cd.

[Command Menu]
Menu komend (Command Menu)

Komenda drzewo katalog�w (Directory tree) pokazuje drzewo
katalog�w.

Komenda "Find file" szuka pliku spe�niaj�cego podane
warunki, natomiast komenda "Swap panels" zamienia
zawarto�ci obu paneli.

Komenda "Panels on/off" pokazuje wyj�cie ostatniej komendy
interpetatora polece�. Dzia�a ona tylko na terminalach
typu Linux lub FreeBSD.

Komenda por�wnywania katalog�w (Compare directories) (C-x
d) por�wnuje zawarto�ci panelu katalogowego z drugim.
Mo�esz potem u�yc Kopiuj (F5) �eby stworzy� dwa dok�adnie
identyczne panele. Metoda "quick" por�wnuje tylko i
wy��cznie rozmiary plik�w i ich daty. Metoda "thorough"
por�wnuje pliki bajt po bajcie. Ta metoda dzia�a tylko
wtedy kiedy komputer obs�uguje wywo�anie mmap(2). Metoda
"size-only" zwraca uwag� tylko na rozmiar plik�w. Nie ma
dla niej �adnego znaczenia czy plik ma inn� dat� lub
zawarto��, liczy si� tylko rozmiar.

Komenda historii komend (Command history) pokazuje list�
wpisanych komend. Ta, kt�r� wybierzesz, jest kopiowana do
linii polece�. Do historii komend mo�na mie� dost�p
r�wnie� przy u�yciu kombinacji M-p lub M-n.

Komenda hotlisty katalog�w (Directory hotlist) (C-\)
pozwala na zmienianie katalog�w do tych najcz�ciej
u�ywanych du�o szybciej.

Komenda panelu zewn�trznego (External panelize) pozwala na
wykonywania program�w zewn�trznych i ustawienia zawarto�ci
paneli na to co zwr�ci�a wywo�ana komenda.

Komenda edycji rozszerze� plik�w (Extension file edit)
pozwala na w�asny wyb�r program�w, kt�re maj� by� u�ywane
do wykonywania plik�w z podanymi rozszerzeniami. Komenda
edycji pliku menu (Menu file edit) mo�e by� u�ywana do
edytowania menu u�ytkownika (tego, kt�re pojawia si� po
naci�ni�ciu kombinacji F2).

[Directory Tree]
Drzewo katalog�w (Directory Tree)

Mo�esz wybiera� katalogi z drzewa katalog�w i Midnight
Commander przejdzie do wybranego przez Ciebie katalogu.

S� dwa sposoby wywo�ywania drzewa. Prawdziwa komenda
drzewa katalog�w jest dost�pna z menu komend. Inn� metod�
jest wybranie drzewa z menu "lewego" b�d� "prawego".

�eby nie mie� zbyt du�ych op�nie� Midnight Commander
skanuje tylko ma�� ilo�� katalog�w (t� potrzebn� w danej
chwili). Je�li jakiego� katalogu nie wida� przejd� do jego
katalogu nadrz�dnego i naci�nij C-r (lub F2).

Mo�esz u�ywa� nast�puj�cych klawiszy:

Generalne klawisze ruchu s� akceptowane.

Enter. W drzewie katalog�w, wychodzi z trybu drzewa i
przechodzi zn�w do trybu zwyk�ego panelu. W podgl�dzie
drzewa zmienia katalog w drugim panelu i zostaje w trybie
podgl�du drzewa w panelu aktywnym.

C-r, F2 (Rescan). Od�wie�a aktualny katalog. U�ywane je�li
drzewo nie jest ju� aktualne. Nie pokazuje katalog�w,
kt�re ju� istniej� lub pokazuje te, kt�rych ju� nie ma.

F3 (Forget). Usuwa aktualny katalog z drzewa katalog�w.
U�ywaj tego je�li chcesz usun�� "�miec�ce" i niepotrzebne
katalogi z wy�wietlania. �eby by�y one zn�w widoczne
wystarczy nacisn�� F2.

F4 (Static/Dynamic). Prze��cza pomi�dzy dynamicznym
(standardowo) i statycznym trybem nawigacji.

W trybie statycznym mo�esz u�ywa� strza�ek do do�u i do
g�ry do wybierania katalogu. Wszystkie zwiedzone katalogi
s� widoczne.

W trybie dynamicznym mo�esz u�ywa� strza�ek w celu
wybrania r�wnorz�dnego katalogu, strza�ki w lewo �eby
dosta� si� do katalogu domowego, strza�ki w prawo w celu
dostania si� do katalogu podrz�dnego. Widoczne jest tylko
najbardziej aktualne drzewo katalog�w. Drzewo zmienia si�
wi�c dynamicznie podczas twojego przemieszczania.

F5 (Copy). Kopiuje katalog.

F6 (RenMov). Przenosi katalog.

F7 (Mkdir). Tworzy nowy katalog poni�ej aktualnego.

F8 (Delete). Kasuje katalog z systemu plik�w.

C-s, M-s. Szuka nat�pnego katalogu spe�niaj�cego podane
warunki szukania. Je�li taki nie istnieje te klawisze
spowoduj� przemieszczenie si� o jedn� lini� w d�.

C-h, Backspace. Kasuje ostatni znak w ci�gu znak�w do
poszukiwania.

Jakikolwiek inny klawisz. Dodaje klawisz do ci�gu znak�w
do szukania i przenosi do najbli�szego katalogu, kt�rego
nazwa zaczyna si� od tych znak�w. W podgl�dzie drzewa
musisz najpierw uaktywni� szukanie naciskaj�c C-s. Ci�g
szukaj�cy jest pokazywany w linii mini-statusu.

Nast�puj�ce klawisze s� dost�pne tylko w drzewie
katalog�w. Nie dzia�aj� one w pogl�dzie katalog�w.

F1 (Help). Wywo�uje podgl�d pomocy i pokazuje t� sekcj�.

Esc, F10. Wychodzi z drzewa. Nie zmienia katalog�w.

Mysz jest obs�ugiwana. Podw�jne klikni�cie ma znaczenie
identyczne do klawisza Enter. Zobacz r�wnie� sekcj�
Obs�uga myszy.

[Find File]
Znajd� plik (Find File)

Komenda znajd� plik najpierw pyta si� o startowy katalog
do przeszukiwania i o nazw� pliku, kt�ry ma by�
znaleziony. Wciskaj�c przycisk "Tree" (drzewo) mo�esz
wybra� katalog startowy z drzewa katalog�w.

Pole trzecie akceptuje wszystkie wyra�enia podobne do tych
w egrep(1). Oznacza to, �e musisz rozpoczyna� znaki o
specjalnym znaczeniu kombinacj� "\" np. szukaj�c "strcmp
(" b�dziesz musia� wpisa� "strcmp \(" (bez cudzys�ow�w
oczywi�cie).

Mo�esz zacz�� przeszukiwanie naciskaj�c przycisk Ok.
Podczas szukania mo�esz zatrzyma� proces przy u�yciu
przycisku Stop i kontynuowa� po naci�ni�ciu Startu.

Mo�esz przegl�da� liste znalezionych plik�w za pomoc�
strza�ek do do�u i do g�ry. Komenda Chdir przejdzie do
katalogu aktualnie wybranego. Przycisk Again zapyta si� o
nowe parametry do szukania (rozpocznie proces od nowa).
Przycisk Quit ko�czy przeszukiwanie. Przycisk Panelize
umie�ci znalezione pliki w aktywnym panelu katalogowym
tak, �e b�dziesz m�g� wykonywa� na nich standardowe
czynno�ci (podgl�d, kopiowanie, przenoszenie, kasowanie
itp.). Po spanelizowaniu wystarczy naci�n�� C-r �eby
powr�ci� do normalnego trybu.

Mo�liwe jest posiadanie listy katalog�w, kt�rych szukanie
plik�w nie powinno uwzgl�dnia� (na przyk�ad mo�esz chcie�
omin�� przeszukiwanie CDROMu i innych podmontowanych
system�w plik�w).

Katalogi do omijania powinny by� umieszczone w zmiennej
find_ignore_dirs w sekcji Misc twojego pliku ~/.mc/ini.

Sk�adowe katalog�w powinny by� oddzielone od siebie przez
�redniki, to jest przyk�ad:

[Misc]
find_ignore_dirs=/cdrom:/nfs/wuarchive:/afs

Mo�esz wole� u�ywa� panelu zewn�trznego do wykonywania
niekt�rych operacji. Szukanie pliku jest dobre tylko dla
prostych zapyta�. U�ywaj�c panelu zewn�trznego mo�esz
dokonywa� tak skomplikowanych wyszukiwa� jak tylko
pragniesz.

[External panelize]
Panel zewn�trzny

Panel zewn�trzny pozwala ci na wykonywanie zewn�trznych
program�w i ogl�danie ich wyj�cia jako zawarto�ci
aktywnego panelu.

Na przyk�ad, je�li chcesz aby w aktywnym panelu
wy�wietlone zosta�y wszystkie dowi�zania w aktywnym
katalogu, mo�esz u�y� panelu zewn�trznego i nast�puj�cej
komendy:

find . -type l -print
Zanim komenda zako�czy dzia�anie, zawarto�� katalog�w nie
b�dzie ju� d�u�ej zawarto�ci� aktualnego katalogu, ale
wszystkie pliki b�d� symbolicznymi dowi�zaniami.

Je�li chcesz wy�wietli� wszystkie pliki, kt�re �ci�gn��e�
ze swoich serwer�w ftp, mo�esz u�y� tej komendy awk �eby
wypisa� nazw� pliku z log�w transferu:

awk '$9 ~! /incoming/ { print $9 }' < /usr/adm/xferlog

Mo�esz zapisa� sobie cz�sto u�ywane komendy pod jak��
nazw�, po to �eby m�c ich potem u�ywa� du�o �atwiej.
Robisz to po prostu wpisuj�c komend� w linii wej�ciowej, a
potem naciskaj�� przycisk Add. Potem wpisujesz nazw�, pod
jak� ta komenda ma by� widoczna. Nast�pnym razem po prostu
wybierasz t� komend� z listy i nie musisz ju� wpisywa� jej
ponownie.

[Hotlist]
Hotlist

Hotlista katalog�w pokazuje nazwy katalog�w wprowadzonych
do hotlisty. Midnight Commander zmieni miejsce do tego,
kt�re wskazuje nazwa katalogu. Z hotlisty mo�esz wyrzuca�
ju� dodane pozycje par nazw/wskaza� i dodawa� nowe. Dla
dodawania mo�esz wykorzysta� kombinacj� (C-x h), kt�ra
dodaje �cie�k� aktualnego katalogu do hotlisty. U�ytkownik
musi tylko poda� pod jak� nazw� ma by� ten katalog
widoczny.

Powoduje to przechodzenie do cz�ciej przegl�danych
katalog�w znacznie szybciej. Mo�esz u�ywa� ci�gle warto�ci
CDPATH opisanej w sekcji Wewn�trzne przemieszczanie.

[Extension File Edit]
Edycja rozszerze� pli�w (Extension File Edit)

Ta komenda wywo�a tw�j edytor na plik ~/.mc/bindings.
Format tego pliku jest nast�puj�cy (zmieni� si� on
pocz�wszy od wersji 3.0):

Wszystkie linie zaczynaj�ce si� od #, lub puste, nie s�
brane pod uwag�.

Linie zaczynaj�ce si� od pierwszej kolumny powinny mie�
nast�puj�cy format:

s�owo kluczowe/wzorzec, tj. wszystko po s�owie kluczowym/
dop�ki now� lini� nie jest wzorzec

s�owami kluczowymi mog� by�:

shell

        (wzorzec jest wtedy wyra�eniem (bez joker�w), tj.
        pasuj� wszystkie pliki *wzorzec. Np.: .tar znaczy
        *.tar)

regex

        (wzorzec jest normalnym wyra�eniem)

type

        (plik spe�nia wymagania je�li `file %f` zgadza
        si� z wyra�eniem wzorca (nazwa: cz�� z `file %f`
        jest usuwana))

default

        (wszystkie pliki spe�niaj�, nie wa�ne jaki jest
        wzorzec)

Inne linie powinny zaczyna� si� od spacji lub tabulacji i
powinny mie� one nast�puj�cy format:

s�owo kluczowe=komenda (bez spacji przy znaku =), gdzie
s�owem kluczowym powinno by�:

Open (Otw�rz) (je�li u�ytkownik naci�nie Enter lub kliknie
dwukrotnie), View (Podgl�d) (F3), Edit (Edytuj) (F4).

command jest jak�kolwiek jedn� lini� pow�oki, z
zastosowaniem prostego makra.

Cele s� przeliczane od g�ry do do�u (porz�dek jest tu
istotny). Je�li jakiej� akcji brakuje, poszukiwanie
kontynuuje si� tak jakby wcze�niej nie nast�pi�a �adna
zgodno�� (tj. je�li zgadza si� z wzorcem pierwszym i
trzecim i brakuje w pierwszym akcji View, to naciskaj�c F3
u�yta b�dzie akcja z trzeciego wzorca). Opcja default
powinna wychwyci� wszystkie mo�liwe akcje.

[Background Jobs]
Prace w tle (Background jobs)

Pozwalaj� ci one kontrolowa� status jakichkolwiek proces�w
wykonywanych w tle przez Midnight Commandera (tylko
operacje kopiowania i przenoszenia, mog� by� wykonywane w
tle). Z tego menu mo�esz zastopowa�, zresetowa� i "zabi�"
proces w tle.

[Menu File Edit]
Edycja menu u�ytkownika (Menu File Edit)

Menu u�ytkownika jest bardzo u�ytecznym menu, kt�re mo�e
by� tworzone w spos�b dowolny, przez u�ytkownika. Kiedy
tylko pr�bujesz co� zrobi� przy u�yciu tego menu, �adowany
jest plik .mc.menu z aktualnego katalogu, ale tylko wtedy
kiedy jest on w posiadaniu u�ytkownika lub roota i mamy do
niego prawa zapisu. Je�li takiego nie ma pr�buje si� z
plikiem ~/.mc/menu z tymi samymi za�o�eniami, je�li jego
te� nie ma - u�ywa si� standardowego pliku systemowego,
kt�ry znajduje si� w
/home/john/prjroot/rootfs/usr/share/mc/mc.menu.

Format pliku z menu u�ytkownika jest bardzo prosty. Linie
zaczynaj�ce si� od czegokolwiek innego ni� spacja lub
tabulacja, s� traktowane jako wtyczki do menu (aby m�c
u�ywa� ich potem jako gor�cych klawiszy, dobrze jest aby
pierwszy znak by� liter�). Wszystkie linie zaczynaj�ce od
spacji lub tabulacji, s� komendami, kt�re maj� by�
wykonane je�li wtyczka zostanie wybrana.

Kiedy opcja zostaje wybrana, wszystkie komendy nale��ce do
tej opcji kopiowane s� do pliku w katalogu tymczasowym
(najcz�ciej do /usr/tmp), a potem plik jest wykonywany.
Pozwala to u�ytkownikowi wk�ada� normalne konstrukcje
pow�oki do konstrukcji kodu wykonywanego. Po wi�cej
informacji zobacz, u�ywania makr.

To jest przyk�adowy plik mc.menu:

A	Wyrzu� aktualny plik.
	od -c %f

B	Stw�rz raport o b��dzie i wy�lij do roota.
	I=`mktemp ${MC_TMPDIR:-/tmp}/mail.XXXXXX` || exit 1
	vi $I
	mail -s "B��d Midnight Commandera" root < $I
	rm -f $I

M	Przeczytaj poczt�.
	emacs -f rmail

N	Przeczytaj grup� dyskucyjn�.
	emacs -f gnus

J	Skopiuj rekursywnie ca�y aktualny katalog.
	tar cf - . | (cd %D && tar xvpf -)

= f *.tar.gz | f *.tgz & t n
X       Zdekompresuj skompresowany plik tar.
	tar xzvf %f

Standardowe warunki

Ka�da opcja mo�e by� opatrzona w warunki. Warunek musi
zaczyna� si� od pierwszej kolumny i od znaku '='. Je�li
warunek jest prawdziwy, opcja stanie si� opcj� domy�ln�.

Sk�adnia warunku: 	= <warunek>
	    lub:	= <warunek> | <warunek> ...
	    lub:	= <warunek> & <warunek> ...

Warunek jest jednym z nast�puj�cych:

  f <wzorzec>           aktualny plik zgodny z wzorcem?
  F <wzorzec>           plik w drugim panelu zgodny z wzorcem?
  d <wzorzec>           aktualny katalog spe�niaj�cy wzorzec?
  D <wzorzec>           katalog w drugim panelu spe�niaj�cy wzorzec?
  t <typ>               aktualny pliku typu typ?
  T <typ>               plik w drugim panelu typu typ?
  ! <warunek>           zaprzeczenie warunku

Wzorzec jest normalnym wzorcem pow�oki lub wyra�eniem,
podobnym do wzorca pow�oki. Mo�esz zmieni� globalne
ustawienia wzorc�w pow�oki pisz�c "shell_patterns=x" w
pierwszej linii menu u�ytkownika (x jest r�wne 0 lub 1).

Typ jest jednym lub wi�cej z podanych znak�w:

  n	nie katalog
  r	zwyk�y plik
  d	katalog
  l	dowi�zanie
  c	specjalny znak
  b	specjalny blok
  f	fifo
  s	gniazdo
  x	wykonywalny
  t	zaznaczony

Na przyk�ad 'rlf' oznacza zwyk�y plik, dowi�zanie lub
fifo. Typ 't' jest troch� odmienny poniewa� dotyczy panelu
a nie pliku. Warunek '=t t' jest prawdziwy je�li s� jakie�
zaznaczone pliki w aktywnym panelu, a fa�szywy je�li nie
ma.

Je�li warunek rozpoczyna si� od '=?' zamiast '=' droga
przechodzenia przez warunki b�dzie pokazywana za ka�dym
razem kiedy warunek b�dzie obliczany [przydatne do
wyszukiwania b��d�w - przyp. t�umacza].

Warunki s� obliczane od lewej do prawej. Oznacza to, �e
	= f *.tar.gz | f *.tgz & t n
jest liczone tak samo jak
	( (f *.tar.gz) | (f *.tgz) ) & (t n)

To jest prosty przyk�ad zastosowania tych warunk�w:

= f *.tar.gz | f *.tgz & t n
L	Listuje zawarto�� skompresowanego archiwum tar
	gzip -cd %f | tar xvf -

Warunki dodania

Je�li warunek rozpoczyna si� od znaku '+' (lub '+?')
zamiast od '=' (lub '=?') jest to warunek dodania. Je�li
warunek jest prawdziwy, opcja menu b�dzie do��czona do
menu. Je�li nie jest prawdziwy, nie b�dzie ona w nim
zawarty.

Mo�esz ��czy� ze sob� standardowe i dodane warunki
zaczynaj�c warunek od kombinacji '+=' lub '=+' (lub '+=?'
lub '=+?' je�li chcesz zobaczy� tras� b��d�w). Je�li
chcesz u�y� r�nych warunk�w, dodanego i standardowego,
mo�esz poprzedzi� wpis menu dwoma wierszami warunkowymi.
Jednym zaczynaj�cym si� od znaku '+', a drugim od '='.

Wszelkie komentarze rozpoczynaj� si� od znaku '#'.

[Options Menu]
Menu opcji (Options Menu)

Midnight Commander ma niekt�re opcje, kt�re mog� by�
w��czane lyb wy��czane w r�nych oknach dialogowych z tego
menu. Opcja jest w��czona je�li widnieje przed ni�
gwiazdka lyb "x".

Komenda Configuration w��cza okno dialogowe, z kt�rego
mo�esz zmieni� wi�kszo�� ustawie� Midnight Commandera.

Menu Layout pozwala na zmian� wielu ustawie�, kt�re maj�
znacz�cy wp�yw na to jak MC b�dzie wygl�da� na ekranie.

Menu Confirmation w��cza okno dialogowe, w kt�rym mo�esz
ustawi� przy wykonaniu kt�rych operacji chcesz by� pytany
o potwierdzenie.

Menu Display bits pozwala okre�li� jakiego typu znaki tw�j
terminal jest w stanie wy�wietli�.

Menu Learn Keys pokazuje okno dialogowe, w kt�rym mo�esz
pozna� kt�re klawisze nie dzia�aj� i w razie problem�w
naprawi� to.

Menu Virtual FS pokazuje okno, w kt�rym mo�esz zmieni�
niekt�re ustawienia dotycz�ce system�w VFS.

Komenda Save Setup zachowuje wszystkie ustawienia z menu
Lewego, Prawego i Opcji.

[Configuration]
Konfiguracja

Opcje w tym oknie s� podzielone na trzy grupy: opcje
panelu (Panel Options), zatrzymaj po uruchomieniu (Pause
after run) i inne opcje (Other Options).

Opcje panelu

Show Backup Files. Standardowo Midnight Commander nie
wy�wietla plik�w ko�cz�cych si� znakiem '~' (tak jak
komenda ls -B w wersji GNU).

Show Hidden Files. Standardowo Midnight Commander
wy�wietla wszystkie pliki zaczynaj�ce si� od kropki (tak
jak ls -a).

Mark moves down. Standardowo kiedy zaznaczasz plik
(zar�wno przy u�yciu C-t lub klawisza Insert) linia wyboru
przenosi si� o jedno w d�.

Drop down menus. Kiedy ta opcja jest w��czona, kiedy
naciskasz klawisz F9 menu b�dzie aktywowane, w przeciwnym
wypadku zostaniesz tylko przeniosiony do tytu��w w tym
menu i b�dziesz musia� wybra� opcj� r�cznie przy u�yciu
strza�ek b�d� te� przy u�yciu pierwszej litery z nazwy
konkretnego menu.

Mix all files. Je�li ta opcja jest w��czona, wszystkie
pliki i katalogi s� pomieszane razem. Je�li za� jest
wy��czona, katalogi (i dowi�zania do nich), s� listowane
na pocz�tku a pozosta�e pliki dopiero za nimi.

Fast directory reload. Standardowo ta opcja jest
wy��czona. Je�li j� w��czysz Midnight Commander b�dzie
u�ywa� triku do sprawdzenia czy zawarto�� katalogu si�
zmieni�a. Trik polega na tym, �e sprawdza si� i-w�ze�
katalogu i je�li si� on zmieni� to katalog jest �adowany
na nowo. Oznacza to prze�adowywanie zawarto�ci panelu
tylko wtedy, kiedy tworzysz lub kasujesz pliki. Je�li
robisz inne zmiany (rozmiaru, w�a�ciciela, uprawnie�,
grupy itp.) b�dziesz musia� r�cznie prze�adowa� widok (np.
u�ywaj�c kombinacji klawiszy C-r).

Zatrzymaj po uruchomieniu

Po wykonaniu komendy, Midnight Commander mo�e zrobi�
pauz�, po to aby� m�g� spokojnie przejrze� wyj�cie
ostatniej komendy. S� trzy mo�liwe warto�ci dla tej
zmiennej:

        Nigdy (Never) Oznacza, �e nie chcesz widzie�
        wyj�cia twojej komendy. Je�li u�ywasz termianala
        typu Linux lub FreeBSD czy te� xterm, b�dziesz
        m�g� jednak zobaczy� jej wyj�cie naciskaj�c C-o.

        "On dumb terminals" B�dziesz mia� pauz� po
        uruchomieniu na terminalach, kt�re nie s� w
        stanie pokazywa� widoku ostatniej komendy (na
        wszystkich terminalach, kt�re nie s� xtermami lub
        Linux).

        Zawsze (Always) Program zatrzyma si� po wykonaniu
        ka�dej z twoich komend.

Inne opcje

Operacje weryfikacji (Verbose operation). Prze��cza czy
podczas kopiowania, kasowania, przenoszenia plik�w ma by�
pokazywane okno dialogowe pokazuj�ce stopie�
zaawansowania. Je�li masz powolny terminal, mo�esz chcie�
wy��czy� weryfikacj�. Jest to wykonywane automatycznie za
ciebie je�li tw�j terminal jest wolniejszy ni� 9600 bps.

Zliczaj wszystko (Compute totals). Je�li ta opcja jest
w��czona, Midnight Commander zlicza wszytkie bajty plik�w,
kt�re s� przeznaczone do kopiowania, przenoszenia,
kasowania. Spowoduje to wy�wietlanie du�o bardziej
zaawansowanego wska�nika post�pu w zamian zmiejszaj�c
troch� pr�dko��. Ta opcja nie ma �adnego znaczenia je�li
opcja Verbose operation jest wy��czona.

Wzorce pow�oki (Shell patterns). Standardowo komendy
zaznacz (Select), odznacz (Unselect), i filtruj (Filter)
b�d� u�ywa� wyra�e� takich samych jak pow�oka. Oznacza to,
�e gwiazdka oznacza zero lub wi�cej znak�w, znak zapytania
dok�adnie jeden znak, a ka�dy inny znak sam siebie. Je�li
ta opcja jest wy��czona, stosowane s� te, kt�rych u�ywa w
komenda ed(1).

Auto Save Setup. Je�li ta opcja jest w��czona, kiedy
wychodzisz z Midnight Commandera konfiguracja MC zostanie
zachowana automatycznie (bez pytania) do pliku ~/.mc/ini.

Auto menus. Je�li ta opcja jest w��czona, menu u�ytkownika
b�dzie w��czone na starcie. U�yteczne do budowania menu
dla nie unixowc�w.

U�ywaj wewn�trznego edytora (Use internal editor). Je�li
ta opcja jest w��czona, do edycji plik�w u�ywany jest
wbudowany edytor plik�w. Je�li ta opcja jest wy��czona,
u�ywany b�dzie edytor wybrany w zmiennej EDITOR. Je�li
�aden edytor nie zosta� wybrany, u�ywany b�dzie vi(1).
Zobacz sekcj� Wewn�trzny edytor plik�w.

U�ywaj wewn�trznego podgl�du (Use internal viewer). Je�li
ta opcja jest w��czona, wbudowany podgl�d pliku jest
u�ywany do ogl�dania pliku. Je�li ta opcja jest wy��czona,
u�ywany jest podgl�d wybrany w zmiennej PAGER. Je�li �aden
podgl�d nie zosta� wybrany, wywo�ywana jest komenda view.
Zobacz sekcj� Wbudowany podgl�d plik�w.

Doka�czanie: poka� wszystkie (Complete: show all).
Standardowo Midnight Commander pokazuje wszystkie mo�liwe
doko�czenia je�li jest ich wi�cej, kiedy naci�niesz drugi
raz klawisz M-Tab, za pierwszym razem, po prostu doka�cza
to na ile mo�na i wydaje kr�tki d�wi�k. Je�li chcesz
widzie� wszystkie mo�liwo�ci po pierwszym naci�ni�ciu
M-Tab w��cz t� opcj�.

Obrotowy my�lnik (Rotating dash). Je�li ta opcja jest
w��czona, Midnight Commander b�dzie pokazywa� obracaj�cy
si� my�lnik w lewym g�rnym rogu, je�li b�dzie akurat w
trakcie wykonywania jakiego� procesu.

Lynx-like motion. Je�li ta opcja jest w��czona, mo�esz
u�ywa� strza�ek przemieszczenia �eby automatycznie
zmienia� katalog je�li aktualnie wybrany katalog jest
podkatalogiem, a linia polece� jest pusta. Standardowo ta
opcja jest wy��czona.

Dowi�zania pod��aj�ce cd (Cd follows links). Ta opcja,
je�li jest w��czona, zmusza Midnight Commandera �eby
pod��a� za �a�cuchem katalog�w przy zmienianiu go w panelu
czy za pomoc� komendy cd. To jest standardowe zachowanie
basha. Je�li jest wy��czona, Midnight Commander pod��a za
prawdziw� struktur� katalog�w, wi�c cd .. je�li wszed�e�
do katalogu poprzez dowi�zanie, przeniesie ci� do
prawdziwego katalogu na dysku, a nie tam gdzie wskazywa�o
dowi�zanie.

Bezpieczne kasowanie (Safe delete). Je�li ta opcja jest
w��czona, nieumy�lne kasowanie plik�w stanie si� du�o
trudniejsze. Standardowy wyb�r w linii potwierdzenia
zmienia si� z "Yes" na "No". Standardowo ta opcja jest
wy��czona.

[Layout]
Wygl�d (Layout)

Meny wygl�d pozwala ci na r�ne warianty zmieniania
og�lnego wygl�du zewn�trznego ekranu. Mo�esz wybra�, czy
linia menu, linia polece�, linia hint�w (pomocy) i linia
klawiszy funkcyjnych maj� by� widoczne. Na konsolach typu
Linux lub FreeBSD mo�esz wybra� ile linii ma by�
pokazywanych na wyj�ciu okna.

Reszta powierzchni ekranu jest u�ywana przez dwa panele
katalogowe. Mo�esz wybra� nawet czy panele maj� by�
u�o�one poziomo czy pionowo. Kolejn� mo�liwo�ci� jest
zmiana ich standardowej szeroko�ci (b�d� wysoko�ci). Jest
ona standardowo r�wna, ale mo�na to zmieni�.

Standardowo ca�a zawarto�� panelu katalogowego jest
wy�wietlana t� sam� barw�, ale mo�esz zmieni� to tak aby
uprawnienia i typy plik�w by�y wy�wietlane specjalnym
pod�wietlonym kolorem. Je�li pod�wietlanie uprawnie� jest
w��czone, cz�� p�l (ta z uprawnieniami i typami plik�w)
b�dzie pod�wietlona przy u�yciu koloru wybranego jako
selected. Je�li pod�wietlanie jest w��czone, pliki s�
kolorowane w zale�no��i od swojego typu (np. katalogi,
pliki typu core, wykonywalne, ...).

Je�li opcja Show Mini-Status jest w��czona, jeden wiersz
informacji statusowych na temat aktualnie wybranej rzeczy
w panelu, b�dzie pokazany na dole panelu.

[Confirmation]
Potwierdzanie (Confirmation)

W tym menu mo�esz skonfigurowa� opcje potwierdzania dla
kasowania, zast�powania, wykonywania przez naci�ni�cie
klawisza Enter, jak r�wnie� wychodzenia z programu.

[Display bits]
Wy�wietlanie znak�w (Display bits)

U�ywane do konfigurowania zakresu znak�w widocznych potem
na ekranie. To ustawienie mo�e by� 7-bitowe je�li tw�j
terminal obs�uguje tylko siedmiobitowe wyj�cie, ISO-8859-1
wy�wietla wszystkie znaki z mapy ISO-8859-1 a pe�ny 8
bitowy przeznaczony jest dla tych terminali, kt�re radz�
sobie z wy�wietlaniem znak�w o�miobitowych.

Zobacz sekcj� Polskie znaki, po wi�cej szczeg��w na temat
ich u�ywania w Midnight Commanderze.

[Learn keys]
Nauka klawiszy (Learn keys)

W tym oknie mo�esz przetestowa� czy twoje klawisz F1-F20,
Home, End itp. pracuj� poprawnie na twoim terminalu.
Cz�sto nie dzia�aj� tak, poniewa� bazy danych terminali s�
poniszczone.

Przemieszcza� si� mo�esz za pomoc� klawisza Tab, za pomoc�
klawiszy ruchu edytora vi ('h' lewo, 'j' d�, 'k' g�ra i
'l' prawo) i po tym jak ju� raz naci�niesz dan� strza�k�
(zaznaczy si� ona na OK), za ich pomoc� r�wnie�.

Klawisze testujesz po prostu naciskaj�c ka�dy z nich. Jak
tylko naci�niesz klawisz i pracuje on zupe�nie poprawnie,
obok nazwy klawisza powinno pojawi� si� OK. Kiedy klawisz
jest ju� sprawdzony, zaczyna pracowa� normalnie (np. F1
wci�ni�ty po raz pierwszy po prostu poka�e, �e ten klawisz
dzia�a, ale naci�ni�ty po raz drugi poka�e pomoc). Taka
sama sytuacja powtarza si� przy strza�kach. Klawisz Tab
powinien pracowa� zawsze.

Je�li niekt�re klawisze nie pracuj� poprawnie, nie
zobaczysz OK obok ich nazwy po naci�ni�ciu ich. Mo�esz
chcie� je naprawi�. Robisz to naje�d�aj�c na odpowiedni
przycisk dla tego klawisza i naciskaj�c Enter. Poka�e si�
wtedy czerwona wiadomo�� i zostaniesz poproszony o podanie
odpowiedniego klawisza. Je�li chcesz zrezygnowa�, po
prostu naci�nij Esc i poczekaj do czasu kiedy wiadomo��
zniknie. W przeciwnym wypadku wci�nij klawisz, kt�ry sobie
�yczysz i r�wnie� poczekaj na znikni�cie okna.

Kiedy sko�czysz ju� ze wszystkimi klawiszami, mo�esz
nacisn�� Save �eby zachowa� zmiany do pliku ~/.mc/ini do
sekcji [terminal:TERM] (gdzie TERM jest nazw� twojego
aktualnego terminala) lub po prostu odrzuci� je.

[Virtual FS]
Wirtualny system plik�w (Virtual FS)

Ta opcja daje ci kontrol� nad ustawieniami informacji
wirtualnego systemu plik�w. Midnight Commander zachowuje w
pami�ci informacje zwi�zane z niekt�rymi wirtualnymi
systemami plik�w, po to �eby kolejne po��czenia
przebiega�y du�o szybciej (np. �ci�gane listy katalog�w z
serwer�w ftp).

Niemniej jednak, �eby mie� dost�p do zawarto�ci
skompresowanego pliku (np. skompresowanego pliku tar)
Midnight Commander musi stworzy� tymczasowy
nieskompresowany plik na twoim dysku.

Dopiero kiedy informacje w pami�ci i tymczasowe pliki na
dysku s� zgodne z zasobami, mo�esz chcie� zmieni�
parametry informacji znajduj�cych si� w buforze podr�cznym
po to, �eby zmniejszy� obci��enie dysku do mninimum albo
do zmaksymalizowania pr�dko�ci dost�pu do najcz�ciej
u�ywanych system�w plik�w.

System plik�w tar jest ca�kiem inteligentny je�li chodzi o
przechowywanie plik�w: po prostu �ci�ga wej�cia do
katalog�w i kiedy chcemy wi�cej szczeg��w o nim to system
je dla nas �ci�ga.

W rzeczywisto�ci jednak, pliki tar najcz�ciej trzymane s�
jako skompresowane i jako i� natura tych plik�w nie
pozwala na ogl�danie ich bez dekompresji (nie ma tam
widocznych od razu wej�� do katalog�w), system plik�w musi
by� najpierw zdekompresowany na dysk do pliku tymczasowego
i dopiero potem MC ma do niego dost�p taki jak do
normalnego pliku typu tar.

Teraz, kiedy tak kochamy odwiedza� r�ne pliki i zwiedza�
systemy plik�w typu tar na ca�ym dysku, jest ca�kiem
prawdopodobne, �e wyjdziesz z takiego pliku, a po kr�tkim
czasie b�dziesz chcia� wejd�� do niego spowrotem. Poniewa�
dekompresja jest powolna, Midnight Commander b�dzie robi�
kopie plik�w w pami�ci na okre�lony czas, po up�ywie
kt�rego pliki zostan� skasowane a miejsce zajmowane przez
nie zwolnione. Standardowo ten czas ustawiony jest na
jedn� minut�.

System plik�w FTP trzyma list� katalog�w z odwiedzanego
przez nas serwera w buforze podr�cznym. Jego wa�no��
konfigurowana jest za pomoc� opcji
ftpfsdirectorycachetimeout. Ma�a warto�� dla tej opcji
mo�e spowolni� wszystkie operacje na systemach ftp
poniewa� ka�da operacja b�dzie wymaga� kolejnych zapyta�
do serwera.

Ponadto mo�esz zdefiniowa� serwer proxy dla transfer�w ftp
i skonfigurowa� Midnight Commandera tak, aby zawsze go
u�ywa�. Zobacz sekcj� System plik�w FTP (FTP File System)
po wi�cej szczeg��w.[Save Setup]
Zapisz ustawienia (Save Setup)

Na starcie Midnight Commander b�dzie pr�bowa� odczyta�
opcje startowe z pliku ~/.mc/ini. Je�li on nie istnieje,
odczyta on konfiguracje z og�lnodost�pnego pliku
/home/john/prjroot/rootfs/usr/share/mc/mc.ini. Je�li on
te� nie istnieje MC u�yje swoich domy�lnych ustawie�.

Komenda Save Setup tworzy plik ~/.mc/ini zachowuj�c
aktualne ustawienia lewego, prawego menu, jak r�wnie� menu
opcji.

Je�li w�aczysz opcj� auto save setup, MC zawsze b�dzie
zachowywa� standardowe ustawienie podczas wychodzenia.

Istniej� r�wnie� ustawienia, kt�re nie mog� by� zmienione
z poziomu menu. Dla tych ustawie� musisz wyedytowa� sw�j
plik konfiguracyjny za pomoc� twojego ulubionego edytora.
Zobacz sekcj� Specjalne ustawienia po wi�cej informacji.



[Executing operating system commands]
Wykonywanie polece� systemu operacyjnego (Executing
operating system commands)

Mo�esz wykonywa� komendy wpisuj�c je bezpo�rednio do linii
polece� Midnight Commandera, lub wybieraj�c program, kt�ry
chcesz wykona� za pomoc� klawiszy przemieszczenia i
nacisn�� Enter.

Je�li naci�niesz Enter na pliku, kt�ry nie jest
wykonywalny, Midnight Commander sprawdzi rozszerzenie
pliku i por�wna je z rozszerzeniami wybranymi w pliku
rozszerze� (Extensions File). Je�li jaka� pozycja si�
zgadza, wykonywana jest komenda (raczej bardziej
rozszerzone makro) powi�zana z tym rozszerzeniem.

[The cd internal command]
Wbudowana komenda cd (The cd internal command)

Komenda cd jest interpretowana przez Midnight Commandera,
nie dok�adnie tak samo jak wykonuje to pow�oka. Przez to
rozkaz cd nie mo�e zawiera� wielu sk�adnik�w makr, kt�re
s� standardowo dost�pne, jednak niekt�rych potrafi u�ywa�:

Tylda Znak tyldy (~) jest zawsze r�wnoznaczny z wpisaniem
nazwy katalogu domowego. Je�li po znaku tyldy dodasz jaki�
login u�ytkownika, zostanie on zast�piony przez katalog
domowy wybranego u�ytkownika.

Na przyk�ad, ~guest jest katalogiem domowym u�ytkownika
guest, podczas kiedy ~/guest jest katalogiem guest w twoim
katalogu domowym.

Poprzedni katalog (Previous directory) Mo�esz przeskakiwa�
do katalogu, w kt�rym by�e� poprzednio, u�ywaj�c
specjalnej nazwy katalogu '-' tak jak: cd -

katalogi CDPATH Je�li katalog wybrany do przej�cia nie
jest w naszym aktualnym katalogu, to Midnight Commander
u�ywa �cie�ki w zmiennej CDPATH do szukania w jakimkolwiek
z wymienionych tam katalog�w.

Na przyk�ad, mo�esz ustawi� swoj� zmienn� CDPATH na
katalogi ~/src:/usr/src, pozwalaj�c na zmian� katalog�w na
jakikolwiek inny wewn�trz ~/src i /usr/src, z miejsca w
kt�rym jeste� (np. cd linux przeniesie ci� do katalogu
/usr/src/linux).

[Macro Substitution]
Obs�uga makr (Macro Substitution)


Kiedy u�ywamy menu u�ytkownika, wykonujemy plik o znajomym
rozszerzeniu, lub wykonujemy komend� z linii polece�,
mo�emy u�y� kilku bardzo prostych makr.

S� to:

"%f"

        Nazwa aktualnego pliku.

"%d"

        Nazwa aktulnego katalogu.

"%F"

        Nazwa pliku w niewybranym panelu.

"%D"

        Nazwa katalogu w niewybranym panelu.

"%t"

        Aktualnie zaznaczone pliki.

"%T"

        Pliki zaznaczone w nieaktywnym panelu.

"%u" i "%U"

        Podobne w dzia�aniu do %t i do %T jednak z t�
        r�nic�, �e pliki po ich u�yciu zostan�
        odznaczone. Oznacza to, �e mo�na ich u�y� tylko
        raz w jednym menu, poniewa� potem nie b�dzie ju�
        �adnych plik�w zaznaczonych.

"%s" i "%S"

        Wybiera: zaznaczone pliki je�li s� jakie�, w
        przeciwnym razie aktualny plik.

"%cd"

        To jest specjalne makro, kt�re jest u�ywane do
        zmieniania aktualnego katalogu na wybrany
        katalog, na kt�rego froncie jeste�my. Jest to
        u�ywane przede wszystkim jako interfejs do
        wirtualnych system�w plik�w.

"%view"

        To makro jest u�ywane �eby w��cza� wbudowany
        podgl�d plik�w. Mo�e by� ono pojedynczo lub z
        grup� argument�w. Je�li postanawiasz u�ywa�
        kt�regokolwiek z tych argument�w musisz je
        koniecznie wzi�� w nawiasy.

        Argumentami s�: ascii aby wymusi� podgl�d w
        trybie ascii; hex aby wymusi� podgl�d w trybie
        szesnastkowym; nroff przekazuje podgl�dowi, �e
        powinien interpretowa� pogrubione i podkre�lone
        sekwencje programu nroff; unformated aby
        przekaza� podgl�dowi, �eby nie interpretowa�
        komend nroff aby zrobi� tekst pogrubiony lub
        podkre�lony.

"%%"

        Znak %

"%{jaki� tekst}"

        Pyta si� o zmienn�. Pokazuje si� okienko
        wej�ciowe i tekst wewn�trz klamerek u�ywany jest
        jako zach�ta (prompt). Makro jest zast�powane
        tekstem wpisanym przez u�ytkownika. U�ytkownik
        mo�e nacisn�� ESC lub F10 aby anulowa�. To makro
        nie dzia�a jeszcze w linii polece�.

[The subshell support]
Obs�uga podpow�oki (The subshell support)

Podpow�oka (pow�oka w tle) jest opcj�, kt�ra musi by�
wybrana przy kompilacji, dzia�a ona z pow�okami: bash,
tcsh i zsh.

Je�li pow�oka w tle jest w��czona do komplilacji, Midnight
Commander b�dzie sobie tworzy� kopie twojej pow�oki (tej
zdefiniowanej w zmiennej SHELL, a je�li nie ma, to b�dzie
czerpa� bezpo�rednio z pliku /etc/passwd) i odpala� pseudo
terminal, zamiast wywo�ywa� now� pow�ok� za ka�dym razem
kiedy wywo�ujesz komend�, komenda b�dzie przekazana
pow�oce w tle, jak tylko j� napiszesz. To pozwala ci na
zmian� wielu zmiennych, u�ywanie funkcji pow�oki i
zdefiniowanych alias�w, kt�re s� wa�ne dop�ki nie
wyjdziesz z Midnight Commandera.

Je�li u�ywasz basha mo�esz wybra� startowe komendy twojej
pow�oki w tle w pliku ~/.mc/bashrc, a ustawienia
klawiatury w ~/.mc/inputrc. U�ytkownicy tcsh mog� wstawia�
komendy startowe do pliku ~/.mc/tcshrc.

Je�li kod pow�oki w tle jest u�yty, mo�esz zawiesi�
aplikacj� w dowolnej chwili po prostu naciskaj�c
kombinacj� C-o i przeskakuj�c spowrotem do Midnight
Commandera, je�li zawiesisz jak�� aplikacj� nie b�dziesz
m�g� u�ywa� innych zewn�trznych komend zanim nie wyjdziesz
z aplikacji, kt�r� przerwa�e�.

Extra dodatkiem do u�ywania pow�oki w tle jest to, �e
zach�ta widoczna w Midnight Commanderze jest t� sam�,
kt�r� aktualnie u�ywasz w pow�oce.

Zobacz sekcj� Opcje po wi�cej informacji na temat tego,
jak mo�esz kontrolowa� pow�ok� w tle.

[Chmod]
Chmod

Okno Chmod jest u�ywane do zmieniania atrybut�w grupy
plik�w lub katalog�w. Mo�e by� ono wywo�ane kombinacj� C-x
c.

Okno Chmod ma dwie cz�ci - Uprawnienia (Permissions) i
Plik (File)

W sekcji Plik wy�wietlana jest nazwa pliku lub katalogu i
jego uprawnienia w formie liczbowej jak r�wnie� w�a�ciciel
i grupa.

W sekcji Uprawnienia jest kilka przycisk�w, z kt�rych
ka�dy odpowiada za odpowiednie uprawnienie do pliku.
Podczas zmieniania atrybut�w, widzisz jak zmienia si�
warto�� liczbowa w oknie Plik.

Do poruszania pomi�dzy okienkami (przyciskami i polami do
zaznaczania) u�ywaj strza�ek lub klawisza tab. Aby zmieni�
pola lub wcisn�� przycisk u�ywaj klawisza spacji. Mo�esz
r�wnie� u�ywa� "gor�cych liter" aby go wybra� (s� one
pod�wietlonymi literami na przyciskach).

Aby uaktywni� wprowadzone zmiany wci�nij Enter.

Kiedy pracujesz z grup� plik�w, lub katalog�w, mo�esz
klikn�� na bit, kt�ry chcesz wybra� lub wyczy�ci�. Kiedy
ju� wybra�e� bity, kt�re chcesz zmieni�, mo�esz wcisn��
jeden z przycisk�w aktywuj�cych (Set marked lub Clear
marked).

I w ko�cu, aby wprowadzi� dok�adnie takie zmiany jak
wybra�e�, u�yj przycisku [Set all], kt�ry zadzia�a na
wszystkich wybranych plikach.

[Marked all] w��cza tylko zaznaczone atrybuty do wybranych
plik�w.

[Set marked] w��cza zaznaczone bity w atrybutach
wszystkich wybranych plik�w.

[Clean marked] czy�ci zaznaczone bity z atrybut�w
zaznaczonych plik�w.

[Set] ustawia atrybuty jednego pliku.

[Cancel] uniewa�nia komend� chmod.

[Chown]
Chown

Komenda chown jest u�ywana do zmiany w�a�ciela/grupy
pliku. Skr�tem klawiszowym jest kombinacja C-x o.

[Advanced Chown]
Zaawansowane chown (Advanced Chown)

Zaawansowane chown jest komend� ��cz�c� w sobie komendy
chmod i chown. Mo�esz za jednym zamachem zmieni� atrybuty
i w�a�ciela/grup� pliku.

[File Operations]
Operacje na plikach (File Operations)

Kiedy kopiujesz, przenosisz lub kasujesz pliki, Midnight
Commander pokazuje okno opisowe operacji na pliku.
Pokazuje nazw� pliku, na kt�rym aktualnie dokonuje si�
operacja. Widoczne s� co najwy�ej trzy linie post�pu.
Pierwsza (file) m�wi nam jak du�a cz�� pliku zosta�a ju�
przekopiowana. Druga (bytes) m�wi jak du�a cz��
wszystkich zaznaczonych plik�w zosta�a przekopiowana jak
do tej pory. Trzecia (count) m�wi jaka ilo�� plik�w
zosta�a ju� przekopiowana. Je�li opcja verbose jest
wy��czona, linia file i bytes nie jest pokazywana.

S� dwa przyciski na dole okna dialogowego. Naciskaj�c
przycisk Skip ominiemy reszt� aktualnie "ruszanego" pliku.
Naciskaj�c przycisk Abort zatrzymamy ca�� operacj�,
pominiemy reszt� plik�w.

S� trzy inne okna dialogowe, kt�re mog� si� w��czy�
podczas operacji na plikach.

Okno b��d�w informuje nas o b��dach zaistnia�ych podczas
operacji na pliku. S� w nim trzy mo�liwo�ci wyboru.
Przycisk Skip m�wi �eby pomin�� wybrany plik, przycisk
Abort �eby przerwa� ca�� operacj�, a Retry aby ponowi�
pr�b� (np. kiedy usun��e� problem korzystaj�c z innego
terminala).

Okno zast�powania jest pokazywane kiedy pr�bujesz
przenie�� lub przekopiowa� plik, a taki ju� w miejscu
docelowym istnieje. Okno pokazuje daty i wielko�ci obu
plik�w. Naci�nij przycisk Yes aby nadpisa� (zast�pi�)
stary plik nowym, No aby pomin�� ten plik, alL aby
zast�pi� wszystkie pliki, nonE aby nigdy nie zast�powa� i
Update aby zast�pi� ale tylko wtedy kiedy plik �r�d�owy
jest nowszy ni� docelowy. Ca�� operacj� mo�esz przerwa�
naciskaj�c przycisk Abort.

Okno rekursywnego kasowania jest pokazywane kiedy
pr�bujesz skasowa� katalog, kt�ry nie jest pusty. Naci�nij
przycisk Yes aby skasowa� katalog rekursywnie, No aby
pomin�� katalog, alL aby skasowa� wszystkie katalogi
rekursywnie i nonE aby pomin�� wszystkie katalogi, kt�re
nie s� puste. Mo�esz przerwa� ca�� opecj� naciskaj�c
przycisk Abort. Je�li wybra�e� przycisk Yes lub alL
b�dziesz zapytany o potwierdzenie. Wybierz "yes" tylko
je�li jeste� pewien, �e chcesz skasowa� wszystko
rekursywnie.

Je�li zaznaczy�e� pliki, i wykonujesz operacje tylko na
nich, to je�li operacja si� uda�a zostan� one odznaczone,
te, na kt�rych operacja nie przebieg�a ca�kowicie
pomy�lnie, pozostan� zaznaczone.

[Mask Copy/Rename]
Maski kopiowania/przenoszenia (Mask Copy/Rename)

Operacje przenoszenia i kopiowania pozwalaj� ci na
t�umaczenie nazw plik�w w �atwy spos�b. Aby to zrobi�,
musisz wybra� odpowiedni� mask� �r�d�ow� i najcz�ciej w
nazwie docelowej u�y� gwiazdek. Wszystkie pliki pasuj�ce
do maski �r�d�owej s� kopiowane/przenoszone w zgodzie z
mask� docelow�. Je�li s� jakie� pliki zaznaczone, tylko
one s� brane pod uwag� przy wybieraniu plik�w.

S� jeszcze inne opcje, kt�re mo�esz ustawi�:

Opcja Follow links m�wi czy dowi�zania i dowi�zania twarde
w katalogu �r�d�owym powinny by� przenoszone jako
dowi�zania czy te� powinna by� przegrywana ich zawarto��
(plik, na kt�ry wskazuj�).

Opcja Dive into subdirs ... m�wi co program ma robi�,
kiedy kopiuje si� katalog, a taki ju� istnieje.
Standardowo kopiuje si� pliki do wewn�trz ju� istniej�cego
katalogu (dodaje), po w��czeniu tej opcji kopiuje si�
katalog �r�d�owy do wn�trza tego katalogu. Mo�e przyk�ad
pomo�e:

Chcesz przekopiowa� zawarto�� katalogu foo do /bla/foo,
kt�re ju� istnieje. Normalnie (Dive nie jest w��czone), mc
skopiuje to dok�adnie do /bla/foo. Po w��czeniu tej opcji
zawarto�� zostanie skopiowana do /bla/foo/foo poniewa� ten
katalog ju� istnieje.

Opcja Preserve attributes m�wi czy zachowywa� oryginalne
atrybuty pliku, czasy i je�li jeste� rootem to nawet
numery UID i GID. Je�li ta opcja jest wy��czona u�ywana
jest aktualna warto�� zmiennej umask.

"Use shell patterns on"

Je�li opcja obs�ugi wzorc�w pow�oki jest w��czona, mo�esz
u�ywa� znak�w '*' i '?' w maskach �r�d�owych. Dzia�aj� one
tak jak w pow�oce. W masce docelowej mo�esz u�ywa� tylko
'*' i '\<cyfra>'. Pierwsza maska '*' w nazwie docelowej
odnosi sie do pierwszej gwiazdki w masce �r�d�owej, druga
do drugiej itd. Joker '\1' odnosi si� do pierwszego jokera
w masce �r�d�owej, '\2' odnosi si� do drugiego i tak dalej
a� do '\9'. Joker '\0' oznacza pe�n� nazw� pliku
�r�d�owego.

Dwa przyk�ady:

Je�li maska �r�d�owa jest "*.tar.gz", a miejscem docelowym
jest "/bla/*.tgz" i plikiem, kt�ry ma zosta� przekopiowany
jest "foo.tar.gz", to kopi� b�dzie "foo.tgz" w katalogu
"/bla".

Za��my, �e chcesz zaminie� miejscami nazw� i rozszerzenie
pliku, tak, �e plik "plik.c" ma by� zmieniony na "c.plik"
itp. Maska �r�d�owa powinna by� nast�puj�ca: "*.*",
natomiast docelowa: "\2.\1".

"Use shell patterns off"

Kiedy wzorce pow�oki s� wy��czone, MC nie dokonuje
automatycznego grupowania plik�w. Musisz u�y�
wyra�enia'\(...\)' w masce �r�d�owej aby zasygnalizowa�
istnienie joker�w w masce docelowej. Jest to troch�
�atwiejsze, ale te� wymaga aby troch� si� napisa�. Z
drugiej jednak strony, makra s� bardzo podobne tych
u�ywanych kiedy wzorce pow�oki s� w��czone.

Dwa przyk�ady:

Je�li mask� �r�d�ow� jest "^\(.*\)\.tar\.gz$", docelow�
jest "/bla/*.tgz" i plikiem do przekopiowania jest
"foo.tar.gz", kopi� b�dzie "/bla/foo.tgz".

Za��my, �e chemy zamieni� miejscami nazw� i rozszerzenia,
tak, �e plik "plik.c" b�dzie si� nazywa� "c.plik" itp.
Mask� �r�d�ow� powinno by� "^\(.*\)\.\(.*\)$", a docelow�
"\2.\1".

"Konwersje nazwy (Case Conversions)"

Mo�esz r�wnie� zmienia� nazwy plik�w. Je�li u�yjesz '\u'
lub '\l' w masce docelowej, nast�pny znak b�dzie
przekonwertowany na du�y lub ma�y, zale�nie od podanej
opcji.

Je�li u�yjesz '\U' lub '\L' w masce docelowej, nast�pne
znaki b�d� zmieniane na ma�e lub du�e (zale�nie od opcji),
a� do napotkania znaku '\E' lub nast�pnych '\U', '\L' b�d�
te� ko�ca linii.

Konwersje '\u' i '\l' maj� wy�szy priorytet ni� '\U' i
'\L'.

Na przyk�ad, je�li mask� �r�d�ow� jest '*' (shell patterns
on) lub '^\(.*\)$' (shell patterns off) i mask� docelow�
jest '\L\u*', nazwa pliku b�dzie mia�a pierwsz� liter�
du��, ale pozosta�e ju� ma�e, niezale�nie od obecnej
nazwy.

Mo�esz r�wnie� u�ywa� '\' aby "podkre�li�" znak. Na
przyk�ad, '\\' jest backsleshem, a '\*' jest gwiazdk�.

[Internal File Viewer]
Wbudowany podgl�d plik�w

Wbudowany podgl�d plik�w pozwala na dwa tryby
wy�mietlania: ASCII i hex. Aby prze��cza� si� pomi�dzy
tymi trybami u�ywaj klawisza F4. Je�li masz zainstalowany
program GNU gzip, b�dzie on automatycznie u�ywany do
dekompresji plik�w w przypadku wyst�pienia takiej
potrzeby.

Podgl�d plik�w b�dzie pr�bowa� u�y� najlepszej metody
zalecanej przez system lub rozszerzenie pliku. Wbudowany
podgl�d plik�w b�dzie interpretowa� wiele ci�g�w znak�w, i
w��cza� podkre�lenie lub pogrubienie, powoduj�c tym samym
du�o przyjemniejszy wygl�d plik�w.

Kiedy jeste� w trybie hex, funkcja szukania akceptuje
tekst w cudzys�owach r�wnie dobrze jak warto�ci
szesnastkowe.

Mo�esz miesza� ci�gi znak�w ze sta�ymi tak jak: "Ci�g"
0xFE 0xBB "wi�cej tekstu". Ci�g pomi�dzy sta�ymi i
cudzys�owami jest po prostu ignorowany.

Kilka wewn�trznych szczeg��w na temat podgl�du: Na
systemach, kt�re u�ywaj� wywo�ania systemowego mmap(2),
program mapuje pliki zamiast je �adowa�; je�li system nie
obs�uguje mmap(2) lub plik pasuje do kt�rego� z wybranych
filtr�w, podgl�d u�yje jego rozszerzalnych bufor�w, dzi�ki
temu �aduj�c tylko te cz�ci, do kt�rych musisz mie�
aktualnie dost�p (dotyczy r�wnie� plik�w skompresowanych).

Tu jest lista akcji powi�zanych z ka�dym klawiszem, kt�ry
Midnight Commander obs�uguje w wewn�trznym pogl�dzie.

F1 Wywo�uje wbudowan� przegl�dark� pomocy.

F2 Prze��cza tryb zawijania.

F4 Prze��cza tryb wy�wietlania.

F5 Id� do linii. Zostaniesz zapytany o numer linii i
zostanie ona wy�wietlona na ekranie twojego monitora.

F6, /. Szukaj wyra�e� w dalszej cz�ci.

?, Wsteczne wyszukiwanie wyra�enia.

F7 Normalne wyszukiwaniewyszukiwanie w trybie hex.

C-s. Zaczyna normalne szukanie je�li nie by�o �adnego
wcze�niej, w przeciwnym razie szuka nast�pnego
wyst�pienia.

C-r. Zaczyna szukanie wsteczne je�li jeszcze �adnego nie
by�o, w przeciwnym razie szuka nast�pnego wyst�pienia.

n. Szuka nast�pnego wyst�pienia.

F8 Prze��cza tryby Raw i Parsed. Poka�e to plik w postaci
takiej w jakiej zosta� znaleziony na dysku, lub je�li
zosta� wybrany jaki� filtr, b�d� te� plik spe�nia
wymagania w pliku mc.ext, wy�wietlane jest to co
przekazuje filtr. Aktualne ustawienie jest zawsze
przeciwne ni� to napisane na przycisku, przycisk wskazuje
zawsze to co si� stanie po jego naci�ni�ciu.

F9 Prze��cza pomi�dzy trybami format i unformat. Kiedy
tryb formatu jest w��czony podgl�d b�dzie interpretowa�
niekt�re sentencje i pokazywa� tekst pogrubiony i
podkre�lony innymi kolorami. Wynika z tego, �e przycisk
wskazuje co innego ni� jest aktualnie (patrz wy�ej).

F10, Esc. Wychodzi z wbudowanego podgl�du.

Page Down, space, C-v. Przewija jedn� stron� naprz�d.

Page Up, M-v, C-b, backspace. Przewija jedn� stron�
wstecz.

strza�ka w d�. Przewija jedn� lini� naprz�d.

strza�ka w g�r�. Przewija jedn� lini� wstecz.

C-l. Od�wie�a ekran.

!. W��cza pow�ok� w aktualnym katalogu roboczym.

C-f. Przeskakuje do nast�pnego pliku.

C-b. Przeskakuje do poprzedniego pliku.

M-r. Prze��cza linijk�.

Mo�liwe jest poinstruowanie podgl�du pliku jak ma
wy�wietla� plik, zobacz sekcj� Edycja pliku rozszerze�.[Internal File Editor]
Wbudowany edytor plik�w

Wbudowany edytor plik�w ma wi�kszo�� funkcji posiadanych
przez inne edytory pe�no-ekranowe. Jest wywo�ywany po
naci�ni�ciu klawisza F4 o ile opcja use_internal_edit jest
ustawiona w pliku startowyn. Ma maksymalny rozmiar pliku
wynosz�cy szesna�cie megabajt�w i potrafi bez skazy
edytowa� pliki binarne.

Opcje, kt�re aktualnie posiada to: kopiowanie,
przenoszenie, kasowanie, wycinanie i wklejanie blok�w;
klawisz dla klawisza undo; rozci�gane menu; wklejanie
plik�w; definiowanie makr; szukanie i zast�powanie wyra�e�
regularnych (i nasze w�asne funkcje scanf-printf szukaj�ce
i zamieniaj�ce); strza�ki z Shiftem zaznaczaj�ce teksty w
stylu MSW-MAC (tylko dla konsoli typu Linux); prze��czanie
trybu wstawiania-zast�powania; opcja pozwalaj�ca na
"przerzucenie" bloku tekstu przez komend� pow�oki jak na
przyk�ad indent.

Edytor jest bardzo prosty w u�yciu i nie wymaga �adnego
przygotowania. Aby zobaczy� jakie s� klawisze po prostu
obejrzyj odpowiednie menu rozwijalne. Inne klawisze to:
przemieszczanie z Shiftem zaznaczaj�ce tekst. Ctrl-Ins
kopiuje do pliku cooledit.clip a Shift-Ins wkleja z pliku
cooledit.clip. Shift-Del Wycina do cooledit.clip, a
Ctrl-Del kasuje zaznaczony tekst. Klawisze doko�czenia
r�wnie� daj� Enter z automatycznym wci�ciem. Pod�wietlanie
mysz� r�wnie� dzia�a, i mo�esz je przes�oni� i spowodowa�
normalne zaznaczanie tekstu (takie jak obs�uguje terminal)
po prostu trzymaj�c klawisz Shift.

Aby zdefiniowa� makro, naci�nij Ctrl-R i potem naci�nij
klawisze, kt�re chcesz aby by�y wykonywane. Naci�nij
ponownie Ctrl-R kiedy sko�czysz. Mo�esz r�wnie�
przyporz�dkowa� makro do dowolnego klawisza jaki chcesz
naciskaj�c ten klawisz. Makro jest wykonywane kiedy
naci�niesz Ctrl-A i przyporz�dkowany klawisz. Makro jest
wykonywane r�wnie� je�li naci�niesz klawisz Meta, Ctrl,
lub Esc i wybrany klawisz, jednak tylko je�li ten klawisz
nie jest u�ywane przez inne funkcje. Raz zdefiniowane,
makro w�druje sobie do pliku .mc/cedit/cooledit.macros w
twoim katalogu domowym. Mo�esz skasowa� makro kasuj�c
odpowiedni� lini� z tego pliku.

F19 sformatuje format C je�li jest pod�wietlony. �eby to
dzia�a�o, stw�rz wykonywalny plik .mc/cedit/edit.indent.rc
w twoim katalogu domowym zawieraj�cy poni�sze:

#!/bin/sh
/usr/bin/indent -kr -pcs $HOME/.mc/cedit/cooledit.block >& /dev/null
cat /dev/null > $HOME/.mc/cedit/cooledit.error

Mo�esz u�ywa� funkcji scanf do przeszukiwania i
zast�powania format�w znak�w w C. Najpierw jest rzu� okiem
na stron� manuala funkcji sscanf i sprintf aby zobaczy�
jaki jest format ci�g�w i jak on dzia�a. Za��my, �e
chcesz wszystkie wyst�pienia ci�gu z�o�onego z, powiedzmy,
otwartego nawiasu, trzech oddzielonych przecinkami liczb i
nawiasu zamykaj�cego, zast�pi� ci�giem z�o�onym ze s�owa
jab�ka, trzeciej liczby, s�owa pomara�cze i drugiej
liczby. Nale�y w�wczas tak wype�ni� okno dialogowe
zast�powania:

 Enter search string
(%d,%d,%d)
 Enter replace string
jab�ka %d pomara�cze %d
 Enter replacement argument order
3,2

Ostatnia linia m�wi, �e w miejscu pierwszego i drugiego
argumentu wyniku maj� by� u�yte trzeci i drugi wej�ciowy.

Jest r�wnie� dobrym polecenia w��czenie opcji pytania si�
przed zamian�, poniewa� zgodno�� jest znajdowana
kiedykolwiek tylko liczba argument�w znalezionych zgadza
sie z liczb� podanych, co nie zawsze jest prawdziw�
zgodno�ci�. Scanf traktuje r�wnie� bia�e znaki jako
elastyczne. Zauwa�, �e format scanfa % jest r�wnie� bardzo
u�yteczny dla skanowania znak�w i bia�ych spacji.

Edytor wy�wietla r�wnie� znaki nieameryka�skie (160+).
Kiedy edytujesz plik binarny, powiniene� ustawi� opcj�
display bits do 7 bit�w w menu opcji, aby utrzyma�
przejrzysto�� odst�p�w mi�dzy znakami.

Zobacz sekcj� Polskie znaki, aby pozna� szczeg�y na temat
u�ywania polskich znak�w w Midnight Commanderze.

[Completion]
Doka�czanie


Pozw�l Midnight Commanderowi pisa� za ciebie.

Spr�buj u�y� doko�czenia na tek�cie przed aktualn�
pozycj�. MC pr�buje doko�czy� tekst jako zmienn� (je�li
tekst zaczyna si� od znaku $), nazw� u�ytkownika (je�li
tekst zaczyna si� od znaku ~), nazw� hosta (je�li tekst
zaczyna si� od znaku @) lub komend� (je�li jeste� w linii
komend w pozycji gdzie mo�esz wpisa� jak�� komend�,
mo�liwe doko�czenia b�d� zawiera� r�wnie� zarezerwowane
s�owa i wbudowane komendy pow�oki). Je�li �aden z
powy�szych warunk�w nie jest spe�niony, pr�buje si�
doka�cza� nazw� pliku.

Nazwa pliku, nazwa u�ytkownika i hosta, pracuje we
wszystkich liniach wej�cia, doka�czanie komend pracuje
tylko w wybranych. Je�li doka�czanie jest rozbudowane
(jest wi�cej r�nych mo�liwo�ci), MC wyda kr�tki d�wi�k, a
nast�pna akcja b�dzie zale�e� od warto�ci zmiennej
Complete: show all w menu konfiguracja. Je�li jest ona
w��czona, zostanie wy�wietlona lista wszystkich mo�liwych
nazw. W�a�ciw� nazw� mo�esz wybra� za pomoc� strza�ek a
potem naciskaj�c klawisz Enter na w�a�ciwej pozycji.
Mo�esz tak�e nacisn�� pierwsze litery, kt�rymi r�ni� si�
mo�liwo�ci aby odrzuci� tak du�� cz�� doko�cze� jak to
tylko mo�liwe. Je�li naci�niesz znowu M-Tab, pokazane
zostan� tylko te pozycje, kt�re zaczynaj� si� od kolejnych
podanych liter. Kiedy nie maja ju� wi�cej mo�liwo�ci, okno
znika, ale mo�esz je wcze�niej schowa� u�ywaj�c klawiszy
anuluj�cych: Esc, F10 oraz strza�ek w lewo i prawo. Je�li
Complete: show all jest wy��czone, okno z list� w��cza si�
dopiero wtedy, kiedy naciskasz M-Tab po raz drugi. Za
pierwszym razem MC wydaje tylko kr�tki d�wi�k.

[Virtual File System]
Wirtualny system plik�w (Virtual File System)

Midnight Commander jest dostarczany z kodem pozwalaj�cy na
dost�p do system�w plik�w. Ten kod nazywany jest
wirtualnym systemem plik�w. Pozwala on Midnight
Commanderowi manipulowa� plikami trzymanymi na systemach
nie Unixowych.

Aktualnie Midnight Commander jest wyposa�ony w niekt�re
wirtualne systemy plik�w (VFS): lokalny system plik�w,
u�ywany do dost�pu do typowych system�w plik�w Unixowych;
ftpfs u�ywanego do manipulowania plikami na zdalnych
systemach na poprzez protok� FTP; tarfs u�ywany do
manipulania plikami w systemach tar i w skompresowanych
systemach tar; undelfs, u�ywany do odzyskiwania
skasowanych plik�w na systemach typu ext2 (standardowy
system pracy systemu Linux), fish (do manipulowania
plikami poprzez po��czenia pow�ok takich jak rsh czy ssh)
i w ko�cu system mcfs (system plik�w Midnight Commandera),
oparty o sie�.

Kod VFS potrafi interpretowa� poprawnie wszystkie nazwy
�cie�ek i przekazuje je do w�a�ciwego systemu plik�w.
Format u�ywany dla ka�dego z system�w plik�w jest opisany
w swojej oddzielnej sekcji.

[FTP File System]
System plik�w FTP (FTP File System)

Ftpfs pozwala na manipulowanie plikami na zdalnych
komputerach, do normalnego u�ytku, mo�esz pr�bowa� u�ywa�
panelowych komend FTP i dowi�za� (dost�pnych z linii menu)
lub zmieni� �cie�k� bezpo�rednio za pomoc� zwyk�ej komendy
cd wygl�daj�cej tak jak poni�ej:

/#ftp:[!][u�ytkownik[:has�o]@]komputer[:port][zdalny
katalog]

Parametry u�ytkownik, port i zdalny katalog s� opcjonalne.
Je�li wybierzesz element u�ytkownik Midnight Commander
spr�buje zalogowa� si� na zdalnym komputerze jako zadany
u�ytkownik, w przeciwnym razie u�yje twojego loginu.
Opcjonalne jest r�wnie� has�o, je�li jest obecne zostanie
u�yte do nawi�zania po��czenia. To u�ycie nie jest
zalecane (tak samo jak trzymanie tego w twojej hotli�cie,
dop�ki nie ustawisz odpowiednich uprawnie�, aby nikt
niepowo�any nie mia� do tego dost�pu).

Przyk�ady:

    /#ftp:ftp.nuclecu.unam.mx/linux/local
    /#ftp:tsx-11.mit.edu/pub/linux/packages
    /#ftp:!behind.firewall.edu/pub
    /#ftp:guest@remote-host.com:40/pub
    /#ftp:miguel:xxx@server/pub

Aby po��czy� si� z serwerem znajduj�cym si� za firewallem,
b�dziesz musia� u�yc przedrostka ftp://! aby wymusi� na
Midnight Commanderze u�ywanie serwera proxy do transferu
danch. Serwer proxy definiuje si� w oknie dialogowym
wirtualnego systemu plik�w.

Inn� mo�liwo�ci� jest ustawienie opcji Always use ftp
proxy w oknie konfiguracyjnym wirtualnego systemu plik�w.
Skonfiguruje to program tak, aby zawsze u�ywa� serwera
proxy. Je�li ta zmienna jest ustawiona, program b�dzie
robi� dwie rzeczy: konsultowa� plik
/home/john/prjroot/rootfs/usr/share/mc.no_proxy w celu
znalezienia linii zawieraj�cych nazwy serwer�w, kt�re s�
lokalne (je�li nazwa hosta zaczyna si� od kropki, uznaje
si�, �e jest to domena) i sprawdza czy jakie� hosty bez
kropek w nazwie s� widoczne bezpo�rednio.

Je�li u�ywasz systemu ftpfs b�d�c za routerem filtruj�cym,
kt�ry nie pozwala ci na u�ywanie standardowej metody
otwierania plik�w, mo�esz chcie� wymusi� na programie
u�ywanie trybu passive-open. Aby tego u�ywa� ustaw opcj�
ftpfs_use_passive_connections w pliku inicjuj�cym.

Midnight Commander przechowuje list� katalog�w w buforze
podr�cznym. Czas wyrzucania bufora jest ustawiany w oknie
dialogowym Wirtualnego Systemu Plik�w. To ma �mieszn�
w�a�ciwo�� tak�, �e nawet kiedy wyst�pi� jakie� zmiany w
katalogu, nie b�d� one pokazane w strukturze katalog�w,
dop�ki nie wymusisz tego przy u�yciu kombinacji C-r. To
jest dobre rozwi�zanie (je�li my�lisz, �e to jest bug, to
pomy�l o pracy na zdalnych systemach po�o�onych po drugiej
stronie Atlantyku przy u�yciu ftpfs :) ).

[Tar File System]
System plik�w tar (Tar File System)

System plik�w tar pozwala na dost�p w trybie
tylko-do-odczytu do plik�w typu tar i do skompresowanych
plik�w typu tar, za pomoc� komendy chdir. Aby zmieni�
katalog na plik tar, mo�esz zmieni� aktualny katalog
u�ywaj�c nast�puj�cej konstrukcji:

/nazwa_pliku.tar:utar/[katalogu-wewn�trza-archiwum]

Plik mc.ext pozwala ju� na tworzenie skr�t�w do plik�w
tar, oznacza to, �e mo�esz wybra� jaki� plik tar i
nacisn�� enter aby do niego wej��, zobacz sekcj� Edycja
pliku rozszerze� po wi�cej szczeg��w na temat tego jak
zosta�o to pomy�lane.

Przyk�ady

    mc-3.0.tar.gz#utar/mc-3.0/vfs
    /ftp/GCC/gcc-2.7.0.tar#utar

P�niejszy podaje pe�n� �cie�k� archiwum tar.[FIle transfer over SHell filesystem]
Transfer plik�w pomi�dzy systemami plik�w (FIle transfer
over SHell filesystem)


System plik�w fish jest systemem opartym na sieci, kt�ry
pozwala na manipulowanie plikami na obcej maszynie tak
jakby by�y one lokalne. Aby tego u�ywa�, druga strona musi
r�wnie� mie� ustawiony serwer fish, lub musi mie� pow�ok�
kompatybiln� z bashem.

Aby po��czy� si� z obc� maszyn�, musisz tylko zmieni�
katalog do specjalnego katalogu, kt�rego nazwa jest w
nast�puj�cym formacie:

/#sh:[u�ytkownik@]komputer[:opcje];/[zdalny-katalog];</em>
Elementy u�ytkownik, opcje i zdalny katalog s� opcjonalne.
Je�li podasz u�ytkownika Midnight Commander spr�uje
zalogowa� si� na obcy komputer jako zadany u�ytkownik w
przeciwnym razie u�yty zostanie tw�j login.

Jako opcja mo�e wyst�pi� 'C' - w��cza kompresje i 'rsh' -
w��cza rsh zamist ssh. Je�li zdalny-katalog istnieje, tw�j
aktualny katalog na zdalnym komputerze b�dzie ustawiony na
niego.

Przyk�ady:

    /#sh:onlyrsh.mx:r/linux/local
    /#sh:joe@want.compression.edu:C/private
    /#sh:joe@noncompressed.ssh.edu/private
[Network File System]
Sieciowe systemy plik�w

Midnight Commander pozwala na obs�ug� zdalnych system�w i
manipulowanie na ich dyskach, tak jakby by�y one lokalne.
�eby to by�o mo�liwe druga maszyna musi by� uruchomiona
razem z programem mcserv(8).

�eby pod��czy� si� do obcego komputera musisz przej�� do
katalogu w specjalny spos�b opisany poni�ej:

mc:[u�ytkownik@]komputer[:port][katalog]

U�ytkownik, port i katalog s� opcjami nieobowi�zkowymi.
Je�li podasz u�ytkownika Midnight Commander spr�buje
zalogowa� si� do systemu zdalnego jako zadany u�ytkownik,
w przeciwnym wypadku spr�buje u�y� twojej aktualnej nazwy
zg�oszeniowej.

Port jest u�ywany je�li zdalny komputer jest odpalony na
niestandardowych portach (zobacz stron� manuala mcserv(8)
po wi�cej informacji o portach); i wreszcie je�li katalog
jest podany, twoim katalogiem domowym na zdalnym
komputerze b�dzie ten podany.

Przyk�ady:

    mc:ftp.nuclecu.unam.mx/linux/local
    mc:joe@foo.edu:11321/private

[Undelete File System]
Odzyskiwanie plik�w

Na systemach Linuksowych, je�li doda�e� w konfiguracji
opcj� przywracania skasowanych plik�w z system�w ext2,
b�dziesz w stanie to robi�. Odzyskiwanie plik�w jest
mo�liwe tylko i wy��cznie na systemach typu ext2.
Przywracany system plik�w jest tylko nak�adk� na
bibliotek� ext2fs: odzyskiwanie nazw wszystkich
skasowanych plik�w i pr�ba uczynienia z nich normalnej
partycji.

�eby u�ywa� tych system�w plik�w, b�dziesz musia� przej��
od specjalnego pliku, kt�rego nazwa sk�ada si� z
przedrostka "undel:" i nazwy pliku, w kt�rej �w plik
rezyduje.

Na przyk�ad, aby odzyska� skasowane pliki z drugiej
partycji pierwszego dysku scsi Linux, b�dziesz musia� u�y�
nast�puj�cej �cie�ki:

    undel:/dev/sda2

Mo�e to chwilk� potrwa� zanim pliki zostan� pokazane i
b�dziesz m�g� je normalnie ogl�da�.

[Polskie znaki]
Polskie znaki

Midnight Commander bardzo dobrze radzi sobie z obs�ug�
znak�w nieameryka�skich (160+) w tym polskich. Wa�ne jest
aby mie� ustawione polskie znaki na konsoli (tzn. aby
pow�oka je obs�ugiwa�a). Je�li u�ywasz basha musisz tylko
ustawi� w pliku inputrc ( /etc/inputrc lub ~/.inputrc)
nast�puj�ce warto�ci:

set meta-flag on
set convert-meta off
set output-meta on

w pliku /etc/sysconfig/i18n:

SYSFONT=lat2u-16
SYSFONTACM=iso02

natomiast w pliku /etc/sysconfig keyboard:

KEYTABLE=pl

Potem u�yj polece� /sbin/setsysfont i loadkeys pl. [Zwr��
uwag� na to, �e te pliki s� charakterystyczne dla
dystrybucji RedHat, je�li masz inn� i wiesz jak to
ustawi�, to napisz do mnie, a ja to tu dopisz� [ patrz
t�umacz na dole ;)) ]].

Teraz wystarczy ju� tylko w��czy� odpowiednie opcje w menu
opcji (klawisz F9). W menu opcji wybieramy Display bits i
w��czamy opcje ISO 8859-1 oraz Full 8 bits input. Potem
zapisujemy konfiguracj� w opcje | Save setup.

I gotowe - polskie literki dzia�aj� r�wnie� w podgl�dzie i
wbudowanym edytorze plik�w.

[Colors]
Kolory

Midnight Commander pr�buje sprawdzi� czy tw�j terminal
obs�uguje kolory u�ywaj�c bazy danych terminali. Czasami
jest to zmieniane przez r�ne flagi startowe, np. mo�esz
wymusi� wy�wietlanie czarno-bia�e lub kolorowe startuj�c z
opcj� odpowiednio -b i -c.

Je�li program jest skompilowany z mened�erem ekranu Slang
zamiast ncurses, sprawdzi on r�wnie� warto�� zmiennej
COLORTERM. Je�li jest ustawiona, ma takie samo znaczenie
jak opcja -c.

Mo�esz wybra� terminale, kt�re zawsze ��daj� wy�wietlania
w kolorze, poprzez dodanie ich do pozycji color_terminals
w sekcji pliku startuj�cego. Uchroni to Midnight
Commandera przed pr�bami odkrycia typu twojego terminala.
Na przyk�ad
[Colors]
color_terminals=linux,xterm
color_terminals=terminal-name1,terminal-name2...

Program mo�e by� skompilowany zar�wno z bibliotekami slang
jak i ncurses. Ncurses nie obs�uguje metody wymuszania
wy�wietlania, zawsze sprawdza w bazie danych terminali.

Midnight Commander umo�liwia r�wnie� zmian� standardowych
barw ekranu. Aktualnie kolory s� skonfigurowane przy
u�yciu zmiennej MC_COLOR_TABLE w sekcji Colors pliku
startowego.

W sekcji kolor�w, standardowa mapa kolor�w jest �adowana
ze zmiennej base_color. Mo�esz wybra� swoj� w�asn� map�
dla terminala poprzez u�ycie nazwy terminala jako klucza w
tej sekcji. Na przyk�ad:

[Colors]
base_color=
xterm=menu=magenta:marked=,magenta:markselect=,red

Format definicji kolor�w jest nast�puj�cy:

  <s�owo kluczowe>=<kolor powierzchni">,<kolor t�a>:<s�owo kluczowe>= ...

Kolory s� opcjonalne, a s�owa kluczowe s� nast�puj�ce:
normal, selected, marked, markselect, errors, input,
reverse menu, menusel, menuhot, menuhotsel, gauge; kolory
okien dialogowych: dnormal, dfocus, dhotnormal, dhotfocus;
Kolory pomocy: helpnormal, helpitalic, helpbold, helplink,
helpslink; Kolory podgl�du: viewunderline; Specjalne tryby
pod�wietlenia: executable, directory, link, device,
special. [nie t�umaczy�em nazw z racji tego, �e trzeba je
stosowa� w ich angielskim brzmieniu - je�li jeste� a� tak
zaawansowany, u�yj s�ownika].

Okna dialogowe mog� mie� nast�puj�ce kolory: dnormal
u�ywany do normalnego tekstu, dfocus jest kolorem u�ywanym
do wy�wietlania aktualnego komponentu, dhotnormal jest
kolorem u�ywanym do odr�nienia klawiszy w normalnych
komponentach, a dhotfocus jest u�ywany do wy�wietlania
owych w aktualnie wybranym.

Menu u�ywa tego samego schematu, ale jako nazw kolor�w
u�ywa menu, menusel, menuhot i menuhotsel.

Pomoc u�ywa nast�puj�cych kolor�w: helpnormal u�ywany do
normalnego tekstu, helpitalic u�ywa tej samej czcionki,
kt�r� wykorzystuje manual do wy�wietlania czcionki typu
italic, helpbold tak samo jak wy�ej tylko czcionki s� typu
bold, helplink u�ywane dla niewybranych jeszcze dowi�za� i
helpslink u�ywane dla ju� wybranych.

gauge pokazuje kolor wype�nienia pokazywany przy wska�niku
post�pu [ang. gauge], ukazuj�cym ile procent pliku zosta�o
przekopiowane itp. w graficzny spos�b.

Dla trybu wysokiego pod�wietlania directory jest u�ywane
jako kolor do wy�wietlania katalog�w; executable dla
plik�w wykonywalnych; link do wy�wietlania dowi�za�;
device do wy�wietlania plik�w urz�dze� (devices); special
dla plik�w specjalnych, takich jak gniazda FIFO i IPC;
core dla wy�wietlania plik�w typu core (zobacz r�wnie� t�
opcj� w sekcji Specjalne ustawienia).

Mo�liwe kolory to: black, gray, red, brightred, green,
brightgreen, brown, yellow, blue, brightblue, magenta,
brightmagenta, cyan, brightcyan, lightgray and white.
[sorry, �e ich nazw nie t�umaczy�em, ale u�ywa� ich trzeba
w oryginalnym brzmieniu :))].

[Special Settings]
Specjalne ustawienia

Wi�kszo�� ustawie� Midnight Commandera mo�e by� zmieniana
z poziomu menu. Pomimo tego jest pewna ilo�� ustawie�,
kt�rych zmiana mo�liwa jest jedynie poprzez zmian� w
plikach konfiguracyjnych.

Opcje mog� by� ustawione w twoim pliku ~/.mc/ini :

clear_before_exec.

        Standardowo Midnight Commander czy�ci ekran przed
        wykonaniem komendy. Je�li chcia�by� widzie�
        wyj�cie komendy na dole ekranu, wyedytuj tw�j
        plik ~/mc/ini i zmie� pole clear_before_exec na
        0.

confirm_view_dir.

        Je�li naciskasz F3 na katalogu, normalnie MC
        wchodzi do niego. Je�li ta opcja ma warto�� 1, MC
        zapyta si� o potwierdzenie przed wej�ciem do tego
        katalogu, je�li masz zaznaczone jakie� pliki.

drop_menus.

        Je�li ta opcja jest ustawiona, kiedy naciskasz
        klawisz F9, rozci�gane menu b�dzie od razu
        roz�o�one, w przeciwnym wypadku znajdziesz si� po
        prostu w najwy�szym wierszu ekranu traktowanym
        jako menu. B�dziesz musia� u�y� strza�ek lub
        pierwszych literek, aby wybra� konkretne menu.

ftpfs_retry_seconds.

        Warto�� jest ilo�ci� sekund, przez kt�re Midnight
        Commander b�dzie czeka� cierpliwie zanim
        rozpocznie ��czenie si� z serwerem ftp od nowa.
        Dzieje si� to wtedy kiedy serwer odm�wi�
        po��czenia lub has�o jest nieprawid�owe. Je�li
        warto�� wynosi zero, nie nast�pi pr�ba ponownego
        po��czenia z serwerem.

ftpfs_use_passive_connections.

        Standardowo ta opcja jest wy��czona. Powoduje
        ona, �e ftpfs otwiera po��czenia pasywne dla
        transmisji danych. Jest to u�ywane przez ludzi,
        kt�rzy siedz� za ruterami filtruj�cymi. Dzia�a to
        tylko wtedy, kiedy nie u�ywasz serwera ftp proxy.

max_dirt_limit.

        Opisuje jak wiele od�wie�e� ekranu mo�e by�
        maksymalnie omini�te we wbudowanym podgl�dzie
        plik�w. Normalnie ta warto�� jest wa�na, gdy� MC
        automatycznie dostosowuje liczb� od�wie�e� do
        liczby naci�ni�tych klawiszy. Chocia� na bardzo
        wolnych komputerach lub na klawiaturach z szybkim
        powtarzaniem klawiszy, du�a warto�� mog�aby
        spowodowa� skoki ekranu i utrat� p�ynno�ci.

        Wydaje si�, �e warto�� 10 dla max_dirt_limit jest
        najlepszym ustawieniem i to jest warto��
        standardowa tej funkcji.

mouse_move_pages.

        Kontroluje czy przewijanie w panelu za pomoc�
        myszki odbywa si� strona po stronie czy linijka
        po linjce.

mouse_move_pages_viewer.

        Tak samo jak wy�ej tylko, �e we wbudowanym
        wewn�trznym podgl�dzie plik�w.

navigate_with_arrows.

        Je�li ta opcja jest w��czona, mo�esz u�ywa�
        strza�ek do automatycznego przemieszczanie si�
        pomi�dzy katalogami, je�li linia polece� jest
        pusta. (dotyczy to strze�ek w bok).

nice_rotating_dash

        Je�li jest w��czony, Midnight Commander b�dzie
        pokazywa� w lewym g�rnym rogu obracaj�cy si�
        my�lnik kiedy b�dzie wykonywa� jaki� proces.

old_esc_mode

        Standardowo Midnight Commander traktuje klawisz
        ESC jako przedrostek (old_esc_mode=0). Je�li
        w��czysz t� opcj� (old_esc_mode=1), to klawisz
        ESC b�dzie przedrostkiem dla innego klawisza, ale
        je�li ten nie nast�pi, b�dzie on zinterpretowany
        jako klawisz anulowania (tak jak ESC ESC).


only_leading_plus_minus

        zmienia znaczenia znak�w '+', '-', '*' w linii
        komend (wyb�r, odznaczenie, odwr�cenie
        zaznaczenia). Standardowo dzia�aj� one tylko
        wtedy kiedy linia polece� jest pusta. Je�li co�
        jest w niej ju� napisane, znaki te s� traktowane
        jako normalne. Jest to przydatne gdy� najcz�ciej
        w trakcie pisania nie chcemy zmienia�
        zaznaczenia. Jednak czasami ... - wystarczy
        przestawi� t� opcj� i klawisze te b�d� zawsze
        dzia�a�. panel_scroll_pages

        Je�li ustawione (standardowo), panel b�dzie
        przewijany o po�ow� za ka�dym razem kiedy kursor
        dochodzi do dolnej lub g�rnej linii, w przeciwnym
        wypadku przewijanie b�dzie si� odbywa� linia po
        linii.

show_output_starts_shell

        Ta opcja pracuje je�li nie u�ywasz obs�ugi
        pow�oki w tle. Kiedy u�yjesz kombinacji klawiszy
        C-o i ta opcja jest w��czona, b�dziesz mia� now�
        pow�ok�. Je�li nie, dowolny klawisz przywr�ci
        zn�w Midnight Commandera (C-o dzia�a jak
        podgl�d).

show_all_if_ambiguous.

        Standardowo Midnight Commander pokazuje wszystkie
        mo�liwe doko�czenia je�li jest ich wi�cej i
        naci�ni�to kombinacj� M-Tab po raz drugi, za
        pierwszym razem doko�czone zostanie tylko tyle
        ile jest to mo�liwe i je�li b�dzie wi�cej
        mo�liwo�ci s�ycha� b�dzie kr�tkie bipni�cie.
        Je�li chcesz widzie� wszystkie mo�liwe
        doko�czenia ju� po pierwszym naci�ni�ciu M-Tab,
        zmie� t� opcj� na 1.

torben_fj_mode

        Je�li ta opcja jest w��czona, klawisze home i end
        b�d� dzia�a�y troszk� inaczej w panelach, zamiast
        przemieszcza� lini� wyboru do pierwszej lub
        ostatniej linii w panelu, b�d� dzia�a�y tak jak
        jest to opisane poni�ej:

        Klawisz home b�dzie: przechodzi� do �rodkowej
        linii, je�li jest pod ni�; w przeciwnym wypadku
        b�dzie przechodzi� do najwy�szej linii w panelu,
        je�li ju� w niej jest, b�dzie przechodzi� do
        pierwszego pliku w panelu.

        Klawisz end ma podobne zastosowanie: przechodzi
        do �rodkowej linii, je�li jest nad ni�; w
        przeciwnym wypadku przechodzi do najni�szej linii
        w panelu, chyba �e ju� si� w niej znajduje, wtedy
        przechodzi do ostatniego pliku w panelu.

highlight_mode Standardowo wszystkie informacje w panelach
s� wy�wietlane tym samym kolorem. Je�li ta waro�� jest
ustawiona na 1, to uprawnienia lub tryb b�d� wy�wietlane
przy u�yciu pod�wietlonej barwy, tak aby pokaza�
ustawienia dla u�ytkownika. Tak wi�c prawa do odczytu,
zapisu i wykonywania b�d� wy�wietlane na ��to (tzn.
kolorem selected). W dodatku je�li ta zmienna jest
ustawiona na 2, to ca�e linie s� wy�wietlane w kolorze
odpowiadaj�cym ich typowi (zobacz sekcj� Kolory).
Pod�wietlenie uprawnie� r�wnie� pracuje w tym trybie.

use_file_to_guess_type

        Je�li ta zmienna jest ustawiona (standardowo)
        pr�buje si� dostosowa� rozszerzenie pliku do tego
        wybranego w pliku mc.ext.

xterm_mode

        Je�li ta opcja jest w��czona (standardowo tak nie
        jest) kiedy przegl�dasz plik w panelu drzewa,
        b�dzie on automatycznie prze�adowywa� drugi panel
        na zawarto�� wybranego katalogu.

[Terminal databases]
Baza danych terminali (Terminal databases)

Midnight Commander pozwala ci na naprawienie bazy danych
terminali bez posiadania uprawnie� roota. Midnight
Commander szuka w pliku startowym (mc.lib po�o�onego w
katalogach z bibliotekami Midnight Commandera) lub w pliku
~/.mc/ini sekcji "terminal:nazwa-twojego-terminala" i
potem sekcji "terminal:general", ka�da linia sekcji
zawiera symbol klawisza, kt�ry chcesz zdefiniowa�,
zaczynaj�ce si� do znaku r�wno�ci i definicji klawisza.
Mo�esz u�y� kombinacji \E aby reprezentowa� znak escape i
^x aby reprezentowa� znak Control-x.

Mo�liwymi klawiszami symboli s�:

f0 do f20     Klawisze funkcyjne f0-f20
bs            backspace
home          klawisz home
end           klawisz end
up            strza�ka w g�r�
down          strza�ka w d�
left          strza�ka w lewo
right         strza�ka w prawo
pgdn          klawisz page down
pgup          klawisz page up
insert        znak insert
delete        znak delete
complete      do doka�czania

Na przyk�ad, aby zdefiniowa� klawisz insert jako Escape +
[ + O + p, mo�esz ustawi� to pliku ini:

insert=\E[Op

Symbol klawisza complete reprezentuje sekwencj� wyj�cia
u�ywan� do wywo�ywania procesu doka�czania, jest to
wywo�ywane kombinacj� M-tab, ale mo�esz zdefiniowa� inne
klawisze do wykonywania tych samych funkcji (na tych
klawiaturach z ton� fajnych i zupe�nie bezu�ytecznych
klawiszy).



[FILES]
PLIKI


Program b�dzie pobiera� wszystkie swoje informacje ze
zmiennej MCHOME, je�li jest ona nie ustawiona to znowu
przetwarzany jest katalog /usr.

/home/john/prjroot/rootfs/usr/share/mc.hlp

        Plik pomocy dla programu.

/home/john/prjroot/rootfs/usr/share/mc/mc.ext

        Standardowy plik rozszerze� plik�w.

~/.mc/bindings

        W�asny plik u�ytkownika, konfiguruje podgl�d i
        edycje plik�w. Ma wy�szy priorytet ni� plik
        systemowy.

/home/john/prjroot/rootfs/usr/share/mc/mc.ini

        Standardowy plik setupu do Midnight Commandera,
        u�ywany tylko w�wczas, kiedy u�ytkownik nie ma
        swojego w�asnego pliku ~/.mc/ini.

/home/john/prjroot/rootfs/usr/share/mc/mc.lib

        Globalne ustawienia Midnight Commandera.
        Ustawienia w tym pliku s� uwzgl�dniane przez
        wszystkie sesje Midnight Commandera, u�yteczne do
        definiowania og�lnosystemowych ustawie�
        terminali.

~/.mc/ini

        W�asny setup u�ytkownika. Je�li ten plik jest
        dost�pny, jest �adowany zamiast pliku globalnego.

/home/john/prjroot/rootfs/usr/share/mc/mc.hint

        Plik zawieraj�cy podpowiedzi (hints) wy�wietlane
        przez program.

/home/john/prjroot/rootfs/usr/share/mc/mc.menu

        Ten plik zawiera informacje o og�lnosystemowych
        aplikacjach w menu.

~/.mc/menu

        W�asny plik menu u�ytkownika. Je�li ten plik jest
        obecny jest u�ywany zamiast pliku globalnego.

~/.mc/tree

        Lista katalog�w drzewa katalog�w i podgl�du
        drzewa. Jedna linia jest jednym wej�ciem. Linie
        zaczynaj�ce si� od uko�nika s� pe�nymi nazwami
        katalog�w. Linie zaczynaj�ce si� od numeru maj�
        tyle znak�w ile poprzedni katalog. Je�li chcesz
        mo�esz stworzy� plik u�ywaj�c komendy "find /
        -type d -print | sort > ~/.mc/tree". Normalnie
        nie ma sensu tego czyni�, gdy� Midnight Commander
        robi to sam za ciebie.

./.mc.menu

        Lokalny plik zdefiniowany przez u�ytkownika.
        Je�li ten plik jest dost�pny, jest u�ywany
        zamiast pliku w katalogu domowym i
        og�lnosystemowego.

[AVAILABILITY]
DOST�PNO��

Najnowsza wersja programu jest do zdobycia na serwerze
ftp.nuclecu.unam.mc w katalogu /linux/local i w Europie na
serwerze sunsite.mff.cuni.cz w katalogu /GNU/mc i na
serwerze ftp.teuto.de w katalogu /lmb/mc.[SEE ALSO]
ZOBACZ TAK�E

ed(1), gpm(1), mcserv(8), terminfo(1), view(1), sh(1),
bash(1), tcsh(1), zsh(1).

Strona Midnight Commander w sieci World Wide Web:
	http://www.ibiblio.org/mc/

[AUTHORS]
AUTORZY

Miguel de Icaza (miguel@roxanne.nuclecu.unam.mx), Janne
Kukonlehto (jtklehto@paju.oulu.fi), Radek Doulik
(rodo@ucw.cz), Fred Leeflang (fredl@nebula.ow.org), Dugan
Porter (dugan@b011.eunet.es), Jakub Jelinek
(jj@sunsite.mff.cuni.cz), Ching Hui
(mr854307@cs.nthu.edu.tw), Andrej Borsenkow
(borsenkow.msk@sni.de), Norbert Warmuth
(nwarmuth@privat.circular.de), Mauricio Plaza
(mok@roxanne.nuclecu.unam.mx), Paul Sheer
(psheer@icon.co.za) and Pavel Machek (pavel@ucw.cz) are
the developers of this package; Alessandro Rubini
(rubini@ipvvis.unipv.it) has been especially helpful
debugging and enhancing the program's mouse support, John
Davis (davis@space.mit.edu) also made his S-Lang library
available to us under the GPL and answered my questions
about it, and the following people have contributed code
and many bug fixes (in alphabetical order):

Adam Tla/lka (atlka@sunrise.pg.gda.pl), alex@bcs.zp.ua
(Alex I. Tkachenko), Antonio Palama, DOS port
(palama@posso.dm.unipi.it), Erwin van Eijk
(wabbit@corner.iaf.nl), Gerd Knorr
(kraxel@cs.tu-berlin.de), Jean-Daniel Luiset
(luiset@cih.hcuge.ch), Jon Stevens
(root@dolphin.csudh.edu), Juan Francisco Grigera, Win32
port (j-grigera@usa.net), Juan Jose Ciarlante
(jjciarla@raiz.uncu.edu.ar), Ilya Rybkin
(rybkin@rouge.phys.lsu.edu), Marcelo Roccasalva
(mfroccas@raiz.uncu.edu.ar), Massimo Fontanelli
(MC8737@mclink.it), Pavel Roskin
(pavel_roskin@geocities.com), Sergey Ya. Korshunoff
(root@seyko.msk.su), Thomas Pundt
(pundtt@math.uni-muenster.de), Timur Bakeyev
(timur@goff.comtat.kazan.su), Tomasz Cholewo
(tjchol01@mecca.spd.louisville.edu), Torben Fjerdingstad
(torben.fjerdingstad@uni-c.dk), Vadim Sinolitis
(vvs@nsrd.npi.msu.su) and Wim Osterholt
(wim@djo.wtm.tudelft.nl).

[BUGS]
B��DY

W pliku TODO dystrybucji znajdziesz informacje na temat
tego, co pozosta�o jeszcze do zrobienia.

Je�li chcesz zg�osi� k�opoty z programem [b��dy w nim],
wy�lij e-mail [po angielsku], na adres mc-devel@gnome.org.

Do zg�oszenia b��du do��cz opis problemu, versj� programu,
kt�rego u�ywasz (wy�wietla j� mc -V), system operacyjny,
na kt�rym pracujesz i je�li program si� wyk�ada,
chcieliby�my dosta� �lad stosu.[T�UMACZENIE]
T�UMACZENIE

Maciej Wojciechowski wojciech@staszic.waw.pl

[main]
 lqwqk     k           k     
 x x x .   x     .     x     
 x x x k lqu wqk k lqw tqk n 
 x x x x x x x x x x x x x x 
 v   v v mqv v v v mqu v v mj
     qqqqqqCommanderqj 

To g��wny ekran pomocy Midnight Commandera.

Aby dowiedzie� si�, jak korzysta� z interaktywnej pomocy
naci�nij EnterHow to use help. Mo�esz te� przej�� bezpo�rednio do spisu
tre�ciContents pomocy.

GNU Midnight Commander zosta� napisany przez autor�wAUTHORS.

GNU Midnight Commander jest dostarczany ABSOLUTNIE BEZ
�ADNEJ GWARANCJIWarranty. Jest on wolnym oprogramowaniem, 
wi�c dozwolona jest jego redystrybucja na zasadach 
GNU General Public LicenseLicense (jej nieoficjalne t�umaczenie
znajdziesz tutajLicense-pl).

[License]
Licencja

Nieoficjalne polskie t�umacznie znajdziesz tutajLicense-pl.


                GNU GENERAL PUBLIC LICENSE
                   Version 2, June 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

 Everyone is permitted to copy and distribute verbatim
copies of this license document, but changing it is not
allowed.

                         Preamble

  The licenses for most software are designed to take away
your freedom to share and change it.  By contrast, the GNU
General Public License is intended to guarantee your
freedom to share and change free software--to make sure
the software is free for all its users.  This General
Public License applies to most of the Free Software
Foundation's software and to any other program whose
authors commit to using it.  (Some other Free Software
Foundation software is covered by the GNU Library General
Public License instead.)  You can apply it to your
programs, too.

  When we speak of free software, we are referring to
freedom, not price.  Our General Public Licenses are
designed to make sure that you have the freedom to
distribute copies of free software (and charge for this
service if you wish), that you receive source code or can
get it if you want it, that you can change the software or
use pieces of it in new free programs; and that you know
you can do these things.

  To protect your rights, we need to make restrictions
that forbid anyone to deny you these rights or to ask you
to surrender the rights.  These restrictions translate to
certain responsibilities for you if you distribute copies
of the software, or if you modify it.

  For example, if you distribute copies of such a program,
whether gratis or for a fee, you must give the recipients
all the rights that you have.  You must make sure that
they, too, receive or can get the source code.  And you
must show them these terms so they know their rights.

  We protect your rights with two steps: (1) copyright the
software, and (2) offer you this license which gives you
legal permission to copy, distribute and/or modify the
software.

  Also, for each author's protection and ours, we want to
make certain that everyone understands that there is no
warranty for this free software.  If the software is
modified by someone else and passed on, we want its
recipients to know that what they have is not the
original, so that any problems introduced by others will
not reflect on the original authors' reputations.

  Finally, any free program is threatened constantly by
software patents.  We wish to avoid the danger that
redistributors of a free program will individually obtain
patent licenses, in effect making the program proprietary.
To prevent this, we have made it clear that any patent
must be licensed for everyone's free use or not licensed
at all.

  The precise terms and conditions for copying,
distribution and modification follow.

                GNU GENERAL PUBLIC LICENSE
            TERMS AND CONDITIONS FOR COPYING,
              DISTRIBUTION AND MODIFICATION

  0. This License applies to any program or other work
which contains a notice placed by the copyright holder
saying it may be distributed under the terms of this
General Public License.  The "Program", below, refers to
any such program or work, and a "work based on the
Program" means either the Program or any derivative work
under copyright law: that is to say, a work containing the
Program or a portion of it, either verbatim or with
modifications and/or translated into another language.
(Hereinafter, translation is included without limitation
in the term "modification".)  Each licensee is addressed
as "you".

Activities other than copying, distribution and
modification are not covered by this License; they are
outside its scope.  The act of running the Program is not
restricted, and the output from the Program is covered
only if its contents constitute a work based on the
Program (independent of having been made by running the
Program).  Whether that is true depends on what the
Program does.

  1. You may copy and distribute verbatim copies of the
Program's source code as you receive it, in any medium,
provided that you conspicuously and appropriately publish
on each copy an appropriate copyright notice and
disclaimer of warranty; keep intact all the notices that
refer to this License and to the absence of any warranty;
and give any other recipients of the Program a copy of
this License along with the Program.

You may charge a fee for the physical act of transferring
a copy, and you may at your option offer warranty
protection in exchange for a fee.

  2. You may modify your copy or copies of the Program or
any portion of it, thus forming a work based on the
Program, and copy and distribute such modifications or
work under the terms of Section 1 above, provided that you
also meet all of these conditions:

    a) You must cause the modified files to carry
prominent notices stating that you changed the files and
the date of any change.

    b) You must cause any work that you distribute or
publish, that in whole or in part contains or is derived
from the Program or any part thereof, to be licensed as a
whole at no charge to all third parties under the terms of
this License.

    c) If the modified program normally reads commands
interactively when run, you must cause it, when started
running for such interactive use in the most ordinary way,
to print or display an announcement including an
appropriate copyright notice and a notice that there is no
warranty (or else, saying that you provide a warranty) and
that users may redistribute the program under these
conditions, and telling the user how to view a copy of
this License.  (Exception: if the Program itself is
interactive but does not normally print such an
announcement, your work based on the Program is not
required to print an announcement.)

These requirements apply to the modified work as a whole.
If identifiable sections of that work are not derived from
the Program, and can be reasonably considered independent
and separate works in themselves, then this License, and
its terms, do not apply to those sections when you
distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a
work based on the Program, the distribution of the whole
must be on the terms of this License, whose permissions
for other licensees extend to the entire whole, and thus
to each and every part regardless of who wrote it.

Thus, it is not the intent of this section to claim rights
or contest your rights to work written entirely by you;
rather, the intent is to exercise the right to control the
distribution of derivative or collective works based on
the Program.

In addition, mere aggregation of another work not based on
the Program with the Program (or with a work based on the
Program) on a volume of a storage or distribution medium
does not bring the other work under the scope of this
License.

  3. You may copy and distribute the Program (or a work
based on it, under Section 2) in object code or executable
form under the terms of Sections 1 and 2 above provided
that you also do one of the following:

    a) Accompany it with the complete corresponding
machine-readable source code, which must be distributed
under the terms of Sections 1 and 2 above on a medium
customarily used for software interchange; or,

    b) Accompany it with a written offer, valid for at
least three years, to give any third party, for a charge
no more than your cost of physically performing source
distribution, a complete machine-readable copy of the
corresponding source code, to be distributed under the
terms of Sections 1 and 2 above on a medium customarily
used for software interchange; or,

    c) Accompany it with the information you received as
to the offer to distribute corresponding source code.
(This alternative is allowed only for noncommercial
distribution and only if you received the program in
object code or executable form with such an offer, in
accord with Subsection b above.)

The source code for a work means the preferred form of the
work for making modifications to it.  For an executable
work, complete source code means all the source code for
all modules it contains, plus any associated interface
definition files, plus the scripts used to control
compilation and installation of the executable.  However,
as a special exception, the source code distributed need
not include anything that is normally distributed (in
either source or binary form) with the major components
(compiler, kernel, and so on) of the operating system on
which the executable runs, unless that component itself
accompanies the executable.

If distribution of executable or object code is made by
offering access to copy from a designated place, then
offering equivalent access to copy the source code from
the same place counts as distribution of the source code,
even though third parties are not compelled to copy the
source along with the object code.

  4. You may not copy, modify, sublicense, or distribute
the Program except as expressly provided under this
License.  Any attempt otherwise to copy, modify,
sublicense or distribute the Program is void, and will
automatically terminate your rights under this License.
However, parties who have received copies, or rights, from
you under this License will not have their licenses
terminated so long as such parties remain in full
compliance.

  5. You are not required to accept this License, since
you have not signed it.  However, nothing else grants you
permission to modify or distribute the Program or its
derivative works.  These actions are prohibited by law if
you do not accept this License.  Therefore, by modifying
or distributing the Program (or any work based on the
Program), you indicate your acceptance of this License to
do so, and all its terms and conditions for copying,
distributing or modifying the Program or works based on
it.

  6. Each time you redistribute the Program (or any work
based on the Program), the recipient automatically
receives a license from the original licensor to copy,
distribute or modify the Program subject to these terms
and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights
granted herein.  You are not responsible for enforcing
compliance by third parties to this License.

  7. If, as a consequence of a court judgment or
allegation of patent infringement or for any other reason
(not limited to patent issues), conditions are imposed on
you (whether by court order, agreement or otherwise) that
contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you
cannot distribute so as to satisfy simultaneously your
obligations under this License and any other pertinent
obligations, then as a consequence you may not distribute
the Program at all.  For example, if a patent license
would not permit royalty-free redistribution of the
Program by all those who receive copies directly or
indirectly through you, then the only way you could
satisfy both it and this License would be to refrain
entirely from distribution of the Program.

If any portion of this section is held invalid or
unenforceable under any particular circumstance, the
balance of the section is intended to apply and the
section as a whole is intended to apply in other
circumstances.

It is not the purpose of this section to induce you to
infringe any patents or other property right claims or to
contest validity of any such claims; this section has the
sole purpose of protecting the integrity of the free
software distribution system, which is implemented by
public license practices.  Many people have made generous
contributions to the wide range of software distributed
through that system in reliance on consistent application
of that system; it is up to the author/donor to decide if
he or she is willing to distribute software through any
other system and a licensee cannot impose that choice.

This section is intended to make thoroughly clear what is
believed to be a consequence of the rest of this License.

  8. If the distribution and/or use of the Program is
restricted in certain countries either by patents or by
copyrighted interfaces, the original copyright holder who
places the Program under this License may add an explicit
geographical distribution limitation excluding those
countries, so that distribution is permitted only in or
among countries not thus excluded.  In such case, this
License incorporates the limitation as if written in the
body of this License.

  9. The Free Software Foundation may publish revised
and/or new versions of the General Public License from
time to time.  Such new versions will be similar in spirit
to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If
the Program specifies a version number of this License
which applies to it and "any later version", you have the
option of following the terms and conditions either of
that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a
version number of this License, you may choose any version
ever published by the Free Software Foundation.

  10. If you wish to incorporate parts of the Program into
other free programs whose distribution conditions are
different, write to the author to ask for permission.  For
software which is copyrighted by the Free Software
Foundation, write to the Free Software Foundation; we
sometimes make exceptions for this.  Our decision will be
guided by the two goals of preserving the free status of
all derivatives of our free software and of promoting the
sharing and reuse of software generally.

[Warranty]
                       NO WARRANTY

  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE,
THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT
PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED
IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED
TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS TO THE
QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.
SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR
AGREED TO IN WRITING WILL ANY COPYRIGHT HOLDER, OR ANY
OTHER PARTY WHO MAY MODIFY AND/OR REDISTRIBUTE THE PROGRAM
AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY
TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED
BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO
OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR
OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

               END OF TERMS AND CONDITIONS

      How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of
the greatest possible use to the public, the best way to
achieve this is to make it free software which everyone
can redistribute and change under these terms.

  To do so, attach the following notices to the program.
It is safest to attach them to the start of each source
file to most effectively convey the exclusion of warranty;
and each file should have at least the "copyright" line
and a pointer to where the full notice is found.

<one line to give the program's name and a brief idea of
what it does.>
Copyright (C) <year>  <name of author>

    This program is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public
License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any
later version.

    This program is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

    You should have received a copy of the GNU General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin Street,
Fifth Floor, Boston, MA  02110-1301  USA

Also add information on how to contact you by electronic
and paper mail.

If the program is interactive, make it output a short
notice like this when it starts in an interactive mode:

Gnomovision version 69, Copyright (C) year name of author
Gnomovision comes with ABSOLUTELY NO WARRANTY; for details
type `show w'.  This is free software, and you are welcome
to redistribute it under certain conditions; type `show c'
for details.

The hypothetical commands `show w' and `show c' should
show the appropriate parts of the General Public License.
Of course, the commands you use may be called something
other than `show w' and `show c'; they could even be
mouse-clicks or menu items--whatever suits your program.

You should also get your employer (if you work as a
programmer) or your school, if any, to sign a "copyright
disclaimer" for the program, if necessary.  Here is a
sample; alter the names:

  Yoyodyne, Inc., hereby disclaims all copyright interest
in the program `Gnomovision' (which makes passes at
compilers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

This General Public License does not permit incorporating
your program into proprietary programs.  If your program
is a subroutine library, you may consider it more useful
to permit linking proprietary applications with the
library.  If this is what you want to do, use the GNU
Library General Public License instead of this License.

[License-pl]
Nieoficjalne t�umaczenie licencji

Uwaga: To jest nieoficjalne t�umaczenie Powszechnej
Licencji Publicznej GNU na j�zyk polski. Nie zosta�o
opublikowane przez Free Software Foundation i pod wzgl�dem
prawnym nie stanowi warunk�w rozpowszechniania
oprogramowania stosuj�cego GNU GPL -- ustanawia je
wy��cznie oryginalny angielski tekst licencji GNU
GPLLicense. T�umaczenie pochodzi ze strony
http://www.linux.org.pl/


           Powszechna Licencja Publiczna GNU
                Wersja 2, czerwiec 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

  Zezwala si� na kopiowanie i rozpowszechnianie wiernych
kopii niniejszego dokumentu licencyjnego, jednak bez prawa
wprowadzania zmian. 

                     Preambu�a

  Wi�kszo�� licencji na oprogramowanie pomy�lana jest po
to, aby odebra� u�ytkownikowi mo�liwo�� swobodnego
udost�pniania innym i zmieniania danego software'u.
Natomiast w wypadku Powszechnej Licencji Publicznej GNU
(GNU General Public License, GPL) celem jest
zagwarantowanie u�ytkownikowi swobody udost�pniania i
zmieniania tego bezp�atnego oprogramowania, a wi�c danie
pewno�ci, i� oprogramowanie jest wolno dost�pne dla
wszystkich u�ytkownik�w. Niniejsza Powszechna Licencja
Publiczna dotyczy wi�kszo�ci oprogramowania wydawanego
przez Fundacj� Wolnego Oprogramowania (Free Software
Foundation) oraz wszelkich innych program�w, kt�rych
autorzy zobowi�zuj� si� do jej stosowania. (Niekt�re
rodzaje oprogramowania wydawanego przez Fundacj� obj�te s�
Powszechn� Licencj� Publiczn� GNU dla Bibliotek, GNU
Library General Public License). U�ytkownik mo�e stosowa�
j� r�wnie� do swoich program�w.

  M�wi�c o wolnym oprogramowaniu mamy na my�li swobod�, a
nie cen�. Nasze Powszechne Licencje Publiczne wprowadzono
po to, aby zapewni� Pa�stwu swobod� rozpowszechniania
kopii tego oprogramowania (i - je�li kto� chce -
pobierania za t� us�ug� op�aty), jak r�wnie� aby
udost�pni� kod �r�d�owy oraz umo�liwi� dokonywanie zmian
tego oprogramowania lub wykorzystywania jego fragment�w w
nowych, wolnych programach. Nie bez znaczenia jest te�
sama mo�liwo�� dotarcia do Pa�stwa z informacj� o
wszystkich tych udogodnieniach.

  W celu ochrony praw u�ytkownika jeste�my zmuszeni
wprowadza� ograniczenia zabraniaj�ce komukolwiek
kwestionowanie jego praw albo sugerowanie rezygnacji z
tych praw. Ograniczenia te sprowadzaj� si� do pewnych dla
Pa�stwa obowi�zk�w w przypadku rozpowszechniania przez Was
kopii naszego oprogramowania b�d� dokonywania w nim zmian.

  Na przyk�ad, je�li rozprowadzacie Pa�stwo kopie takiego
programu, niezale�nie czy gratisowo, czy za op�at�,
musicie Pa�stwo odbiorcy udzieli� wszelkich tych praw,
jakie mieli�cie sami. Musicie zapewni� mu r�wnie�
otrzymanie kodu �r�d�owego (lub mo�liwo�� otrzymania) oraz
przedstawi� niniejsze Warunki, aby m�g� on pozna� swoje
prawa.

  Ochrona Pa�stwa praw przebiega w dw�ch etapach:

  1. zastrzegamy prawo w�asno�ci autorskiej do
oprogramowania,
  
  2. oferujemy Pa�stwu niniejsz� licencj�, kt�ra daje Wam
sankcjonowane prawem zezwolenie na kopiowanie,
rozpowszechnianie i/lub modyfikowanie tego oprogramowania.

  Ponadto dla ochrony tak autora, jak i naszej, pragniemy
mie� pewno��, �e ka�dy zrozumie, i� na niniejsze wolne
oprogramowanie nie udziela si� gwarancji. W razie
dokonania w nim przez kogo� modyfikacji i puszczenia dalej
do obrotu, pragniemy, aby dalsi odbiorcy zdawali sobie
spraw� z tego, �e problemy wprowadzone przez inne osoby
nie s� wyrazem oryginalnych dzia�a� tw�rc�w.

  I rzecz ostatnia: ka�demu wolnemu programowi stale
zagra�aj� patenty na oprogramowanie. Naszym pragnieniem
jest unikanie takiego niebezpiecze�stwa, kiedy
redystrybutorzy wolnego programu indywidualnie uzyskuj�
prawa patentowe, nadaj�c tym samym programowi charakter
prawnie zastrze�ony. W celu zapobie�enia takim zjawiskom
jednoznacznie wyja�nili�my, �e ka�dy patent musi by�
wydawany albo dla swobodnego u�ytku przez wszystkich, albo
nie wydawany wcale.

  Poni�ej podajemy dok�adne zasady i warunki kopiowania,
rozpowszechniania i modyfikowania.


            ZASADY I WARUNKI KOPIOWANIA,
          ROZPOWSZECHNIANIA I MODYFIKOWANIA

  0. Niniejsza Licencja dotyczy program�w i innych prac,
na kt�rych umieszczona jest pochodz�ca od w�a�ciciela praw
autorskich informacja, �e dany program lub praca mo�e by�
rozpowszechniana na warunkach niniejszej Powszechnej
Licencji Publicznej. U�ywane poni�ej s�owo "Program"
oznacza w�a�nie takie programy lub prace, za� okre�lenie
"praca oparta na Programie" dotyczy albo Programu, albo
pochodz�cej od niego pracy w rozumieniu prawa autorskiego,
to jest pracy zawieraj�cej Program lub jego cz��
dos�own�, b�d� zmodyfikowan� i/lub prze�o�on� na inny
j�zyk. (W dalszym ci�gu niniejszego, poj�cie przek�adu
w��cza si� bez ogranicze� do terminu "modyfikacja"). Do
ka�dego licencjobiorcy b�dziemy zwraca� si� "per Ty".

  Niniejsza Licencja nie obejmuje dzia�a� innych ni�
kopiowanie, rozprowadzanie i modyfikowanie - nie mieszcz�
si� one w jej zakresie. Czynno�� u�ywania Programu nie
jest poddana ograniczeniom, a produkty uzyskane z Programu
obj�te s� Licencj� tylko wtedy, gdy ich tre�� stanowi
prac� opart� na Programie (niezale�nie od stworzenia jej
przy u�yciu Programu). To, czy fakt taki jest prawd�,
zale�y od tego, co dany Program wykonuje.

  1. Mo�esz kopiowa� i rozprowadza� w dowolnych mediach
wierne kopie kodu �r�d�owego Programu w otrzymanej formie
pod warunkiem, �e w widoczny spos�b i odpowiednio podasz
na ka�dej kopii w�a�ciw� informacj� o prawie autorskim i
zrzeczenie si� uprawnie� z tytu�u gwarancji; wszelkie
napisy informacyjne na temat Licencji i faktu
nieudzielania gwarancji musisz chroni� przed uszkodzeniem,
za� wszystkim innym odbiorcom Programu musisz wraz z
Programem wr�cza� egzemplarz niniejszej Licencji. 

  Mo�esz pobiera� op�at� za fizyczn� czynno�� przekazania
kopii i wed�ug w�asnej decyzji mo�esz za op�at� proponowa�
ochron� gwarancyjn�.

  2. Mo�esz modyfikowa� swoj� kopi� czy kopie Programu
oraz dowolne jego cz�ci, tworz�c przez to prac� opart� na
Programie, jak r�wnie� kopiowa� i rozprowadza� takie
modyfikacje i prac� na warunkach podanych w pkt.1 powy�ej
- pod warunkiem przestrzegania ca�o�ci poni�szych wymog�w:

    a) Musisz spowodowa� umieszczenie na zmodyfikowanych
plikach widocznej informacji o tym, �e dane pliki zosta�y
przez ciebie zmienione, wraz z dat� dokonania zmian.

    b) Musisz doprowadzi� do tego, aby ka�da
rozpowszechniana lub publikowana przez ciebie praca, kt�ra
w ca�o�ci lub cz�ci zawiera Program, albo pochodzi od
niego lub jego cz�ci, by�a w ca�o�ci i bezp�atnie
licencjonowana dla wszelkich stron trzecich na warunkach
niniejszej Licencji.

    c) Je�eli zmodyfikowany program podczas korzystania z
niego w normalnym trybie odczytuje polecenia
interaktywnie, musisz spowodowa�, aby po uruchomieniu
(u�yty w interaktywny spos�b w najzwyklejszym trybie),
wydrukowywa� on lub wy�wietla� powiadomienie o odno�nym
prawie autorskim i braku gwarancji (ewentualnie o
zapewnianiu gwarancji przez ciebie), oraz o tym, �e
u�ytkownicy mog� redystrybuowa� ten program na niniejszych
warunkach wraz z informacj�, jak u�ytkownik mo�e zapozna�
si� z tre�ci� niniejszej Licencji. (Wyj�tek: je�li sam
Program jest interaktywny, ale normalnie nie drukuje
takiego powiadomienia, twoja praca oparta na nim te� nie
musi wydrukowywa� takiego powiadomienia).

  Niniejsze wymogi odnosz� si� do zmodyfikowanej pracy
jako ca�o�ci. Je�li daj�ce si� ustali� sekcje danej pracy
nie pochodz� od Programu i mog� by� racjonalnie uwa�ane za
samodzielne i odr�bne same w sobie, to niniejsza Licencja
i jej warunki nie maj� zastosowania do takich sekcji przy
rozprowadzaniu ich przez ciebie jako odr�bne prace. Je�li
jednak rozprowadzasz je jako cz�� ca�o�ci, b�d�cej prac�
opart� na Programie, rozpowszechnianie tej ca�o�ci musi
by� dokonywane na warunkach niniejszej Licencji, kt�rej
zezwolenia dla innych licencjobiorc�w rozci�gaj� si� w
ca�ej szeroko�ci na t� ca�o��, a tym samym i na ka�d�
indywidualn� jej cz��, niezale�nie od jej autorstwa.

  Dlatego te� intencj� tego fragmentu nie jest roszczenie
sobie praw albo podwa�anie twych praw do pracy napisanej w
ca�o�ci przez ciebie. Chodzi nam raczej o korzystanie z
prawa kontrolowania dystrybucji pochodnych i zbiorowych
prac opartych na Programie. 

  I jeszcze jedno: samo tylko po��czenie z Programem (lub
z prac� opart� na Programie) innej pracy - nie opartej na
Programie, w ramach wolumenu no�nika przechowywania lub
dystrybucji, nie powoduje obj�cia takiej pracy zakresem
niniejszej Licencji.

  3. Mo�esz kopiowa� i rozprowadza� Program (lub opart� na
nim prac� - zgodnie z pkt.2 w kodzie wynikowym lub w
formie wykonywalnej w my�l postanowie� pkt.1 i 2 powy�ej,
pod warunkiem zrealizowania r�wnie� poni�szych wymog�w:

    a) Musisz do��czy� do niego odpowiadaj�cy mu,
kompletny i mo�liwy do odczytania przez urz�dzenia cyfrowe
kod �r�d�owy, kt�ry musi by� rozpowszechniany na warunkach
pkt.1 i 2 powy�ej i na no�niku zwyczajowo u�ywanym dla
wzajemnej wymiany oprogramowania; lub

    b) do��czy� do niego pisemn� ofert�, wa�n� co najmniej
3 lata, przyznaj�c� ka�dej stronie trzeciej - za op�at�
nie przekraczaj�c� twego kosztu fizycznego wykonywania
dystrybucji �r�d�a - kompletn�, odczytywaln� przez
urz�dzenia cyfrowe kopi� odpowiadaj�cego mu kodu
�r�d�owego, rozprowadzan� na warunkach pkt.1 i 2 powy�ej,
na no�niku zwyczajowo u�ywanym do wzajemnej wymiany
oprogramowania; lub

     c) do��czy� do niego informacj�, jak� otrzyma�e� na
temat oferty rozprowadzania odpowiedniego kodu �r�d�owego.
(Ta mo�liwo�� dozwolona jest tylko dla dystrybucji
niehandlowej i jedynie wtedy, gdy otrzyma�e� dany program
w kodzie wynikowym lub formie wykonywalnej wraz z
wymienion� ofert� - zgodnie z podpunktem "b" powy�ej).

  Okre�lenie kod �r�d�owy dla pracy oznacza form� pracy
preferowan� dla wprowadzania do niej modyfikacji. Dla
wykonanej pracy, kompletny kod �r�d�owy oznacza ca�y kod
�r�d�owy wszystkich modu��w, wszelkie sprz�one z ni�
po�rednicz�ce pliki opisuj�ce oraz zbiory komend stosowane
do sterowania kompilacj� i instalowaniem program�w.
Niemniej jednak, jako wyj�tek specjalny, dystrybuowany (w
formie �r�d�owej albo binarnej) kod �r�d�owy nie musi
obejmowa� niczego, co jest normalnie rozprowadzane przy
pomocy g��wnych komponent�w (kompilator, j�dro itd.)
systemu operacyjnego, na kt�rym pracuje cz�� wykonywalna,
o ile sam taki komponent towarzyszy tej cz�ci.

  Je�li dystrybucja cz�ci wykonywalnej albo kodu
wynikowego realizowana jest poprzez oferowanie dost�pu do
kopii z wyznaczonego miejsca, to oferowanie r�wnowa�nego
dost�pu dla kopiowania kodu �r�d�owego z tego samego
miejsca liczy si� jako rozpowszechnianie kodu �r�d�owego,
nawet gdy strony trzecie nie s� zmuszone do kopiowania
�r�d�a wraz z kodem wynikowym.

  4. Poza przypadkami jednoznacznie dozwolonymi w
niniejszej Licencji, nie mo�esz kopiowa�, modyfikowa�,
sublicencjonowa� ani rozpowszechnia� Programu. We
wszystkich pozosta�ych wypadkach, ka�da pr�ba skopiowania,
sublicencjonowania lub rozpowszechnienia Programu jest
niewa�na i powoduje automatyczne wyga�ni�cie twoich praw z
tytu�u Licencji. Niemniej jednak, stronom, kt�re ju�
otrzyma�y od ciebie kopie albo prawa w ramach niniejszej
Licencji, licencje nie wygasaj� tak d�ugo, jak d�ugo
strony te w pe�ni stosuj� si� do nich.

  5. Nie musisz akceptowa� niniejszej Licencji, je�eli jej
nie podpisa�e�. Niemniej jednak, nic innego nie zapewni ci
zezwolenia na modyfikowanie lub rozprowadzanie Programu i
pochodz�cych od niego prac. Dzia�ania takie s� prawnie
zabronione, je�eli nie przyjmujesz niniejszej Licencji.
Dlatego te�, poprzez modyfikowanie b�d� rozpowszechnianie
Programu (lub pracy na nim opartej) dajesz wyraz swojej
akceptacji dla Licencji i wszelkich jej postanowie� i
warunk�w dotycz�cych kopiowania, rozprowadzania i
modyfikowania Programu lub opartych na nim prac.

  6. W ka�dym przypadku redystrybucji przez ciebie
Programu (albo opartej na nim pracy), odbiorca
automatycznie otrzymuje od pierwotnego licencjodawcy
licencj� na kopiowanie, rozpowszechnianie i modyfikowanie
Programu na niniejszych zasadach i warunkach. Na
korzystanie przez odbiorc� z udzielonych w niniejszej
Licencji praw nie mo�esz narzuca� ju� dalszych ogranicze�.
Nie jeste� stron� odpowiedzialn� za kontrol�
przestrzegania Licencji przez osoby trzecie.

  7. Je�li na skutek wyroku s�dowego lub zarzutu
naruszenia patentu, jak te� z ka�dej innej przyczyny (nie
ograniczonej do kwestii patentowych) zostan� narzucone na
ciebie (niezale�nie czy to moc� wyroku s�dowego, umowy,
czy w inny spos�b) warunki sprzeczne z warunkami
niniejszej Licencji, to nie zwalniaj� one ciebie z
warunk�w Licencji. Je�li nie mo�esz prowadzi� dystrybucji
tak, aby wype�nia� jednocze�nie swoje obowi�zki z tytu�u
niniejszej Licencji i inne odno�ne obowi�zki, to w
rezultacie nie mo�esz wcale rozprowadza� Programu. Na
przyk�ad, gdyby licencja patentowa nie zezwala�a na woln�
od op�at licencyjnych redystrybucj� Programu przez
wszystkie osoby, kt�re otrzyma�y kopie bezpo�rednio lub
po�rednio od ciebie, to jedynym sposobem pozwalaj�cym ci
na przestrzeganie i licencji patentowej, i Licencji
niniejszej, by�oby ca�kowite powstrzymanie si� od
jakiejkolwiek dystrybucji Programu.

  Je�eli w jakich� szczeg�lnych okoliczno�ciach kt�ry�
fragment niniejszego punktu sta�by si� niewa�ny lub
niewykonywalny, to intencj� jest, aby znajdowa�a
zastosowanie pozosta�a cz�� punktu, a tre�� ca�ego punktu
by�a stosowana w pozosta�ych okoliczno�ciach. 

  Celem niniejszego punktu nie jest zach�canie do
naruszania patent�w czy innych praw w�asno�ci, albo te� do
podwa�ania ich wa�no�ci; niniejszy punkt za sw�j jedyny
cel ma ochron� integralno�ci systemu rozpowszechniania
wolnego oprogramowania, realizowanego za pomoc�
publicznych licencji. Wielu ludzi bezinteresownie wnios�o
sw�j wk�ad do stworzenia szerokiego zakresu oprogramowania
upowszechnianego w tym systemie, maj�c zaufanie do
konsekwentnego jego stosowania; wy��cznie do
autora/ofiarodawcy nale�y decyzja, czy �yczy on sobie
rozprowadzania oprogramowania za po�rednictwem innego
systemu i licencjobiorca nie mo�e tego prawa wyboru
ogranicza�. 

  Intencj� niniejszego punktu jest jasne i wyra�ne
przedstawienie tego, co uwa�a si� za skutki, jakie rodzi
pozosta�a cz�� niniejszej Licencji.

  8. W przypadku, gdy dystrybucja i/lub u�ywanie Programu
w niekt�rych krajach poddane jest ograniczeniom patentowym
lub zastrze�eniom prawami autorskimi, pocz�tkowy posiadacz
praw autorskich, kt�ry poddaje Program pod oddzia�ywanie
niniejszej Licencji, mo�e doda� wyra�nie zakre�lone
geograficzne ograniczenie rozpowszechniania wy��czaj�ce te
kraje, dzi�ki czemu dystrybucja dozwolona b�dzie wy��cznie
w krajach czy w�r�d kraj�w nie obj�tych takim wy��czeniem.
W przypadku takim, niniejsza Licencja obejmuje dane
ograniczenie tak, jakby by�o ono wpisane w jej tre��.

  9. W miar� potrzeby Fundacja Wolnego Oprogramowania mo�e
publikowa� poprawione i/lub nowe wersje Powszechnej
Licencji Publicznej. Takie nowe wersje b�d� napisane w
duchu podobnym do obecnej wersji, ale mog� r�ni� si� w
szczeg�ach poruszaj�cych nowe problemy czy zagadnienia.

  Ka�dej wersji nadaje si� wyr�niaj�cy j� numer. Je�eli
Program podaje numer wersji niniejszej Licencji, odnosz�cy
si� do tej wersji i "wszelkich wersji nast�pnych", masz do
wyboru albo stosowa� si� do postanowie� i warunk�w tej
wersji, albo kt�rejkolwiek wersji p�niejszej wydanej
przez Fundacj� Wolnego Oprogramowania. O ile Program nie
podaje numeru wersji niniejszej Licencji, mo�esz wybra�
dowoln� wersj� kiedykolwiek opublikowan� przez Fundacj�.

  10. Je�li chcesz w��czy� cz�ci Programu do innych
wolnych program�w, kt�rych warunki rozpowszechniania s�
inne, zwr�� si� pisemnie do autora z pro�b� o pozwolenie.
W przypadku oprogramowania obj�tego przez Fundacj� prawem
autorskim, napisz do Fundacji; czasami czynimy od tego
odst�pstwa. W naszej decyzji kierujemy si� dwoma celami:
utrzymania wolnego statusu wszystkich pochodnych naszego
wolnego oprogramowania oraz - generalnie - promowania
wsp�udzia�u i wielokrotnego stosowania oprogramowania.


                  WYR�B BEZ GWARANCJI

  11. PONIEWA� PROGRAM JEST LICENCJONOWANY BEZP�ATNIE, NIE
JEST OBJ�TY GWARANCJ� W ZAKRESIE DOZWOLONYM PRZEZ
OBOWI�ZUJ�CE PRZEPISY. O ILE NA PI�MIE NIE STANOWI SI�
INACZEJ, POSIADACZE PRAW AUTORSKICH I/LUB INNE STRONY
ZAPEWNIAJ� PROGRAM W STANIE, W JAKIM JEST ("JAK WIDA�")
BEZ JAKIEJKOLWIEK GWARANCJI, ANI WYRA�NEJ, ANI DOMY�LNEJ,
W TYM MI�DZY INNYMI DOMY�LNYCH GWARANCJI CO DO
PRZYDATNO�CI HANDLOWEJ I PRZYDATNO�CI DO OKRE�LONYCH
ZASTOSOWA�. CA�O�� RYZYKA W ZAKRESIE JAKO�CI I
SKUTECZNO�CI DZIA�ANIA PROGRAMU PONOSISZ SAM. W RAZIE
GDYBY PROGRAM OKAZA� SI� WADLIWY, PONOSISZ KOSZT CA�EGO
NIEZB�DNEGO SERWISU, NAPRAWY I KORYGOWANIA.

  12. O ILE OBOWI�ZUJ�CE PRAWO NIE STANOWI INACZEJ ALBO
CZEGO� INNEGO NIE UZGODNIONO W FORMIE PISEMNEJ, �ADEN
POSIADACZ PRAW AUTORSKICH ANI INNA STRONA MODYFIKUJ�CA
I/LUB REDYSTRYBUJ�CA PROGRAM ZGODNIE Z POWY�SZYMI
ZEZWOLENIAMI, W �ADNYM WYPADKU NIE JEST ODPOWIEDZIALNA
WOBEC CIEBIE ZA SZKODY, W TYM SZKODY OG�LNE, SPECJALNE,
UBOCZNE LUB SKUTKOWE, WYNIK�E Z U�YCIA B�D� NIEMO�LIWO�CI
U�YCIA PROGRAMU (W TYM, MI�DZY INNYMI, ZA UTRAT� DANYCH
LUB POWSTANIE DANYCH NIEDOK�ADNYCH, ALBO ZA STRATY
PONIESIONE PRZEZ CIEBIE LUB STRONY TRZECIE, JAK TE�
NIEDZIA�ANIE PROGRAMU Z INNYMI PROGRAMAMI), NAWET JE�LI
DANY POSIADACZ B�D� INNA STRONA ZOSTALI POWIADOMIENI O
MO�LIWO�CI POWSTANIA TAKICH SZK�D.


              KONIEC ZASAD I WARUNK�W

  Jak stosowa� niniejsze Warunki do Twoich nowych
program�w

  Je�li opracowujesz nowy program i chcia�by�, aby sta�
si� on przydatny dla szerokiego og�u, najlepsz� drog� do
osi�gni�cia tego b�dzie nadanie twemu programowi
charakteru wolnego oprogramowania, kt�re ka�dy mo�e
redystrybuowa� i zmienia� na niniejszych warunkach.

  W tym celu do programu do��cz poni�sze informacje.
Bezpieczniej jest do��czy� je na pocz�tku ka�dego pliku
�r�d�owego, dzi�ki czemu najskuteczniej mo�na przekaza�
fakt nieistnienia gwarancji; ka�dy plik powinien przy tym
nosi� uwag� "copyright" i odno�nik, gdzie mo�na znale��
pe�n� informacj�.

    nazwa programu i informacja, do czego on s�u�y.
    Copyright (C) 19../20.. nazwisko autora

    Niniejszy program jest wolnym oprogramowaniem;
    mo�esz go rozprowadza� dalej i/lub modyfikowa� na
    warunkach Powszechnej Licencji Publicznej GNU,
    wydanej przez Fundacj� Wolnego Oprogramowania -
    wed�ug wersji 2-giej tej Licencji lub kt�rej� z
    p�niejszych wersji.

    Niniejszy program rozpowszechniany jest z nadziej�,
    i� b�dzie on u�yteczny - jednak BEZ JAKIEJKOLWIEK
    GWARANCJI, nawet domy�lnej gwarancji PRZYDATNO�CI
    HANDLOWEJ albo PRZYDATNO�CI DO OKRE�LONYCH
    ZASTOSOWA�. W celu uzyskania bli�szych informacji -
    Powszechna Licencja Publiczna GNU.

    Z pewno�ci� wraz z niniejszym programem otrzyma�e�
    te� egzemplarz Powszechnej Licencji Publicznej GNU
    (GNU General Public License); je�li nie - napisz do
    Free Software Foundation, Inc., 51 Franklin Street,
    Fifth Floor, Boston, MA  02110-1301  USA

  Podaj te� informacje o sposobie kontaktowania si� z
tob� poczt� elektroniczn� lub zwyk��.

  Je�li dany program jest interaktywny, spraw, aby w
momencie wchodzenia w tryb interaktywny wy�wietla� on
komunikat jak w poni�szym przyk�adzie:

    Gnomovision wersja 69, Copyright C 19.. nazwisko

    Gnomovision wydawany jest ABSOLUTNIE BEZ �ADNEJ
    GWARANCJI - w celu uzyskania dalszych szczeg��w
    wpisz "show w". To jest wolne oprogramowanie i mile
    widziane jest dalsze rozpowszechnianie go przez
    ciebie na okre�lonych warunkach - w celu uzyskania
    bli�szych szczeg��w wpisz "show c".

  Powy�sze hipotetyczne polecenia "show w" i "show c"
winny powodowa� wy�wietlenie odpowiednich cz�ci
Powszechnej Licencji Publicznej. Oczywi�cie mo�esz u�ywa�
innych polece� ni� "show w" i "show c"; mog� to by� nawet
klikni�cia mysz� lub pozycje menu - co tylko sobie uznasz
za stosowne.

  Powiniene� te� poprosi� swego pracodawc� (je�li
pracujesz jako programista) czy te� swoj� szko�� (je�li
jeste� uczniem), o podpisanie, w razie potrzeby,
"Rezygnacji z praw autorskich" do programu. Poni�ej
podajemy przyk�ad (zmie� nazwy/nazwiska):

    My, firma Jojodyne Sp. z o.o. niniejszym zrzekamy
    si� i rezygnujemy z wszelkich interes�w prawnych w
    zakresie praw autorskich do programu "Gnomovision"
    (kt�ry realizuje nast�puj�ce funkcje...), napisanego
    przez p.Jana Kowalskiego.

    Podpis: /-/ Gniewos�aw Wielkowa�ny

    Gniewos�aw Wielkowa�ny, Prezes...itp

  Powszechna Licencja Publiczna nie zezwala na w��czanie
twego programu do program�w prawnie zastrze�onych. Je�li
tw�j program jest bibliotek� podprogram�w, mo�esz
rozwa�y�, czy nie b�dzie korzystniej zezwoli� na
powi�zanie prawnie zastrze�onych aplikacji z bibliotek�.
Je�li chcia�by� w�a�nie tego dokona�, zamiast niniejszej
Licencji zastosuj Powszechn� Licencj� Publiczn� GNU dla
Bibliotek.

[QueryBox]
Okna zapytania

W oknach dialogowych u�yj kursor�w lub naci�nij
pod�wietlon� liter� aby wybra� opcj�. Mo�esz te� klikn��
mysz� na odpowiednim przycisku.

[How to use help]
Jak korzysta� z pomocy

Do obs�ugi przegl�darki pomocy mo�esz u�y� kursor�w lub
myszy. Naci�nij strza�k� w d� aby przej�� do
nast�pnej pozycji lub przewin�� ekran w d�. Naci�nij
strza�k� w g�r� aby przej�� do poprzedniej pozycji lub
przewin�� ekran w g�r�. Naci�nij strza�k� w prawo aby
pod��y� za zaznaczonym odno�nikiem. Naci�nij strza�k� w
lewo aby powr�ci� do poprzedniego odwiedzonego w�z�a w
historii.

Je�li tw�j terminal nie obs�uguje klawiszy kursor�w,
mo�esz u�y� spacji aby przewin�� do przodu i klawisza
b aby przewin�� do ty�u. U�yj TAB aby przej�� do
nast�pnej pozycji i ENTER aby odwiedzi� zaznaczony
odno�nik. Klawisz l wraca do poprzedniego odwiedzonego
w�z�a w historii. Naci�nij ESC aby wyj�� z
przegl�darki pomocy.

Lewy przycisk myszy uaktywnia odno�nik lub przewija ekran.
Prawy wraca do poprzedniego w�z�a w historii.

Pe�na lista klawiszy przegl�darki pomocy:

Podstawowe klawisze ruchuGeneral Movement Keys tak�e
dzia�aj�.

tab           Nast�pna pozycja.
M-tab         Poprzednia pozycja.
d�           Nast�pna pozycja lub przewi� ekran w d�.
g�ra          Poprzednia pozycja lub przewi� w g�r�.
prawo, enter  Uaktywnia odno�nik.
lewo, l       Poprzedni w�ze� w historii.
F1            Pomoc dla przegl�darki pomocy.
n             Nast�pny w�ze�.
p             Poprzedni w�ze�.
c             Przej�cie do Spisu tre�ci.
F10, esc      Wyj�cie z przegl�darki pomocy.

Local variables:
fill-column: 58
end:
