[Contents]
  OPISDESCRIPTION
  OPCJEOPTIONS
  OpisOverview
  Obs³uga myszyMouse Support

  KlawiszeKeys
    Klawisze ró¿neMiscellaneous Keys
    Panel KatalogówDirectory Panels
    Linia Pow³okiShell Command Line
    Podstawowe klawisze ruchuGeneral Movement Keys
    Linia wej¶ciowa klawiszyInput Line Keys

  Linia menuMenu Bar
    Lewe i prawe menuLeft and Right Menus
      Tryby wy¶wietlania (Listing modes)Listing Mode...
      Porz±dek sortowania (Sort order...)Sort Order...
      Filtry (Filter...)Filter...
      Od¶wie¿ (Reread)Reread
    Menu plików (File menu)File Menu
      Szybka zmiana katalogów (Quick cd) M-cQuick cd
    Menu komend (Command Menu)Command Menu
      Drzewo katalogów (Directory Tree)Directory Tree
      Znajd¼ plik (Find File)Find File
      Panel zewnêtrznyExternal panelize
      HotlistHotlist
      Edycja rozszerzeñ pliów (Extension File Edit)Extension File Edit
      Prace w tle (Background jobs)Background Jobs
      Edycja menu u¿ytkownika (Menu File Edit)Menu File Edit
    Menu opcji (Options Menu)Options Menu
      KonfiguracjaConfiguration
      Wygl±d (Layout)Layout
      Potwierdzanie (Confirmation)Confirmation
      Wy¶wietlanie znaków (Display bits)Display bits
      Nauka klawiszy (Learn keys)Learn keys
      Wirtualny system plików (Virtual FS)Virtual FS
      Zapisz ustawienia (Save Setup)Save Setup

  Wykonywanie poleceñ systemu operacyjnego (Executing operating system commands)Executing operating system commands
    Wbudowana komenda cd (The cd internal command)The cd internal command
    Obs³uga makr (Macro Substitution)Macro Substitution
    Obs³uga podpow³oki (The subshell support)The subshell support
  ChmodChmod
  ChownChown
  Zaawansowane chown (Advanced Chown)Advanced Chown
  Operacje na plikach (File Operations)File Operations
  Maski kopiowania/przenoszenia (Mask Copy/Rename)Mask Copy/Rename
  Wbudowany podgl±d plikówInternal File Viewer
  Wbudowany edytor plikówInternal File Editor
  DokañczanieCompletion
  Wirtualny system plików (Virtual File System)Virtual File System
    System plików FTP (FTP File System)FTP File System
    System plików tar (Tar File System)Tar File System
    Transfer plików pomiêdzy systemami plików (FIle transfer over SHell filesystem)FIle transfer over SHell filesystem
    Sieciowe systemy plikówNetwork File System
    Odzyskiwanie plikówUndelete File System
  Polskie znakiPolskie znaki
  KoloryColors
  Specjalne ustawieniaSpecial Settings
  Baza danych terminali (Terminal databases)Terminal databases

  PLIKIFILES
  DOSTÊPNO¦ÆAVAILABILITY
  ZOBACZ TAK¯ESEE ALSO
  AUTORZYAUTHORS
  B£ÊDYBUGS
  T£UMACZENIET£UMACZENIE
  LicencjaLicense
  Nieoficjalne t³umaczenie licencjiLicense-pl
  Okna zapytaniaQueryBox
  Jak korzystaæ z pomocyHow to use help
[DESCRIPTION]
OPIS

Midnight Commander jest przeszukiwark±
katalogów/mened¿erem plików dla systemów Unixopodobnych[OPTIONS]
OPCJE


-a      Wy³±cza u¿ywanie symboli graficznych przy
        rysowaniu ramek.

-b      Wymusza wy¶wietlanie czarno-bia³e.

-c      Wymusza wy¶wietlanie w kolorze, zobacz sekcjê
        Kolory ¿eby zasiêgn±æ szerszej informacji.

-C arg  U¿ywane do wybierania innego koloru, który ma byæ
        obecny w linii poleceñ. Format argumentu arg jest
        opisany w sekcji Kolory.

-d      Wy³±cza u¿ywanie myszy.

-f      Wy¶wietla wkompilowane ¶cie¿ki, w których
        Mindnight Commander szuka swoich plików.

-k      Resetuje "miêkkie" klawisze do ich standardowych
        funkcji z termcap/terminfo. U¿yteczne tylko przy
        terminalach HP, kiedy klawisze funkcyjne nie
        dzia³aj±.

-l plik Zachowuje logi z serwerów ftp do pliku plik.

-P      Przy zakoñczeniu programu, Midnight Commander
        wydrukuje na ekranie katalog, w którym
        pracowali¶my na koñcu; to w po³aczeniu z funkcj±
        napisan± poni¿ej pozwoli ci na przegl±danie
        swoich katalogów i automatyczne przej¶cie do
        tego, w którym by³e¶ ostatnio (dziêkujê Torbenowi
        Fjerdingstadowi i Sergeyowi za wk³ad w tê funkcjê
        oraz za kod ¼ród³owy, który wprowadzili w ¿ycie).
u¿ytkownicy basha i zsh:

mc ()
{
        MC=$HOME/tmp/mc$$-"$RANDOM"
        /home/john/prjroot/rootfs/usr/bin/mc -P "$@" > "$MC"
        cd "`cat $MC`"
        rm "$MC"
        unset MC;
}

u¿ytkownicy tcsh:
alias mc 'setenv MC `/home/john/prjroot/rootfs/usr/bin/mc -P !*`; cd $MC; unsetenv MC'
        Wiem, ¿e ta funkcja mog³aby byæ krótsza dla basha
        i zsh, ale ma³e cudzys³owy nie zaakceptowa³y by
        zawieszenia programu kombinacj± C-z.

-s      W³±cza tryb powolnego terminala, w którym program
        nie bêdzie rysowa³ zbyt obci±¿aj±cych znaków
        graficznych oraz wy³±czy opcjê weryfikacji.

-t      U¿ywane tylko je¶li kod by³ skompilowany przy
        u¿yciu Slanga i terminfo: powoduje, ¿e Midnight
        Commander bêdzie u¿ywaæ zmiennej ¶rodowiskowej
        TERMCAP do pokazywania informacji terminala,
        zamiast informacji w systemowej bazie typów
        terminali.

-u      Wy³±cza u¿ywanie równoleg³ej pow³oki (ma sens
        tylko je¶li Midnight Commander by³ kompilowany z
        obs³ug± równoleg³ych pow³ok).

-U      W³±cza u¿ycie jednoczesnego inerpretatora poleceñ
        (ma sens tylko je¶li Midnight Commander by³
        zbudowany z ustawieniem pow³oki w tle jako opcji
        dodatkowej).

-v plik W³±cza wbudowany podgl±d w celu obejrzenia
        wybranego pliku plik.

-V      Wy¶wietla wersjê programu.

-x      Wymusza w³±czenie trybu xterm. U¿ywane kiedy
        dzia³a siê na terminalach wyposa¿onych w opcje
        xterm (dwa tryby ekranu i mo¿liwo¶æ wysy³ania
        mysz± sygna³ów wyj¶cia).

Je¶li wybrano, pierwszy katalog u¿ywany jest do
wy¶wietlenia w pierwszym panelu. Drugi wy¶wietlany jest w
drugim panelu.[Overview]
Opis

Ekran Midnight Commandera podzielony jest na cztery
czê¶ci. Prawie ca³y obszar ekranu zajmuj± dwa panele.
Standardowo przedostatnia od do³u linijka ekranu,
przeznaczona jest do wpisywania poleceñ, a ostatnia
pokazuje klawisze funkcyjne. Najwy¿szy wiersz jest
wierszem menu. Mo¿e on byæ niewidoczny, ale pojawia siê
zawsze po klikniêciu w najwy¿sz± liniê ekranu, albo po
wci¶niêciu klawisza F9.

Midnight Commander pozwala na ogl±danie dwóch paneli w tym
samym czasie. Jeden z nich jest panelem aktywnym
(pod¶wietlona linia wyboru znajduje siê w³a¶nie w nim).
Niemal wszystkie operacje wykonuje siê na panelu aktywnym.
Niektóre operacje, jak np. kopiowanie, zmiana nazwy
u¿ywaj± jako domy¶lnego miejsca docelowego katalogu
otwartego w panelu nieaktywnym (nie martw siê, zawsze
zostaniesz poproszony o potwierdzenie takiej operacji). W
celu zasiêgniêcia szerszych informacji zajrzyj do dzia³ów
Panele katalogów, Lewe i prawe menu oraz Menu plików.

Mo¿esz wywo³ywaæ dowolne komendy systemowe po prostu
wpisuj±c je. Wszystko co piszesz pojawia siê w linii
poleceñ i po naci¶niêciu klawisza Enter zostanie wykonane
przez Midnight Commandera. Przeczytaj sekcjê Linia pow³oki
i Linia wej¶ciowa klawiszy, ¿eby nauczyæ siê wiêcej na ten
temat.

[Mouse Support]
Obs³uga myszy

Midnight Commander obs³uguje mysz. Modu³ ten jest
uruchamiany wtedy kiedy korzystasz z terminala xterm(1)
(dzia³a nawet wtedy, kiedy ³±czysz siê przez telnet albo
rlogin z innym komputerem z terminala xterm) lub je¶li
korzystasz z linuksa na konsoli z zainstalowanym serwerem
gpm(1).

Kiedy klikniesz lewym przyciskiem na panel z katalogami,
plik zostanie wybrany jako aktywny; je¶li klikniesz prawym
przyciskiem zostanie on zaznaczony [lub odznaczony - w
zale¿no¶ci od jego aktualnego stanu - dzia³anie podobne do
klawisza Insert - przyp. t³umacza].

Podwójne klikniêcie w plik spowoduje wykonanie pliku,
je¶li jest on wykonywalny, a je¶li rozszerzenie pliku jest
rozpoznawane przez Midnight Commander'a i dostêpny jest
odpowiedni program, jest on uruchamiany.

Mo¿liwe jest równie¿ wykonywanie komend przypisanych
klawiszom funkcyjnym przez klikniêcie w nie.

Je¶li klikniêcie odbêdzie siê w rejonie górnej lini panelu
z katalogami, zostanie on przewiniêty jedn± stronê wstecz.
Podobnie klikniêcie na doln± ramkê przewija tekst jedn±
stronê do przodu. Ta opcja klikania w ramki dzia³a równie¿
przy przegl±daniu pomocy i przy drzewie katalogów.

Standardowo czas autopowtórzenia przy klikaniu mysz±
wynosi 400 milisekund. Tê warto¶æ mo¿na zmieniæ edytuj±c
plik ~/.mc/ini i zmieniaj±c parametr mouse_repeat_rate.

Je¶li u¿ywasz Midnight Commandera z obs³ug± myszy, mo¿esz
"przeszczepiaæ" kawa³ki tekstów i u¿ywaæ standardowych
zastosowañ myszki (kopiowanie i wklejanie) za pomoc±
klawisza Shift.

[Keys]
Klawisze

Niektóre komendy Midnight Commandera wywo³uje siê
kombinacj± klawiszy Control (czasem opisywanego jako CTRL
lub CTL) lub Meta (opisywanego ALT lub nawet Compose). W
tym manualu (pliku pomocy) bêdziemy u¿ywaæ nastêpuj±cych
kombinacji: C-<klawisz> - znaczy: trzymaj±c klawisz
Control naci¶nij <klawisz>. Wiêc C-f bêdzie oznaczaæ:
trzymaj±c Control, naci¶nij f.

M-<klawisz> - znaczy, ¿e trzymaj±c klawisz Meta lub alt
naciskamy <klawisz>. Je¶li na twojej klawiaturze nie ma
ani klawisza Alt ani Meta, naci¶nij ESC, pu¶æ go i wtedy
naci¶nij <klawisz> [skutek ten sam, acz jednak u¿ycie
trochê mniej przyjemne i bardziej skomlikowane - przyp.
t³umacza].

Wszystkie linie wprowadzaj±ce Midnight Commandera u¿ywaj±
w przybli¿eniu tych samych przypisañ klawiszy co wersja
GNU edytora Emacs.

Jest wiele sekcji mówi±cych o klawiszach. Ta nastêpuj±ca
jest najwa¿niejsza.

Sekcja Menu plikówFile Menu opisuje skróty klawiszowe do komend
pojawiaj±cych siê w menu plików. Ta sekcja zawiera funkcjê
klawiszy. Wiêkszo¶æ z tych komend wywo³uje jak±¶ akcjê
przede wszystkim na jednym lub kilku wybranych plikach.

Sekcja Panele katalogoweDirectory Panels opisuje klawisze, które
zaznaczaj± plik lub pliki jako docelowe do dalszych
dzia³añ (akcj± jest najczê¶ciej jedna z tych
przedstawionych w menu plików).

Sekcja Komendy linii poleceñ wypisuje listê klawiszy,
które s± u¿ywane do wprowadzania lub edytowania tekstów w
wierszu poleceñ. Wiêkszo¶æ z nich kopiuje nazwy, i inne
tego typu, z panelu katalogów do linii poleceñ (¿eby
unikn±æ ich przepisywania), lub pozwala zwiedziæ historiê
komend linii poleceñ.

Klawisze linii wej¶ciowych s± u¿ywane do edytowania linii
na wej¶ciu (przy wpisywaniu). Oznacza, to ¿e stosuje siê
je zarówno do linii poleceñ jak do okien dialogowych.

[Miscellaneous Keys]
Klawisze ró¿ne

Jest tu kilka klawiszy, które nie kwalifikuj± siê do
¿adnej z wymienionych powy¿ej grup:

Enter. Je¶li jest wpisany jaki¶ tekst w linii poleceñ (na
samym dole, pod panelami), to wpisana komenda jest
wykonywana. Je¶li nic nie jest wpisane, i linia wyboru
jest na jakim¶ katalogu, Midnight Commander wykonuje
komendê chdir(2) (zmiana katalogu) do wybranego katalogu i
od¶wie¿a zawarto¶æ panelu; je¶li linia wyboru jest na
pliku wykonywalnym jest on wykonywany. I wreszcie je¶li
rozszerzenie pliku zgadza siê z ob³ugiwanym przez programy
zewnêtrzne, które s± obs³ugiwane prze Midnight Commandera,
s± one wywo³ywane z owym programem.

C-l. Od nowa rysuje wszystkie informacje okna Midnight
Commandera.

C-x c. Uruchamia komendê Chmod dla aktualnego pliku lub
zaznaczonych plików.

C-x o. Uruchamia komendê Chown dla aktualnego pliku lub
zaznaczonych plików.

C-x l. Uruchamia komendê dowi±zywania.

C-x s. Uruchamia komendê miêkkiego dowi±zywania.

C-x i. Zmienia aktywny panel.

C-x q. Prze³acza nieaktywny panel w tryb "quick view".

C-x !. Wykonuje komendê z zewnêtrznego panelu.

C-x h. Uruchamia komendê dodawania katalogów do hotlisty.

M-!. Uruchamia komendê filtrowanego podgl±du, opisanego w
sekcji Podgl±d.

M-?. Uruchamia komendê szukania pliku.

M-c. W³±cza okno dialogowe quick cd (szybkiej zmiany
katalogów)

C-o. Je¶li program jest uruchamiany na konsoli typu Linux
lub FreeBSD lub te¿ na konsoli xterm, poka¿e wyj¶cie
ostatnio wykonywanego programu. Je¶li uruchomiono Midnight
Commandera na konsoli type Linux, MC u¿ywa zewnêtrznego
programu (cons.saver) w celu zachowywyania i odzyskiwania
informacji na ekranie komputera.

Je¶li u¿ycie trybu pow³oki w tle jest wkompilowane, mo¿esz
nacisn±æ C-o w dowolnej chwili i zostataniesz przeniesiony
z powrotem bezpo¶rednio do g³ównego okna Midnight
Commandera, ¿eby powróciæ do wykonywania aplikacji po
prostu naci¶nij znów C-o. Je¶li masz zawieszon± aplikacjê
w³a¶nie przez u¿ycie tego triku, nie bêdziesz móg³
"odpalaæ" innych programów spod Midnight Commandera dopóki
nie zamkniesz zawieszonego programu.

Aby dowiedzieæ siê czego¶ na temat polskiech liter w
Midnight Commanderze przeczytaj sekcjê Polskie litery.

[Directory Panels]
Panel Katalogów

Sekcja opisuje klawisze, które operuj± na panelu
katalogów. Je¶li chcesz wiedzieæ jak zmieniæ panele zobacz
sekcjê Lewe i prawe menu.

Tab, C-i. Zmienia aktywny panel. Stary panel staje siê w
tym momencie aktywnym panelem, a aktywny staje siê starym.
Linia wyboru zmienia swoje po³o¿enia do aktywnego panelu.

Insert, C-t. Do zaznaczania plików mo¿esz u¿ywaæ klawisza
Insert lub C-t. ¯eby odznaczyæ plik po prostu zaznacz
jaki¶ ju¿ zaznaczony.

M-g, M-r, M-j. U¿ywane do wybierania najwy¿szego,
¶rodkowego i najni¿szego pliku w panelu.

C-s, M-s. Uruchamia szukanie pliku w katalogu na podstawie
jego nazwy. Kiedy szukanie jest aktywne, ka¿de naci¶niêcie
klawisza doda jeden znak do poszukiwania zamiast wypisania
go linii poleceñ. Je¶li opcja "Show mini-status" jest
w³±czona, szukany ci±g znaków pojawia siê w linii
mini-statusu. Kiedy wpisujemy znak, linia wyboru
przemieszcza siê do nastêpnego pliku zaczynaj±cego siê od
podanych liter. Klawisze backspace lub del mog± byæ
u¿ywane do poprawiania b³êdów. Je¶li C-s zostanie
naci¶niête ponownie, Midnight Commander rozpoczyna
szukanie nastêpnego pliku zaczynaj±cego siê od podanych
znaków.

M-t. Prze³±cza tryb wy¶wietlania do nastêpnego mo¿liwego.
U¿ywaj±c tej opcji ³atwo jest przej¶æ szybko z d³ugiego do
krótkiego trybu wy¶wietlania jak równie¿ do tego
zdefiniowanego przez u¿ytkownika.

C-\ (control-backslash). Pokazuje hotlistê katalogów i
zmienia katalog do wybranego przez u¿ytkownika.

+ (plus). U¿ywane do zaznaczania grupy plików. Midnight
Commander zapyta o wyra¿enie opisuj±c± grupê. Je¶li opcja
Shell Patterns jest w³±czona, typ wyra¿eñ jest bardzo
podobny do tego w pow³oce (* dla zera i wiêcej znaków i ?
dla jednego znaku). Je¶li za¶ opcja Shell Patterns jest
wy³±czona, sposób zaznaczania plików jest zgodny z
ustawieniami (zobacz ed(1)).

Je¶li wyra¿enie zaczyna siê od uko¶nika (/), wtedy
zaznaczone zostan± katalogi zamiast plików.

\ (backslash). U¿ywaj znaków "\" do odznaczania grupy
plików. Jest to przeciwieñstwo klawisza plus.

strza³ka do góry, C-p. Przenosi liniê wyboru do
poprzedniej pozycji w panelu.

strza³ka do do³u, C-n. Przenosi liniê wyboru do nastêpnej
pozycji w panelu.

home, a1, M-<. Przenosi liniê wyboru do pierwszej pozycji
w panelu.

end, c1, M->. Przenosi liniê wyboru do ostatniej pozycji w
panelu.

PageDown, C-v. Przenosi liniê wyboru jedn± stronê do do³u.

PageUp, M-v. Przenosi liniê wyboru jedn± stronê do góry.

M-o. Je¶li drugi panel jest zwyk³ym panelem wy¶wietlaj±cym
i w aktywnym panelu stoisz na katalogu, drugi panel bêdzie
pokazywaæ zawarto¶æ akutalnego katalogu (tak jak w Emacsie
kombinacja C-o). Je¶li nie stoisz na katalogu zawarto¶ci±
drugiego katalogu stanie siê katalog o jedno piêtro wy¿szy
od aktualnego.

C-PageUp, C-PageDown. Dzia³a tylko na konsoli typu Linux:
wykonuje przej¶cie do katalogu ".." lub do aktualnie
wybranego, w zale¿no¶ci od kombinacji.

M-y. Przenosi do poprzedniego katalogu w historii, podobne
do klikniêcia myszk±. '<'.

M-u. Przechodzi do nastêpnego katalogu w historii, podobne
do klikniêcie myszk± w '>'.

M-S-h, M-H. Wy¶wietla historiê katalogów, podobne
dzia³anie do klikniêcia myszk± 'v'.

[Shell Command Line]
Linia Pow³oki

Ta sekcja opisuje klawisze, które s± u¿yteczne do
efektywniejszego wpisywania podczas podawania komend
pow³oki.

M-Enter. Kopiuje nazwê aktualniego wybranego pliku do
linii poleceñ.

C-Enter. To samo co M-Enter, dzia³a tylko na konsoli typu
Linux.

M-Tab. Wykonuje dokoñczenie nazw plików, komend,
zmiennych, u¿ytkowników, nazw hostów za Ciebie.

C-x t, C-x C-t. Kopiuje nazwy zaznaczonych plików (lub
je¶li nie ma zaznaczonych - aktywnego) w aktywnym (C-x t)
lub nieaktywnym panelu (C-x C-t) do linii poleceñ.

C-x p, C-x C-p. Pierwsza kombinacja kopiuje pe³n± ¶cie¿kê
z aktywnego, a druga z nieaktywnego panelu.

C-q. Komenda 'quote' (cytuj) mo¿e byæ u¿ywana do
wpisywania do wiersza poleceñ znaków, które normalnie
przechwytywane s± przez Commandera (tak jak znak '+').

M-p, M-n. U¿ywaj tych klawiszy, ¿eby przegl±daæ historiê
komend. M-p wy¶wietla poprzedni±, a M-n nastêpn± komendê.

M-h. Wy¶wietla historiê aktualnej linii poleceñ.

[General Movement Keys]
Podstawowe klawisze ruchu

Przegl±darka pomocy, podgl±d plików i drzewo katalogów
u¿ywaj± podobnych klawiszy do przemieszczania. Przez to
akceptuj± dok³adnie te same klawisze. Ka¿de z nich z
reszt± traktuj± je jako swoje w³asne.

Niektóre partie Midnight Commandera równie¿ u¿ywaj± tych
klawiszy, wiêc niniejsza sekcja mo¿e byæ u¿yteczna równie¿
dla tych partii.

strza³ka w górê, C-p. Przechodzi jedn± liniê wstecz.

strza³ka w dó³, C-n. Przechodzi jedn± liniê naprzód.

Page Up, M-v. Przechodzi jedn± stronê wstecz.

Next Page, Page Down, C-v. Przechodzi jedn± stronê
naprzód.

Home, A1. Przechodzi do pocz±tku.

End, C1. Przechodzi na koniec.

Przegl±darka pomocy i podgl±d plików akceptuj± nastêpuj±ce
klawisze (poza tymi opisanymi powy¿ej).

b, C-b, C-h, Backspace, Delete. Przechodzi jedn± stronê
wstecz.

klawisz spacji. Przechodzi jedn± stronê naprzód.

u, d. Przechodzi pó³ strony naprzód lub wstecz.

g, G. Przechodzi do pocz±tku lub do koñca.

[Input Line Keys]
Linia wej¶ciowa klawiszy

Linie wej¶ciowe (te u¿ywane w linii komend i w oknach
dialogowych), akceptuj± nastêpuj±ce klawisze:

C-a. umieszcza kursor na pocz±tku linii.

C-e. umieszcza kursor na koñcu linii.

C-b, move-left. przenosi kursor o jedn± pozycjê w lewo.

C-f, move-right. przenosi kursor o jedn± pozycjê w prawo.

M-f. przesuwa kursor o jedno s³owo naprzód.

M-b. przesuwa kursor o jedno s³owo wstecz.

C-h, backspace. kasuje poprzedni znak.

C-d, Delete. kasuje znak w miejscu kursora (nad nim).

C-@. wstawia zaznaczenie do kasowanie (patrz nastêpne
pozycje).

C-w. kopiuje tekst spomiêdzy kursora i zaznaczenia do
bufora i usuwa go z linii poleceñ.

M-w. to samo co C-w tylko, ¿e nie usuwa tekstu z linii.

C-y. wstawia spowrotem zawarto¶æ wyciêtego bufora.

C-k. wycina tekst od kursora do koñca linii.

M-p, M-n. U¿ywaj tych klawiszy, ¿eby przegl±daæ historiê
komend. M-p wy¶wietla poprzedni±, a M-n nastêpn±.

M-C-h, M-Backspace. kasuje jedno s³owo wstecz
(poprzednie).

M-Tab. Wykonuje dokoñczenie nazw plików, komend,
zmiennych, u¿ytkowników, nazw hostów za Ciebie.



[Menu Bar]
Linia menu

Linia menu uaktywnia siê kiedy wciskasz klawisz F9 lub
kiedy klikasz myszk± na najwy¿szy wiersz ekranu. Linia
menu ma piêæ podmenu: "left", "file", command", "options"
i "right" (po polsku to jest "lewe", "plik", "komendy",
"opcje", "prawe").

Lewe i prawe menu pozwalaj± ci na modyfikacje wygl±du
lewego i prawego panelu katalogowego.

Menu plik pozwala na wykonanie akcji na aktualnym lub
zaznaczonych plikach.

Menu komend mie¶ci w sobie mo¿liwe do wykonania akcje,
które s± du¿o bardziej globalne i nie maj± zwi±zku z
aktualnym i zaznaczonymi plikami.

[Left and Right Menus]
Lewe i prawe menu

Wygl±d panelu katalogowego mo¿e zostaæ zmieniony poprzez
menu left i right.

[Listing Mode...]
Tryby wy¶wietlania (Listing modes)

Tryby wy¶wietlania s± u¿ywane do zmienia ustawieñ przy
wy¶wietlaniu. Dostêpne s± cztery ró¿ne tryby: Full, Brief,
Long i User. Tryb "Full" pokazuje nazwê, rozmiar i czas
modyfikacji pliku.

Tryb "Brief" pokazuje tylko nazwê pliku i ma dwie kolumny
(dziêki temu mo¿e pokazywaæ nawet dwa razy wiêcej ni¿ inne
tryby). Tryb "Long" jest podobny do wyniku polecenia ls
-l. Zabiera on szeroko¶æ ca³ego ekranu.

Je¶li wybierzesz tryb "user" (u¿ytkownika), bêdziesz móg³
wybraæ w³asny sposób wy¶wietlania.

Tryb u¿ytkownika musi zaczynaæ siê od okre¶lenia wielko¶ci
panelu. Mo¿e to byæ "half" (pó³) lub "full" (ca³y) i
okre¶la, czy ma byæ widoczny jeden du¿y panel na ca³y
ekran czy dwa mniejsze.

Po rozmiarze panelu mo¿esz w³±czyæ tryb dwóch kolumn
panelu. Robi siê to dodaj±c liczbê "2" do tekstu formatu.

Po tym wpisujesz ju¿ nazwy pól z podaniem opcjonalnej
wielko¶ci. Wszystkie mo¿liwe pola jakich mo¿esz u¿yæ to:

name    wy¶wietla nazwê pliku.

size    wy¶wietla wielko¶æ pliku.

bsize   jest alternatyw± dla format size. Wy¶wietla
        rozmiar plików, a dla katalogów po prostu
        wy¶wietla tekst "SUB-DIR" lub "UP--DIR".

type    wy¶wietla jednoznakowy opis typu pliku. Ten znak
        jest taki sam co ten wy¶wietlany prze komendê ls
        z flag± -F. Wy¶wietlana jest gwiazdka dla plików
        wykonywalnych, uko¶nik dla katalogów, ma³pa (@)
        dla dowi±zañ, znak równo¶ci dla gniazd, minus dla
        urz±dzeñ niestniej±cych, znak plus dla urz±dzeñ
        istniej±cych, pionow± kreskê (|) dla kolejek
        FIFO, tyldê dla dowi±zañ symbolicznych, i
        wykrzyknik dla dowi±zañ wskazuj±cych na
        nieistniej±cy plik.

mark    Gwiazdka je¶li plik jest zaznaczony, spacja je¶li
        nie jest.

mtime   czas ostatniej modyfikacji pliku.

atime   czas ostatniego dostêpu do pliku.

ctime   czas utworzenia pliku.

perm    tekst reprezentuj±cy aktualne uprawnienia do
        pliku.

mode    warto¶æ (cyfrowa) przedstawiaj±ca prawa do pliku.

nlink   liczba dowi±zañ do pliku. ngid GID (numeryczny).

nuid    UID (numeryczny).

owner   w³a¶ciciel pliku.

group   grupa pliku.

inode   numer i-wêz³a pliku.

Mo¿esz równie¿ u¿ywaæ nastêpuj±cych znaków dla zmiany
wy¶wietlania:

space   spacja w formacie wy¶wietlania.

|       Ten znak jest u¿ywany w celu dodania pionowej
        linii od formatu wy¶wietlania.

¯eby wymusiæ szeroko¶æ pola, po prostu dodaj ':' a potem
ilo¶æ znaków jakie chcesz ¿eby mia³o pole. Je¶li numer
zaczyna siê od '+', to szeroko¶æ nie mo¿e byæ mniejsza od
podanej, je¶li program zobaczy, ¿e jest jeszcze trochê
miejsca na ekranie, rozszerzy to pole.

Na przyk³ad tryb Full wy¶wietla w formacie:

half type name | size | mtime

A format Long wy¶wietla w formacie:

full perm space nlink space owner space group space size
space mtime space name

A to jest ca³kiem ³adny tryb u¿ytkownika:

half name | size:7 | type mode:3

Panele mog± byæ równie¿ przestawione do nastêpuj±cych
trybów:

Info    Tryb info wy¶wietla informacjê o aktualnie
        zaznaczonym pliku i (je¶li to mo¿liwe) o systemie
        plików.

Tree (drzewo)
        Widok drzewa jest ca³kiem podobny do widoku
        Drzewa katalogówDirectory Tree. Zobacz tê sekcjê je¶li chcesz
        siê dowiedzieæ czego¶ na ten temat.

Quick View
        W tym trybie, panele zostan± prze³±czone w tryb
        zredukowanego podgl±du wy¶wietlaj±cego zawarto¶æ
        aktualnego pliku. Je¶li zaznaczysz panel
        (klawiszem tab lub myszk±), bêdziesz mia³ dostêp
        do wiêkszo¶ci komend podgl±du.[Sort Order...]
Porz±dek sortowania (Sort order...)

Istnieje osiem porz±dków sortowania. Przez: nazwê,
rozszerzenie, datê modyfikacje, datê odczytu, datê zmiany,
rozmiar, numeru i-wêz³a i niesortowane. Porz±dek
sortowanie mo¿esz wybraæ w oknie dialogowym porz±dku
sortowania. Mo¿liwe jest równie¿ wybranie porz±dku
wstecznego (od ty³u).

Standardowo, katalogi s± sortowane przed plikami, ale mo¿e
to byæ zmienione przez opcjê Mix all files (mieszaj
wszystkie pliki).

[Filter...]
Filtry (Filter...)

Komenda filtra pozwala ci na podanie rozszerzenia, które
musi byæ spe³nione, ¿eby pliki by³y widoczne (na przyk³ad
*.tar.gz). Niezale¿nie od filtru katalalogi i dowi±zania
do katalogów s± zawsze pokazywane.

[Reread]
Od¶wie¿ (Reread)

Komenda od¶wie¿ od¶wie¿a widok wszystkich plików w
katalogów. Jest to u¿yteczne je¶li inny proces stworzy³
lub usun±³ jaki¶ pliki. Je¶li u¿y³e¶ panelu zewnêtrznego,
wszystkie informacje zostan± przywrócone do prawdziwego
stanu.[File Menu]
Menu plików (File menu)


Midnight Commander u¿ywa klawiszy F1 - F10 jako skrótów
klawiszowych do komend wystêpuj±cych w menu plików. Na
terminalach bez funkcji klawiszowych (F1 - F10) mo¿na
u¿ywaæ kombinacji klawisza Escape i numeru ( odpowiednio 1
dla F1, 2 dla F2 itd. )

Menu plików ma nastêpuj±ce komendy (skróty klawiszowe
umieszczone s± na dole ekranu):

Pomoc (F1)

Wywo³uje wbudowan± przegl±darkê plików pomocy. Wewn±trz
niej mo¿na u¿ywaæ klawisza Tab ¿eby przej¶æ do nastêpnego
dowi±zania, Enter ¿eby przej¶æ do wybranego dowi±zania.
Klawisze Spacji i Backspace s± u¿ywane do poruszania siê
naprzód i wstecz na stronach pomocy. Naci¶nij klawisz F1
¿eby uzyskaæ pe³n± listê dostêpnych klawiszy w pomocy.

Menu (F2)

Wywo³uje menu u¿ytkownika. Menu u¿ytkownika jest ³atwym w
u¿yciu narzêdziem s³u¿±cym do obs³ugi zewnêtrznych
programów i dodatkowych opcji Midnight Commandera.

Podgl±d (F3, Shift-F3)

W³±cza podgl±d aktualnie wybranego pliku. Standardowowo
wywo³ywany jest wbudowany podgl±d plików, ale je¶li opcja
"Use internal view" jest wy³±czona, wywo³ywany jest
zewnêtrzny program do pogl±du, wskazywany przez zmienn±
PAGER. Je¶li jednak zmienna PAGER nie zosta³a jeszcze
zdefiniowana, wywo³ywana jest komenda "view". Je¶li
u¿yjesz kombinacji klawiszy Shift-F3, pogl±d zostanie
wywo³any bez jakiegokolwiek formatownia pliku.

Filtrowany podgl±d (M-!)

Ta kombinacja klawiszy oczekuje na komendê i jej argument
(argumentem standardowo jest wybrany aktualnie plik), ca³e
wyj¶cie programu przekierowywane jest do pliku, który
zostaje automatycznie wy¶wietlony na ekranie w trybie
podgl±du.

Edycja (F4)

Aktualnie ta komenda wywo³uje edytor vi(1) lub edytor
wybrany w zmiennej ¶rodowiskowej, lub wbudowany wewnêtrzny
edytor plików je¶li opcja use_internal_edit jest w³±czona.

Kopiuj (F5)

W³±cza okno dialogowe, w którym standardowo znajduje siê
¶cie¿ka do katalogu w nieaktywnym panelu, po czym kopiuje
aktualny plik (lub wybrane je¶li wybrano jakiekolwiek) do
katalogu, który wybrali¶my w oknie dialogowym. Podczas
procesu kopiowania mo¿esz go w ka¿dej chwili przerwaæ
wciskaj±c C-c lub Esc. ¯eby dowiedzieæ siê czego¶ wiêcej
na temat jokerów w ¶cie¿ce ¼ród³owej (którymi najczê¶ciej
bêd± * lub ^\(.*\)$) i innych mo¿liwych okre¶leñ w
katalogu docelowym zobacz kategoriê "Maski
kopiowania/przenoszenia"

Na niektórych systemach mo¿liwe jest kopiowanie w tle,
robi siê to klikaj±c na przycisk backgorund (lub
naciskaj±c kombinacjê M-b w oknie dialogowym). Background
Jobs jest u¿ywane do kontrolowania prac w tle.

Link (C-x l)

Tworzy sztywne dowi±zanie do aktualnego pliku.

SymLink (C-x s)

Tworzy symboliczne dowi±zanie do aktualnego pliku. Dla
tych, którzy nie wiedz± co to jest dowi±zanie: tworzenie
dowi±zania do pliku jest tak jak kopiowanie pliku, z tym
tylko, ¿e zarówno plik ¼ród³owy i docelowy reprezentuj±
ten sam plik. Na przyk³ad, je¶li edytujesz jeden z tych
plików, zmiany, które czynisz pojawiaj± siê w obu plikach.
Niektórzy mówi± na dowi±zania aliasy lub skróty.

Twarde dowi±zanie wydaje siê byæ prawdziwym plikiem. Po
stworzeniu go nie ma mo¿liwo¶ci rozró¿nienia, który z
plików jest oryginalny, a który jest dowi±zaniem. Jest
bardzo ciê¿ko zauwa¿yæ, ¿e wskazuj± one na ten sam plik.
U¿ywaj dowi±zañ twardych wtedy kiedy nie chcesz tego
wiedzieæ.

Dowi±zanie symboliczne jest tylko odwo³aniem do
oryginalnego pliku. Je¶li ten plik zostanie wyrzucony,
dowi±zanie stanie siê bezu¿yteczne. Jest ca³kiem ³atwo
zauwa¿yæ, ¿e pliki odnosz± siê w gruncie rzeczy do tego
samego. Midnight Commander pokazuje znak "@" przed nazw±
pliku je¶li jest dowi±zaniem symbolicznym do innych (poza
katalogami, przed którymi pokazuje tyldê (~)). Oryginalny
plik wskazywany przez dowi±zanie jest pokazywany w linii
mini-statusu, je¶li opcja "Show mini-status" jest
w³±czona. U¿ywaj dowi±zañ symbolicznych, je¶li chcesz
unik±æ problemów z rozpoznawaniem twardych dowi±zañ.

Zmiana nazwy/przeniesienie (F6)

W³±cza okno dialogowe, gdzie standardowo wpisana jest
nazwa katalogu w nieaktywnym panelu, i przenosi aktualnie
wybrany plik (lub zaznaczone je¶li choæ jeden jest
zaznaczony) do katalogu wpisanego w oknie dialogowym.
Podczas procesu przenoszenia mo¿esz u¿yæ kombinacji
klawiszy C-c lub ESC, ¿eby przerwaæ operacjê. Po wiêcej
szczegó³ów zobacz operacjê Kopiuj opisan± powy¿ej.
Wiêkszo¶æ rzeczy jest ca³kiem podobna.

Na niektórych systemach mo¿liwe jest przenoszenie w tle,
robi siê to klikaj±c na przycisk background (lub
naciskaj±c kombinacjê M-b w oknie dialogowym). Background
Jobs jest u¿ywane do kontrolowania prac w tle.

"Utwórz katalog (F7)"

W³±cza menu dialogowe i zak³ada katalog o podanej nazwie

Kasuj (F8)

Kasuje aktualnie wybrany lub zaznaczone pliki w aktywnym
panelu. Podczas procesu mo¿esz nacisn±æ C-C lub Esc ¿eby
przerwaæ operacjê. [skasowane pliki nie bêd± jednak
odzyskane - przyp. t³umacza].

Zaznacz grupê (+)

U¿ywane do zaznaczania grupy plików. Midnight Commander
bêdzie ¿±da³ tekstu opisuj±cego grupê plików. Je¶li opcja
Shell Patterns jest w³±czona, tekst bêdzie traktowany jako
globalny dla interpretatora (* oznacza zero lub wiêcej
znaków a ? oznacza jeden znak). Je¶li opcja Shell Patterns
jest wy³±czona, wtedy zaznaczanie plików jest robione z
zastosowaniem norm zewnêtrznych (zobacz ed (1)).

¯eby zaznaczyæ katalogi zamiast plików, tekst musi
zaczynaæ sie od znaku '/'.

Odznacz grupê (\)

U¿ywane do odznaczania grupy plików. Jest przeciwieñstwem
komendy Zaznacz pliki.

Wyjd¼ (F10, Shift-F10)

Zamyka Midnight Commandera. Shift-F10 jest u¿ywany je¶li
u¿ywasz "wrappera" pow³oki. Shift-F10 nie przeniesie ciê
do katalogu, w którym by³e¶ ostatnio w Midnight
Commanderze, zamiast tego przejdzie do katalogu, z którego
uruchomi³e¶ program.

[Quick cd]
Szybka zmiana katalogów (Quick cd) M-c

Ta komenda jest bardzo u¿yteczna, je¶li masz ju¿ pe³n±
liniê poleceñ, a chcesz przej¶æ do innego katalogu.
Uruchamia ona ma³e okno dialogowe, w którym podajesz to co
po normalnej komendzie cd po czym naciskasz Enter.
Wszystkie opcje s± dok³adnie takie same jak we wbudowanej
komendzie cd.

[Command Menu]
Menu komend (Command Menu)

Komenda drzewo katalogów (Directory tree) pokazuje drzewo
katalogów.

Komenda "Find file" szuka pliku spe³niaj±cego podane
warunki, natomiast komenda "Swap panels" zamienia
zawarto¶ci obu paneli.

Komenda "Panels on/off" pokazuje wyj¶cie ostatniej komendy
interpetatora poleceñ. Dzia³a ona tylko na terminalach
typu Linux lub FreeBSD.

Komenda porównywania katalogów (Compare directories) (C-x
d) porównuje zawarto¶ci panelu katalogowego z drugim.
Mo¿esz potem u¿yc Kopiuj (F5) ¿eby stworzyæ dwa dok³adnie
identyczne panele. Metoda "quick" porównuje tylko i
wy³±cznie rozmiary plików i ich daty. Metoda "thorough"
porównuje pliki bajt po bajcie. Ta metoda dzia³a tylko
wtedy kiedy komputer obs³uguje wywo³anie mmap(2). Metoda
"size-only" zwraca uwagê tylko na rozmiar plików. Nie ma
dla niej ¿adnego znaczenia czy plik ma inn± datê lub
zawarto¶æ, liczy siê tylko rozmiar.

Komenda historii komend (Command history) pokazuje listê
wpisanych komend. Ta, któr± wybierzesz, jest kopiowana do
linii poleceñ. Do historii komend mo¿na mieæ dostêp
równie¿ przy u¿yciu kombinacji M-p lub M-n.

Komenda hotlisty katalogów (Directory hotlist) (C-\)
pozwala na zmienianie katalogów do tych najczê¶ciej
u¿ywanych du¿o szybciej.

Komenda panelu zewnêtrznego (External panelize) pozwala na
wykonywania programów zewnêtrznych i ustawienia zawarto¶ci
paneli na to co zwróci³a wywo³ana komenda.

Komenda edycji rozszerzeñ plików (Extension file edit)
pozwala na w³asny wybór programów, które maj± byæ u¿ywane
do wykonywania plików z podanymi rozszerzeniami. Komenda
edycji pliku menu (Menu file edit) mo¿e byæ u¿ywana do
edytowania menu u¿ytkownika (tego, które pojawia siê po
naci¶niêciu kombinacji F2).

[Directory Tree]
Drzewo katalogów (Directory Tree)

Mo¿esz wybieraæ katalogi z drzewa katalogów i Midnight
Commander przejdzie do wybranego przez Ciebie katalogu.

S± dwa sposoby wywo³ywania drzewa. Prawdziwa komenda
drzewa katalogów jest dostêpna z menu komend. Inn± metod±
jest wybranie drzewa z menu "lewego" b±d¼ "prawego".

¯eby nie mieæ zbyt du¿ych opó¼nieñ Midnight Commander
skanuje tylko ma³± ilo¶æ katalogów (tê potrzebn± w danej
chwili). Je¶li jakiego¶ katalogu nie widaæ przejd¼ do jego
katalogu nadrzêdnego i naci¶nij C-r (lub F2).

Mo¿esz u¿ywaæ nastêpuj±cych klawiszy:

Generalne klawisze ruchu s± akceptowane.

Enter. W drzewie katalogów, wychodzi z trybu drzewa i
przechodzi znów do trybu zwyk³ego panelu. W podgl±dzie
drzewa zmienia katalog w drugim panelu i zostaje w trybie
podgl±du drzewa w panelu aktywnym.

C-r, F2 (Rescan). Od¶wie¿a aktualny katalog. U¿ywane je¶li
drzewo nie jest ju¿ aktualne. Nie pokazuje katalogów,
które ju¿ istniej± lub pokazuje te, których ju¿ nie ma.

F3 (Forget). Usuwa aktualny katalog z drzewa katalogów.
U¿ywaj tego je¶li chcesz usun±æ "¶miec±ce" i niepotrzebne
katalogi z wy¶wietlania. ¯eby by³y one znów widoczne
wystarczy nacisn±æ F2.

F4 (Static/Dynamic). Prze³±cza pomiêdzy dynamicznym
(standardowo) i statycznym trybem nawigacji.

W trybie statycznym mo¿esz u¿ywaæ strza³ek do do³u i do
góry do wybierania katalogu. Wszystkie zwiedzone katalogi
s± widoczne.

W trybie dynamicznym mo¿esz u¿ywaæ strza³ek w celu
wybrania równorzêdnego katalogu, strza³ki w lewo ¿eby
dostaæ siê do katalogu domowego, strza³ki w prawo w celu
dostania siê do katalogu podrzêdnego. Widoczne jest tylko
najbardziej aktualne drzewo katalogów. Drzewo zmienia siê
wiêc dynamicznie podczas twojego przemieszczania.

F5 (Copy). Kopiuje katalog.

F6 (RenMov). Przenosi katalog.

F7 (Mkdir). Tworzy nowy katalog poni¿ej aktualnego.

F8 (Delete). Kasuje katalog z systemu plików.

C-s, M-s. Szuka natêpnego katalogu spe³niaj±cego podane
warunki szukania. Je¶li taki nie istnieje te klawisze
spowoduj± przemieszczenie siê o jedn± liniê w dó³.

C-h, Backspace. Kasuje ostatni znak w ci±gu znaków do
poszukiwania.

Jakikolwiek inny klawisz. Dodaje klawisz do ci±gu znaków
do szukania i przenosi do najbli¿szego katalogu, którego
nazwa zaczyna siê od tych znaków. W podgl±dzie drzewa
musisz najpierw uaktywniæ szukanie naciskaj±c C-s. Ci±g
szukaj±cy jest pokazywany w linii mini-statusu.

Nastêpuj±ce klawisze s± dostêpne tylko w drzewie
katalogów. Nie dzia³aj± one w pogl±dzie katalogów.

F1 (Help). Wywo³uje podgl±d pomocy i pokazuje tê sekcjê.

Esc, F10. Wychodzi z drzewa. Nie zmienia katalogów.

Mysz jest obs³ugiwana. Podwójne klikniêcie ma znaczenie
identyczne do klawisza Enter. Zobacz równie¿ sekcjê
Obs³uga myszy.

[Find File]
Znajd¼ plik (Find File)

Komenda znajd¼ plik najpierw pyta siê o startowy katalog
do przeszukiwania i o nazwê pliku, który ma byæ
znaleziony. Wciskaj±c przycisk "Tree" (drzewo) mo¿esz
wybraæ katalog startowy z drzewa katalogów.

Pole trzecie akceptuje wszystkie wyra¿enia podobne do tych
w egrep(1). Oznacza to, ¿e musisz rozpoczynaæ znaki o
specjalnym znaczeniu kombinacj± "\" np. szukaj±c "strcmp
(" bêdziesz musia³ wpisaæ "strcmp \(" (bez cudzys³owów
oczywi¶cie).

Mo¿esz zacz±æ przeszukiwanie naciskaj±c przycisk Ok.
Podczas szukania mo¿esz zatrzymaæ proces przy u¿yciu
przycisku Stop i kontynuowaæ po naci¶niêciu Startu.

Mo¿esz przegl±daæ liste znalezionych plików za pomoc±
strza³ek do do³u i do góry. Komenda Chdir przejdzie do
katalogu aktualnie wybranego. Przycisk Again zapyta siê o
nowe parametry do szukania (rozpocznie proces od nowa).
Przycisk Quit koñczy przeszukiwanie. Przycisk Panelize
umie¶ci znalezione pliki w aktywnym panelu katalogowym
tak, ¿e bêdziesz móg³ wykonywaæ na nich standardowe
czynno¶ci (podgl±d, kopiowanie, przenoszenie, kasowanie
itp.). Po spanelizowaniu wystarczy naci¶n±æ C-r ¿eby
powróciæ do normalnego trybu.

Mo¿liwe jest posiadanie listy katalogów, których szukanie
plików nie powinno uwzglêdniaæ (na przyk³ad mo¿esz chcieæ
omin±æ przeszukiwanie CDROMu i innych podmontowanych
systemów plików).

Katalogi do omijania powinny byæ umieszczone w zmiennej
find_ignore_dirs w sekcji Misc twojego pliku ~/.mc/ini.

Sk³adowe katalogów powinny byæ oddzielone od siebie przez
¶redniki, to jest przyk³ad:

[Misc]
find_ignore_dirs=/cdrom:/nfs/wuarchive:/afs

Mo¿esz woleæ u¿ywaæ panelu zewnêtrznego do wykonywania
niektórych operacji. Szukanie pliku jest dobre tylko dla
prostych zapytañ. U¿ywaj±c panelu zewnêtrznego mo¿esz
dokonywaæ tak skomplikowanych wyszukiwañ jak tylko
pragniesz.

[External panelize]
Panel zewnêtrzny

Panel zewnêtrzny pozwala ci na wykonywanie zewnêtrznych
programów i ogl±danie ich wyj¶cia jako zawarto¶ci
aktywnego panelu.

Na przyk³ad, je¶li chcesz aby w aktywnym panelu
wy¶wietlone zosta³y wszystkie dowi±zania w aktywnym
katalogu, mo¿esz u¿yæ panelu zewnêtrznego i nastêpuj±cej
komendy:

find . -type l -print
Zanim komenda zakoñczy dzia³anie, zawarto¶æ katalogów nie
bêdzie ju¿ d³u¿ej zawarto¶ci± aktualnego katalogu, ale
wszystkie pliki bêd± symbolicznymi dowi±zaniami.

Je¶li chcesz wy¶wietliæ wszystkie pliki, które ¶ci±gn±³e¶
ze swoich serwerów ftp, mo¿esz u¿yæ tej komendy awk ¿eby
wypisaæ nazwê pliku z logów transferu:

awk '$9 ~! /incoming/ { print $9 }' < /usr/adm/xferlog

Mo¿esz zapisaæ sobie czêsto u¿ywane komendy pod jak±¶
nazw±, po to ¿eby móc ich potem u¿ywaæ du¿o ³atwiej.
Robisz to po prostu wpisuj±c komendê w linii wej¶ciowej, a
potem naciskaj±æ przycisk Add. Potem wpisujesz nazwê, pod
jak± ta komenda ma byæ widoczna. Nastêpnym razem po prostu
wybierasz tê komendê z listy i nie musisz ju¿ wpisywaæ jej
ponownie.

[Hotlist]
Hotlist

Hotlista katalogów pokazuje nazwy katalogów wprowadzonych
do hotlisty. Midnight Commander zmieni miejsce do tego,
które wskazuje nazwa katalogu. Z hotlisty mo¿esz wyrzucaæ
ju¿ dodane pozycje par nazw/wskazañ i dodawaæ nowe. Dla
dodawania mo¿esz wykorzystaæ kombinacjê (C-x h), która
dodaje ¶cie¿kê aktualnego katalogu do hotlisty. U¿ytkownik
musi tylko podaæ pod jak± nazw± ma byæ ten katalog
widoczny.

Powoduje to przechodzenie do czê¶ciej przegl±danych
katalogów znacznie szybciej. Mo¿esz u¿ywaæ ci±gle warto¶ci
CDPATH opisanej w sekcji Wewnêtrzne przemieszczanie.

[Extension File Edit]
Edycja rozszerzeñ pliów (Extension File Edit)

Ta komenda wywo³a twój edytor na plik ~/.mc/bindings.
Format tego pliku jest nastêpuj±cy (zmieni³ siê on
pocz±wszy od wersji 3.0):

Wszystkie linie zaczynaj±ce siê od #, lub puste, nie s±
brane pod uwagê.

Linie zaczynaj±ce siê od pierwszej kolumny powinny mieæ
nastêpuj±cy format:

s³owo kluczowe/wzorzec, tj. wszystko po s³owie kluczowym/
dopóki now± lini± nie jest wzorzec

s³owami kluczowymi mog± byæ:

shell

        (wzorzec jest wtedy wyra¿eniem (bez jokerów), tj.
        pasuj± wszystkie pliki *wzorzec. Np.: .tar znaczy
        *.tar)

regex

        (wzorzec jest normalnym wyra¿eniem)

type

        (plik spe³nia wymagania je¶li `file %f` zgadza
        siê z wyra¿eniem wzorca (nazwa: czê¶æ z `file %f`
        jest usuwana))

default

        (wszystkie pliki spe³niaj±, nie wa¿ne jaki jest
        wzorzec)

Inne linie powinny zaczynaæ siê od spacji lub tabulacji i
powinny mieæ one nastêpuj±cy format:

s³owo kluczowe=komenda (bez spacji przy znaku =), gdzie
s³owem kluczowym powinno byæ:

Open (Otwórz) (je¶li u¿ytkownik naci¶nie Enter lub kliknie
dwukrotnie), View (Podgl±d) (F3), Edit (Edytuj) (F4).

command jest jak±kolwiek jedn± lini± pow³oki, z
zastosowaniem prostego makra.

Cele s± przeliczane od góry do do³u (porz±dek jest tu
istotny). Je¶li jakiej¶ akcji brakuje, poszukiwanie
kontynuuje siê tak jakby wcze¶niej nie nast±pi³a ¿adna
zgodno¶æ (tj. je¶li zgadza siê z wzorcem pierwszym i
trzecim i brakuje w pierwszym akcji View, to naciskaj±c F3
u¿yta bêdzie akcja z trzeciego wzorca). Opcja default
powinna wychwyciæ wszystkie mo¿liwe akcje.

[Background Jobs]
Prace w tle (Background jobs)

Pozwalaj± ci one kontrolowaæ status jakichkolwiek procesów
wykonywanych w tle przez Midnight Commandera (tylko
operacje kopiowania i przenoszenia, mog± byæ wykonywane w
tle). Z tego menu mo¿esz zastopowaæ, zresetowaæ i "zabiæ"
proces w tle.

[Menu File Edit]
Edycja menu u¿ytkownika (Menu File Edit)

Menu u¿ytkownika jest bardzo u¿ytecznym menu, które mo¿e
byæ tworzone w sposób dowolny, przez u¿ytkownika. Kiedy
tylko próbujesz co¶ zrobiæ przy u¿yciu tego menu, ³adowany
jest plik .mc.menu z aktualnego katalogu, ale tylko wtedy
kiedy jest on w posiadaniu u¿ytkownika lub roota i mamy do
niego prawa zapisu. Je¶li takiego nie ma próbuje siê z
plikiem ~/.mc/menu z tymi samymi za³o¿eniami, je¶li jego
te¿ nie ma - u¿ywa siê standardowego pliku systemowego,
który znajduje siê w
/home/john/prjroot/rootfs/usr/share/mc/mc.menu.

Format pliku z menu u¿ytkownika jest bardzo prosty. Linie
zaczynaj±ce siê od czegokolwiek innego ni¿ spacja lub
tabulacja, s± traktowane jako wtyczki do menu (aby móc
u¿ywaæ ich potem jako gor±cych klawiszy, dobrze jest aby
pierwszy znak by³ liter±). Wszystkie linie zaczynaj±ce od
spacji lub tabulacji, s± komendami, które maj± byæ
wykonane je¶li wtyczka zostanie wybrana.

Kiedy opcja zostaje wybrana, wszystkie komendy nale¿±ce do
tej opcji kopiowane s± do pliku w katalogu tymczasowym
(najczê¶ciej do /usr/tmp), a potem plik jest wykonywany.
Pozwala to u¿ytkownikowi wk³adaæ normalne konstrukcje
pow³oki do konstrukcji kodu wykonywanego. Po wiêcej
informacji zobacz, u¿ywania makr.

To jest przyk³adowy plik mc.menu:

A	Wyrzuæ aktualny plik.
	od -c %f

B	Stwórz raport o b³êdzie i wy¶lij do roota.
	I=`mktemp ${MC_TMPDIR:-/tmp}/mail.XXXXXX` || exit 1
	vi $I
	mail -s "B³±d Midnight Commandera" root < $I
	rm -f $I

M	Przeczytaj pocztê.
	emacs -f rmail

N	Przeczytaj grupê dyskucyjn±.
	emacs -f gnus

J	Skopiuj rekursywnie ca³y aktualny katalog.
	tar cf - . | (cd %D && tar xvpf -)

= f *.tar.gz | f *.tgz & t n
X       Zdekompresuj skompresowany plik tar.
	tar xzvf %f

Standardowe warunki

Ka¿da opcja mo¿e byæ opatrzona w warunki. Warunek musi
zaczynaæ siê od pierwszej kolumny i od znaku '='. Je¶li
warunek jest prawdziwy, opcja stanie siê opcj± domy¶ln±.

Sk³adnia warunku: 	= <warunek>
	    lub:	= <warunek> | <warunek> ...
	    lub:	= <warunek> & <warunek> ...

Warunek jest jednym z nastêpuj±cych:

  f <wzorzec>           aktualny plik zgodny z wzorcem?
  F <wzorzec>           plik w drugim panelu zgodny z wzorcem?
  d <wzorzec>           aktualny katalog spe³niaj±cy wzorzec?
  D <wzorzec>           katalog w drugim panelu spe³niaj±cy wzorzec?
  t <typ>               aktualny pliku typu typ?
  T <typ>               plik w drugim panelu typu typ?
  ! <warunek>           zaprzeczenie warunku

Wzorzec jest normalnym wzorcem pow³oki lub wyra¿eniem,
podobnym do wzorca pow³oki. Mo¿esz zmieniæ globalne
ustawienia wzorców pow³oki pisz±c "shell_patterns=x" w
pierwszej linii menu u¿ytkownika (x jest równe 0 lub 1).

Typ jest jednym lub wiêcej z podanych znaków:

  n	nie katalog
  r	zwyk³y plik
  d	katalog
  l	dowi±zanie
  c	specjalny znak
  b	specjalny blok
  f	fifo
  s	gniazdo
  x	wykonywalny
  t	zaznaczony

Na przyk³ad 'rlf' oznacza zwyk³y plik, dowi±zanie lub
fifo. Typ 't' jest trochê odmienny poniewa¿ dotyczy panelu
a nie pliku. Warunek '=t t' jest prawdziwy je¶li s± jakie¶
zaznaczone pliki w aktywnym panelu, a fa³szywy je¶li nie
ma.

Je¶li warunek rozpoczyna siê od '=?' zamiast '=' droga
przechodzenia przez warunki bêdzie pokazywana za ka¿dym
razem kiedy warunek bêdzie obliczany [przydatne do
wyszukiwania b³êdów - przyp. t³umacza].

Warunki s± obliczane od lewej do prawej. Oznacza to, ¿e
	= f *.tar.gz | f *.tgz & t n
jest liczone tak samo jak
	( (f *.tar.gz) | (f *.tgz) ) & (t n)

To jest prosty przyk³ad zastosowania tych warunków:

= f *.tar.gz | f *.tgz & t n
L	Listuje zawarto¶æ skompresowanego archiwum tar
	gzip -cd %f | tar xvf -

Warunki dodania

Je¶li warunek rozpoczyna siê od znaku '+' (lub '+?')
zamiast od '=' (lub '=?') jest to warunek dodania. Je¶li
warunek jest prawdziwy, opcja menu bêdzie do³±czona do
menu. Je¶li nie jest prawdziwy, nie bêdzie ona w nim
zawarty.

Mo¿esz ³±czyæ ze sob± standardowe i dodane warunki
zaczynaj±c warunek od kombinacji '+=' lub '=+' (lub '+=?'
lub '=+?' je¶li chcesz zobaczyæ trasê b³êdów). Je¶li
chcesz u¿yæ ró¿nych warunków, dodanego i standardowego,
mo¿esz poprzedziæ wpis menu dwoma wierszami warunkowymi.
Jednym zaczynaj±cym siê od znaku '+', a drugim od '='.

Wszelkie komentarze rozpoczynaj± siê od znaku '#'.

[Options Menu]
Menu opcji (Options Menu)

Midnight Commander ma niektóre opcje, które mog± byæ
w³±czane lyb wy³±czane w ró¿nych oknach dialogowych z tego
menu. Opcja jest w³±czona je¶li widnieje przed ni±
gwiazdka lyb "x".

Komenda Configuration w³±cza okno dialogowe, z którego
mo¿esz zmieniæ wiêkszo¶æ ustawieñ Midnight Commandera.

Menu Layout pozwala na zmianê wielu ustawieñ, które maj±
znacz±cy wp³yw na to jak MC bêdzie wygl±da³ na ekranie.

Menu Confirmation w³±cza okno dialogowe, w którym mo¿esz
ustawiæ przy wykonaniu których operacji chcesz byæ pytany
o potwierdzenie.

Menu Display bits pozwala okre¶liæ jakiego typu znaki twój
terminal jest w stanie wy¶wietliæ.

Menu Learn Keys pokazuje okno dialogowe, w którym mo¿esz
poznaæ które klawisze nie dzia³aj± i w razie problemów
naprawiæ to.

Menu Virtual FS pokazuje okno, w którym mo¿esz zmieniæ
niektóre ustawienia dotycz±ce systemów VFS.

Komenda Save Setup zachowuje wszystkie ustawienia z menu
Lewego, Prawego i Opcji.

[Configuration]
Konfiguracja

Opcje w tym oknie s± podzielone na trzy grupy: opcje
panelu (Panel Options), zatrzymaj po uruchomieniu (Pause
after run) i inne opcje (Other Options).

Opcje panelu

Show Backup Files. Standardowo Midnight Commander nie
wy¶wietla plików koñcz±cych siê znakiem '~' (tak jak
komenda ls -B w wersji GNU).

Show Hidden Files. Standardowo Midnight Commander
wy¶wietla wszystkie pliki zaczynaj±ce siê od kropki (tak
jak ls -a).

Mark moves down. Standardowo kiedy zaznaczasz plik
(zarówno przy u¿yciu C-t lub klawisza Insert) linia wyboru
przenosi siê o jedno w dó³.

Drop down menus. Kiedy ta opcja jest w³±czona, kiedy
naciskasz klawisz F9 menu bêdzie aktywowane, w przeciwnym
wypadku zostaniesz tylko przeniosiony do tytu³ów w tym
menu i bêdziesz musia³ wybraæ opcjê rêcznie przy u¿yciu
strza³ek b±d¼ te¿ przy u¿yciu pierwszej litery z nazwy
konkretnego menu.

Mix all files. Je¶li ta opcja jest w³±czona, wszystkie
pliki i katalogi s± pomieszane razem. Je¶li za¶ jest
wy³±czona, katalogi (i dowi±zania do nich), s± listowane
na pocz±tku a pozosta³e pliki dopiero za nimi.

Fast directory reload. Standardowo ta opcja jest
wy³±czona. Je¶li j± w³±czysz Midnight Commander bêdzie
u¿ywa³ triku do sprawdzenia czy zawarto¶æ katalogu siê
zmieni³a. Trik polega na tym, ¿e sprawdza siê i-wêze³
katalogu i je¶li siê on zmieni³ to katalog jest ³adowany
na nowo. Oznacza to prze³adowywanie zawarto¶ci panelu
tylko wtedy, kiedy tworzysz lub kasujesz pliki. Je¶li
robisz inne zmiany (rozmiaru, w³a¶ciciela, uprawnieñ,
grupy itp.) bêdziesz musia³ rêcznie prze³adowaæ widok (np.
u¿ywaj±c kombinacji klawiszy C-r).

Zatrzymaj po uruchomieniu

Po wykonaniu komendy, Midnight Commander mo¿e zrobiæ
pauzê, po to aby¶ móg³ spokojnie przejrzeæ wyj¶cie
ostatniej komendy. S± trzy mo¿liwe warto¶ci dla tej
zmiennej:

        Nigdy (Never) Oznacza, ¿e nie chcesz widzieæ
        wyj¶cia twojej komendy. Je¶li u¿ywasz termianala
        typu Linux lub FreeBSD czy te¿ xterm, bêdziesz
        móg³ jednak zobaczyæ jej wyj¶cie naciskaj±c C-o.

        "On dumb terminals" Bêdziesz mia³ pauzê po
        uruchomieniu na terminalach, które nie s± w
        stanie pokazywaæ widoku ostatniej komendy (na
        wszystkich terminalach, które nie s± xtermami lub
        Linux).

        Zawsze (Always) Program zatrzyma siê po wykonaniu
        ka¿dej z twoich komend.

Inne opcje

Operacje weryfikacji (Verbose operation). Prze³±cza czy
podczas kopiowania, kasowania, przenoszenia plików ma byæ
pokazywane okno dialogowe pokazuj±ce stopieñ
zaawansowania. Je¶li masz powolny terminal, mo¿esz chcieæ
wy³±czyæ weryfikacjê. Jest to wykonywane automatycznie za
ciebie je¶li twój terminal jest wolniejszy ni¿ 9600 bps.

Zliczaj wszystko (Compute totals). Je¶li ta opcja jest
w³±czona, Midnight Commander zlicza wszytkie bajty plików,
które s± przeznaczone do kopiowania, przenoszenia,
kasowania. Spowoduje to wy¶wietlanie du¿o bardziej
zaawansowanego wska¼nika postêpu w zamian zmiejszaj±c
trochê prêdko¶æ. Ta opcja nie ma ¿adnego znaczenia je¶li
opcja Verbose operation jest wy³±czona.

Wzorce pow³oki (Shell patterns). Standardowo komendy
zaznacz (Select), odznacz (Unselect), i filtruj (Filter)
bêd± u¿ywaæ wyra¿eñ takich samych jak pow³oka. Oznacza to,
¿e gwiazdka oznacza zero lub wiêcej znaków, znak zapytania
dok³adnie jeden znak, a ka¿dy inny znak sam siebie. Je¶li
ta opcja jest wy³±czona, stosowane s± te, których u¿ywa w
komenda ed(1).

Auto Save Setup. Je¶li ta opcja jest w³±czona, kiedy
wychodzisz z Midnight Commandera konfiguracja MC zostanie
zachowana automatycznie (bez pytania) do pliku ~/.mc/ini.

Auto menus. Je¶li ta opcja jest w³±czona, menu u¿ytkownika
bêdzie w³±czone na starcie. U¿yteczne do budowania menu
dla nie unixowców.

U¿ywaj wewnêtrznego edytora (Use internal editor). Je¶li
ta opcja jest w³±czona, do edycji plików u¿ywany jest
wbudowany edytor plików. Je¶li ta opcja jest wy³±czona,
u¿ywany bêdzie edytor wybrany w zmiennej EDITOR. Je¶li
¿aden edytor nie zosta³ wybrany, u¿ywany bêdzie vi(1).
Zobacz sekcjê Wewnêtrzny edytor plików.

U¿ywaj wewnêtrznego podgl±du (Use internal viewer). Je¶li
ta opcja jest w³±czona, wbudowany podgl±d pliku jest
u¿ywany do ogl±dania pliku. Je¶li ta opcja jest wy³±czona,
u¿ywany jest podgl±d wybrany w zmiennej PAGER. Je¶li ¿aden
podgl±d nie zosta³ wybrany, wywo³ywana jest komenda view.
Zobacz sekcjê Wbudowany podgl±d plików.

Dokañczanie: poka¿ wszystkie (Complete: show all).
Standardowo Midnight Commander pokazuje wszystkie mo¿liwe
dokoñczenia je¶li jest ich wiêcej, kiedy naci¶niesz drugi
raz klawisz M-Tab, za pierwszym razem, po prostu dokañcza
to na ile mo¿na i wydaje krótki d¼wiêk. Je¶li chcesz
widzieæ wszystkie mo¿liwo¶ci po pierwszym naci¶niêciu
M-Tab w³±cz tê opcjê.

Obrotowy my¶lnik (Rotating dash). Je¶li ta opcja jest
w³±czona, Midnight Commander bêdzie pokazywa³ obracaj±cy
siê my¶lnik w lewym górnym rogu, je¶li bêdzie akurat w
trakcie wykonywania jakiego¶ procesu.

Lynx-like motion. Je¶li ta opcja jest w³±czona, mo¿esz
u¿ywaæ strza³ek przemieszczenia ¿eby automatycznie
zmieniaæ katalog je¶li aktualnie wybrany katalog jest
podkatalogiem, a linia poleceñ jest pusta. Standardowo ta
opcja jest wy³±czona.

Dowi±zania pod±¿aj±ce cd (Cd follows links). Ta opcja,
je¶li jest w³±czona, zmusza Midnight Commandera ¿eby
pod±¿a³ za ³añcuchem katalogów przy zmienianiu go w panelu
czy za pomoc± komendy cd. To jest standardowe zachowanie
basha. Je¶li jest wy³±czona, Midnight Commander pod±¿a za
prawdziw± struktur± katalogów, wiêc cd .. je¶li wszed³e¶
do katalogu poprzez dowi±zanie, przeniesie ciê do
prawdziwego katalogu na dysku, a nie tam gdzie wskazywa³o
dowi±zanie.

Bezpieczne kasowanie (Safe delete). Je¶li ta opcja jest
w³±czona, nieumy¶lne kasowanie plików stanie siê du¿o
trudniejsze. Standardowy wybór w linii potwierdzenia
zmienia siê z "Yes" na "No". Standardowo ta opcja jest
wy³±czona.

[Layout]
Wygl±d (Layout)

Meny wygl±d pozwala ci na ró¿ne warianty zmieniania
ogólnego wygl±du zewnêtrznego ekranu. Mo¿esz wybraæ, czy
linia menu, linia poleceñ, linia hintów (pomocy) i linia
klawiszy funkcyjnych maj± byæ widoczne. Na konsolach typu
Linux lub FreeBSD mo¿esz wybraæ ile linii ma byæ
pokazywanych na wyj¶ciu okna.

Reszta powierzchni ekranu jest u¿ywana przez dwa panele
katalogowe. Mo¿esz wybraæ nawet czy panele maj± byæ
u³o¿one poziomo czy pionowo. Kolejn± mo¿liwo¶ci± jest
zmiana ich standardowej szeroko¶ci (b±d¼ wysoko¶ci). Jest
ona standardowo równa, ale mo¿na to zmieniæ.

Standardowo ca³a zawarto¶æ panelu katalogowego jest
wy¶wietlana t± sam± barw±, ale mo¿esz zmieniæ to tak aby
uprawnienia i typy plików by³y wy¶wietlane specjalnym
pod¶wietlonym kolorem. Je¶li pod¶wietlanie uprawnieñ jest
w³±czone, czê¶æ pól (ta z uprawnieniami i typami plików)
bêdzie pod¶wietlona przy u¿yciu koloru wybranego jako
selected. Je¶li pod¶wietlanie jest w³±czone, pliki s±
kolorowane w zale¿no¶æi od swojego typu (np. katalogi,
pliki typu core, wykonywalne, ...).

Je¶li opcja Show Mini-Status jest w³±czona, jeden wiersz
informacji statusowych na temat aktualnie wybranej rzeczy
w panelu, bêdzie pokazany na dole panelu.

[Confirmation]
Potwierdzanie (Confirmation)

W tym menu mo¿esz skonfigurowaæ opcje potwierdzania dla
kasowania, zastêpowania, wykonywania przez naci¶niêcie
klawisza Enter, jak równie¿ wychodzenia z programu.

[Display bits]
Wy¶wietlanie znaków (Display bits)

U¿ywane do konfigurowania zakresu znaków widocznych potem
na ekranie. To ustawienie mo¿e byæ 7-bitowe je¶li twój
terminal obs³uguje tylko siedmiobitowe wyj¶cie, ISO-8859-1
wy¶wietla wszystkie znaki z mapy ISO-8859-1 a pe³ny 8
bitowy przeznaczony jest dla tych terminali, które radz±
sobie z wy¶wietlaniem znaków o¶miobitowych.

Zobacz sekcjê Polskie znaki, po wiêcej szczegó³ów na temat
ich u¿ywania w Midnight Commanderze.

[Learn keys]
Nauka klawiszy (Learn keys)

W tym oknie mo¿esz przetestowaæ czy twoje klawisz F1-F20,
Home, End itp. pracuj± poprawnie na twoim terminalu.
Czêsto nie dzia³aj± tak, poniewa¿ bazy danych terminali s±
poniszczone.

Przemieszczaæ siê mo¿esz za pomoc± klawisza Tab, za pomoc±
klawiszy ruchu edytora vi ('h' lewo, 'j' dó³, 'k' góra i
'l' prawo) i po tym jak ju¿ raz naci¶niesz dan± strza³kê
(zaznaczy siê ona na OK), za ich pomoc± równie¿.

Klawisze testujesz po prostu naciskaj±c ka¿dy z nich. Jak
tylko naci¶niesz klawisz i pracuje on zupe³nie poprawnie,
obok nazwy klawisza powinno pojawiæ siê OK. Kiedy klawisz
jest ju¿ sprawdzony, zaczyna pracowaæ normalnie (np. F1
wci¶niêty po raz pierwszy po prostu poka¿e, ¿e ten klawisz
dzia³a, ale naci¶niêty po raz drugi poka¿e pomoc). Taka
sama sytuacja powtarza siê przy strza³kach. Klawisz Tab
powinien pracowaæ zawsze.

Je¶li niektóre klawisze nie pracuj± poprawnie, nie
zobaczysz OK obok ich nazwy po naci¶niêciu ich. Mo¿esz
chcieæ je naprawiæ. Robisz to naje¿d¿aj±c na odpowiedni
przycisk dla tego klawisza i naciskaj±c Enter. Poka¿e siê
wtedy czerwona wiadomo¶æ i zostaniesz poproszony o podanie
odpowiedniego klawisza. Je¶li chcesz zrezygnowaæ, po
prostu naci¶nij Esc i poczekaj do czasu kiedy wiadomo¶æ
zniknie. W przeciwnym wypadku wci¶nij klawisz, który sobie
¿yczysz i równie¿ poczekaj na znikniêcie okna.

Kiedy skoñczysz ju¿ ze wszystkimi klawiszami, mo¿esz
nacisn±æ Save ¿eby zachowaæ zmiany do pliku ~/.mc/ini do
sekcji [terminal:TERM] (gdzie TERM jest nazw± twojego
aktualnego terminala) lub po prostu odrzuciæ je.

[Virtual FS]
Wirtualny system plików (Virtual FS)

Ta opcja daje ci kontrolê nad ustawieniami informacji
wirtualnego systemu plików. Midnight Commander zachowuje w
pamiêci informacje zwi±zane z niektórymi wirtualnymi
systemami plików, po to ¿eby kolejne po³±czenia
przebiega³y du¿o szybciej (np. ¶ci±gane listy katalogów z
serwerów ftp).

Niemniej jednak, ¿eby mieæ dostêp do zawarto¶ci
skompresowanego pliku (np. skompresowanego pliku tar)
Midnight Commander musi stworzyæ tymczasowy
nieskompresowany plik na twoim dysku.

Dopiero kiedy informacje w pamiêci i tymczasowe pliki na
dysku s± zgodne z zasobami, mo¿esz chcieæ zmieniæ
parametry informacji znajduj±cych siê w buforze podrêcznym
po to, ¿eby zmniejszyæ obci±¿enie dysku do mninimum albo
do zmaksymalizowania prêdko¶ci dostêpu do najczê¶ciej
u¿ywanych systemów plików.

System plików tar jest ca³kiem inteligentny je¶li chodzi o
przechowywanie plików: po prostu ¶ci±ga wej¶cia do
katalogów i kiedy chcemy wiêcej szczegó³ów o nim to system
je dla nas ¶ci±ga.

W rzeczywisto¶ci jednak, pliki tar najczê¶ciej trzymane s±
jako skompresowane i jako i¿ natura tych plików nie
pozwala na ogl±danie ich bez dekompresji (nie ma tam
widocznych od razu wej¶æ do katalogów), system plików musi
byæ najpierw zdekompresowany na dysk do pliku tymczasowego
i dopiero potem MC ma do niego dostêp taki jak do
normalnego pliku typu tar.

Teraz, kiedy tak kochamy odwiedzaæ ró¿ne pliki i zwiedzaæ
systemy plików typu tar na ca³ym dysku, jest ca³kiem
prawdopodobne, ¿e wyjdziesz z takiego pliku, a po krótkim
czasie bêdziesz chcia³ wejd¶æ do niego spowrotem. Poniewa¿
dekompresja jest powolna, Midnight Commander bêdzie robi³
kopie plików w pamiêci na okre¶lony czas, po up³ywie
którego pliki zostan± skasowane a miejsce zajmowane przez
nie zwolnione. Standardowo ten czas ustawiony jest na
jedn± minutê.

System plików FTP trzyma listê katalogów z odwiedzanego
przez nas serwera w buforze podrêcznym. Jego wa¿no¶æ
konfigurowana jest za pomoc± opcji
ftpfsdirectorycachetimeout. Ma³a warto¶æ dla tej opcji
mo¿e spowolniæ wszystkie operacje na systemach ftp
poniewa¿ ka¿da operacja bêdzie wymagaæ kolejnych zapytañ
do serwera.

Ponadto mo¿esz zdefiniowaæ serwer proxy dla transferów ftp
i skonfigurowaæ Midnight Commandera tak, aby zawsze go
u¿ywa³. Zobacz sekcjê System plików FTP (FTP File System)
po wiêcej szczegó³ów.[Save Setup]
Zapisz ustawienia (Save Setup)

Na starcie Midnight Commander bêdzie próbowa³ odczytaæ
opcje startowe z pliku ~/.mc/ini. Je¶li on nie istnieje,
odczyta on konfiguracje z ogólnodostêpnego pliku
/home/john/prjroot/rootfs/usr/share/mc/mc.ini. Je¶li on
te¿ nie istnieje MC u¿yje swoich domy¶lnych ustawieñ.

Komenda Save Setup tworzy plik ~/.mc/ini zachowuj±c
aktualne ustawienia lewego, prawego menu, jak równie¿ menu
opcji.

Je¶li w³aczysz opcjê auto save setup, MC zawsze bêdzie
zachowywa³ standardowe ustawienie podczas wychodzenia.

Istniej± równie¿ ustawienia, które nie mog± byæ zmienione
z poziomu menu. Dla tych ustawieñ musisz wyedytowaæ swój
plik konfiguracyjny za pomoc± twojego ulubionego edytora.
Zobacz sekcjê Specjalne ustawienia po wiêcej informacji.



[Executing operating system commands]
Wykonywanie poleceñ systemu operacyjnego (Executing
operating system commands)

Mo¿esz wykonywaæ komendy wpisuj±c je bezpo¶rednio do linii
poleceñ Midnight Commandera, lub wybieraj±c program, który
chcesz wykonaæ za pomoc± klawiszy przemieszczenia i
nacisn±æ Enter.

Je¶li naci¶niesz Enter na pliku, który nie jest
wykonywalny, Midnight Commander sprawdzi rozszerzenie
pliku i porówna je z rozszerzeniami wybranymi w pliku
rozszerzeñ (Extensions File). Je¶li jaka¶ pozycja siê
zgadza, wykonywana jest komenda (raczej bardziej
rozszerzone makro) powi±zana z tym rozszerzeniem.

[The cd internal command]
Wbudowana komenda cd (The cd internal command)

Komenda cd jest interpretowana przez Midnight Commandera,
nie dok³adnie tak samo jak wykonuje to pow³oka. Przez to
rozkaz cd nie mo¿e zawieraæ wielu sk³adników makr, które
s± standardowo dostêpne, jednak niektórych potrafi u¿ywaæ:

Tylda Znak tyldy (~) jest zawsze równoznaczny z wpisaniem
nazwy katalogu domowego. Je¶li po znaku tyldy dodasz jaki¶
login u¿ytkownika, zostanie on zast±piony przez katalog
domowy wybranego u¿ytkownika.

Na przyk³ad, ~guest jest katalogiem domowym u¿ytkownika
guest, podczas kiedy ~/guest jest katalogiem guest w twoim
katalogu domowym.

Poprzedni katalog (Previous directory) Mo¿esz przeskakiwaæ
do katalogu, w którym by³e¶ poprzednio, u¿ywaj±c
specjalnej nazwy katalogu '-' tak jak: cd -

katalogi CDPATH Je¶li katalog wybrany do przej¶cia nie
jest w naszym aktualnym katalogu, to Midnight Commander
u¿ywa ¶cie¿ki w zmiennej CDPATH do szukania w jakimkolwiek
z wymienionych tam katalogów.

Na przyk³ad, mo¿esz ustawiæ swoj± zmienn± CDPATH na
katalogi ~/src:/usr/src, pozwalaj±c na zmianê katalogów na
jakikolwiek inny wewn±trz ~/src i /usr/src, z miejsca w
którym jeste¶ (np. cd linux przeniesie ciê do katalogu
/usr/src/linux).

[Macro Substitution]
Obs³uga makr (Macro Substitution)


Kiedy u¿ywamy menu u¿ytkownika, wykonujemy plik o znajomym
rozszerzeniu, lub wykonujemy komendê z linii poleceñ,
mo¿emy u¿yæ kilku bardzo prostych makr.

S± to:

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

        Podobne w dzia³aniu do %t i do %T jednak z t±
        ró¿nic±, ¿e pliki po ich u¿yciu zostan±
        odznaczone. Oznacza to, ¿e mo¿na ich u¿yæ tylko
        raz w jednym menu, poniewa¿ potem nie bêdzie ju¿
        ¿adnych plików zaznaczonych.

"%s" i "%S"

        Wybiera: zaznaczone pliki je¶li s± jakie¶, w
        przeciwnym razie aktualny plik.

"%cd"

        To jest specjalne makro, które jest u¿ywane do
        zmieniania aktualnego katalogu na wybrany
        katalog, na którego froncie jeste¶my. Jest to
        u¿ywane przede wszystkim jako interfejs do
        wirtualnych systemów plików.

"%view"

        To makro jest u¿ywane ¿eby w³±czaæ wbudowany
        podgl±d plików. Mo¿e byæ ono pojedynczo lub z
        grup± argumentów. Je¶li postanawiasz u¿ywaæ
        któregokolwiek z tych argumentów musisz je
        koniecznie wzi±æ w nawiasy.

        Argumentami s±: ascii aby wymusiæ podgl±d w
        trybie ascii; hex aby wymusiæ podgl±d w trybie
        szesnastkowym; nroff przekazuje podgl±dowi, ¿e
        powinien interpretowaæ pogrubione i podkre¶lone
        sekwencje programu nroff; unformated aby
        przekazaæ podgl±dowi, ¿eby nie interpretowa³
        komend nroff aby zrobiæ tekst pogrubiony lub
        podkre¶lony.

"%%"

        Znak %

"%{jaki¶ tekst}"

        Pyta siê o zmienn±. Pokazuje siê okienko
        wej¶ciowe i tekst wewn±trz klamerek u¿ywany jest
        jako zachêta (prompt). Makro jest zastêpowane
        tekstem wpisanym przez u¿ytkownika. U¿ytkownik
        mo¿e nacisn±æ ESC lub F10 aby anulowaæ. To makro
        nie dzia³a jeszcze w linii poleceñ.

[The subshell support]
Obs³uga podpow³oki (The subshell support)

Podpow³oka (pow³oka w tle) jest opcj±, która musi byæ
wybrana przy kompilacji, dzia³a ona z pow³okami: bash,
tcsh i zsh.

Je¶li pow³oka w tle jest w³±czona do komplilacji, Midnight
Commander bêdzie sobie tworzy³ kopie twojej pow³oki (tej
zdefiniowanej w zmiennej SHELL, a je¶li nie ma, to bêdzie
czerpa³ bezpo¶rednio z pliku /etc/passwd) i odpala³ pseudo
terminal, zamiast wywo³ywaæ now± pow³okê za ka¿dym razem
kiedy wywo³ujesz komendê, komenda bêdzie przekazana
pow³oce w tle, jak tylko j± napiszesz. To pozwala ci na
zmianê wielu zmiennych, u¿ywanie funkcji pow³oki i
zdefiniowanych aliasów, które s± wa¿ne dopóki nie
wyjdziesz z Midnight Commandera.

Je¶li u¿ywasz basha mo¿esz wybraæ startowe komendy twojej
pow³oki w tle w pliku ~/.mc/bashrc, a ustawienia
klawiatury w ~/.mc/inputrc. U¿ytkownicy tcsh mog± wstawiaæ
komendy startowe do pliku ~/.mc/tcshrc.

Je¶li kod pow³oki w tle jest u¿yty, mo¿esz zawiesiæ
aplikacjê w dowolnej chwili po prostu naciskaj±c
kombinacjê C-o i przeskakuj±c spowrotem do Midnight
Commandera, je¶li zawiesisz jak±¶ aplikacjê nie bêdziesz
móg³ u¿ywaæ innych zewnêtrznych komend zanim nie wyjdziesz
z aplikacji, któr± przerwa³e¶.

Extra dodatkiem do u¿ywania pow³oki w tle jest to, ¿e
zachêta widoczna w Midnight Commanderze jest t± sam±,
któr± aktualnie u¿ywasz w pow³oce.

Zobacz sekcjê Opcje po wiêcej informacji na temat tego,
jak mo¿esz kontrolowaæ pow³okê w tle.

[Chmod]
Chmod

Okno Chmod jest u¿ywane do zmieniania atrybutów grupy
plików lub katalogów. Mo¿e byæ ono wywo³ane kombinacj± C-x
c.

Okno Chmod ma dwie czê¶ci - Uprawnienia (Permissions) i
Plik (File)

W sekcji Plik wy¶wietlana jest nazwa pliku lub katalogu i
jego uprawnienia w formie liczbowej jak równie¿ w³a¶ciciel
i grupa.

W sekcji Uprawnienia jest kilka przycisków, z których
ka¿dy odpowiada za odpowiednie uprawnienie do pliku.
Podczas zmieniania atrybutów, widzisz jak zmienia siê
warto¶æ liczbowa w oknie Plik.

Do poruszania pomiêdzy okienkami (przyciskami i polami do
zaznaczania) u¿ywaj strza³ek lub klawisza tab. Aby zmieniæ
pola lub wcisn±æ przycisk u¿ywaj klawisza spacji. Mo¿esz
równie¿ u¿ywaæ "gor±cych liter" aby go wybraæ (s± one
pod¶wietlonymi literami na przyciskach).

Aby uaktywniæ wprowadzone zmiany wci¶nij Enter.

Kiedy pracujesz z grup± plików, lub katalogów, mo¿esz
klikn±æ na bit, który chcesz wybraæ lub wyczy¶ciæ. Kiedy
ju¿ wybra³e¶ bity, które chcesz zmieniæ, mo¿esz wcisn±æ
jeden z przycisków aktywuj±cych (Set marked lub Clear
marked).

I w koñcu, aby wprowadziæ dok³adnie takie zmiany jak
wybra³e¶, u¿yj przycisku [Set all], który zadzia³a na
wszystkich wybranych plikach.

[Marked all] w³±cza tylko zaznaczone atrybuty do wybranych
plików.

[Set marked] w³±cza zaznaczone bity w atrybutach
wszystkich wybranych plików.

[Clean marked] czy¶ci zaznaczone bity z atrybutów
zaznaczonych plików.

[Set] ustawia atrybuty jednego pliku.

[Cancel] uniewa¿nia komendê chmod.

[Chown]
Chown

Komenda chown jest u¿ywana do zmiany w³a¶ciela/grupy
pliku. Skrótem klawiszowym jest kombinacja C-x o.

[Advanced Chown]
Zaawansowane chown (Advanced Chown)

Zaawansowane chown jest komend± ³±cz±c± w sobie komendy
chmod i chown. Mo¿esz za jednym zamachem zmieniæ atrybuty
i w³a¶ciela/grupê pliku.

[File Operations]
Operacje na plikach (File Operations)

Kiedy kopiujesz, przenosisz lub kasujesz pliki, Midnight
Commander pokazuje okno opisowe operacji na pliku.
Pokazuje nazwê pliku, na którym aktualnie dokonuje siê
operacja. Widoczne s± co najwy¿ej trzy linie postêpu.
Pierwsza (file) mówi nam jak du¿a czê¶æ pliku zosta³a ju¿
przekopiowana. Druga (bytes) mówi jak du¿a czê¶æ
wszystkich zaznaczonych plików zosta³a przekopiowana jak
do tej pory. Trzecia (count) mówi jaka ilo¶æ plików
zosta³a ju¿ przekopiowana. Je¶li opcja verbose jest
wy³±czona, linia file i bytes nie jest pokazywana.

S± dwa przyciski na dole okna dialogowego. Naciskaj±c
przycisk Skip ominiemy resztê aktualnie "ruszanego" pliku.
Naciskaj±c przycisk Abort zatrzymamy ca³± operacjê,
pominiemy resztê plików.

S± trzy inne okna dialogowe, które mog± siê w³±czyæ
podczas operacji na plikach.

Okno b³êdów informuje nas o b³êdach zaistnia³ych podczas
operacji na pliku. S± w nim trzy mo¿liwo¶ci wyboru.
Przycisk Skip mówi ¿eby pomin±æ wybrany plik, przycisk
Abort ¿eby przerwaæ ca³± operacj±, a Retry aby ponowiæ
próbê (np. kiedy usun±³e¶ problem korzystaj±c z innego
terminala).

Okno zastêpowania jest pokazywane kiedy próbujesz
przenie¶æ lub przekopiowaæ plik, a taki ju¿ w miejscu
docelowym istnieje. Okno pokazuje daty i wielko¶ci obu
plików. Naci¶nij przycisk Yes aby nadpisaæ (zast±piæ)
stary plik nowym, No aby pomin±æ ten plik, alL aby
zast±piæ wszystkie pliki, nonE aby nigdy nie zastêpowaæ i
Update aby zast±piæ ale tylko wtedy kiedy plik ¼ród³owy
jest nowszy ni¿ docelowy. Ca³± operacjê mo¿esz przerwaæ
naciskaj±c przycisk Abort.

Okno rekursywnego kasowania jest pokazywane kiedy
próbujesz skasowaæ katalog, który nie jest pusty. Naci¶nij
przycisk Yes aby skasowaæ katalog rekursywnie, No aby
pomin±æ katalog, alL aby skasowaæ wszystkie katalogi
rekursywnie i nonE aby pomin±æ wszystkie katalogi, które
nie s± puste. Mo¿esz przerwaæ ca³± opecj± naciskaj±c
przycisk Abort. Je¶li wybra³e¶ przycisk Yes lub alL
bêdziesz zapytany o potwierdzenie. Wybierz "yes" tylko
je¶li jeste¶ pewien, ¿e chcesz skasowaæ wszystko
rekursywnie.

Je¶li zaznaczy³e¶ pliki, i wykonujesz operacje tylko na
nich, to je¶li operacja siê uda³a zostan± one odznaczone,
te, na których operacja nie przebieg³a ca³kowicie
pomy¶lnie, pozostan± zaznaczone.

[Mask Copy/Rename]
Maski kopiowania/przenoszenia (Mask Copy/Rename)

Operacje przenoszenia i kopiowania pozwalaj± ci na
t³umaczenie nazw plików w ³atwy sposób. Aby to zrobiæ,
musisz wybraæ odpowiedni± maskê ¼ród³ow± i najczê¶ciej w
nazwie docelowej u¿yæ gwiazdek. Wszystkie pliki pasuj±ce
do maski ¼ród³owej s± kopiowane/przenoszone w zgodzie z
mask± docelow±. Je¶li s± jakie¶ pliki zaznaczone, tylko
one s± brane pod uwagê przy wybieraniu plików.

S± jeszcze inne opcje, które mo¿esz ustawiæ:

Opcja Follow links mówi czy dowi±zania i dowi±zania twarde
w katalogu ¼ród³owym powinny byæ przenoszone jako
dowi±zania czy te¿ powinna byæ przegrywana ich zawarto¶æ
(plik, na który wskazuj±).

Opcja Dive into subdirs ... mówi co program ma robiæ,
kiedy kopiuje siê katalog, a taki ju¿ istnieje.
Standardowo kopiuje siê pliki do wewn±trz ju¿ istniej±cego
katalogu (dodaje), po w³±czeniu tej opcji kopiuje siê
katalog ¼ród³owy do wnêtrza tego katalogu. Mo¿e przyk³ad
pomo¿e:

Chcesz przekopiowaæ zawarto¶æ katalogu foo do /bla/foo,
które ju¿ istnieje. Normalnie (Dive nie jest w³±czone), mc
skopiuje to dok³adnie do /bla/foo. Po w³±czeniu tej opcji
zawarto¶æ zostanie skopiowana do /bla/foo/foo poniewa¿ ten
katalog ju¿ istnieje.

Opcja Preserve attributes mówi czy zachowywaæ oryginalne
atrybuty pliku, czasy i je¶li jeste¶ rootem to nawet
numery UID i GID. Je¶li ta opcja jest wy³±czona u¿ywana
jest aktualna warto¶æ zmiennej umask.

"Use shell patterns on"

Je¶li opcja obs³ugi wzorców pow³oki jest w³±czona, mo¿esz
u¿ywaæ znaków '*' i '?' w maskach ¼ród³owych. Dzia³aj± one
tak jak w pow³oce. W masce docelowej mo¿esz u¿ywaæ tylko
'*' i '\<cyfra>'. Pierwsza maska '*' w nazwie docelowej
odnosi sie do pierwszej gwiazdki w masce ¼ród³owej, druga
do drugiej itd. Joker '\1' odnosi siê do pierwszego jokera
w masce ¼ród³owej, '\2' odnosi siê do drugiego i tak dalej
a¿ do '\9'. Joker '\0' oznacza pe³n± nazwê pliku
¼ród³owego.

Dwa przyk³ady:

Je¶li maska ¼ród³owa jest "*.tar.gz", a miejscem docelowym
jest "/bla/*.tgz" i plikiem, który ma zostaæ przekopiowany
jest "foo.tar.gz", to kopi± bêdzie "foo.tgz" w katalogu
"/bla".

Za³ó¿my, ¿e chcesz zaminieæ miejscami nazwê i rozszerzenie
pliku, tak, ¿e plik "plik.c" ma byæ zmieniony na "c.plik"
itp. Maska ¼ród³owa powinna byæ nastêpuj±ca: "*.*",
natomiast docelowa: "\2.\1".

"Use shell patterns off"

Kiedy wzorce pow³oki s± wy³±czone, MC nie dokonuje
automatycznego grupowania plików. Musisz u¿yæ
wyra¿enia'\(...\)' w masce ¼ród³owej aby zasygnalizowaæ
istnienie jokerów w masce docelowej. Jest to trochê
³atwiejsze, ale te¿ wymaga aby trochê siê napisaæ. Z
drugiej jednak strony, makra s± bardzo podobne tych
u¿ywanych kiedy wzorce pow³oki s± w³±czone.

Dwa przyk³ady:

Je¶li mask± ¼ród³ow± jest "^\(.*\)\.tar\.gz$", docelow±
jest "/bla/*.tgz" i plikiem do przekopiowania jest
"foo.tar.gz", kopi± bêdzie "/bla/foo.tgz".

Za³ó¿my, ¿e chemy zamieniæ miejscami nazwê i rozszerzenia,
tak, ¿e plik "plik.c" bêdzie siê nazywa³ "c.plik" itp.
Mask± ¼ród³ow± powinno byæ "^\(.*\)\.\(.*\)$", a docelow±
"\2.\1".

"Konwersje nazwy (Case Conversions)"

Mo¿esz równie¿ zmieniaæ nazwy plików. Je¶li u¿yjesz '\u'
lub '\l' w masce docelowej, nastêpny znak bêdzie
przekonwertowany na du¿y lub ma³y, zale¿nie od podanej
opcji.

Je¶li u¿yjesz '\U' lub '\L' w masce docelowej, nastêpne
znaki bêd± zmieniane na ma³e lub du¿e (zale¿nie od opcji),
a¿ do napotkania znaku '\E' lub nastêpnych '\U', '\L' b±d¼
te¿ koñca linii.

Konwersje '\u' i '\l' maj± wy¿szy priorytet ni¿ '\U' i
'\L'.

Na przyk³ad, je¶li mask± ¼ród³ow± jest '*' (shell patterns
on) lub '^\(.*\)$' (shell patterns off) i mask± docelow±
jest '\L\u*', nazwa pliku bêdzie mia³a pierwsz± literê
du¿±, ale pozosta³e ju¿ ma³e, niezale¿nie od obecnej
nazwy.

Mo¿esz równie¿ u¿ywaæ '\' aby "podkre¶liæ" znak. Na
przyk³ad, '\\' jest backsleshem, a '\*' jest gwiazdk±.

[Internal File Viewer]
Wbudowany podgl±d plików

Wbudowany podgl±d plików pozwala na dwa tryby
wy¶mietlania: ASCII i hex. Aby prze³±czaæ siê pomiêdzy
tymi trybami u¿ywaj klawisza F4. Je¶li masz zainstalowany
program GNU gzip, bêdzie on automatycznie u¿ywany do
dekompresji plików w przypadku wyst±pienia takiej
potrzeby.

Podgl±d plików bêdzie próbowa³ u¿yæ najlepszej metody
zalecanej przez system lub rozszerzenie pliku. Wbudowany
podgl±d plików bêdzie interpretowa³ wiele ci±gów znaków, i
w³±cza³ podkre¶lenie lub pogrubienie, powoduj±c tym samym
du¿o przyjemniejszy wygl±d plików.

Kiedy jeste¶ w trybie hex, funkcja szukania akceptuje
tekst w cudzys³owach równie dobrze jak warto¶ci
szesnastkowe.

Mo¿esz mieszaæ ci±gi znaków ze sta³ymi tak jak: "Ci±g"
0xFE 0xBB "wiêcej tekstu". Ci±g pomiêdzy sta³ymi i
cudzys³owami jest po prostu ignorowany.

Kilka wewnêtrznych szczegó³ów na temat podgl±du: Na
systemach, które u¿ywaj± wywo³ania systemowego mmap(2),
program mapuje pliki zamiast je ³adowaæ; je¶li system nie
obs³uguje mmap(2) lub plik pasuje do którego¶ z wybranych
filtrów, podgl±d u¿yje jego rozszerzalnych buforów, dziêki
temu ³aduj±c tylko te czê¶ci, do których musisz mieæ
aktualnie dostêp (dotyczy równie¿ plików skompresowanych).

Tu jest lista akcji powi±zanych z ka¿dym klawiszem, który
Midnight Commander obs³uguje w wewnêtrznym pogl±dzie.

F1 Wywo³uje wbudowan± przegl±darkê pomocy.

F2 Prze³±cza tryb zawijania.

F4 Prze³±cza tryb wy¶wietlania.

F5 Id¼ do linii. Zostaniesz zapytany o numer linii i
zostanie ona wy¶wietlona na ekranie twojego monitora.

F6, /. Szukaj wyra¿eñ w dalszej czê¶ci.

?, Wsteczne wyszukiwanie wyra¿enia.

F7 Normalne wyszukiwaniewyszukiwanie w trybie hex.

C-s. Zaczyna normalne szukanie je¶li nie by³o ¿adnego
wcze¶niej, w przeciwnym razie szuka nastêpnego
wyst±pienia.

C-r. Zaczyna szukanie wsteczne je¶li jeszcze ¿adnego nie
by³o, w przeciwnym razie szuka nastêpnego wyst±pienia.

n. Szuka nastêpnego wyst±pienia.

F8 Prze³±cza tryby Raw i Parsed. Poka¿e to plik w postaci
takiej w jakiej zosta³ znaleziony na dysku, lub je¶li
zosta³ wybrany jaki¶ filtr, b±d¼ te¿ plik spe³nia
wymagania w pliku mc.ext, wy¶wietlane jest to co
przekazuje filtr. Aktualne ustawienie jest zawsze
przeciwne ni¿ to napisane na przycisku, przycisk wskazuje
zawsze to co siê stanie po jego naci¶niêciu.

F9 Prze³±cza pomiêdzy trybami format i unformat. Kiedy
tryb formatu jest w³±czony podgl±d bêdzie interpretowa³
niektóre sentencje i pokazywa³ tekst pogrubiony i
podkre¶lony innymi kolorami. Wynika z tego, ¿e przycisk
wskazuje co innego ni¿ jest aktualnie (patrz wy¿ej).

F10, Esc. Wychodzi z wbudowanego podgl±du.

Page Down, space, C-v. Przewija jedn± stronê naprzód.

Page Up, M-v, C-b, backspace. Przewija jedn± stronê
wstecz.

strza³ka w dó³. Przewija jedn± liniê naprzód.

strza³ka w górê. Przewija jedn± liniê wstecz.

C-l. Od¶wie¿a ekran.

!. W³±cza pow³okê w aktualnym katalogu roboczym.

C-f. Przeskakuje do nastêpnego pliku.

C-b. Przeskakuje do poprzedniego pliku.

M-r. Prze³±cza linijkê.

Mo¿liwe jest poinstruowanie podgl±du pliku jak ma
wy¶wietlaæ plik, zobacz sekcjê Edycja pliku rozszerzeñ.[Internal File Editor]
Wbudowany edytor plików

Wbudowany edytor plików ma wiêkszo¶æ funkcji posiadanych
przez inne edytory pe³no-ekranowe. Jest wywo³ywany po
naci¶niêciu klawisza F4 o ile opcja use_internal_edit jest
ustawiona w pliku startowyn. Ma maksymalny rozmiar pliku
wynosz±cy szesna¶cie megabajtów i potrafi bez skazy
edytowaæ pliki binarne.

Opcje, które aktualnie posiada to: kopiowanie,
przenoszenie, kasowanie, wycinanie i wklejanie bloków;
klawisz dla klawisza undo; rozci±gane menu; wklejanie
plików; definiowanie makr; szukanie i zastêpowanie wyra¿eñ
regularnych (i nasze w³asne funkcje scanf-printf szukaj±ce
i zamieniaj±ce); strza³ki z Shiftem zaznaczaj±ce teksty w
stylu MSW-MAC (tylko dla konsoli typu Linux); prze³±czanie
trybu wstawiania-zastêpowania; opcja pozwalaj±ca na
"przerzucenie" bloku tekstu przez komendê pow³oki jak na
przyk³ad indent.

Edytor jest bardzo prosty w u¿yciu i nie wymaga ¿adnego
przygotowania. Aby zobaczyæ jakie s± klawisze po prostu
obejrzyj odpowiednie menu rozwijalne. Inne klawisze to:
przemieszczanie z Shiftem zaznaczaj±ce tekst. Ctrl-Ins
kopiuje do pliku cooledit.clip a Shift-Ins wkleja z pliku
cooledit.clip. Shift-Del Wycina do cooledit.clip, a
Ctrl-Del kasuje zaznaczony tekst. Klawisze dokoñczenia
równie¿ daj± Enter z automatycznym wciêciem. Pod¶wietlanie
mysz± równie¿ dzia³a, i mo¿esz je przes³oniæ i spowodowaæ
normalne zaznaczanie tekstu (takie jak obs³uguje terminal)
po prostu trzymaj±c klawisz Shift.

Aby zdefiniowaæ makro, naci¶nij Ctrl-R i potem naci¶nij
klawisze, które chcesz aby by³y wykonywane. Naci¶nij
ponownie Ctrl-R kiedy skoñczysz. Mo¿esz równie¿
przyporz±dkowaæ makro do dowolnego klawisza jaki chcesz
naciskaj±c ten klawisz. Makro jest wykonywane kiedy
naci¶niesz Ctrl-A i przyporz±dkowany klawisz. Makro jest
wykonywane równie¿ je¶li naci¶niesz klawisz Meta, Ctrl,
lub Esc i wybrany klawisz, jednak tylko je¶li ten klawisz
nie jest u¿ywane przez inne funkcje. Raz zdefiniowane,
makro wêdruje sobie do pliku .mc/cedit/cooledit.macros w
twoim katalogu domowym. Mo¿esz skasowaæ makro kasuj±c
odpowiedni± liniê z tego pliku.

F19 sformatuje format C je¶li jest pod¶wietlony. ¯eby to
dzia³a³o, stwórz wykonywalny plik .mc/cedit/edit.indent.rc
w twoim katalogu domowym zawieraj±cy poni¿sze:

#!/bin/sh
/usr/bin/indent -kr -pcs $HOME/.mc/cedit/cooledit.block >& /dev/null
cat /dev/null > $HOME/.mc/cedit/cooledit.error

Mo¿esz u¿ywaæ funkcji scanf do przeszukiwania i
zastêpowania formatów znaków w C. Najpierw jest rzuæ okiem
na stronê manuala funkcji sscanf i sprintf aby zobaczyæ
jaki jest format ci±gów i jak on dzia³a. Za³ó¿my, ¿e
chcesz wszystkie wyst±pienia ci±gu z³o¿onego z, powiedzmy,
otwartego nawiasu, trzech oddzielonych przecinkami liczb i
nawiasu zamykaj±cego, zast±piæ ci±giem z³o¿onym ze s³owa
jab³ka, trzeciej liczby, s³owa pomarañcze i drugiej
liczby. Nale¿y wówczas tak wype³niæ okno dialogowe
zastêpowania:

 Enter search string
(%d,%d,%d)
 Enter replace string
jab³ka %d pomarañcze %d
 Enter replacement argument order
3,2

Ostatnia linia mówi, ¿e w miejscu pierwszego i drugiego
argumentu wyniku maj± byæ u¿yte trzeci i drugi wej¶ciowy.

Jest równie¿ dobrym polecenia w³±czenie opcji pytania siê
przed zamian±, poniewa¿ zgodno¶æ jest znajdowana
kiedykolwiek tylko liczba argumentów znalezionych zgadza
sie z liczb± podanych, co nie zawsze jest prawdziw±
zgodno¶ci±. Scanf traktuje równie¿ bia³e znaki jako
elastyczne. Zauwa¿, ¿e format scanfa % jest równie¿ bardzo
u¿yteczny dla skanowania znaków i bia³ych spacji.

Edytor wy¶wietla równie¿ znaki nieamerykañskie (160+).
Kiedy edytujesz plik binarny, powiniene¶ ustawiæ opcjê
display bits do 7 bitów w menu opcji, aby utrzymaæ
przejrzysto¶æ odstêpów miêdzy znakami.

Zobacz sekcjê Polskie znaki, aby poznaæ szczegó³y na temat
u¿ywania polskich znaków w Midnight Commanderze.

[Completion]
Dokañczanie


Pozwól Midnight Commanderowi pisaæ za ciebie.

Spróbuj u¿yæ dokoñczenia na tek¶cie przed aktualn±
pozycj±. MC próbuje dokoñczyæ tekst jako zmienn± (je¶li
tekst zaczyna siê od znaku $), nazwê u¿ytkownika (je¶li
tekst zaczyna siê od znaku ~), nazwê hosta (je¶li tekst
zaczyna siê od znaku @) lub komendê (je¶li jeste¶ w linii
komend w pozycji gdzie mo¿esz wpisaæ jak±¶ komendê,
mo¿liwe dokoñczenia bêd± zawieraæ równie¿ zarezerwowane
s³owa i wbudowane komendy pow³oki). Je¶li ¿aden z
powy¿szych warunków nie jest spe³niony, próbuje siê
dokañczaæ nazwê pliku.

Nazwa pliku, nazwa u¿ytkownika i hosta, pracuje we
wszystkich liniach wej¶cia, dokañczanie komend pracuje
tylko w wybranych. Je¶li dokañczanie jest rozbudowane
(jest wiêcej ró¿nych mo¿liwo¶ci), MC wyda krótki d¼wiêk, a
nastêpna akcja bêdzie zale¿eæ od warto¶ci zmiennej
Complete: show all w menu konfiguracja. Je¶li jest ona
w³±czona, zostanie wy¶wietlona lista wszystkich mo¿liwych
nazw. W³a¶ciw± nazwê mo¿esz wybraæ za pomoc± strza³ek a
potem naciskaj±c klawisz Enter na w³a¶ciwej pozycji.
Mo¿esz tak¿e nacisn±æ pierwsze litery, którymi ró¿ni± siê
mo¿liwo¶ci aby odrzuciæ tak du¿± czê¶æ dokoñczeñ jak to
tylko mo¿liwe. Je¶li naci¶niesz znowu M-Tab, pokazane
zostan± tylko te pozycje, które zaczynaj± siê od kolejnych
podanych liter. Kiedy nie maja ju¿ wiêcej mo¿liwo¶ci, okno
znika, ale mo¿esz je wcze¶niej schowaæ u¿ywaj±c klawiszy
anuluj±cych: Esc, F10 oraz strza³ek w lewo i prawo. Je¶li
Complete: show all jest wy³±czone, okno z list± w³±cza siê
dopiero wtedy, kiedy naciskasz M-Tab po raz drugi. Za
pierwszym razem MC wydaje tylko krótki d¼wiêk.

[Virtual File System]
Wirtualny system plików (Virtual File System)

Midnight Commander jest dostarczany z kodem pozwalaj±cy na
dostêp do systemów plików. Ten kod nazywany jest
wirtualnym systemem plików. Pozwala on Midnight
Commanderowi manipulowaæ plikami trzymanymi na systemach
nie Unixowych.

Aktualnie Midnight Commander jest wyposa¿ony w niektóre
wirtualne systemy plików (VFS): lokalny system plików,
u¿ywany do dostêpu do typowych systemów plików Unixowych;
ftpfs u¿ywanego do manipulowania plikami na zdalnych
systemach na poprzez protokó³ FTP; tarfs u¿ywany do
manipulania plikami w systemach tar i w skompresowanych
systemach tar; undelfs, u¿ywany do odzyskiwania
skasowanych plików na systemach typu ext2 (standardowy
system pracy systemu Linux), fish (do manipulowania
plikami poprzez po³±czenia pow³ok takich jak rsh czy ssh)
i w koñcu system mcfs (system plików Midnight Commandera),
oparty o sieæ.

Kod VFS potrafi interpretowaæ poprawnie wszystkie nazwy
¶cie¿ek i przekazuje je do w³a¶ciwego systemu plików.
Format u¿ywany dla ka¿dego z systemów plików jest opisany
w swojej oddzielnej sekcji.

[FTP File System]
System plików FTP (FTP File System)

Ftpfs pozwala na manipulowanie plikami na zdalnych
komputerach, do normalnego u¿ytku, mo¿esz próbowaæ u¿ywaæ
panelowych komend FTP i dowi±zañ (dostêpnych z linii menu)
lub zmieniæ ¶cie¿kê bezpo¶rednio za pomoc± zwyk³ej komendy
cd wygl±daj±cej tak jak poni¿ej:

/#ftp:[!][u¿ytkownik[:has³o]@]komputer[:port][zdalny
katalog]

Parametry u¿ytkownik, port i zdalny katalog s± opcjonalne.
Je¶li wybierzesz element u¿ytkownik Midnight Commander
spróbuje zalogowaæ siê na zdalnym komputerze jako zadany
u¿ytkownik, w przeciwnym razie u¿yje twojego loginu.
Opcjonalne jest równie¿ has³o, je¶li jest obecne zostanie
u¿yte do nawi±zania po³±czenia. To u¿ycie nie jest
zalecane (tak samo jak trzymanie tego w twojej hotli¶cie,
dopóki nie ustawisz odpowiednich uprawnieñ, aby nikt
niepowo³any nie mia³ do tego dostêpu).

Przyk³ady:

    /#ftp:ftp.nuclecu.unam.mx/linux/local
    /#ftp:tsx-11.mit.edu/pub/linux/packages
    /#ftp:!behind.firewall.edu/pub
    /#ftp:guest@remote-host.com:40/pub
    /#ftp:miguel:xxx@server/pub

Aby po³±czyæ siê z serwerem znajduj±cym siê za firewallem,
bêdziesz musia³ u¿yc przedrostka ftp://! aby wymusiæ na
Midnight Commanderze u¿ywanie serwera proxy do transferu
danch. Serwer proxy definiuje siê w oknie dialogowym
wirtualnego systemu plików.

Inn± mo¿liwo¶ci± jest ustawienie opcji Always use ftp
proxy w oknie konfiguracyjnym wirtualnego systemu plików.
Skonfiguruje to program tak, aby zawsze u¿ywa³ serwera
proxy. Je¶li ta zmienna jest ustawiona, program bêdzie
robi³ dwie rzeczy: konsultowa³ plik
/home/john/prjroot/rootfs/usr/share/mc.no_proxy w celu
znalezienia linii zawieraj±cych nazwy serwerów, które s±
lokalne (je¶li nazwa hosta zaczyna siê od kropki, uznaje
siê, ¿e jest to domena) i sprawdza czy jakie¶ hosty bez
kropek w nazwie s± widoczne bezpo¶rednio.

Je¶li u¿ywasz systemu ftpfs bêd±c za routerem filtruj±cym,
który nie pozwala ci na u¿ywanie standardowej metody
otwierania plików, mo¿esz chcieæ wymusiæ na programie
u¿ywanie trybu passive-open. Aby tego u¿ywaæ ustaw opcjê
ftpfs_use_passive_connections w pliku inicjuj±cym.

Midnight Commander przechowuje listê katalogów w buforze
podrêcznym. Czas wyrzucania bufora jest ustawiany w oknie
dialogowym Wirtualnego Systemu Plików. To ma ¶mieszn±
w³a¶ciwo¶æ tak±, ¿e nawet kiedy wyst±pi± jakie¶ zmiany w
katalogu, nie bêd± one pokazane w strukturze katalogów,
dopóki nie wymusisz tego przy u¿yciu kombinacji C-r. To
jest dobre rozwi±zanie (je¶li my¶lisz, ¿e to jest bug, to
pomy¶l o pracy na zdalnych systemach po³o¿onych po drugiej
stronie Atlantyku przy u¿yciu ftpfs :) ).

[Tar File System]
System plików tar (Tar File System)

System plików tar pozwala na dostêp w trybie
tylko-do-odczytu do plików typu tar i do skompresowanych
plików typu tar, za pomoc± komendy chdir. Aby zmieniæ
katalog na plik tar, mo¿esz zmieniæ aktualny katalog
u¿ywaj±c nastêpuj±cej konstrukcji:

/nazwa_pliku.tar:utar/[katalogu-wewn±trza-archiwum]

Plik mc.ext pozwala ju¿ na tworzenie skrótów do plików
tar, oznacza to, ¿e mo¿esz wybraæ jaki¶ plik tar i
nacisn±æ enter aby do niego wej¶æ, zobacz sekcjê Edycja
pliku rozszerzeñ po wiêcej szczegó³ów na temat tego jak
zosta³o to pomy¶lane.

Przyk³ady

    mc-3.0.tar.gz#utar/mc-3.0/vfs
    /ftp/GCC/gcc-2.7.0.tar#utar

Pó¼niejszy podaje pe³n± ¶cie¿kê archiwum tar.[FIle transfer over SHell filesystem]
Transfer plików pomiêdzy systemami plików (FIle transfer
over SHell filesystem)


System plików fish jest systemem opartym na sieci, który
pozwala na manipulowanie plikami na obcej maszynie tak
jakby by³y one lokalne. Aby tego u¿ywaæ, druga strona musi
równie¿ mieæ ustawiony serwer fish, lub musi mieæ pow³okê
kompatybiln± z bashem.

Aby po³±czyæ siê z obc± maszyn±, musisz tylko zmieniæ
katalog do specjalnego katalogu, którego nazwa jest w
nastêpuj±cym formacie:

/#sh:[u¿ytkownik@]komputer[:opcje];/[zdalny-katalog];</em>
Elementy u¿ytkownik, opcje i zdalny katalog s± opcjonalne.
Je¶li podasz u¿ytkownika Midnight Commander spróuje
zalogowaæ siê na obcy komputer jako zadany u¿ytkownik w
przeciwnym razie u¿yty zostanie twój login.

Jako opcja mo¿e wyst±piæ 'C' - w³±cza kompresje i 'rsh' -
w³±cza rsh zamist ssh. Je¶li zdalny-katalog istnieje, twój
aktualny katalog na zdalnym komputerze bêdzie ustawiony na
niego.

Przyk³ady:

    /#sh:onlyrsh.mx:r/linux/local
    /#sh:joe@want.compression.edu:C/private
    /#sh:joe@noncompressed.ssh.edu/private
[Network File System]
Sieciowe systemy plików

Midnight Commander pozwala na obs³ugê zdalnych systemów i
manipulowanie na ich dyskach, tak jakby by³y one lokalne.
¯eby to by³o mo¿liwe druga maszyna musi byæ uruchomiona
razem z programem mcserv(8).

¯eby pod³±czyæ siê do obcego komputera musisz przej¶æ do
katalogu w specjalny sposób opisany poni¿ej:

mc:[u¿ytkownik@]komputer[:port][katalog]

U¿ytkownik, port i katalog s± opcjami nieobowi±zkowymi.
Je¶li podasz u¿ytkownika Midnight Commander spróbuje
zalogowaæ siê do systemu zdalnego jako zadany u¿ytkownik,
w przeciwnym wypadku spróbuje u¿yæ twojej aktualnej nazwy
zg³oszeniowej.

Port jest u¿ywany je¶li zdalny komputer jest odpalony na
niestandardowych portach (zobacz stronê manuala mcserv(8)
po wiêcej informacji o portach); i wreszcie je¶li katalog
jest podany, twoim katalogiem domowym na zdalnym
komputerze bêdzie ten podany.

Przyk³ady:

    mc:ftp.nuclecu.unam.mx/linux/local
    mc:joe@foo.edu:11321/private

[Undelete File System]
Odzyskiwanie plików

Na systemach Linuksowych, je¶li doda³e¶ w konfiguracji
opcjê przywracania skasowanych plików z systemów ext2,
bêdziesz w stanie to robiæ. Odzyskiwanie plików jest
mo¿liwe tylko i wy³±cznie na systemach typu ext2.
Przywracany system plików jest tylko nak³adk± na
bibliotekê ext2fs: odzyskiwanie nazw wszystkich
skasowanych plików i próba uczynienia z nich normalnej
partycji.

¯eby u¿ywaæ tych systemów plików, bêdziesz musia³ przej¶æ
od specjalnego pliku, którego nazwa sk³ada siê z
przedrostka "undel:" i nazwy pliku, w której ów plik
rezyduje.

Na przyk³ad, aby odzyskaæ skasowane pliki z drugiej
partycji pierwszego dysku scsi Linux, bêdziesz musia³ u¿yæ
nastêpuj±cej ¶cie¿ki:

    undel:/dev/sda2

Mo¿e to chwilkê potrwaæ zanim pliki zostan± pokazane i
bêdziesz móg³ je normalnie ogl±daæ.

[Polskie znaki]
Polskie znaki

Midnight Commander bardzo dobrze radzi sobie z obs³ug±
znaków nieamerykañskich (160+) w tym polskich. Wa¿ne jest
aby mieæ ustawione polskie znaki na konsoli (tzn. aby
pow³oka je obs³ugiwa³a). Je¶li u¿ywasz basha musisz tylko
ustawiæ w pliku inputrc ( /etc/inputrc lub ~/.inputrc)
nastêpuj±ce warto¶ci:

set meta-flag on
set convert-meta off
set output-meta on

w pliku /etc/sysconfig/i18n:

SYSFONT=lat2u-16
SYSFONTACM=iso02

natomiast w pliku /etc/sysconfig keyboard:

KEYTABLE=pl

Potem u¿yj poleceñ /sbin/setsysfont i loadkeys pl. [Zwróæ
uwagê na to, ¿e te pliki s± charakterystyczne dla
dystrybucji RedHat, je¶li masz inn± i wiesz jak to
ustawiæ, to napisz do mnie, a ja to tu dopiszê [ patrz
t³umacz na dole ;)) ]].

Teraz wystarczy ju¿ tylko w³±czyæ odpowiednie opcje w menu
opcji (klawisz F9). W menu opcji wybieramy Display bits i
w³±czamy opcje ISO 8859-1 oraz Full 8 bits input. Potem
zapisujemy konfiguracjê w opcje | Save setup.

I gotowe - polskie literki dzia³aj± równie¿ w podgl±dzie i
wbudowanym edytorze plików.

[Colors]
Kolory

Midnight Commander próbuje sprawdziæ czy twój terminal
obs³uguje kolory u¿ywaj±c bazy danych terminali. Czasami
jest to zmieniane przez ró¿ne flagi startowe, np. mo¿esz
wymusiæ wy¶wietlanie czarno-bia³e lub kolorowe startuj±c z
opcj± odpowiednio -b i -c.

Je¶li program jest skompilowany z mened¿erem ekranu Slang
zamiast ncurses, sprawdzi on równie¿ warto¶æ zmiennej
COLORTERM. Je¶li jest ustawiona, ma takie samo znaczenie
jak opcja -c.

Mo¿esz wybraæ terminale, które zawsze ¿±daj± wy¶wietlania
w kolorze, poprzez dodanie ich do pozycji color_terminals
w sekcji pliku startuj±cego. Uchroni to Midnight
Commandera przed próbami odkrycia typu twojego terminala.
Na przyk³ad
[Colors]
color_terminals=linux,xterm
color_terminals=terminal-name1,terminal-name2...

Program mo¿e byæ skompilowany zarówno z bibliotekami slang
jak i ncurses. Ncurses nie obs³uguje metody wymuszania
wy¶wietlania, zawsze sprawdza w bazie danych terminali.

Midnight Commander umo¿liwia równie¿ zmianê standardowych
barw ekranu. Aktualnie kolory s± skonfigurowane przy
u¿yciu zmiennej MC_COLOR_TABLE w sekcji Colors pliku
startowego.

W sekcji kolorów, standardowa mapa kolorów jest ³adowana
ze zmiennej base_color. Mo¿esz wybraæ swoj± w³asn± mapê
dla terminala poprzez u¿ycie nazwy terminala jako klucza w
tej sekcji. Na przyk³ad:

[Colors]
base_color=
xterm=menu=magenta:marked=,magenta:markselect=,red

Format definicji kolorów jest nastêpuj±cy:

  <s³owo kluczowe>=<kolor powierzchni">,<kolor t³a>:<s³owo kluczowe>= ...

Kolory s± opcjonalne, a s³owa kluczowe s± nastêpuj±ce:
normal, selected, marked, markselect, errors, input,
reverse menu, menusel, menuhot, menuhotsel, gauge; kolory
okien dialogowych: dnormal, dfocus, dhotnormal, dhotfocus;
Kolory pomocy: helpnormal, helpitalic, helpbold, helplink,
helpslink; Kolory podgl±du: viewunderline; Specjalne tryby
pod¶wietlenia: executable, directory, link, device,
special. [nie t³umaczy³em nazw z racji tego, ¿e trzeba je
stosowaæ w ich angielskim brzmieniu - je¶li jeste¶ a¿ tak
zaawansowany, u¿yj s³ownika].

Okna dialogowe mog± mieæ nastêpuj±ce kolory: dnormal
u¿ywany do normalnego tekstu, dfocus jest kolorem u¿ywanym
do wy¶wietlania aktualnego komponentu, dhotnormal jest
kolorem u¿ywanym do odró¿nienia klawiszy w normalnych
komponentach, a dhotfocus jest u¿ywany do wy¶wietlania
owych w aktualnie wybranym.

Menu u¿ywa tego samego schematu, ale jako nazw kolorów
u¿ywa menu, menusel, menuhot i menuhotsel.

Pomoc u¿ywa nastêpuj±cych kolorów: helpnormal u¿ywany do
normalnego tekstu, helpitalic u¿ywa tej samej czcionki,
któr± wykorzystuje manual do wy¶wietlania czcionki typu
italic, helpbold tak samo jak wy¿ej tylko czcionki s± typu
bold, helplink u¿ywane dla niewybranych jeszcze dowi±zañ i
helpslink u¿ywane dla ju¿ wybranych.

gauge pokazuje kolor wype³nienia pokazywany przy wska¼niku
postêpu [ang. gauge], ukazuj±cym ile procent pliku zosta³o
przekopiowane itp. w graficzny sposób.

Dla trybu wysokiego pod¶wietlania directory jest u¿ywane
jako kolor do wy¶wietlania katalogów; executable dla
plików wykonywalnych; link do wy¶wietlania dowi±zañ;
device do wy¶wietlania plików urz±dzeñ (devices); special
dla plików specjalnych, takich jak gniazda FIFO i IPC;
core dla wy¶wietlania plików typu core (zobacz równie¿ tê
opcjê w sekcji Specjalne ustawienia).

Mo¿liwe kolory to: black, gray, red, brightred, green,
brightgreen, brown, yellow, blue, brightblue, magenta,
brightmagenta, cyan, brightcyan, lightgray and white.
[sorry, ¿e ich nazw nie t³umaczy³em, ale u¿ywaæ ich trzeba
w oryginalnym brzmieniu :))].

[Special Settings]
Specjalne ustawienia

Wiêkszo¶æ ustawieñ Midnight Commandera mo¿e byæ zmieniana
z poziomu menu. Pomimo tego jest pewna ilo¶æ ustawieñ,
których zmiana mo¿liwa jest jedynie poprzez zmianê w
plikach konfiguracyjnych.

Opcje mog± byæ ustawione w twoim pliku ~/.mc/ini :

clear_before_exec.

        Standardowo Midnight Commander czy¶ci ekran przed
        wykonaniem komendy. Je¶li chcia³by¶ widzieæ
        wyj¶cie komendy na dole ekranu, wyedytuj twój
        plik ~/mc/ini i zmieñ pole clear_before_exec na
        0.

confirm_view_dir.

        Je¶li naciskasz F3 na katalogu, normalnie MC
        wchodzi do niego. Je¶li ta opcja ma warto¶æ 1, MC
        zapyta siê o potwierdzenie przed wej¶ciem do tego
        katalogu, je¶li masz zaznaczone jakie¶ pliki.

drop_menus.

        Je¶li ta opcja jest ustawiona, kiedy naciskasz
        klawisz F9, rozci±gane menu bêdzie od razu
        roz³o¿one, w przeciwnym wypadku znajdziesz siê po
        prostu w najwy¿szym wierszu ekranu traktowanym
        jako menu. Bêdziesz musia³ u¿yæ strza³ek lub
        pierwszych literek, aby wybraæ konkretne menu.

ftpfs_retry_seconds.

        Warto¶æ jest ilo¶ci± sekund, przez które Midnight
        Commander bêdzie czeka³ cierpliwie zanim
        rozpocznie ³±czenie siê z serwerem ftp od nowa.
        Dzieje siê to wtedy kiedy serwer odmówi³
        po³±czenia lub has³o jest nieprawid³owe. Je¶li
        warto¶æ wynosi zero, nie nast±pi próba ponownego
        po³±czenia z serwerem.

ftpfs_use_passive_connections.

        Standardowo ta opcja jest wy³±czona. Powoduje
        ona, ¿e ftpfs otwiera po³±czenia pasywne dla
        transmisji danych. Jest to u¿ywane przez ludzi,
        którzy siedz± za ruterami filtruj±cymi. Dzia³a to
        tylko wtedy, kiedy nie u¿ywasz serwera ftp proxy.

max_dirt_limit.

        Opisuje jak wiele od¶wie¿eñ ekranu mo¿e byæ
        maksymalnie ominiête we wbudowanym podgl±dzie
        plików. Normalnie ta warto¶æ jest wa¿na, gdy¿ MC
        automatycznie dostosowuje liczbê od¶wie¿eñ do
        liczby naci¶niêtych klawiszy. Chocia¿ na bardzo
        wolnych komputerach lub na klawiaturach z szybkim
        powtarzaniem klawiszy, du¿a warto¶æ mog³aby
        spowodowaæ skoki ekranu i utratê p³ynno¶ci.

        Wydaje siê, ¿e warto¶æ 10 dla max_dirt_limit jest
        najlepszym ustawieniem i to jest warto¶æ
        standardowa tej funkcji.

mouse_move_pages.

        Kontroluje czy przewijanie w panelu za pomoc±
        myszki odbywa siê strona po stronie czy linijka
        po linjce.

mouse_move_pages_viewer.

        Tak samo jak wy¿ej tylko, ¿e we wbudowanym
        wewnêtrznym podgl±dzie plików.

navigate_with_arrows.

        Je¶li ta opcja jest w³±czona, mo¿esz u¿ywaæ
        strza³ek do automatycznego przemieszczanie siê
        pomiêdzy katalogami, je¶li linia poleceñ jest
        pusta. (dotyczy to strze³ek w bok).

nice_rotating_dash

        Je¶li jest w³±czony, Midnight Commander bêdzie
        pokazywa³ w lewym górnym rogu obracaj±cy siê
        my¶lnik kiedy bêdzie wykonywa³ jaki¶ proces.

old_esc_mode

        Standardowo Midnight Commander traktuje klawisz
        ESC jako przedrostek (old_esc_mode=0). Je¶li
        w³±czysz tê opcjê (old_esc_mode=1), to klawisz
        ESC bêdzie przedrostkiem dla innego klawisza, ale
        je¶li ten nie nast±pi, bêdzie on zinterpretowany
        jako klawisz anulowania (tak jak ESC ESC).


only_leading_plus_minus

        zmienia znaczenia znaków '+', '-', '*' w linii
        komend (wybór, odznaczenie, odwrócenie
        zaznaczenia). Standardowo dzia³aj± one tylko
        wtedy kiedy linia poleceñ jest pusta. Je¶li co¶
        jest w niej ju¿ napisane, znaki te s± traktowane
        jako normalne. Jest to przydatne gdy¿ najczê¶ciej
        w trakcie pisania nie chcemy zmieniaæ
        zaznaczenia. Jednak czasami ... - wystarczy
        przestawiæ tê opcjê i klawisze te bêd± zawsze
        dzia³aæ. panel_scroll_pages

        Je¶li ustawione (standardowo), panel bêdzie
        przewijany o po³owê za ka¿dym razem kiedy kursor
        dochodzi do dolnej lub górnej linii, w przeciwnym
        wypadku przewijanie bêdzie siê odbywaæ linia po
        linii.

show_output_starts_shell

        Ta opcja pracuje je¶li nie u¿ywasz obs³ugi
        pow³oki w tle. Kiedy u¿yjesz kombinacji klawiszy
        C-o i ta opcja jest w³±czona, bêdziesz mia³ now±
        pow³okê. Je¶li nie, dowolny klawisz przywróci
        znów Midnight Commandera (C-o dzia³a jak
        podgl±d).

show_all_if_ambiguous.

        Standardowo Midnight Commander pokazuje wszystkie
        mo¿liwe dokoñczenia je¶li jest ich wiêcej i
        naci¶niêto kombinacjê M-Tab po raz drugi, za
        pierwszym razem dokoñczone zostanie tylko tyle
        ile jest to mo¿liwe i je¶li bêdzie wiêcej
        mo¿liwo¶ci s³ychaæ bêdzie krótkie bipniêcie.
        Je¶li chcesz widzieæ wszystkie mo¿liwe
        dokoñczenia ju¿ po pierwszym naci¶niêciu M-Tab,
        zmieñ tê opcjê na 1.

torben_fj_mode

        Je¶li ta opcja jest w³±czona, klawisze home i end
        bêd± dzia³a³y troszkê inaczej w panelach, zamiast
        przemieszczaæ liniê wyboru do pierwszej lub
        ostatniej linii w panelu, bêd± dzia³a³y tak jak
        jest to opisane poni¿ej:

        Klawisz home bêdzie: przechodzi³ do ¶rodkowej
        linii, je¶li jest pod ni±; w przeciwnym wypadku
        bêdzie przechodzi³ do najwy¿szej linii w panelu,
        je¶li ju¿ w niej jest, bêdzie przechodzi³ do
        pierwszego pliku w panelu.

        Klawisz end ma podobne zastosowanie: przechodzi
        do ¶rodkowej linii, je¶li jest nad ni±; w
        przeciwnym wypadku przechodzi do najni¿szej linii
        w panelu, chyba ¿e ju¿ siê w niej znajduje, wtedy
        przechodzi do ostatniego pliku w panelu.

highlight_mode Standardowo wszystkie informacje w panelach
s± wy¶wietlane tym samym kolorem. Je¶li ta waro¶æ jest
ustawiona na 1, to uprawnienia lub tryb bêd± wy¶wietlane
przy u¿yciu pod¶wietlonej barwy, tak aby pokazaæ
ustawienia dla u¿ytkownika. Tak wiêc prawa do odczytu,
zapisu i wykonywania bêd± wy¶wietlane na ¿ó³to (tzn.
kolorem selected). W dodatku je¶li ta zmienna jest
ustawiona na 2, to ca³e linie s± wy¶wietlane w kolorze
odpowiadaj±cym ich typowi (zobacz sekcjê Kolory).
Pod¶wietlenie uprawnieñ równie¿ pracuje w tym trybie.

use_file_to_guess_type

        Je¶li ta zmienna jest ustawiona (standardowo)
        próbuje siê dostosowaæ rozszerzenie pliku do tego
        wybranego w pliku mc.ext.

xterm_mode

        Je¶li ta opcja jest w³±czona (standardowo tak nie
        jest) kiedy przegl±dasz plik w panelu drzewa,
        bêdzie on automatycznie prze³adowywa³ drugi panel
        na zawarto¶æ wybranego katalogu.

[Terminal databases]
Baza danych terminali (Terminal databases)

Midnight Commander pozwala ci na naprawienie bazy danych
terminali bez posiadania uprawnieñ roota. Midnight
Commander szuka w pliku startowym (mc.lib po³o¿onego w
katalogach z bibliotekami Midnight Commandera) lub w pliku
~/.mc/ini sekcji "terminal:nazwa-twojego-terminala" i
potem sekcji "terminal:general", ka¿da linia sekcji
zawiera symbol klawisza, który chcesz zdefiniowaæ,
zaczynaj±ce siê do znaku równo¶ci i definicji klawisza.
Mo¿esz u¿yæ kombinacji \E aby reprezentowaæ znak escape i
^x aby reprezentowaæ znak Control-x.

Mo¿liwymi klawiszami symboli s±:

f0 do f20     Klawisze funkcyjne f0-f20
bs            backspace
home          klawisz home
end           klawisz end
up            strza³ka w górê
down          strza³ka w dó³
left          strza³ka w lewo
right         strza³ka w prawo
pgdn          klawisz page down
pgup          klawisz page up
insert        znak insert
delete        znak delete
complete      do dokañczania

Na przyk³ad, aby zdefiniowaæ klawisz insert jako Escape +
[ + O + p, mo¿esz ustawiæ to pliku ini:

insert=\E[Op

Symbol klawisza complete reprezentuje sekwencjê wyj¶cia
u¿ywan± do wywo³ywania procesu dokañczania, jest to
wywo³ywane kombinacj± M-tab, ale mo¿esz zdefiniowaæ inne
klawisze do wykonywania tych samych funkcji (na tych
klawiaturach z ton± fajnych i zupe³nie bezu¿ytecznych
klawiszy).



[FILES]
PLIKI


Program bêdzie pobiera³ wszystkie swoje informacje ze
zmiennej MCHOME, je¶li jest ona nie ustawiona to znowu
przetwarzany jest katalog /usr.

/home/john/prjroot/rootfs/usr/share/mc.hlp

        Plik pomocy dla programu.

/home/john/prjroot/rootfs/usr/share/mc/mc.ext

        Standardowy plik rozszerzeñ plików.

~/.mc/bindings

        W³asny plik u¿ytkownika, konfiguruje podgl±d i
        edycje plików. Ma wy¿szy priorytet ni¿ plik
        systemowy.

/home/john/prjroot/rootfs/usr/share/mc/mc.ini

        Standardowy plik setupu do Midnight Commandera,
        u¿ywany tylko wówczas, kiedy u¿ytkownik nie ma
        swojego w³asnego pliku ~/.mc/ini.

/home/john/prjroot/rootfs/usr/share/mc/mc.lib

        Globalne ustawienia Midnight Commandera.
        Ustawienia w tym pliku s± uwzglêdniane przez
        wszystkie sesje Midnight Commandera, u¿yteczne do
        definiowania ogólnosystemowych ustawieñ
        terminali.

~/.mc/ini

        W³asny setup u¿ytkownika. Je¶li ten plik jest
        dostêpny, jest ³adowany zamiast pliku globalnego.

/home/john/prjroot/rootfs/usr/share/mc/mc.hint

        Plik zawieraj±cy podpowiedzi (hints) wy¶wietlane
        przez program.

/home/john/prjroot/rootfs/usr/share/mc/mc.menu

        Ten plik zawiera informacje o ogólnosystemowych
        aplikacjach w menu.

~/.mc/menu

        W³asny plik menu u¿ytkownika. Je¶li ten plik jest
        obecny jest u¿ywany zamiast pliku globalnego.

~/.mc/tree

        Lista katalogów drzewa katalogów i podgl±du
        drzewa. Jedna linia jest jednym wej¶ciem. Linie
        zaczynaj±ce siê od uko¶nika s± pe³nymi nazwami
        katalogów. Linie zaczynaj±ce siê od numeru maj±
        tyle znaków ile poprzedni katalog. Je¶li chcesz
        mo¿esz stworzyæ plik u¿ywaj±c komendy "find /
        -type d -print | sort > ~/.mc/tree". Normalnie
        nie ma sensu tego czyniæ, gdy¿ Midnight Commander
        robi to sam za ciebie.

./.mc.menu

        Lokalny plik zdefiniowany przez u¿ytkownika.
        Je¶li ten plik jest dostêpny, jest u¿ywany
        zamiast pliku w katalogu domowym i
        ogólnosystemowego.

[AVAILABILITY]
DOSTÊPNO¦Æ

Najnowsza wersja programu jest do zdobycia na serwerze
ftp.nuclecu.unam.mc w katalogu /linux/local i w Europie na
serwerze sunsite.mff.cuni.cz w katalogu /GNU/mc i na
serwerze ftp.teuto.de w katalogu /lmb/mc.[SEE ALSO]
ZOBACZ TAK¯E

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
B£ÊDY

W pliku TODO dystrybucji znajdziesz informacje na temat
tego, co pozosta³o jeszcze do zrobienia.

Je¶li chcesz zg³osiæ k³opoty z programem [b³êdy w nim],
wy¶lij e-mail [po angielsku], na adres mc-devel@gnome.org.

Do zg³oszenia b³êdu do³±cz opis problemu, versjê programu,
którego u¿ywasz (wy¶wietla j± mc -V), system operacyjny,
na którym pracujesz i je¶li program siê wyk³ada,
chcieliby¶my dostaæ ¶lad stosu.[T£UMACZENIE]
T£UMACZENIE

Maciej Wojciechowski wojciech@staszic.waw.pl

[main]
 lqwqk     k           k     
 x x x .   x     .     x     
 x x x k lqu wqk k lqw tqk n 
 x x x x x x x x x x x x x x 
 v   v v mqv v v v mqu v v mj
     qqqqqqCommanderqj 

To g³ówny ekran pomocy Midnight Commandera.

Aby dowiedzieæ siê, jak korzystaæ z interaktywnej pomocy
naci¶nij EnterHow to use help. Mo¿esz te¿ przej¶æ bezpo¶rednio do spisu
tre¶ciContents pomocy.

GNU Midnight Commander zosta³ napisany przez autorówAUTHORS.

GNU Midnight Commander jest dostarczany ABSOLUTNIE BEZ
¯ADNEJ GWARANCJIWarranty. Jest on wolnym oprogramowaniem, 
wiêc dozwolona jest jego redystrybucja na zasadach 
GNU General Public LicenseLicense (jej nieoficjalne t³umaczenie
znajdziesz tutajLicense-pl).

[License]
Licencja

Nieoficjalne polskie t³umacznie znajdziesz tutajLicense-pl.


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
Nieoficjalne t³umaczenie licencji

Uwaga: To jest nieoficjalne t³umaczenie Powszechnej
Licencji Publicznej GNU na jêzyk polski. Nie zosta³o
opublikowane przez Free Software Foundation i pod wzglêdem
prawnym nie stanowi warunków rozpowszechniania
oprogramowania stosuj±cego GNU GPL -- ustanawia je
wy³±cznie oryginalny angielski tekst licencji GNU
GPLLicense. T³umaczenie pochodzi ze strony
http://www.linux.org.pl/


           Powszechna Licencja Publiczna GNU
                Wersja 2, czerwiec 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

  Zezwala siê na kopiowanie i rozpowszechnianie wiernych
kopii niniejszego dokumentu licencyjnego, jednak bez prawa
wprowadzania zmian. 

                     Preambu³a

  Wiêkszo¶æ licencji na oprogramowanie pomy¶lana jest po
to, aby odebraæ u¿ytkownikowi mo¿liwo¶æ swobodnego
udostêpniania innym i zmieniania danego software'u.
Natomiast w wypadku Powszechnej Licencji Publicznej GNU
(GNU General Public License, GPL) celem jest
zagwarantowanie u¿ytkownikowi swobody udostêpniania i
zmieniania tego bezp³atnego oprogramowania, a wiêc danie
pewno¶ci, i¿ oprogramowanie jest wolno dostêpne dla
wszystkich u¿ytkowników. Niniejsza Powszechna Licencja
Publiczna dotyczy wiêkszo¶ci oprogramowania wydawanego
przez Fundacjê Wolnego Oprogramowania (Free Software
Foundation) oraz wszelkich innych programów, których
autorzy zobowi±zuj± siê do jej stosowania. (Niektóre
rodzaje oprogramowania wydawanego przez Fundacjê objête s±
Powszechn± Licencj± Publiczn± GNU dla Bibliotek, GNU
Library General Public License). U¿ytkownik mo¿e stosowaæ
j± równie¿ do swoich programów.

  Mówi±c o wolnym oprogramowaniu mamy na my¶li swobodê, a
nie cenê. Nasze Powszechne Licencje Publiczne wprowadzono
po to, aby zapewniæ Pañstwu swobodê rozpowszechniania
kopii tego oprogramowania (i - je¶li kto¶ chce -
pobierania za tê us³ugê op³aty), jak równie¿ aby
udostêpniæ kod ¼ród³owy oraz umo¿liwiæ dokonywanie zmian
tego oprogramowania lub wykorzystywania jego fragmentów w
nowych, wolnych programach. Nie bez znaczenia jest te¿
sama mo¿liwo¶æ dotarcia do Pañstwa z informacj± o
wszystkich tych udogodnieniach.

  W celu ochrony praw u¿ytkownika jeste¶my zmuszeni
wprowadzaæ ograniczenia zabraniaj±ce komukolwiek
kwestionowanie jego praw albo sugerowanie rezygnacji z
tych praw. Ograniczenia te sprowadzaj± siê do pewnych dla
Pañstwa obowi±zków w przypadku rozpowszechniania przez Was
kopii naszego oprogramowania b±d¼ dokonywania w nim zmian.

  Na przyk³ad, je¶li rozprowadzacie Pañstwo kopie takiego
programu, niezale¿nie czy gratisowo, czy za op³at±,
musicie Pañstwo odbiorcy udzieliæ wszelkich tych praw,
jakie mieli¶cie sami. Musicie zapewniæ mu równie¿
otrzymanie kodu ¼ród³owego (lub mo¿liwo¶æ otrzymania) oraz
przedstawiæ niniejsze Warunki, aby móg³ on poznaæ swoje
prawa.

  Ochrona Pañstwa praw przebiega w dwóch etapach:

  1. zastrzegamy prawo w³asno¶ci autorskiej do
oprogramowania,
  
  2. oferujemy Pañstwu niniejsz± licencjê, która daje Wam
sankcjonowane prawem zezwolenie na kopiowanie,
rozpowszechnianie i/lub modyfikowanie tego oprogramowania.

  Ponadto dla ochrony tak autora, jak i naszej, pragniemy
mieæ pewno¶æ, ¿e ka¿dy zrozumie, i¿ na niniejsze wolne
oprogramowanie nie udziela siê gwarancji. W razie
dokonania w nim przez kogo¶ modyfikacji i puszczenia dalej
do obrotu, pragniemy, aby dalsi odbiorcy zdawali sobie
sprawê z tego, ¿e problemy wprowadzone przez inne osoby
nie s± wyrazem oryginalnych dzia³añ twórców.

  I rzecz ostatnia: ka¿demu wolnemu programowi stale
zagra¿aj± patenty na oprogramowanie. Naszym pragnieniem
jest unikanie takiego niebezpieczeñstwa, kiedy
redystrybutorzy wolnego programu indywidualnie uzyskuj±
prawa patentowe, nadaj±c tym samym programowi charakter
prawnie zastrze¿ony. W celu zapobie¿enia takim zjawiskom
jednoznacznie wyja¶nili¶my, ¿e ka¿dy patent musi byæ
wydawany albo dla swobodnego u¿ytku przez wszystkich, albo
nie wydawany wcale.

  Poni¿ej podajemy dok³adne zasady i warunki kopiowania,
rozpowszechniania i modyfikowania.


            ZASADY I WARUNKI KOPIOWANIA,
          ROZPOWSZECHNIANIA I MODYFIKOWANIA

  0. Niniejsza Licencja dotyczy programów i innych prac,
na których umieszczona jest pochodz±ca od w³a¶ciciela praw
autorskich informacja, ¿e dany program lub praca mo¿e byæ
rozpowszechniana na warunkach niniejszej Powszechnej
Licencji Publicznej. U¿ywane poni¿ej s³owo "Program"
oznacza w³a¶nie takie programy lub prace, za¶ okre¶lenie
"praca oparta na Programie" dotyczy albo Programu, albo
pochodz±cej od niego pracy w rozumieniu prawa autorskiego,
to jest pracy zawieraj±cej Program lub jego czê¶æ
dos³own±, b±d¼ zmodyfikowan± i/lub prze³o¿on± na inny
jêzyk. (W dalszym ci±gu niniejszego, pojêcie przek³adu
w³±cza siê bez ograniczeñ do terminu "modyfikacja"). Do
ka¿dego licencjobiorcy bêdziemy zwracaæ siê "per Ty".

  Niniejsza Licencja nie obejmuje dzia³añ innych ni¿
kopiowanie, rozprowadzanie i modyfikowanie - nie mieszcz±
siê one w jej zakresie. Czynno¶æ u¿ywania Programu nie
jest poddana ograniczeniom, a produkty uzyskane z Programu
objête s± Licencj± tylko wtedy, gdy ich tre¶æ stanowi
pracê opart± na Programie (niezale¿nie od stworzenia jej
przy u¿yciu Programu). To, czy fakt taki jest prawd±,
zale¿y od tego, co dany Program wykonuje.

  1. Mo¿esz kopiowaæ i rozprowadzaæ w dowolnych mediach
wierne kopie kodu ¼ród³owego Programu w otrzymanej formie
pod warunkiem, ¿e w widoczny sposób i odpowiednio podasz
na ka¿dej kopii w³a¶ciw± informacjê o prawie autorskim i
zrzeczenie siê uprawnieñ z tytu³u gwarancji; wszelkie
napisy informacyjne na temat Licencji i faktu
nieudzielania gwarancji musisz chroniæ przed uszkodzeniem,
za¶ wszystkim innym odbiorcom Programu musisz wraz z
Programem wrêczaæ egzemplarz niniejszej Licencji. 

  Mo¿esz pobieraæ op³atê za fizyczn± czynno¶æ przekazania
kopii i wed³ug w³asnej decyzji mo¿esz za op³at± proponowaæ
ochronê gwarancyjn±.

  2. Mo¿esz modyfikowaæ swoj± kopiê czy kopie Programu
oraz dowolne jego czê¶ci, tworz±c przez to pracê opart± na
Programie, jak równie¿ kopiowaæ i rozprowadzaæ takie
modyfikacje i pracê na warunkach podanych w pkt.1 powy¿ej
- pod warunkiem przestrzegania ca³o¶ci poni¿szych wymogów:

    a) Musisz spowodowaæ umieszczenie na zmodyfikowanych
plikach widocznej informacji o tym, ¿e dane pliki zosta³y
przez ciebie zmienione, wraz z dat± dokonania zmian.

    b) Musisz doprowadziæ do tego, aby ka¿da
rozpowszechniana lub publikowana przez ciebie praca, która
w ca³o¶ci lub czê¶ci zawiera Program, albo pochodzi od
niego lub jego czê¶ci, by³a w ca³o¶ci i bezp³atnie
licencjonowana dla wszelkich stron trzecich na warunkach
niniejszej Licencji.

    c) Je¿eli zmodyfikowany program podczas korzystania z
niego w normalnym trybie odczytuje polecenia
interaktywnie, musisz spowodowaæ, aby po uruchomieniu
(u¿yty w interaktywny sposób w najzwyklejszym trybie),
wydrukowywa³ on lub wy¶wietla³ powiadomienie o odno¶nym
prawie autorskim i braku gwarancji (ewentualnie o
zapewnianiu gwarancji przez ciebie), oraz o tym, ¿e
u¿ytkownicy mog± redystrybuowaæ ten program na niniejszych
warunkach wraz z informacj±, jak u¿ytkownik mo¿e zapoznaæ
siê z tre¶ci± niniejszej Licencji. (Wyj±tek: je¶li sam
Program jest interaktywny, ale normalnie nie drukuje
takiego powiadomienia, twoja praca oparta na nim te¿ nie
musi wydrukowywaæ takiego powiadomienia).

  Niniejsze wymogi odnosz± siê do zmodyfikowanej pracy
jako ca³o¶ci. Je¶li daj±ce siê ustaliæ sekcje danej pracy
nie pochodz± od Programu i mog± byæ racjonalnie uwa¿ane za
samodzielne i odrêbne same w sobie, to niniejsza Licencja
i jej warunki nie maj± zastosowania do takich sekcji przy
rozprowadzaniu ich przez ciebie jako odrêbne prace. Je¶li
jednak rozprowadzasz je jako czê¶æ ca³o¶ci, bêd±cej prac±
opart± na Programie, rozpowszechnianie tej ca³o¶ci musi
byæ dokonywane na warunkach niniejszej Licencji, której
zezwolenia dla innych licencjobiorców rozci±gaj± siê w
ca³ej szeroko¶ci na tê ca³o¶æ, a tym samym i na ka¿d±
indywidualn± jej czê¶æ, niezale¿nie od jej autorstwa.

  Dlatego te¿ intencj± tego fragmentu nie jest roszczenie
sobie praw albo podwa¿anie twych praw do pracy napisanej w
ca³o¶ci przez ciebie. Chodzi nam raczej o korzystanie z
prawa kontrolowania dystrybucji pochodnych i zbiorowych
prac opartych na Programie. 

  I jeszcze jedno: samo tylko po³±czenie z Programem (lub
z prac± opart± na Programie) innej pracy - nie opartej na
Programie, w ramach wolumenu no¶nika przechowywania lub
dystrybucji, nie powoduje objêcia takiej pracy zakresem
niniejszej Licencji.

  3. Mo¿esz kopiowaæ i rozprowadzaæ Program (lub opart± na
nim pracê - zgodnie z pkt.2 w kodzie wynikowym lub w
formie wykonywalnej w my¶l postanowieñ pkt.1 i 2 powy¿ej,
pod warunkiem zrealizowania równie¿ poni¿szych wymogów:

    a) Musisz do³±czyæ do niego odpowiadaj±cy mu,
kompletny i mo¿liwy do odczytania przez urz±dzenia cyfrowe
kod ¼ród³owy, który musi byæ rozpowszechniany na warunkach
pkt.1 i 2 powy¿ej i na no¶niku zwyczajowo u¿ywanym dla
wzajemnej wymiany oprogramowania; lub

    b) do³±czyæ do niego pisemn± ofertê, wa¿n± co najmniej
3 lata, przyznaj±c± ka¿dej stronie trzeciej - za op³at±
nie przekraczaj±c± twego kosztu fizycznego wykonywania
dystrybucji ¼ród³a - kompletn±, odczytywaln± przez
urz±dzenia cyfrowe kopiê odpowiadaj±cego mu kodu
¼ród³owego, rozprowadzan± na warunkach pkt.1 i 2 powy¿ej,
na no¶niku zwyczajowo u¿ywanym do wzajemnej wymiany
oprogramowania; lub

     c) do³±czyæ do niego informacjê, jak± otrzyma³e¶ na
temat oferty rozprowadzania odpowiedniego kodu ¼ród³owego.
(Ta mo¿liwo¶æ dozwolona jest tylko dla dystrybucji
niehandlowej i jedynie wtedy, gdy otrzyma³e¶ dany program
w kodzie wynikowym lub formie wykonywalnej wraz z
wymienion± ofert± - zgodnie z podpunktem "b" powy¿ej).

  Okre¶lenie kod ¼ród³owy dla pracy oznacza formê pracy
preferowan± dla wprowadzania do niej modyfikacji. Dla
wykonanej pracy, kompletny kod ¼ród³owy oznacza ca³y kod
¼ród³owy wszystkich modu³ów, wszelkie sprzê¿one z ni±
po¶rednicz±ce pliki opisuj±ce oraz zbiory komend stosowane
do sterowania kompilacj± i instalowaniem programów.
Niemniej jednak, jako wyj±tek specjalny, dystrybuowany (w
formie ¼ród³owej albo binarnej) kod ¼ród³owy nie musi
obejmowaæ niczego, co jest normalnie rozprowadzane przy
pomocy g³ównych komponentów (kompilator, j±dro itd.)
systemu operacyjnego, na którym pracuje czê¶æ wykonywalna,
o ile sam taki komponent towarzyszy tej czê¶ci.

  Je¶li dystrybucja czê¶ci wykonywalnej albo kodu
wynikowego realizowana jest poprzez oferowanie dostêpu do
kopii z wyznaczonego miejsca, to oferowanie równowa¿nego
dostêpu dla kopiowania kodu ¼ród³owego z tego samego
miejsca liczy siê jako rozpowszechnianie kodu ¼ród³owego,
nawet gdy strony trzecie nie s± zmuszone do kopiowania
¼ród³a wraz z kodem wynikowym.

  4. Poza przypadkami jednoznacznie dozwolonymi w
niniejszej Licencji, nie mo¿esz kopiowaæ, modyfikowaæ,
sublicencjonowaæ ani rozpowszechniaæ Programu. We
wszystkich pozosta³ych wypadkach, ka¿da próba skopiowania,
sublicencjonowania lub rozpowszechnienia Programu jest
niewa¿na i powoduje automatyczne wyga¶niêcie twoich praw z
tytu³u Licencji. Niemniej jednak, stronom, które ju¿
otrzyma³y od ciebie kopie albo prawa w ramach niniejszej
Licencji, licencje nie wygasaj± tak d³ugo, jak d³ugo
strony te w pe³ni stosuj± siê do nich.

  5. Nie musisz akceptowaæ niniejszej Licencji, je¿eli jej
nie podpisa³e¶. Niemniej jednak, nic innego nie zapewni ci
zezwolenia na modyfikowanie lub rozprowadzanie Programu i
pochodz±cych od niego prac. Dzia³ania takie s± prawnie
zabronione, je¿eli nie przyjmujesz niniejszej Licencji.
Dlatego te¿, poprzez modyfikowanie b±d¼ rozpowszechnianie
Programu (lub pracy na nim opartej) dajesz wyraz swojej
akceptacji dla Licencji i wszelkich jej postanowieñ i
warunków dotycz±cych kopiowania, rozprowadzania i
modyfikowania Programu lub opartych na nim prac.

  6. W ka¿dym przypadku redystrybucji przez ciebie
Programu (albo opartej na nim pracy), odbiorca
automatycznie otrzymuje od pierwotnego licencjodawcy
licencjê na kopiowanie, rozpowszechnianie i modyfikowanie
Programu na niniejszych zasadach i warunkach. Na
korzystanie przez odbiorcê z udzielonych w niniejszej
Licencji praw nie mo¿esz narzucaæ ju¿ dalszych ograniczeñ.
Nie jeste¶ stron± odpowiedzialn± za kontrolê
przestrzegania Licencji przez osoby trzecie.

  7. Je¶li na skutek wyroku s±dowego lub zarzutu
naruszenia patentu, jak te¿ z ka¿dej innej przyczyny (nie
ograniczonej do kwestii patentowych) zostan± narzucone na
ciebie (niezale¿nie czy to moc± wyroku s±dowego, umowy,
czy w inny sposób) warunki sprzeczne z warunkami
niniejszej Licencji, to nie zwalniaj± one ciebie z
warunków Licencji. Je¶li nie mo¿esz prowadziæ dystrybucji
tak, aby wype³niaæ jednocze¶nie swoje obowi±zki z tytu³u
niniejszej Licencji i inne odno¶ne obowi±zki, to w
rezultacie nie mo¿esz wcale rozprowadzaæ Programu. Na
przyk³ad, gdyby licencja patentowa nie zezwala³a na woln±
od op³at licencyjnych redystrybucjê Programu przez
wszystkie osoby, które otrzyma³y kopie bezpo¶rednio lub
po¶rednio od ciebie, to jedynym sposobem pozwalaj±cym ci
na przestrzeganie i licencji patentowej, i Licencji
niniejszej, by³oby ca³kowite powstrzymanie siê od
jakiejkolwiek dystrybucji Programu.

  Je¿eli w jakich¶ szczególnych okoliczno¶ciach który¶
fragment niniejszego punktu sta³by siê niewa¿ny lub
niewykonywalny, to intencj± jest, aby znajdowa³a
zastosowanie pozosta³a czê¶æ punktu, a tre¶æ ca³ego punktu
by³a stosowana w pozosta³ych okoliczno¶ciach. 

  Celem niniejszego punktu nie jest zachêcanie do
naruszania patentów czy innych praw w³asno¶ci, albo te¿ do
podwa¿ania ich wa¿no¶ci; niniejszy punkt za swój jedyny
cel ma ochronê integralno¶ci systemu rozpowszechniania
wolnego oprogramowania, realizowanego za pomoc±
publicznych licencji. Wielu ludzi bezinteresownie wnios³o
swój wk³ad do stworzenia szerokiego zakresu oprogramowania
upowszechnianego w tym systemie, maj±c zaufanie do
konsekwentnego jego stosowania; wy³±cznie do
autora/ofiarodawcy nale¿y decyzja, czy ¿yczy on sobie
rozprowadzania oprogramowania za po¶rednictwem innego
systemu i licencjobiorca nie mo¿e tego prawa wyboru
ograniczaæ. 

  Intencj± niniejszego punktu jest jasne i wyra¼ne
przedstawienie tego, co uwa¿a siê za skutki, jakie rodzi
pozosta³a czê¶æ niniejszej Licencji.

  8. W przypadku, gdy dystrybucja i/lub u¿ywanie Programu
w niektórych krajach poddane jest ograniczeniom patentowym
lub zastrze¿eniom prawami autorskimi, pocz±tkowy posiadacz
praw autorskich, który poddaje Program pod oddzia³ywanie
niniejszej Licencji, mo¿e dodaæ wyra¼nie zakre¶lone
geograficzne ograniczenie rozpowszechniania wy³±czaj±ce te
kraje, dziêki czemu dystrybucja dozwolona bêdzie wy³±cznie
w krajach czy w¶ród krajów nie objêtych takim wy³±czeniem.
W przypadku takim, niniejsza Licencja obejmuje dane
ograniczenie tak, jakby by³o ono wpisane w jej tre¶æ.

  9. W miarê potrzeby Fundacja Wolnego Oprogramowania mo¿e
publikowaæ poprawione i/lub nowe wersje Powszechnej
Licencji Publicznej. Takie nowe wersje bêd± napisane w
duchu podobnym do obecnej wersji, ale mog± ró¿niæ siê w
szczegó³ach poruszaj±cych nowe problemy czy zagadnienia.

  Ka¿dej wersji nadaje siê wyró¿niaj±cy j± numer. Je¿eli
Program podaje numer wersji niniejszej Licencji, odnosz±cy
siê do tej wersji i "wszelkich wersji nastêpnych", masz do
wyboru albo stosowaæ siê do postanowieñ i warunków tej
wersji, albo którejkolwiek wersji pó¼niejszej wydanej
przez Fundacjê Wolnego Oprogramowania. O ile Program nie
podaje numeru wersji niniejszej Licencji, mo¿esz wybraæ
dowoln± wersjê kiedykolwiek opublikowan± przez Fundacjê.

  10. Je¶li chcesz w³±czyæ czê¶ci Programu do innych
wolnych programów, których warunki rozpowszechniania s±
inne, zwróæ siê pisemnie do autora z pro¶b± o pozwolenie.
W przypadku oprogramowania objêtego przez Fundacjê prawem
autorskim, napisz do Fundacji; czasami czynimy od tego
odstêpstwa. W naszej decyzji kierujemy siê dwoma celami:
utrzymania wolnego statusu wszystkich pochodnych naszego
wolnego oprogramowania oraz - generalnie - promowania
wspó³udzia³u i wielokrotnego stosowania oprogramowania.


                  WYRÓB BEZ GWARANCJI

  11. PONIEWA¯ PROGRAM JEST LICENCJONOWANY BEZP£ATNIE, NIE
JEST OBJÊTY GWARANCJ¡ W ZAKRESIE DOZWOLONYM PRZEZ
OBOWI¡ZUJ¡CE PRZEPISY. O ILE NA PI¦MIE NIE STANOWI SIÊ
INACZEJ, POSIADACZE PRAW AUTORSKICH I/LUB INNE STRONY
ZAPEWNIAJ¡ PROGRAM W STANIE, W JAKIM JEST ("JAK WIDAÆ")
BEZ JAKIEJKOLWIEK GWARANCJI, ANI WYRA¬NEJ, ANI DOMY¦LNEJ,
W TYM MIÊDZY INNYMI DOMY¦LNYCH GWARANCJI CO DO
PRZYDATNO¦CI HANDLOWEJ I PRZYDATNO¦CI DO OKRE¦LONYCH
ZASTOSOWAÑ. CA£O¦Æ RYZYKA W ZAKRESIE JAKO¦CI I
SKUTECZNO¦CI DZIA£ANIA PROGRAMU PONOSISZ SAM. W RAZIE
GDYBY PROGRAM OKAZA£ SIÊ WADLIWY, PONOSISZ KOSZT CA£EGO
NIEZBÊDNEGO SERWISU, NAPRAWY I KORYGOWANIA.

  12. O ILE OBOWI¡ZUJ¡CE PRAWO NIE STANOWI INACZEJ ALBO
CZEGO¦ INNEGO NIE UZGODNIONO W FORMIE PISEMNEJ, ¯ADEN
POSIADACZ PRAW AUTORSKICH ANI INNA STRONA MODYFIKUJ¡CA
I/LUB REDYSTRYBUJ¡CA PROGRAM ZGODNIE Z POWY¯SZYMI
ZEZWOLENIAMI, W ¯ADNYM WYPADKU NIE JEST ODPOWIEDZIALNA
WOBEC CIEBIE ZA SZKODY, W TYM SZKODY OGÓLNE, SPECJALNE,
UBOCZNE LUB SKUTKOWE, WYNIK£E Z U¯YCIA B¡D¬ NIEMO¯LIWO¦CI
U¯YCIA PROGRAMU (W TYM, MIÊDZY INNYMI, ZA UTRATÊ DANYCH
LUB POWSTANIE DANYCH NIEDOK£ADNYCH, ALBO ZA STRATY
PONIESIONE PRZEZ CIEBIE LUB STRONY TRZECIE, JAK TE¯
NIEDZIA£ANIE PROGRAMU Z INNYMI PROGRAMAMI), NAWET JE¦LI
DANY POSIADACZ B¡D¬ INNA STRONA ZOSTALI POWIADOMIENI O
MO¯LIWO¦CI POWSTANIA TAKICH SZKÓD.


              KONIEC ZASAD I WARUNKÓW

  Jak stosowaæ niniejsze Warunki do Twoich nowych
programów

  Je¶li opracowujesz nowy program i chcia³by¶, aby sta³
siê on przydatny dla szerokiego ogó³u, najlepsz± drog± do
osi±gniêcia tego bêdzie nadanie twemu programowi
charakteru wolnego oprogramowania, które ka¿dy mo¿e
redystrybuowaæ i zmieniaæ na niniejszych warunkach.

  W tym celu do programu do³±cz poni¿sze informacje.
Bezpieczniej jest do³±czyæ je na pocz±tku ka¿dego pliku
¼ród³owego, dziêki czemu najskuteczniej mo¿na przekazaæ
fakt nieistnienia gwarancji; ka¿dy plik powinien przy tym
nosiæ uwagê "copyright" i odno¶nik, gdzie mo¿na znale¼æ
pe³n± informacjê.

    nazwa programu i informacja, do czego on s³u¿y.
    Copyright (C) 19../20.. nazwisko autora

    Niniejszy program jest wolnym oprogramowaniem;
    mo¿esz go rozprowadzaæ dalej i/lub modyfikowaæ na
    warunkach Powszechnej Licencji Publicznej GNU,
    wydanej przez Fundacjê Wolnego Oprogramowania -
    wed³ug wersji 2-giej tej Licencji lub której¶ z
    pó¼niejszych wersji.

    Niniejszy program rozpowszechniany jest z nadziej±,
    i¿ bêdzie on u¿yteczny - jednak BEZ JAKIEJKOLWIEK
    GWARANCJI, nawet domy¶lnej gwarancji PRZYDATNO¦CI
    HANDLOWEJ albo PRZYDATNO¦CI DO OKRE¦LONYCH
    ZASTOSOWAÑ. W celu uzyskania bli¿szych informacji -
    Powszechna Licencja Publiczna GNU.

    Z pewno¶ci± wraz z niniejszym programem otrzyma³e¶
    te¿ egzemplarz Powszechnej Licencji Publicznej GNU
    (GNU General Public License); je¶li nie - napisz do
    Free Software Foundation, Inc., 51 Franklin Street,
    Fifth Floor, Boston, MA  02110-1301  USA

  Podaj te¿ informacje o sposobie kontaktowania siê z
tob± poczt± elektroniczn± lub zwyk³±.

  Je¶li dany program jest interaktywny, spraw, aby w
momencie wchodzenia w tryb interaktywny wy¶wietla³ on
komunikat jak w poni¿szym przyk³adzie:

    Gnomovision wersja 69, Copyright C 19.. nazwisko

    Gnomovision wydawany jest ABSOLUTNIE BEZ ¯ADNEJ
    GWARANCJI - w celu uzyskania dalszych szczegó³ów
    wpisz "show w". To jest wolne oprogramowanie i mile
    widziane jest dalsze rozpowszechnianie go przez
    ciebie na okre¶lonych warunkach - w celu uzyskania
    bli¿szych szczegó³ów wpisz "show c".

  Powy¿sze hipotetyczne polecenia "show w" i "show c"
winny powodowaæ wy¶wietlenie odpowiednich czê¶ci
Powszechnej Licencji Publicznej. Oczywi¶cie mo¿esz u¿ywaæ
innych poleceñ ni¿ "show w" i "show c"; mog± to byæ nawet
klikniêcia mysz± lub pozycje menu - co tylko sobie uznasz
za stosowne.

  Powiniene¶ te¿ poprosiæ swego pracodawcê (je¶li
pracujesz jako programista) czy te¿ swoj± szko³ê (je¶li
jeste¶ uczniem), o podpisanie, w razie potrzeby,
"Rezygnacji z praw autorskich" do programu. Poni¿ej
podajemy przyk³ad (zmieñ nazwy/nazwiska):

    My, firma Jojodyne Sp. z o.o. niniejszym zrzekamy
    siê i rezygnujemy z wszelkich interesów prawnych w
    zakresie praw autorskich do programu "Gnomovision"
    (który realizuje nastêpuj±ce funkcje...), napisanego
    przez p.Jana Kowalskiego.

    Podpis: /-/ Gniewos³aw Wielkowa¿ny

    Gniewos³aw Wielkowa¿ny, Prezes...itp

  Powszechna Licencja Publiczna nie zezwala na w³±czanie
twego programu do programów prawnie zastrze¿onych. Je¶li
twój program jest bibliotek± podprogramów, mo¿esz
rozwa¿yæ, czy nie bêdzie korzystniej zezwoliæ na
powi±zanie prawnie zastrze¿onych aplikacji z bibliotek±.
Je¶li chcia³by¶ w³a¶nie tego dokonaæ, zamiast niniejszej
Licencji zastosuj Powszechn± Licencjê Publiczn± GNU dla
Bibliotek.

[QueryBox]
Okna zapytania

W oknach dialogowych u¿yj kursorów lub naci¶nij
pod¶wietlon± literê aby wybraæ opcjê. Mo¿esz te¿ klikn±æ
mysz± na odpowiednim przycisku.

[How to use help]
Jak korzystaæ z pomocy

Do obs³ugi przegl±darki pomocy mo¿esz u¿yæ kursorów lub
myszy. Naci¶nij strza³kê w dó³ aby przej¶æ do
nastêpnej pozycji lub przewin±æ ekran w dó³. Naci¶nij
strza³kê w górê aby przej¶æ do poprzedniej pozycji lub
przewin±æ ekran w górê. Naci¶nij strza³kê w prawo aby
pod±¿yæ za zaznaczonym odno¶nikiem. Naci¶nij strza³kê w
lewo aby powróciæ do poprzedniego odwiedzonego wêz³a w
historii.

Je¶li twój terminal nie obs³uguje klawiszy kursorów,
mo¿esz u¿yæ spacji aby przewin±æ do przodu i klawisza
b aby przewin±æ do ty³u. U¿yj TAB aby przej¶æ do
nastêpnej pozycji i ENTER aby odwiedziæ zaznaczony
odno¶nik. Klawisz l wraca do poprzedniego odwiedzonego
wêz³a w historii. Naci¶nij ESC aby wyj¶æ z
przegl±darki pomocy.

Lewy przycisk myszy uaktywnia odno¶nik lub przewija ekran.
Prawy wraca do poprzedniego wêz³a w historii.

Pe³na lista klawiszy przegl±darki pomocy:

Podstawowe klawisze ruchuGeneral Movement Keys tak¿e
dzia³aj±.

tab           Nastêpna pozycja.
M-tab         Poprzednia pozycja.
dó³           Nastêpna pozycja lub przewiñ ekran w dó³.
góra          Poprzednia pozycja lub przewiñ w górê.
prawo, enter  Uaktywnia odno¶nik.
lewo, l       Poprzedni wêze³ w historii.
F1            Pomoc dla przegl±darki pomocy.
n             Nastêpny wêze³.
p             Poprzedni wêze³.
c             Przej¶cie do Spisu tre¶ci.
F10, esc      Wyj¶cie z przegl±darki pomocy.

Local variables:
fill-column: 58
end:
