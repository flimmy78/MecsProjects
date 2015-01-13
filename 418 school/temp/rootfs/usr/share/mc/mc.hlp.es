[Contents]
�ndice de Contenidos:

  DESCRIPCI�NDESCRIPTION
  OPCIONESOPTIONS
  Introducci�nOverview
  Soporte de Rat�nMouse Support

  TeclasKeys
    Otras TeclasMiscellaneous Keys
    Paneles de DirectorioDirectory Panels
    L�nea de �rdenes del SistemaShell Command Line
    Teclas Generales de MovimientoGeneral Movement Keys
    Teclas de la L�nea de EntradaInput Line Keys

  Barra de Men�Menu Bar
    Men�s Izquierdo y Derecho (Arriba y Abajo)Left and Right Menus
      Listado...Listing Mode...
      Modo de Ordenaci�n...Sort Order...
      Filtro...Filter...
      ReleerReread
    Men� de ArchivoFile Menu
      Cambiar de directorioQuick cd
    Men� de UtilidadesCommand Menu
      �rbol de DirectoriosDirectory Tree
      Buscar ArchivoFind File
      B�squedas ExternasExternal panelize
      FavoritosHotlist
      Editar el Archivo de ExtensionesExtension File Edit
      Trabajos en Segundo PlanoBackground jobs
      Edici�n del Archivo de Men�Menu File Edit
    Men� de OpcionesOptions Menu
      Configuraci�nConfiguration
      Presentaci�nLayout
      Confirmaci�nConfirmation
      Bits de Visualizaci�nDisplay bits
      Aprender teclasLearn keys
      Sistema de Archivos Virtual (VFS)Virtual FS
      Guardar Configuraci�nSave Setup

  Ejecutando �rdenes del Sistema OperativoExecuting operating system commands
    Comando cd InternoThe cd internal command
    Sustituci�n de MacroMacro Substitution
    Soporte de SubshellThe subshell support
  Cambiar PermisosChmod
  Cambiar Due�oChown
  Cambiar Due�o y PermisosAdvanced Chown
  Operaciones con ArchivosFile Operations
  Copiar/Renombrar con M�scaraMask Copy/Rename
  Visor de Archivos InternoInternal File Viewer
  Editor de Archivos InternoInternal File Editor
  Terminaci�nCompletion
  Sistemas de Archivos Virtuales (VFS)Virtual File System
    Sistema de archivos Tar (tarfs)Tar File System
    Sistema de archivos FTP (FTPfs)FTP File System
    Sistema de archivos de env�o Archivos por SHell (FISH)FIle transfer over SHell filesystem
    Sistema de archivos de RedNetwork File System
    Sistema de archivos SMBSMB File System
    Sistema de archivos de Recuperaci�nUndelete File System
    Sistema de archivos EXTerno (extfs)EXTernal File System
  ColoresColors
  Ajustes EspecialesSpecial Settings
  Ajustes del TerminalTerminal databases

  ARCHIVOS AUXILIARESFILES
  DISPONIBILIDADAVAILABILITY
  V�ASE TAMBI�NSEE ALSO
  AUTORESAUTHORS
  ERRORESBUGS
  TRADUCCI�NTRANSLATION
  Licencia GNULicencia GNU
  Licencia GNU (Espa�ol)Licencia GNU (Espa�ol)
  Cuadros de di�logoQueryBox
  Uso de la ayudaHow to use help
[DESCRIPTION]
DESCRIPCI�N

"Midnight Commander" (Comandante de Medianoche) es un
navegador de directorios/gestor de archivos para sistemas
operativos tipo Unix.[OPTIONS]
OPCIONES


-a, --stickchars
        Deshabilita el uso de caracteres gr�ficos para el
        dibujo de l�neas.

-b, --nocolor
        Fuerza el uso de la pantalla de Blanco y Negro.

-c, --color
        Fuerza el uso del modo color. V�ase la secci�n
        ColoresColors para m�s informaci�n.

-C arg, --colors=arg
        Usado para especificar un juego de colores
        diferentes desde la l�nea de �rdenes. El formato
        de arg est� documentado en la secci�n ColoresColors.

-d, --nomouse
        Deshabilita el soporte de rat�n.

-e [arch], --edit[=arch]
        Iniciar el editor interno. Si se indica un
        archivo, editarlo. V�ase la p�gina de manual de
        mcedit (1).

-f, --datadir
        Muestra las rutas de b�squeda compiladas para
        archivos de Midnight Commander.

-k, --resetsoft
        Resetea softkeys a su valor por defecto seg�n la
        base de datos de termcap/terminfo. S�lo �til en
        terminales HP cuando la funci�n keys no funciona.

-l reg, --ftplog=reg
        Guarda el di�logo FTPfs con el servidor en el
        archivo.

-P arch, --printwd=arch
        Al salir del programa, Midnight Commander
        registrar� el �ltimo directorio de trabajo en el
        archivo indicado. Esta opci�n no debe ser usada
        directamente, sino desde un gui�n de shell
        adecuado, para dejar como directorio activo el
        directorio que estaba en uso dentro de Midnight
        Commander. Cons�ltese en los archivos
        /home/john/prjroot/rootfs/usr/share/mc/bin/mc.sh
        (usuarios de bash y zsh) y
        /home/john/prjroot/rootfs/usr/share/mc/bin/mc.csh
        (usuarios de tcsh) la manera de definir mc como
        un alias para el correspondiente gui�n de shell.

-s, --slow
        Activa el modo para terminales lentos. En este
        modo el programa no dibuja bordes con l�neas de
        caracteres y desactiva el modo detallado.

-t, --termcap
        Usado s�lo si el c�digo fue compilado con Slang y
        terminfo: hace que Midnight Commander use el
        valor de la variable de entorno TERMCAP para
        obtener la informaci�n del terminal, en vez de la
        base de datos de terminales del sistema.

-u, --nosubshell
        Deshabilita el uso de shell concurrente (s�lo
        tiene sentido si este Midnight Commander fue
        construido con soporte de shell concurrente).

-U, --subshell
        Habilita el uso de shell concurrente (s�lo tiene
        sentido si este Midnight Commander fue construido
        con soporte de subshell opcional).

-v arch, --view=arch
        Iniciar el visor interno para ver el archivo
        indicado. V�ase la p�gina de manual de mcview
        (1).

-V, --version
        Muestra la versi�n del programa.

-x, --xterm
        Fuerza el modo xterm. Usado cuando se ejecuta en
        terminales con caracter�sticas de xterm (dos
        modos de pantalla, y pueden enviar secuencias de
        escape de rat�n).

Si se especifica, el primer directorio se mostrar� en el
panel activo y el segundo directorio en el otro panel.[Overview]
Introducci�n

La pantalla de Midnight Commander est� divida en cuatro
partes. La mayor parte de la pantalla est� ocupada por los
dos paneles de directorio. Por defecto, la segunda l�nea
m�s inferior de la pantalla es la l�nea de �rdenes del
sistema, y la l�nea inferior muestra las etiquetas de las
teclas de funci�n. La l�nea superior es la barra de men�Menu Bar.
La l�nea de la barra de men� podr�a no ser visible, pero
aparece si pulsamos en la primea l�nea de la pantalla con
el rat�n o pulsamos la tecla F9.

Midnight Commander pone a la vista dos directorios al
mismo tiempo. Uno de los paneles es el panel actual (hay
una barra de selecci�n en el panel actual). La mayor�a de
las operaciones tienen lugar en el panel actual. Algunas
operaciones con archivos como Renombrar y Copiar utilizan
por defecto el directorio del panel no seleccionado como
destino, pero siempre solicitan una confirmaci�n previa y
podemos cambiarlo. Para m�s informaci�n, ver las secciones
sobre los Paneles de DirectorioDirectory Panels, los Men�s Izquierdo y
DerechoLeft and Right Menus y el Men� de ArchivoFile Menu.

Podemos ejecutar comandos del sistema desde el Midnight
Commander simplemente escribi�ndolos. Todo lo que
escribamos aparecer� en la l�nea de �rdenes del sistema y
cuando pulsemos Intro, Midnight Commander ejecutar� estos
comandos; ver las secciones L�nea de �rdenes del SistemaShell Command Line
y Teclas de la L�nea de EntradaInput Line Keys para aprender m�s sobre
la l�nea de �rdenes.[Mouse Support]
Soporte de Rat�n

Midnight Commander soporta el uso del rat�n. Se activa
cuando estamos ejecut�ndolo en un terminal tipo xterm(1)
(funciona incluso si realizamos una conexi�n de telnet,
ssh o rlogin a otra m�quina desde el xterm) o si estamos
ejecut�ndolo en una consola Linux y tenemos el servidor
gpm cargado.

Cuando pulsamos el bot�n izquierdo del rat�n sobre un
archivo en los paneles de directorios, ese archivo es
seleccionado; si lo hacemos con el bot�n derecho, el
archivo es marcado (o desmarcado, dependiendo del estado
previo).

Una doble pulsaci�n sobre un archivo intentar� ejecutar el
comando si se trata de un programa ejecutable; y si la
extensi�n del archivo tiene un programa asociado a esa
extensi�nExtension File Edit, se ejecuta el programa especificado.

Adem�s, es posible ejecutar los comandos asignados a las
teclas de funci�n pulsando con el rat�n sobre las
etiquetas de la l�nea inferior de la pantalla.

Si se pulsa un bot�n del rat�n sobre la l�nea del borde
superior del panel de directorio, se sube una p�gina hacia
atr�s. Asimismo, una pulsaci�n sobre la l�nea inferior
baja una p�gina hacia adelante. �ste procedimiento vale
tambi�n para el Visor de AyudaContents y el �rbol de DirectoriosDirectory Tree.

El valor por defecto de auto repetici�n para los botones
del rat�n es 400 milisegundos. Este valor se puede
modificar editando el archivo ~/.mc/iniSave Setup y cambiando el
par�metro mouse_repeat_rate.

Si estamos ejecutando Midnight Commander con soporte para
rat�n, podemos recuperar el comportamiento habitual del
rat�n (cortar y pegar texto) manteniendo pulsada la tecla
May�sculas.

[Keys]
Teclas

Algunos comandos en Midnight Commander implican el uso de
las teclas Control (etiquetada habitualmente CTRL o CTL) y
Meta (identificada como ALT o incluso Compose). En este
manual usaremos las siguientes abreviaturas:

C-<chr> significa mantener pulsada la tecla Control
        mientras se pulsa el car�cter <chr>. As�, C-f
        ser�a: manteniendo pulsada la tecla Control
        teclear f.

M-<chr> significa mantener pulsada la tecla Meta o Alt
        mientras pulsamos el car�cter <chr>. Si no hay
        tecla Meta o Alt, pulsar ESC, soltar, y entonces
        pulsar el car�cter <chr>.

S-<chr> significa mantener pulsada la tecla de May�sculas
        (o Shift) y teclear <chr>.

Todas las l�neas de entrada en Midnight Commander usan una
aproximaci�n a las asociaciones de teclas del editor GNU
Emacs.

Hay bastantes secciones que hablan acerca de las teclas.
Las siguientes son las m�s importantes.

La secci�n Men� de ArchivoFile Menu documenta los atajos de
teclado para los comandos que aparecen en el Men� de
Archivo. Esta secci�n incluye las teclas de funci�n. La
mayor parte de esos comandos realizan alguna acci�n,
normalmente sobre el archivo seleccionado o sobre los
archivos marcados.

La secci�n Paneles de DirectorioDirectory Panels documenta las teclas que
seleccionan un archivo o marcan archivos como objetivo de
una acci�n posterior (la acci�n normalmente es una del
men� de archivo).

La secci�n L�nea de �rdenes del SistemaShell Command Line lista las teclas
que son usadas para introducir o editar l�neas de
comandos. La mayor parte de ellas copian nombres de
archivos y dem�s desde los paneles de directorio a la
l�nea de �rdenes (para evitar un tecleado excesivo) o
acceden al historial de la l�nea de �rdenes.

Teclas de l�nea de EntradaInput Line Keys Son usadas para editar l�neas
de entrada. Esto implica la l�nea de �rdenes y las l�neas
de entrada en las ventanas de preguntas.[Miscellaneous Keys]
Otras Teclas

Tienen cabida aqu� algunas teclas que no encajan
completamente en ninguna de las anteriores categor�as:

Intro. Si hay alg�n texto en la l�nea de �rdenes (la de la
parte inferior de los paneles), entonces ese comando es
ejecutado. Si no hay texto en la l�nea de comandos
entonces si la barra de selecci�n est� situada sobre un
directorio Midnight Commander realiza un chdir(2) al
directorio seleccionado y recarga la informaci�n en el
panel; si la selecci�n es un archivo ejecutable entonces
es ejecutado. Por �ltimo, si la extensi�n del archivo
seleccionado coincide con una de las extensiones en el
archivo de extensionesExtension File Edit entonces se ejecuta la aplicaci�n
correspondiente.

C-l     redibuja toda la pantalla de Midnight Commander.

C-x c   Cambiar PermisosChmod de un archivo o un conjunto de
        archivos marcados.

C-x o   Cambiar Due�oChown del archivo actual o de los
        archivos marcados.

C-x l   crea enlaces.

C-x s   crea enlaces simb�licos.

C-x C-s edita enlaces simb�licos.

C-x i   cambia el panel opuesto al modo de informaci�n.

C-x q   cambia el panel opuesto al modo de vista r�pida.

C-x !   ejecuta B�squedas ExternasExternal panelize.

C-x h   a�ade el sitio actual a la lista de FavoritosHotlist.

M-!     ejecuta una orden del sistema y muestra su salida
        en el Visor de Archivos InternoInternal File Viewer.

M-?     Buscar ArchivoFind File.

M-c     permite Cambiar de DirectorioQuick cd.

C-o     en la consola de Linux o FreeBSD o bajo un xterm,
        se muestra la salida de la orden anterior. En la
        consola de Linux, Midnight Commander usa un
        programa externo (cons.saver) para controlar la
        copia y restauraci�n de la pantalla.

Cuando se haya creado Midnight Commander con soporte de
subshell incluido, podemos pulsar C-o en cualquier momento
y volver a la pantalla principal; para volver a nuestra
aplicaci�n bastar� con volver a pulsar C-o. Si tenemos una
aplicaci�n suspendida en esta situaci�n, no podremos
ejecutar otros programas desde Midnight Commander hasta
que terminemos la aplicaci�n suspendida.[Directory Panels]
Paneles de Directorio

Esta secci�n enumera las teclas que operan en los paneles
de directorio. Si queremos saber c�mo cambiar la
apariencia de los paneles, deberemos echar un vistazo a la
secci�n Men�s Izquierdo y DerechoLeft and Right Menus.

Tab, C-i
        cambia el panel actual. El panel activo deja de
        serlo y el no activo pasa a ser el nuevo panel
        activo. La barra de selecci�n se mueve del
        antiguo panel al nuevo, desaparece de aquel y
        aparece en �ste.

Insertar, C-t
        para marcar archivos (y/o directorios) como
        seleccionados podemos usar la tecla Insertar
        (Ins) (La secuencia kich1 de terminfo) o la
        combinaci�n C-t (Control-t). Para deseleccionar
        archivos, basta con repetir la operaci�n sobre
        los archivos y/o directorios antes marcados.

M-g, M-r, M-j
        usadas para seleccionar el archivo superior en un
        panel, el archivo central y el inferior del
        panel, respectivamente.

C-s, M-s
        inicia la b�squeda de un archivo en la lista de
        directorios (panel activo). Cuando la b�squeda
        est� activa las pulsaciones de teclado son
        a�adidas a la cadena de b�squeda y no a la l�nea
        de �rdenes. Si la opci�n Mostrar Mini-estado est�
        habilitada la cadena a buscar es mostrada en la
        l�nea de mini-estado. Conforme tecleemos, la
        barra de selecci�n se desplazar� al siguiente
        archivo o directorio cuyo nombre coincida con las
        letras introducidas. Las teclas borrar o suprimir
        pueden ser utilizadas para corregir errores de
        escritura. Si pulsamos C-s de nuevo, se busca la
        siguiente coincidencia.

M-t     rota el listado de pantalla actual para mostrar
        el siguiente modo de listado. Con esto es posible
        intercambiar r�pidamente de un listado completo
        al regular o breve, as� como al modo de listado
        definido por el usuario.

C-\ (control-Contrabarra)
        muestra la lista de sitios FavoritosHotlist y permite
        cambiar al directorio seleccionado. * N. de T.:
        En el teclado castellano, existe un peque�o
        inconveniente, dado que la contrabarra, no se
        consigue con una sola pulsaci�n, por lo que este
        m�todo no funciona directamente.

+ (m�s) usado para seleccionar (marcar) un grupo de
        archivos. Midnight Commander preguntar� por una
        expresi�n regular describiendo el grupo. Cuando
        los Caracteres Comod�n (Shell Patterns) est�n
        habilitados, la expresi�n regular es id�ntica a
        las expresiones regulares en el shell (poniendo *
        para cero o m�s caracteres y ? para uno o m�s
        caracteres). Si los Caracteres Comod�n est�n
        deshabilitados, entonces la selecci�n de archivos
        se realiza con expresiones regulares normales
        (VA. ed (1)).

        Si la expresi�n empieza o termina con una barra
        (/), entonces la selecci�n se realiza sobre
        directorios en vez de archivos.

- (menos) o \ (contrabarra)
        usaremos la tecla - o "\" para deseleccionar un
        grupo de archivos. �sta es la operaci�n contraria
        a la realizada por la tecla M�s (+). * N. de T.:
        La tecla que realiza originalmente la funci�n
        descrita es el menos (-) ya que �sta es la
        utilizada en la versi�n originaria del programa,
        Comandante Norton.

Cursor-Arriba, C-p
        desplaza la barra de selecci�n a la entrada
        anterior en el panel.

Cursor-Abajo, C-n
        desplaza la barra de selecci�n a la entrada
        siguiente en el panel.

Inicio (Home), a1, M-<
        desplaza la barra de selecci�n a la primera
        entrada en el panel.

Fin (End), c1, M->
        desplaza la barra de selecci�n a la �ltima
        entrada en el panel.

Av. P�g (next-page), C-v
        desplaza la barra de selecci�n a la p�gina
        siguiente.

Re. P�g (prev-page), M-v
        desplaza la barra de selecci�n a la p�gina
        anterior.

M-o     si el otro panel es un panel con lista de
        archivos y estamos situados en un directorio en
        el panel activo actual, entonces otro panel se
        posiciona dentro del directorio del panel activo
        (como la tecla de Emacs C-o) en otro caso el otro
        panel es posicionado el directorio padre del
        directorio seleccionado en el panel activo.

C-ReP�g (C-PageUp), C-AvP�g (C-PageDown)
        solamente bajo la consola Linux: realiza un chdir
        ".." o al directorio actualmente seleccionado
        respectivamente.[Shell Command Line]
L�nea de �rdenes del Sistema

Esta secci�n enumera las teclas �tiles para evitar la
excesiva escritura cuando se introducen �rdenes del
sistema.

M-Intro copia el nombre de archivo seleccionado a la
        l�nea de �rdenes.

C-Intro igual que M-Intro. Puede no funcionar en ciertos
        sistemas o con algunos terminales.

C-S-Intro
        copia la ruta completa del archivo actual en la
        l�nea de �rdenes. Puede no funcionar en ciertos
        sistemas o con algunos terminales.

M-Tab   realiza una Terminaci�n autom�tica (completion)Completion
        del nombre de archivo, comando, variable, nombre
        de usuario y host.

C-x t, C-x C-t
        copia los archivos marcados (o si no los hay, el
        archivo seleccionado) del panel activo (C-x t) o
        del otro panel (C-x C-t) a la l�nea de �rdenes.

C-x p, C-x C-p
        la primera secuencia de teclas copia el nombre de
        la ruta de acceso actual a la l�nea de �rdenes, y
        la segunda copia la ruta del otro panel a la
        l�nea de �rdenes.

C-q     el comando cita (quote) puede ser utilizado para
        insertar caracteres que de otro modo ser�an
        interpretados por Midnight Commander (como el
        s�mbolo '+')

M-p, M-n
        usaremos esas teclas para navegar a trav�s del
        hist�rico de comandos. M-p devuelve la �ltima
        entrada, M-n devuelve la siguiente.

M-h     visualiza el historial para la l�nea de entrada
        actual.[General Movement Keys]
Teclas Generales de Movimiento

El visor de ayuda, el visor de archivo y el �rbol de
directorios usan un c�digo de control de movimiento com�n.
Por consiguiente, reconocen las mismas teclas. Adem�s,
cada uno reconoce algunas otras teclas propias.

Otras partes de Midnight Commander utilizan algunas de las
mismas teclas de movimiento, por lo que esta secci�n
podr�a ser aplicada a ellas tambi�n.

Arriba (Up), C-p
        mueve una l�nea hacia arriba.

Abajo (Down), C-n
        mueve una l�nea hacia abajo.

Re P�g (Retroceso de P�gina, Prev Page, Page Up), M-v
        mueve una p�gina completa hacia atr�s.

Av P�g (Avance de P�gina, Next Page, Page Down), C-v
        mueve una p�gina hacia delante.

Inicio (Home), A1
        mueve al principio.

Fin (End), C1
        mueve al final.

El visor de ayuda y el de archivo reconocen las siguientes
teclas aparte de las mencionadas anteriormente:

b, C-b, C-h, Retroespacio (Backspace), Suprimir (Delete)
        mueve una p�gina completa hacia atr�s.

Barra espaciadora (Space bar)
        mueve una p�gina hacia delante.

u, d    mueve la mitad de la p�gina hacia atr�s o
        adelante.

g, G    mueve al principio o al final.[Input Line Keys]
Teclas de la L�nea de Entrada

Las l�neas de entrada (usadas en la l�nea de �rdenesShell Command Line y
para los cuadros de di�logo en el programa) reconocen esas
teclas:

C-a     coloca el cursor al comienzo de la l�nea.

C-e     coloca el cursor al final de la l�nea.

C-b, Izquierda (move-left)
        desplaza el cursor una posici�n a la izquierda.

C-f, Derecha (move-right)
        desplaza el cursor una posici�n a la derecha.

M-f     avanza una palabra.

M-b     retrocede una palabra.

C-h, Retroespacio (backspace)
        borra el car�cter anterior.

C-d, Suprimir (Delete)
        elimina el car�cter de la posici�n del cursor.

C-@     sit�a una marca para cortar.

C-w     copia el texto entre el cursor y la marca a la
        cach� de eliminaci�n y elimina el texto de la
        l�nea de entrada.

M-w     copia el texto entre el cursor y la marca a la
        cach� de eliminaci�n.

C-y     restaura el contenido de la cach� de eliminaci�n.

C-k     elimina el texto desde el cursor hasta el final
        de la l�nea.

M-p, M-n
        usaremos esas teclas para desplazarnos a trav�s
        del historial de comandos. M-p nos lleva a la
        �ltima entrada, M-n nos sit�a en la siguiente.

M-C-h, M-Retroespacio (M-Backspace)
        borra la palabra anterior.

M-Tab   realiza una terminaci�nCompletion del nombre de archivo,
        comando, variable, nombre de usuario o host.

[Menu Bar]
Barra de Men�

La barra de men� aparece cuando pulsamos F9 o pulsamos el
bot�n del rat�n sobre la primera fila de la pantalla. La
barra de men� tiene cinco submen�s: "Izquierdo",
"Archivo", "Utilidades", "Opciones" y "Derecho".

Los Men�s Izquierdo y DerechoLeft and Right Menus nos permiten modificar la
apariencia de los paneles de directorio izquierdo y
derecho.

El Men� de ArchivoFile Menu lista las acciones que podemos
realizar sobre el archivo actualmente seleccionado o sobre
los archivos marcados.

El Men� de UtilidadesCommand Menu lista las acciones m�s generales y
que no guardan relaci�n con la selecci�n actual de
archivos.[Left and Right Menus]
Men�s Izquierdo y Derecho (Arriba y Abajo)

La presentaci�n de los paneles de directorio puede ser
cambiada desde los men�s Izquierdo y Derecho (denominados
Arriba y Abajo si hemos elegido la disposici�n horizontal
de paneles en las opciones de presentaci�nLayout).[Listing Mode...]
Listado...

La vista en modo "Listado" se usa para mostrar la lista de
archivos. Hay cuatro modos disponibles: Completo, Breve,
Largo, y Definido por el usuario.

En modo completo se muestra el nombre del archivo, su
tama�o y la fecha y hora de modificaci�n.

Breve muestra s�lo los nombres de archivo, en dos
columnas. Esto permite ver el doble de entradas que en los
otros modos.

El modo largo es similar a la salida de la orden ls -l.
Este modo requiere todo el ancho de la pantalla.

Si se elige el modo definido por el usuario, hay que
especificar el formato de presentaci�n. Un formato
personalizado tiene que comenzar con la indicaci�n de
tama�o de panel, que puede ser "half" (medio) o "full"
(completo) para tener respectivamente dos paneles de media
pantalla o un �nico panel a pantalla completa. Tras el
tama�o se puede colocar el n�mero "2" para dividir el
panel en dos columnas.

A continuaci�n van los campos deseados con especificaci�n
opcional del tama�o. Los campos que se pueden emplear son:

name    nombre del archivo.

size    tama�o del archivo.

bsize   forma alternativa para size. Muestra el tama�o de
        los archivos y SUB-DIR o DIR-ANT para
        directorios.

type    car�cter de tipo de archivo. Este car�cter se
        asemeja a lo mostrado por la orden ls -F: * para
        archivos ejecutables, / para directorios, @ para
        enlaces, = para sockets, - para los dispositivos
        en modo car�cter, + para dispositivos en modo
        bloque, | para tuber�as, ~ para enlaces
        simb�licos a directorios y ! para enlaces rotos
        (enlaces que no apuntan a nada).

mark    un asterisco si el archivo est� marcado, o un
        espacio si no lo est�.

mtime   fecha y hora de la �ltima modificaci�n del
        contenido del archivo.

atime   fecha y hora del �ltimo acceso al archivo.

ctime   fecha y hora del �ltimo cambio del archivo.

perm    cadena representando los permisos del archivo.

mode    valor en octal representando los permisos del
        archivo.

nlink   n�mero de enlaces al archivo.

ngid    Identificador de Grupo, GID (num�rico).

nuid    Identificador de Usuario, UID (num�rico).

owner   propietario del archivo.

group   grupo del archivo.

inode   n�mero de inodo del archivo.

Adem�s, podemos ajustar la apariencia del panel con:

space   un espacio.

|       a�adir una l�nea vertical.

Para fijar el tama�o de un campo basta a�adir : seguido
por el n�mero de caracteres que se desee. Si tras el
n�mero colocamos el s�mbolo + el tama�o indicado ser� el
tama�o m�nimo, y si hay espacio de sobra se extender� m�s
el campo.

Como ejemplo, el listado Completo corresponde al formato:

half type name | size | mtime

Y el listado Largo corresponde a:

full perm space nlink space owner space group space size
space mtime space name

�ste es un bonito formato de pantalla definido por el
usuario:

half name | size:7 | type mode:3

Los paneles admiten adem�s los siguientes modos:

"Informaci�n"
        La vista de informaci�n muestra detalles
        relativos al archivo seleccionado y, si es
        posible, sobre el sistema de archivos usado.

"�rbol" La vista en �rbol es bastante parecida a la
        utilidad �rbol de directoriosDirectory Tree. Para m�s
        informaci�n v�ase la secci�n correspondiente.

"Vista R�pida"
        En este modo, en el panel aparece visorInternal File Viewer
        reducido que muestra el contenido del archivo
        seleccionado. Si se activa el panel (con el
        tabulador o con el rat�n), se dispone de los
        funciones usuales del visor.[Sort Order...]
Modo de Ordenaci�n...

Los ocho modos de ordenaci�n son por nombre, por
extensi�n, por hora de modificaci�n, por hora de acceso,
por la hora de modificaci�n de la informaci�n del inodo,
por tama�o, por inodo y desordenado. En el cuadro de
di�logo del modo de ordenaci�n podemos elegir el modo de
ordenaci�n as� como especificar si deseamos que �ste se
realice en orden inverso chequeando la casilla Invertir.

Por defecto, los directorios se colocan ordenados antes
que los archivos. Esto se puede cambiar en Configuraci�n
dentro del Men� de OpcionesOptions Menu activando la opci�n Mezclar
archivos y directorios.[Filter...]
Filtro...

La utilidad filtro nos permite seleccionar con un patr�n
(por ejemplo *.tar.gz) los archivos a listar. Indiferentes
al patr�n de filtro, siempre se muestran todos los
directorios y enlaces a directorios.[Reread]
Releer

El comando releer recarga la lista de archivos en el
directorio. Esto es �til si otros procesos han creado,
borrado o modificado archivos. Si hemos panelizado los
nombres de los archivos en un panel, esto recargar� los
contenidos del directorio y eliminar� la informaci�n
panelizada (v�ase la secci�n B�squedas externasExternal panelize para m�s
informaci�n).[File Menu]
Men� de Archivo

Midnight Commander utiliza las teclas de funci�n F1 - F10
como atajos de teclado para los comandos que aparecen en
el men� de archivo. Las secuencias de escape para las
Fkeys son caracter�sticas de terminfo desde kf1 hasta
kf10. En terminales sin soporte de teclas de funci�n,
podemos conseguir la misma funcionalidad pulsando la tecla
ESC seguido de un n�mero entre 1 y 9 � 0 (correspondiendo
a las teclas F1 a F9 y F10 respectivamente).

El men� de Archivo recoge las siguientes opciones (con los
atajos de teclado entre par�ntesis):

Ayuda (F1)

Invoca el visor hipertexto de ayuda interno. Dentro del
visor de ayudaContents, podemos usar la tecla Tab para seleccionar
el siguiente enlace y la tecla Intro para seguir ese
enlace. Las teclas Espacio y Retroespacio son usadas para
mover adelante y atr�s en una p�gina de ayuda. Pulsando F1
de nuevo para obtener la lista completa de teclas v�lidas.

Men� de Usuario (F2)

Invoca el Men� de usuarioMenu File Edit El men� de usuario otorga una
manera f�cil de tener usuarios con un men� y a�adir
asimismo caracter�sticas extra a Midnight Commander.

Ver (F3, S-F3)

Visualiza el archivo seleccionado. Por defecto invoca el
Visor de Archivos InternoInternal File Viewer pero si la opci�n "Usar visor
interno" est� desactivada, invoca un visor de archivos
externo especificado por la variable de entorno PAGER. Si
la variable PAGER no est� definida, se invoca al comando
"view". Si en vez de esto usamos S-F3, el visor ser�
invocado sin realizar ning�n tipo de formateo o
preprocesamiento del archivo.

Ejecutar y Ver (M-!)

El comando con los argumentos indicados se ejecuta, y la
salida se muestra usando el visor de archivos interno.
Como argumento se ofrece, por defecto, el nombre
seleccionado en el panel.

Editar (F4)

Invoca el editor vi, u otro especificado en la variable de
entorno EDITOR, o el Editor de Archivos InternoInternal File Editor si la
opci�n use_internal_edit est� activada.

Copiar (F5)

Sobreimpresiona una ventana de entrada con destino por
defecto al directorio del panel no seleccionado y copia el
archivo actualmente seleccionado (o los archivos marcados,
si hay al menos uno marcado) al directorio especificado
por el usuario en la ventana. Durante este proceso,
podemos pulsar C-c o ESC para anular la operaci�n. Para
m�s detalles sobre la m�scara de origen (que ser�
normalmente * o ^\(.*\)$ dependiendo de la selecci�n de
Uso de los patrones del shell) y los posibles comodines en
destino v�ase M�scara copiar/renombrarMask Copy/Rename.

En algunos sistemas, es posible hacer la copia en segundo
plano pulsando en el bot�n de segundo plano con el rat�n
(o pulsando M-b en el cuadro de di�logo). Los Trabajos en
Segundo PlanoBackground jobs son utilizados para controlar los procesos
en segundo plano.

Crear Enlace (C-x l)

Crea un enlace al archivo actual.

Crear Enlace Simb�lico (C-x s)

Crea un enlace simb�lico al archivo actual. Para aquellos
que no conozcan qu� son los enlaces: crear un enlace a un
archivo es algo parecido a copiar el archivo, salvo que el
archivo original y el destino representan el mismo archivo
f�sico, los mismos datos reales. Por ejemplo, si editamos
uno de esos archivos, todos los cambios que realicemos
aparecer�n en ambos archivos. Hay quien llama a los
enlaces alias o accesos directos.

Un enlace aparece como un archivo real. Despu�s de
crearlo, no hay modo de decir cu�l es el original y cu�l
el enlace. Si borramos uno de ellos el otro a�n seguir�
intacto. Es muy dif�cil advertir que los archivos
representan la misma imagen. Usaremos estos enlaces cuando
no necesitemos saberlo.

Un enlace simb�lico es una referencia al nombre del
archivo original. Si el archivo original es borrado, el
enlace simb�lico queda sin utilidad. Es bastante f�cil
advertir que los archivos representan la misma imagen.
Midnight Commander muestra un s�mbolo "@" delante del
nombre del archivo si es un enlace simb�lico a alguna
parte (excepto a un directorio, caso en que muestra una
tilde (~)). El archivo original al cual el enlace apunta
es mostrado en la l�nea de estado si la opci�n "Mini
status" est� habilitada. Usaremos enlaces simb�licos
cuando queramos evitar la confusi�n que pueden causar los
enlaces f�sicos.

Renombrar/Mover (F6)

Presenta un di�logo de entrada proponiendo como directorio
de destino el directorio del panel no activo, y mueve
all�, o bien los archivos marcados o en su defecto el
archivo seleccionado. El usuario puede introducir en el
di�logo un destino diferente. Durante el proceso, se puede
pulsar C-c o ESC para abortar la operaci�n. Para m�s
detalles, v�ase m�s arriba la operaci�n Copiar, dado que
la mayor�a de los aspectos son similares.

En algunos sistemas, es posible hacer la copia en segundo
plano pulsando con el rat�n en el susodicho bot�n de
segundo plano (o pulsando M-o en el cuadro de di�logo).
Con Procesos en 2� planoBackground jobs se puede controlar estas tareas.

Crear Directorio (F7)

Presenta un di�logo de entrada y crea el directorio
especificado.

Borrar (F8)

Borra, o bien los archivos marcados o en su defecto el
archivo seleccionado en el panel activo. Durante el
proceso, se puede pulsar C-c o ESC para abortar la
operaci�n.

Cambiar Directorio (M-c) Usaremos el comando Cambiar de
directorioQuick cd si tenemos llena la l�nea de �rdenes y
queremos hacer un cd a alg�n lugar.

Seleccionar Grupo (+)

Es usado para seleccionar (marcar) un grupo de archivos.
Midnight Commander preguntar� por una expresi�n regular
describiendo el grupo. Cuando los Patrones del Shell est�n
habilitados, la expresi�n regular es tal y como lo es en
el shell (* para cero o m�s caracteres y ? para un
car�cter). Si los Patrones del Shell est�n desactivados,
entonces la selecci�n de archivos se realiza con
expresiones regulares normales (V�ase ed (1)).

Para marcar directorios en vez de archivos, la expresi�n
debe empezar o terminar con '/'.

De-seleccionar Grupo (\)

Utilizado para deseleccionar un grupo de archivos. Es la
operaci�n antagonista al comando Selecciona grupo.

Salir (F10, S-F10)

Finaliza Midnight Commander. S-F10 es usado cuando
queremos salir y estamos utilizando la envoltura del
shell. S-F10 no nos llevar� al �ltimo directorio visitado
con Midnight Commander, en vez de eso nos llevar� al
directorio donde fue invocado Midnight Commander.[Quick cd]
Cambiar de directorio

Este comando es �til si tenemos completa la l�nea de
�rdenes y queremos hacer un cdThe cd internal command a alg�n lugar sin tener
que cortar y pegar sobre la l�nea. Este comando
sobreimpresiona una peque�a ventana, donde introducimos
todo aquello que es v�lido como argumento del comando cd
en la l�nea de �rdenes y despu�s pulsamos intro. Este
comando caracteriza todas las cualidades incluidas en el
comando cd internoThe cd internal command.[Command Menu]
Men� de Utilidades

�rbol de directoriosDirectory Tree muestra una figura con estructura de
�rbol con los directorios.

Buscar archivoFind File permite buscar un archivo espec�fico. El
comando "Intercambiar paneles" intercambia los contenidos
de los dos paneles de directorios.

El comando "Activa/desactiva paneles" muestra la salida
del �ltimo comando del shell. Esto funciona s�lo en xterm
y en una consola Linux y FreeBSD.

El comando Compara directorios (C-x d) compara los paneles
de directorio uno con el otro. Podemos usar el comando
Copiar (F5) para hacer ambos paneles id�nticos. Hay tres
m�todos de comparaci�n. El m�todo r�pido compara s�lo el
tama�o de archivo y la fecha. El m�todo completo realiza
una comparaci�n completa octeto a octeto. El m�todo
completo no est� disponible si la m�quina no soporta la
llamada de sistema mmap(2). El m�todo de comparaci�n de
s�lo tama�o s�lo compara los tama�os de archivo y no
chequea los contenidos o las fechas, s�lo chequea los
tama�os de los archivos.

El comando Hist�rico de comandos muestra una lista de los
comandos escritos. El comando seleccionado es copiado a la
l�nea de �rdenes. El hist�rico de comandos puede ser
accedido tambi�n tecleando M-p � M-n.

Favoritos (C-\)Hotlist permite acceder con facilidad a
directorios y sitios utilizados con frecuencia.

B�squedas ExternasExternal panelize nos permite ejecutar un programa
externo, y llevar la salida de ese programa al panel
actual.

Editar el archivo de extensionesExtension File Edit nos permite especificar
los programas a ejecutar para intentar ejecutar, ver,
editar y realizar un mont�n de cosas sobre archivos con
ciertas extensiones (terminaciones de archivo). Por
ejemplo, asociar la extensi�n de los archivos de audio de
SUN (.au) con el programa reproductor adecuado. Editar
archivo de men�Menu File Edit se puede utilizar para editar el men� de
usuario (el que aparece al pulsar F2).[Directory Tree]
�rbol de Directorios

El comando �rbol de directorios muestra una figura con la
estructura de los directorios. Podemos seleccionar un
directorio de la figura y Midnight Commander cambiar� a
ese directorio.

Hay dos modos de invocar el �rbol. El comando de �rbol de
directorios est� disponible desde el men� Utilidades. El
otro modo es seleccionar la vista en �rbol desde el men�
Izquierdo o Derecho.

Para evitar largos retardos Midnight Commander crea la
figura de �rbol escaneando solamente un peque�o
subconjunto de todos los directorios. Si el directorio que
queremos ver no est�, nos moveremos hasta su directorio
padre y pulsaremos C-r (o F2).

Podemos utilizar las siguientes teclas:

Teclas de Movimiento GeneralGeneral Movement Keys v�lidas.

Intro. En el �rbol de directorios, sale del �rbol de
directorios y cambia al directorio en el panel actual. En
la vista de �rbol, cambia a este directorio en el otro
panel y permanece en el modo de vista �rbol en el panel
actual.

C-r, F2 (Releer). Relee este directorio. Usaremos este
comando cuando el �rbol de directorios est� anticuado: hay
directorios perdidos o muestra algunos directorios que no
existen ya.

F3 (Olvidar). Borra ese directorio de la figura del �rbol.
Usaremos esto para eliminar desorden de la figura. Si
queremos que el directorio vuelva a la figura del �rbol
pulsaremos F2 en su directorio padre.

F4 (Est�tico/Din�mico, Dinam/Est�t). Intercambia entre el
modo de navegaci�n din�mico (predefinido) y el modo
est�tico.

En el modo de navegaci�n est�tico podemos usar las teclas
del cursor Arriba y Abajo para seleccionar un directorio.
Todos los directorios conocidos ser�n mostrados.

En el modo de navegaci�n din�mico podemos usar las teclas
del cursor Arriba y Abajo para seleccionar el directorio
hermano, la tecla Izquierda para situarnos en el
directorio padre, y la tecla Derecha para situarnos en el
directorio hijo. S�lo los directorios padre, hijo y
hermano son mostrados, el resto son dejados fuera. La
figura de �rbol cambia din�micamente conforme nos
desplazamos sobre ella.

F5 (Copiar). Copia el directorio.

F6 (Renombrar/Mover, RenMov). Mueve el directorio.

F7 (Mkdir). Crea un nuevo directorio por debajo del
directorio actual. El directorio creado ser� as� el hijo
del directorio del cual depende jer�rquicamente (Padre).

F8 (Eliminar). Elimina este directorio del sistema de
archivos.

C-s, M-s. Busca el siguiente directorio coincidente con la
cadena de b�squeda. Si no hay tal directorio esas teclas
mover�n una l�nea abajo.

C-h, Retroespacio. Borra el �ltimo car�cter de la cadena
de b�squeda.

Cualquier otro car�cter. A�ade el car�cter a la cadena de
b�squeda y se desplaza al siguiente directorio que
comienza con esos caracteres. En la vista de �rbol debemos
primero activar el modo de b�squeda pulsando C-s. La
cadena de b�squeda es mostrada en la l�nea de mini-estado.

Las siguientes acciones est�n disponibles s�lo en el �rbol
de directorios. No son funcionales en la vista de �rbol.

F1 (Ayuda). Invoca el visor de ayuda y muestra �sta
secci�n.

Esc, F10. Sale del �rbol de directorios. No cambia el
directorio.

El rat�n es soportado. Un doble Click se comporta como
pulsar Intro. V�ase tambi�n la secci�n sobre soporte de
rat�nMouse Support.[Find File]
Buscar Archivo

La opci�n Buscar Archivo primero pregunta por el
directorio inicial para la b�squeda y el nombre de archivo
a buscar. Pulsando el bot�n �rbol podemos seleccionar el
directorio inicial desde el �rbol de directoriosDirectory Tree.

El campo de contenidos acepta expresiones regulares
similares a egrep(1). Eso significa que tenemos caracteres
de escape con significado especial para egrep con "\",
p.e. si buscamos "strcmp (" tendremos que introducir
"strcmp \(" (sin las dobles comillas).

Podemos iniciar la b�squeda pulsando el bot�n Aceptar.
Durante el proceso de b�squeda podemos detenerla desde el
bot�n Terminar.

Podemos navegar por la lista de archivos con las teclas
del cursor Arriba y Abajo. El bot�n Chdir cambiar� al
directorio del archivo actualmente seleccionado. El bot�n
"Otra vez" preguntar� los par�metros para una nueva
b�squeda. El bot�n Terminar finaliza la operaci�n de
b�squeda. El bot�n Panelizar colocar� los archivos
encontrados en el panel actual y as� podremos realizar m�s
operaciones con ellos (ver, copiar, mover, borrar y
dem�s). Despu�s de panelizar podemos pulsar C-r para
regresar al listado normal de archivos.

Es posible tener una lista de directorios que el comando
Buscar Archivo deber�a saltar durante la b�squeda (por
ejemplo, podemos querer evitar b�squedas en un CDROM o en
un directorio NFS que est� montado a trav�s de un enlace
lento).

Los directorios a ser omitidos deber�an ser enumerados en
la variable find_ignore_dirs en la secci�n Misc de nuestro
archivo ~/.mc/ini.

Los componentes del directorio deber�an ser separados por
dos puntos, como en el ejemplo que sigue:

[Misc]
find_ignore_dirs=/cdrom:/nfs/wuarchive:/afs

Debemos valorar la utilizaci�n de B�squedas externasExternal panelize en
ciertas situaciones. La utilidad Buscar archivos es s�lo
para consultas simples, pero con B�squedas externas se
pueden hacer exploraciones tan complejas como queramos.[External panelize]
B�squedas Externas

B�squedas externas nos permite ejecutar un programa
externo, y tomar la salida de ese programa como contenido
del panel actual.

Por ejemplo, si queremos manipular en uno de los paneles
todos los enlaces simb�licos del directorio actual,
podemos usar b�squedas externas para ejecutar el siguiente
comando:

find . -type l -print

Hasta la finalizaci�n del comando, el contenido del
directorio del panel no ser� el listado de directorios del
directorio actual, pero s� todos los archivos que son
enlaces simb�licos.

Si queremos panelizar todos los archivos que hemos bajado
de nuestro servidor ftp, podemos usar el comando awk para
extraer el nombre del archivo de los archivos de registro
(log) de la transferencia:

awk '$9 ~! /incoming/ { print $9 }' < /usr/adm/xferlog

Tal vez podr�amos necesitar guardar los comandos
utilizados frecuentemente bajo un nombre descriptivo, de
manera que podamos llamarlos r�pidamente. Haremos esto
tecleando el comando en la l�nea de entrada y pulsando el
bot�n "A�adir nuevo". Entonces introduciremos un nombre
bajo el cual queremos que el comando sea guardado. La
pr�xima vez, bastar� elegir ese comando de la lista y no
habr� que escribirlo de nuevo.[Hotlist]
Favoritos

Muestra una lista de sitios y directorios guardados y abre
en el panel el lugar seleccionado. Desde el cuadro de
di�logo podemos tambi�n crear y eliminar entradas. Para
a�adir se puede igualmente utilizar A�adir Actual (C-x h),
que a�ade el directorio actual (no el seleccionado) a la
lista de favoritos. Se pide al usuario una etiqueta para
identificar la entrada.

Esto hace m�s r�pido el posicionamiento en los directorios
usados frecuentemente. Deber�amos considerar tambi�n el
uso de la variable CDPATH tal y como se describe en
comando cd internoThe cd internal command.[Extension File Edit]
Editar el Archivo de Extensiones

Abre el archivo ~/.mc/bindings en nuestro editor. El
administrador puede optar por editar, en su lugar, el
archivo de extensiones del sistema
/home/john/prjroot/rootfs/usr/share/mc/mc.ext. El formato
del archivo (formato nuevo cambiado desde la versi�n 3.0)
es como sigue:

Todas las l�neas que empiecen con # o est�n vac�as ser�n
ignoradas.

Las l�neas que comiencen en la primera columna deber�n
tener el siguiente formato:

PalabraClave/Descripci�n+NuevaL�nea, p.e. cualquier cosa
despu�s de palabraClave/ hasta el fin de l�nea es
descripci�n

las palabras clave son:

shell   (desc es entonces cualquier extensi�n (sin
        comodines), p.e. para indicar todos los archivos
        con extensi�n desc (*desc). Ejemplo: .tar indica
        *.tar)

regex   (desc es una expresi�n regular)

type    (el archivo coincide si `file %f` coincide con la
        expresi�n regular indicada en desc (el nombre de
        archivo: parte de `file %f` es eliminada))

default (coincide con todo archivo sin importar su
        descripci�n)

El resto de l�neas deben comenzar con un espacio o
tabulador y usar el siguiente formato:
PalabraClave=comando+NuevaL�nea (sin espacios junto al =),
donde PalabraClave debe ser: Open (si el usuario pulsa
Intro o dos veces el rat�n), View (F3) o Edit (F4).
comando es cualquier comando en l�nea del shell, con
sustituci�n de macroMacro Substitution simple.

Las reglas se aplican en estricto orden. Aunque se
produzca una coincidencia, si la acci�n solicitada no est�
disponible, se ignora y la b�squeda contin�a (por ejemplo,
si un archivo encaja con dos entradas, pero la acci�n Ver
no est� definida en la primera, al pulsar F3, se ejecuta
la acci�n Ver de la segunda). Como �ltimo recurso default
debe incluir todas las acciones.[Background jobs]
Trabajos en Segundo Plano

Nos permite controlar el estado de cualquier proceso de
Midnight Commander en segundo plano (s�lo las operaciones
de copiar y mover archivos pueden realizarse en segundo
plano). Podemos parar, reiniciar y eliminar procesos en
segundo plano desde aqu�.[Menu File Edit]
Edici�n del Archivo de Men�

El men� de usuario es un men� de acciones �tiles que puede
ser personalizado por el usuario. Cuando accedemos al men�
de usuario se utiliza, si existe, el archivo .mc.menu del
directorio actual, pero s�lo si es propiedad del usuario o
del superusuario y no es modificable por todos. Si no se
encuentra all� el archivo, se intenta de la misma manera
con ~/.mc/menu, y si no, mc utiliza el men� por defecto
para todo el sistema
/home/john/prjroot/rootfs/usr/share/mc/mc.menu.

El formato del men� de archivo es muy simple. Las l�neas
que empiezan con todo excepto espacio o tab son
consideradas entradas para el men� (para posibilitar su
uso como atajo de teclado, el primer car�cter deber� ser
una letra). Todas las l�neas que comienzan con tab o
espacio son los comandos que ser�n ejecutados cuando la
entrada es seleccionada.

Cuando se selecciona una opci�n todas las l�neas de
comandos de la opci�n se copian a un archivo temporal del
directorio hom�nimo (normalmente /usr/tmp) y entonces es
ejecutado el archivo. Esto permite al usuario poner
constructores normales del shell en los men�s. Tambi�n
tiene lugar una sustituci�n simple de macros antes de
ejecutar el c�digo del men�. Para mayor informaci�n, ver
Sustituci�n de macroMacro Substitution.

He aqu� un ejemplo de archivo mc.menu:

A	Vuelca el contenido del archivo seleccionado
	od -c %f

B	Edita un informe de errores y lo env�a al superusuario
	I=`mktemp ${MC_TMPDIR:-/tmp}/mail.XXXXXX` || exit 1
	vi $I
	mail -s "Error Midnight Commander" root < $I
	rm -f $I

M	Lee al correo
	emacs -f rmail

N	Lee las noticias de Usenet
	emacs -f gnus

H	Realiza una llamada al navegador hypertexto info
	info

J	Copia recursivamente el directorio actual al otro panel
	tar cf - . | (cd %D && tar xvpf -)

K	Realiza una versi�n del directorio actual
	echo -n "Nombre del archivo de distribuci�n: "
	read tar
	ln -s %d `dirname %d`/$tar
	cd ..
	tar cvhf ${tar}.tar $tar

= f *.tar.gz | f *.tgz & t n
X       Extrae los contenidos de un archivo tar comprimido
	tar xzvf %f

Condiciones por Defecto

Cada entrada del men� puede ir precedida por una
condici�n. La condici�n debe comenzar desde la primera
columna con un car�cter '='. Si la condici�n es verdadera,
la entrada del men� ser� la entrada por defecto.

Sintaxis condicional: 	= <sub-cond>
  o:			= <sub-cond> | <sub-cond> ...
  o:			= <sub-cond> & <sub-cond> ...

Sub-condici�n es una de las siguientes:

  f <patr�n>		�el archivo actual encaja con el patr�n?
  F <patr�n>		�otro archivo encaja con el patr�n?
  d <patr�n>		�el directorio actual encaja con el patr�n?
  D <patr�n>		�otro directorio encaja con el patr�n?
  t <tipo>		�archivo actual es de tipo <tipo>?
  T <tipo>		�otro archivo es de tipo <tipo>?
  ! <sub-cond>		niega el resultado de la sub-condici�n

Patr�n es un patr�n normal del shell o una expresi�n
regular, de acuerdo con la opci�n de patrones del shell.
Podemos cambiar el valor global de la opci�n de los
patrones del shell escribiendo "shell_patterns=x" en la
primera l�nea del archivo de men� (donde "x" es 0 � 1).

Tipo es uno o m�s de los siguientes caracteres:

  n	no directorio
  r	archivo regular
  d	directorio
  l	enlace
  c	dispositivo tipo car�cter
  b	dispositivo tipo bloque
  f	tuber�a (fifo)
  s	socket
  x	ejecutable
  t	marcado (tagged)

Por ejemplo 'rlf' significa archivo regular, enlace o
cola. El tipo 't' es un poco especial porque act�a sobre
el panel en vez de sobre un archivo. La condici�n '=t t'
es verdadera si existen archivos marcados en el panel
actual y falsa si no los hay.

Si la condici�n comienza con '=?' en vez de '=' se
mostrar� un trazado de depuraci�n mientras el valor de la
condici�n es calculado.

Las condiciones son calculadas de izquierda a derecha.
Esto significa que
	= f *.tar.gz | f *.tgz & t n
es calculado como
	( (f *.tar.gz) | (f *.tgz) ) & (t n)

He aqu� un ejemplo de uso de condiciones:

= f *.tar.gz | f *.tgz & t n
L	Lista el contenido de un archivo tar comprimido
	gzip -cd %f | tar xvf -

Condiciones aditivas

Si la condici�n comienza con '+' (o '+?') en lugar de '='
(o '=?') es una condici�n aditiva. Si la condici�n es
verdadera la entrada de men� ser� incluida en el men�. Sin
embargo, si la condici�n es falsa, la entrada de men� no
ser� incluida en el men�.

Podemos combinar condiciones por defecto y aditivas
comenzando la condici�n con '+=' o '=+' (o '+=?' o '=+?'
si queremos depurar). Si nosotros queremos condiciones
diferentes, una para a�adir y otra por defecto, una
entrada de men� con dos l�neas de condici�n, una
comenzando con '+' y otra con '='.

Los comentarios empiezan con '#'. Las l�neas adicionales
de comentarios deben empezar con '#', espacio o tab.[Options Menu]
Men� de Opciones

Midnight Commander tiene opciones que pueden ser activadas
o desactivadas a trav�s de una serie de di�logos a los que
se accede desde este men�. Una opci�n est� activada cuando
tiene delante un asterisco o una "x".

En Configuraci�nConfiguration se pueden cambiar la mayor�a de opciones
de Midnight Commander.

En Presentaci�nLayout est� un grupo de opciones que determinan
la apariencia de mc en la pantalla.

En Confirmaci�nConfirmation podemos especificar qu� acciones requieren
una confirmaci�n del usuario antes de ser realizadas.

En Juego de CaracteresDisplay bits podemos seleccionar qu� caracteres
es capaz de mostrar nuestro terminal.

En Aprender TeclasLearn keys podemos verificar teclas que no
funcionan en algunos terminales y solucionarlo.

En Sistema de Archivos Virtual (VFS)Virtual FS podemos especificar
algunas opciones relacionadas con el VFS (Sistema de
Archivos Virtual).

Guardar Configuraci�nSave Setup guarda los valores actuales de los
men�s Izquierdo, Derecho y Opciones. Tambi�n se guardan
algunos otros valores.[Configuration]
Configuraci�n

Este di�logo presenta una serie de opciones divididas en
tres grupos: Opciones de los Paneles, Pausa Despu�s de
Ejecutar y Otras Opciones.

Opciones de los paneles

Mostrar Archivos de Respaldo. Mostrar los archivos
terminados en tilde '~'. Por defecto, Midnight Commander
no los muestra (como la opci�n -B de ls de GNU).

Mostrar Archivos Ocultos. Mostrar los archivos que
comiencen con un punto (como ls -a).

Marcar y Avanzar. Hacer avanzar la barra de selecci�n tras
marcar un archivo (con C-t o con la tecla Insertar).

Men�s Desplegables. Mostrar el contenido de los men�s
desplegables inmediatamente al presionar F9. Si est�
desactivada s�lo la barra de t�tulos de los men�s est�
visible, y ser� necesario abrir cada men� con las flechas
de movimiento o con las teclas de acceso r�pido.

Mezclar Archivos y Directorios. Cuando esta opci�n est�
habilitada, todos los archivos y directorios se muestran
mezclados. Si la opci�n est� desactivada, los directorios
(y enlaces a directorios) aparecen al principio de la
lista, y el resto de archivos a continuaci�n.

Recarga R�pida de Directorios. Hace que Midnight Commander
emplee una peque�a trampa al determinar si los contenidos
del directorio han cambiado. El truco consiste en recargar
el directorio s�lo si el inodo del directorio ha cambiado.
Las recargas se producen si se crean o borrar archivos,
pero si lo que cambia es s�lo el inodo de un archivo del
directorio (cambios en el tama�o, permisos, propietario,
etc.) la pantalla no se actualiza. En esos casos, si
tenemos la opci�n activada, ser� preciso forzar la recarga
de forma manual (con C-r).

Pausa Despu�s de Ejecutar.

Despu�s de ejecutar comandos, Midnight Commander puede
realizar una pausa, y darnos tiempo a examinar la salida
del comando. Hay tres posibles valores para esta variable:

Nunca. Significa que no queremos ver la salida de nuestros
comandos. Si estamos utilizando la consola Linux o FreeBSD
o un xterm, podremos ver la salida del comando pulsando
C-o.

S�lo en Terminales Tontas. Obtendremos el mensaje de pausa
s�lo en terminales que no sean capaces de mostrar la
salida del �ltimo comando ejecutado (en realidad,
cualquier terminal que no sea un xterm o una consola de
Linux).

Siempre. El programa realizar� siempre una pausa despu�s
de ejecutar comandos.

Otras Opciones

Operaci�n Detallada. Controla la visualizaci�n de detalles
durante las operaciones de Copiar, Mover y Borrar (i.e.,
muestra un cuadro de di�logo para cada operaci�n). Si
tenemos un terminal lento, podr�amos querer desactivar la
operaci�n detallada. Se desactiva autom�ticamente si la
velocidad de nuestro terminal es menor de 9600 bps.

Calcular Totales. Hace que Midnight Commander calcule el
total de bytes y el n�mero de archivos antes de iniciar
operaciones de Copiar, Mover y Borrar. Esto proporciona
una barra de progreso m�s precisa a costa de cierta
velocidad. Esta opci�n no tiene efecto si la Operaci�n
Detallada no est� seleccionada.

Patrones del shell. Por defecto, las funciones Selecci�n,
Deselecci�n y Filtro emplean expresiones regulares al
estilo del shell. Para realizar esto se realizan las
siguientes conversiones: '*' se cambia por '.*' (cero o
m�s caracteres); '?' por '.' (exactamente un car�cter) y
'.' por un punto literal. Si la opci�n est� desactivada,
entonces las expresiones regulares son las descritas en
ed(1).

Auto-Guardar Configuraci�n. Si esta opci�n est� activada,
cuando salimos de Midnight Commander las opciones
configurables de Midnight Commander se guardan en el
archivo ~/.mc/ini.

Auto Men�s. Si est� activada, el men� de usuario aparece
autom�ticamente al arrancar. �til en men�s construidos
para personas sin conocimientos de Unix.

Usar Editor Interno. Emplear el editor de archivos
interno. Si est� desactivada, se editar�n los archivos con
el editor especificado por la variable de entorno EDITOR y
si no se especifica ninguno, se usar� vi. V�ase la secci�n
sobre el editor de archivos internoInternal File Editor.

Usar Visor Interno. Emplear el visor de archivos interno.
Si la opci�n est� desactivada, el paginador especificado
en la variable de entorno PAGER ser� el utilizado. Si no
se especifica ninguno, se usar� el comando view. V�ase la
secci�n sobre el visor de archivos internoInternal File Viewer.

Completar: Mostrar Todos. Por defecto, al completar
nombres en situaciones de ambig�edad, Midnight Commander
completa todo lo posible al pulsar M-Tab y produce un
pitido; al intentarlo por segunda vez se muestra una lista
con las posibilidades que han dado lugar a la ambig�edad.
Con esta opci�n, la lista aparece directamente tras pulsar
M-Tab por primera vez.

H�lice de actividad. Mostrar un gui�n rotatorio en la
esquina superior derecha a modo de indicador de progreso.

Navegaci�n al Estilo Lynx. Cuando la selecci�n es un
directorio y la l�nea de �rdenes est� vac�a permite
cambiar a �l con las flechas de movimiento. Esta opci�n
est� inactiva por defecto.

Cd Sigue los Enlaces. Esta opci�n, si est� seleccionada,
hace que Midnight Commander siga la secuencia de
directorios l�gica al cambiar el directorio actual, tanto
en el panel como usando el comando cd. �ste es el
comportamiento por defecto de la shell bash. Sin esto,
Midnight Commander sigue la estructura real de
directorios, y cd .. nos trasladar� al padre real del
directorio actual aunque hayamos entrado en ese directorio
a trav�s de un enlace, y no al directorio donde se
encontraba el enlace.

Precauciones de Borrado. Dificulta el borrado accidental
de archivos. La opci�n por defecto en el di�logo de
confirmaci�n de borrado se cambia a "No". Por defecto,
esta opci�n est� desactivada.[Layout]
Presentaci�n

La ventana de presentaci�n nos da la posibilidad de
cambiar la presentaci�n general de la pantalla. Podemos
configurar si son visibles la barra de men�, la l�nea de
�rdenes, la l�nea de sugerencias o la barra de teclas de
Funci�n. En la consola Linux o FreeBSD podemos especificar
cu�ntas l�neas se muestran en la ventana de salida.

El resto del �rea de pantalla se utiliza para los dos
paneles de directorio. Podemos elegir si disponemos los
paneles vertical u horizontalmente. La divisi�n puede ser
sim�trica o bien podemos indicar una divisi�n asim�trica.

Por defecto, todos los contenidos de los paneles se
muestran en el mismo color, pero se puede indicar que
permisos y tipos de archivos se resalten empleando coloresColors
diferentes. Si se activa el resaltado de permisos, las
partes de los campos de permisos del Modo de ListadoListing Mode...
aplicables al usuario actual de Midnight Commander ser�n
resaltados usando el color indicado por medio de la
palabra clave selected. Si se activa el resaltado de tipos
de archivos, los archivos aparecer�n coloreados seg�n su
tipo (i.e. directorios, archivos core, ejecutables,...).

Si la opci�n Mostrar Mini-Estado est� activa se muestra,
en la parte inferior de cada panel, una l�nea con
informaci�n sobre el archivo seleccionado en cada momento.[Confirmation]
Confirmaci�n

En este men� configuramos las opciones de confirmaci�n de
eliminaci�n de archivos, sobreescritura, ejecuci�n
pulsando intro y salir del programa.[Display bits]
Bits de Visualizaci�n

Esta opci�n es utilizada para configurar el rango de
caracteres visibles en la pantalla. Esta selecci�n puede
ser 7-bits si nuestro terminal/curses soporta s�lo siete
bits de salida, ISO-8859-1 muestra todos los caracteres
del mapa ISO-8859-1 despliegue de 8 bit para aquellos
terminales que puedan los 8 bits en toda su extensi�n.[Learn keys]
Aprender teclas

Este di�logo nos permite comprobar si nuestras teclas
F1-F20, Inicio, Fin, etc. funcionan adecuadamente en
nuestro terminal. A menudo fallan, dado que muchas bases
de datos de terminales est�n mal.

Podemos movernos alrededor con la tecla Tab, con las
teclas de movimiento de vi ('h' izquierda, 'j' abajo, 'k'
arriba y 'l' derecha) y despu�s de pulsar cualquier tecla
del cursor (esto las marcar� con OK), entonces podremos
usar esa tecla tambi�n.

Para probarlas basta con pulsar cada una de ellas. Tan
pronto como pulsamos una tecla y �sta funciona
adecuadamente, OK deber�a aparecer junto al nombre de la
susodicha tecla. Una vez que una tecla es marcada con OK
empieza a funcionar con normalidad, p.e. F1 la primera vez
comprobar� que F1 funciona perfectamente, pero a partir de
ese momento mostrar� la ayuda. Esto mismo es aplicable a
las teclas del cursor. La tecla tab deber�a funcionar
siempre.

Si algunas teclas no funcionan adecuadamente, entonces no
veremos el OK tras el nombre de la tecla despu�s de
haberla pulsado. Podemos entonces intentar solucionarlo.
Haremos esto pulsando el bot�n de esa tecla (con el rat�n
o usando Tab e Intro). Entonces un mensaje rojo aparecer�
y se nos pedir� que pulsemos la tecla en cuesti�n. Si
deseamos abortar el proceso, bastar� con pulsar Esc y
esperar hasta que el mensaje desaparezca. Si no,
pulsaremos la tecla que nos pide y esperaremos hasta que
el di�logo desaparezca.

Cuando acabemos con todas las teclas, podr�amos Guardar
nuestras teclas en nuestro archivo ~/.mc/ini dentro de la
secci�n [terminal:TERM] (donde TERM es el nombre de
nuestro terminal actual) o descartarlas. Si todas nuestras
teclas funcionan correctamente y no debemos corregir
ninguna, entonces (l�gico) no se grabar�.[Virtual FS]
Sistema de Archivos Virtual (VFS)

Este di�logo permite ajustar opciones del Sistema de
Archivos Virtual (VFS)Virtual File System.

Midnight Commander guarda en memoria o en disco
informaci�n de algunos de los sistemas de archivos
virtuales con el fin de acelerar el acceso a sus archivos.
Ejemplo de esto son los listados descargados desde
servidores FTP o los archivos temporales descomprimidos
creados para acceder r�pidamente a los contenidos de
archivos tipo tar comprimidos.

Esas informaciones se conservan para permitirnos navegar,
salir y volver a entrar r�pidamente en los
correspondientes sistemas de archivos virtuales. Al cabo
de un cierto tiempo sin usarlos deben ser liberados y
recuperar los recursos utilizados. Por defecto ese tiempo
es de un minuto, pero se puede configurar por el usuario.

Tambi�n podemos adelantar la liberaci�n de los VFS desde
el di�logo de control de Directorios virtuales (VFS).

El Sistema de Archivos FTP (FTPfs)FTP File System permite navegar por
los directorios de servidores FTP remotos. Admite diversas
opciones.

Contrase�a de FTP an�nimo es la contrase�a a utilizar en
conexiones en modo an�nimo, esto es, empleando el nombre
de usuario "anonymous". Algunos sitios exigen que �sta sea
una direcci�n de correo electr�nico v�lida, pero tampoco
es conveniente dar nuestra direcci�n real a desconocidos
para protegernos de los env�os de correo masivo.

FTPfs conserva en cach� los listados de los directorios
consultados. La duraci�n de la cach� es el valor indicado
tras Descartar el cach� FTPfs. Un valor peque�o ralentiza
el proceso porque cualquier peque�a operaci�n ir�a siempre
acompa�ada de una conexi�n con el servidor FTP.

Se puede configurar un sistema proxy para FTP, aunque los
cortafuegos modernos son transparentes (al menos para FTP
pasivo, ver m�s abajo) y est� opci�n es generalmente
innecesaria.

Si la opci�n Usar siempre proxy no est� activa, a�n se
puede emplear el proxy en casos concretos. V�anse los
ejemplos en la secci�n Sistema de Archivos FTP (FTPfs)FTP File System.

Si la opci�n Usar siempre proxy est� puesta, el programa
asume que cualquier nombre de m�quina sin puntos es
accesible directamente y tambi�n consulta el archivo
/home/john/prjroot/rootfs/usr/share/mc.no_proxy en busca
de nombres de m�quinas locales (o dominios completos si el
nombre empieza con un punto). En todos los dem�s casos se
usar� siempre el proxy de FTP indicado arriba.

Se puede usar el archivo ~/.netrc, que contiene
informaci�n de usuarios y contrase�as para determinados
servidores FTP. Para conocer el formato de los archivos
.netrc v�ase netrc (5).

Usar FTP pasivo habilita el modo de tranferencia FTP
pasivo (la conexi�n para transferencia de datos es
iniciada por la m�quina cliente, no por el servidor). Esta
opci�n es la recomendada, y de hecho est� activada por
defecto. Si se desactiva, la conexi�n la inicia el
servidor, y puede ser impedida por alg�n cortafuegos.

[Save Setup]
Guardar Configuraci�n

Al arrancar Midnight Commander se carga la informaci�n de
inicio del archivo ~/.mc/ini. Si �ste no existe, se
cargar� la informaci�n del archivo de configuraci�n
gen�rico del sistema,
/home/john/prjroot/rootfs/usr/share/mc/mc.ini. Si el
archivo de configuraci�n gen�rico del sistema no existe,
MC utiliza la configuraci�n por defecto.

El comando Guardar Configuraci�n crea el archivo ~/.mc/ini
guardando la configuraci�n actual de los men�s Izquierdo,
DerechoLeft and Right Menus y OpcionesOptions Menu.

Si se activa la opci�n Auto-guarda configuraci�n, MC
guardar� siempre la configuraci�n actual al salir.

Existen tambi�n configuraciones que no pueden ser
cambiadas desde los men�s. Para cambiarlas hay que editar
manualmente el archivo de configuraci�n. Para m�s
informaci�n, v�ase la secci�n sobre Ajustes EspecialesSpecial Settings.

[Executing operating system commands]
Ejecutando �rdenes del Sistema Operativo

Podemos ejecutar comandos tecleando en la l�nea de �rdenes
de Midnight Commander, o seleccionando el programa que
queremos ejecutar en alguno de los paneles y pulsando
Intro.

Si pulsamos Intro sobre un archivo que no es ejecutable,
Midnight Commander compara la extensi�n del archivo
seleccionado con las extensiones recogidas en el Archivo
de ExtensionesExtension File Edit. Si se produce una coincidencia se
ejecutar� el c�digo asociado con esa extensi�n. Tendr�
lugar una expansi�nMacro Substitution muy simple antes de ejecutar el
comando.[The cd internal command]
Comando cd Interno

El comando cd es interpretado directamente por Midnight
Commander, en vez de pasarlo al interprete de comandos
para su ejecuci�n. Por ello puede que no todas las
posibilidades de expansi�n y sustituci�n de macro que hace
nuestro shell est�n disponibles, pero s� algunas de ellas:

Sustituci�n de tilde. La tilde (~) ser� sustituida por
nuestro directorio de inicio. Si a�adimos un nombre de
usuario tras la tilde, entonces ser� sustituido por el
directorio de entrada al sistema del usuario especificado.

Por ejemplo, ~coco ser�a el directorio de un supuesto
usuario denominado "coco", mientras que ~/coco es el
directorio coco dentro de nuestro propio directorio de
inicio.

Directorio anterior. Podemos volver al directorio donde
est�bamos anteriormente empleando el nombre de directorio
especial '-' del siguiente modo: cd -

Directorios en CDPATH. Si el directorio especificado al
comando cd no est� en el directorio actual, entonces
Midnight Commander utiliza el valor de la variable de
entorno CDPATH para buscar el directorio en cualquiera de
los directorios enumerados.

Por ejemplo, podr�amos asignar a nuestra variable CDPATH
el valor ~/src:/usr/src, lo que nos permitir�a cambiar de
directorio a cualquiera de los directorios dentro de ~/src
y /usr/src, desde cualquier lugar del sistema de archivos,
usando s�lo su nombre relativo (por ejemplo cd linux
podr�a llevarnos a /usr/src/linux).[Macro Substitution]
Sustituci�n de Macro

Cuando se accede al men� de usuarioMenu File Edit, o se ejecuta un
comando dependiente de extensi�nExtension File Edit, o se ejecuta un
comando desde la l�nea de entrada de comandos, se realiza
una simple sustituci�n de macro.

Las macros son:

"%f"

        Archivo actual.

"%d"

        Nombre del directorio actual.

"%F"

        Archivo actual en el panel inactivo.

"%D"

        Directorio del panel inactivo.

"%t"

        Archivos actualmente marcados.

"%T"

        Archivos marcados en el panel inactivo.

"%u" y "%U"

        Similar a las macros %t y %T, salvo que los
        archivos quedan desmarcados. S�lo se puede
        emplear esta macro una vez por cada entrada del
        archivo de men� o archivo de extensiones, puesto
        que para la siguiente vez no quedar�a ning�n
        archivo marcado.

"%s" y "%S"

        Archivos seleccionados: Los archivos marcados si
        los hay y si no el archivo actual.

"%cd"

        �sta es una macro especial usada para cambiar del
        directorio actual al directorio especificado
        frente a �l. Esto se utiliza principalmente como
        interfaz con el Sistema de Archivos VirtualVirtual File System.

"%view"

        Esta macro es usada para invocar al visor
        interno. Puede ser utilizada en solitario, o bien
        con argumentos. Si pasamos alg�n argumento a esta
        macro, deber� ser entre par�ntesis.

        Los argumentos son: ascii para forzar al visor a
        modo ascii; hex para forzar al visor a modo
        hexadecimal; nroff para indicar al visor que debe
        interpretar las secuencias de negrita y subrayado
        de nroff; unformated para indicar al visor que no
        interprete los comandos nroff referentes a texto
        resaltado o subrayado.

"%%"

        El car�cter %

"%{cualquier texto}"

        Pregunta sobre la sustituci�n. Un cuadro de
        entrada es mostrado y el texto dentro de las
        llaves se usa como mensaje. La macro es
        sustituida por el texto tecleado por el usuario.
        El usuario puede pulsar ESC o F10 para cancelar.
        Esta macro no funciona a�n sobre la l�nea de
        �rdenes.[The subshell support]
Soporte de Subshell

El soporte del subshell es una opci�n de tiempo de
compilaci�n, que funciona con los shells: bash, tcsh y
zsh.

Cuando el c�digo del subshell es activado Midnight
Commander engendrar� una copia de nuestro shell (la
definida en la variable SHELL y si no est� definida, el
que aparece en el archivo /etc/passwd) y lo ejecuta en un
pseudoterminal, en lugar de invocar un nuevo shell cada
vez que ejecutamos un comando, el comando ser� pasado al
subshell como si lo hubi�semos escrito. Esto adem�s
permite cambiar las variables de entorno, usaremos las
funciones del shell y los alias definidos que ser�n
v�lidos hasta salir de Midnight Commander.

Si estamos usando bash podremos especificar comandos de
arranque para el subshell en nuestro archivo ~/.mc/bashrc
y mapas de teclado especiales en el archivo ~/.mc/inputrc.
Los usuarios de tcsh podr�n especificar los comandos de
arranque en el archivo ~/.mc/tcshrc.

Cuando utilizamos el c�digo del subshell, podemos
suspender aplicaciones en cualquier momento con la
secuencia C-o y volver a Midnight Commander, si
interrumpimos una aplicaci�n, no podremos ejecutar otros
comandos externos hasta que quitemos la aplicaci�n que
hemos interrumpido.

Una caracter�stica extra a�adida de uso del subshell es
que el prompt mostrado por Midnight Commander es el mismo
que estamos usando en nuestro shell.

La secci�n OPCIONES tiene m�s informaci�n sobre c�mo
controlar el c�digo del subshell.[Chmod]
Cambiar Permisos

Cambiar Permisos se usa para cambiar los bits de permisos
en un grupo de archivos y directorios. Puede ser invocado
con la combinaci�n de teclas C-x c.

La ventana de Cambiar Permisos tiene dos partes - Permisos
y Archivo

En la secci�n Archivo se muestran el nombre del archivo o
directorio y sus permisos en formato num�rico octal, as�
como su propietario y grupo.

En la secci�n de Permisos hay un grupo de casillas de
selecci�n que corresponden a los posibles permisos del
archivo. Conforme los cambiamos podemos ver c�mo el valor
octal va cambiando en la secci�n Archivo.

Para desplazarse entre las casillas y botones de la
ventana podemos usar las teclas del cursor o la tecla de
tabulaci�n. Para marcar o desmarcar casillas y para pulsar
los botones usaremos la barra espaciadora. Podemos usar
los atajos de teclado (las letras destacadas) para
accionar directamente los elementos.

Para aceptar y aplicar los permisos, usaremos la tecla
Intro.

Si se trata de un grupo de archivos o directorios, podemos
cambiar parte de los permisos marc�ndolos (las marcas son
los asteriscos a la izquierda de las casillas) y pulsando
el bot�n [* Poner] o [* Quitar] para indicar la acci�n
deseada. Los permisos no marcados conservan, en este caso,
los valores previos.

Podemos tambi�n fijar todos los permisos iguales en todos
los archivos con el bot�n [Todos] o s�lo los permisos
marcados con el bot�n [* Todos]. En estos casos las
casillas indican el estado en que queda cada permiso,
igual que para archivos individuales.

[Todos] act�a sobre todos los permisos de todos los
archivos

[* Todos] act�a s�lo sobre los atributos marcados de los
archivos

[* Poner] activa los permisos marcados en los archivos
seleccionados

[* Quitar] desactiva los permisos marcados en los archivos
seleccionados

[Aplicar] act�a sobre todos los permisos de cada archivo,
uno a uno

[Cancelar] cancela Cambiar Permisos[Chown]
Cambiar Due�o

Cambiar Due�o permite cambiar el propietario y/o grupo de
un archivo. La tecla r�pida para este comando es C-x o.[Advanced Chown]
Cambiar Due�o y Permisos

Cambiar Due�o y Permisos combina Cambiar Due�oChown y Cambiar
PermisosChmod en una �nica ventana. Se puede as� cambiar los
permisos, propietario y grupo del archivo de una sola vez.[File Operations]
Operaciones con Archivos

Cuando copiamos, movemos o borramos archivos, Midnight
Commander muestra el di�logo de operaciones con archivos.
En �l aparecen los archivos que se est�n procesando y
hasta tres barras de progreso. La barra de archivo indica
qu� parte del archivo actual va siendo copiada, la barra
de contador indica cu�ntos de los archivos marcados han
sido completados y la barra de bytes nos dice qu� parte
del tama�o total de archivos marcados ha sido procesado
hasta el momento. Si la operaci�n detallada est�
desactivada no se muestran las barras de archivo y bytes.

En la parte inferior hay dos botones. Pulsando el bot�n
Saltar se ignorar� el resto del archivo actual. Pulsando
el bot�n Abortar se detendr� la operaci�n y se ignora el
resto de archivos.

Hay otros tres di�logos que pueden aparecer durante
operaciones de archivos.

El di�logo de error informa sobre una condici�n de error y
tiene tres posibilidades. Normalmente seleccionaremos el
bot�n Saltar para evitar el archivo o Abortar para detener
la operaci�n. Tambi�n podemos seleccionar el bot�n
Reintentar si hemos corregido el problema desde otro
terminal.

El di�logo Reemplazar aparece cuando intentamos copiar o
mover un archivo sobre otro ya existente. El mensaje
muestra fechas y tama�os de ambos archivos. Pulsaremos el
bot�n S� para sobreescribir el archivo, el bot�n No para
saltarlo, el bot�n Todos para sobreescribir todos los
archivos, Ninguno para no sobreescribir en ning�n caso y
Actualizar para sobreescribir si el archivo origen es
posterior al archivo objeto. Podemos abortar toda la
operaci�n pulsando el bot�n Abortar.

El di�logo de eliminaci�n recursiva aparece cuando
intentamos borrar un directorio no vac�o. Pulsaremos S�
para borrar el directorio recursivamente, No para saltar
el directorio, Todo para borrar recursivamente todos los
directorios marcados no vac�os y Ninguno para saltarlos
todos. Podemos abortar toda la operaci�n pulsando el bot�n
Abortar. Si seleccionamos el bot�n S� o Todo se nos pedir�
confirmaci�n. Diremos "s�" s�lo si estamos realmente
seguros de que queremos una eliminaci�n recursiva.

Si hemos marcado archivos y realizamos una operaci�n sobre
ellos, s�lo los archivos sobre los que la operaci�n fue
exitosa son desmarcados. Los archivos saltados y aquellos
en los que la operaci�n fall� permanecen marcados.[Mask Copy/Rename]
Copiar/Renombrar con M�scara

Las operaciones de copiar/mover permiten transformar los
nombres de los archivos de manera sencilla. Para ello, hay
que procurar una m�scara correcta para el origen y
normalmente en la terminaci�n del destino algunos
caracteres comod�n. Todos los archivos que concuerden con
la m�scara origen son copiados/renombrados seg�n la
m�scara destino. Si hay archivos marcados, s�lo aquellos
que encajen con la m�scara de origen ser�n renombrados.

Hay otras opci�n que podemos seleccionar:

Seguir Enlaces indica si los enlaces simb�licos o f�sicos
en el directorio origen (y recursivamente en sus
subdirectorios) producen nuevos enlaces en el directorio
destino o si queremos copiar su contenido.

Copiar Recursivamente indica qu� hacer si en el directorio
destino existe ya un directorio con el mismo nombre que el
archivo/directorio que est� siendo copiado. La acci�n por
defecto es copiar su contenido sobre ese directorio.
Habilitando esto podemos copiar el directorio de origen
dentro de ese directorio. Quiz�s un ejemplo pueda ayudar:

Queremos copiar el contenido de un directorio denominado
coco a /blas donde ya existe un directorio /blas/coco. Por
defecto, mc copiar�a el contenido en /blas/coco, pero con
esta opci�n se copiar�a como /blas/coco/coco.

Preservar Atributos indica que se deben conservar los
permisos originales de los archivos, marcas temporales y
si somos superusuario tambi�n el propietario y grupo
originales. Si esta opci�n no est� activa se aplica el
valor actual de umask.

"Usando Patrones Shell activado"

Usando Patrones Shell nos permite usar los caracteres
comod�n '*' y '?' en la m�scara de origen. Funcionar�
igual que en la l�nea de �rdenes. En la m�scara destino,
s�lo est�n permitidos los comodines '*' y '\<n�mero>'. El
primer '*' en la m�scara destino corresponde al primer
grupo del comod�n en la m�scara de origen, el segundo '*'
al segundo grupo, etc�tera. El comod�n '\1' corresponde al
primer grupo en la m�scara de origen, el comod�n '\2' al
segundo y as� sucesivamente hasta '\9'. El comod�n '\0' es
el nombre completo del archivo fuente.

Dos ejemplos:

Si la m�scara de origen es "*.tar.gz", el destino es
"/blas/*.tgz" y el archivo a copiar es "coco.tar.gz", la
copia se har� como "coco.tgz" en "/blas".

Supongamos que queremos intercambiar el nombre y la
extensi�n de modo que "archivo.c" se convierta en
"c.archivo". La m�scara origen ser� "*.*" y la de destino
"\2.\1".

"Usando Patrones Shell desactivado"

Cuando la opci�n de Patrones Shell est� desactivada MC no
realiza una agrupaci�n autom�tica. Deberemos usar
expresiones '\(...\)' en la m�scara origen para
especificar el significado de los comodines en la m�scara
destino. Esto es m�s flexible pero tambi�n necesita m�s
escritura. Por lo dem�s, las m�scaras destino son
similares al caso de Patrones Shell activos.

Dos ejemplos:

Si la m�scara de origen es "^\(.*\)\.tar\.gz$", el destino
es "/blas/*.tgz" y el archivo a ser copiado es
"coco.tar.gz", la copia ser� "/blas/coco.tgz".

Si queremos intercambiar el nombre y la extensi�n para que
"archivo.c" sea "c.archivo", la m�scara de origen puede
ser "^\(.*\)\.\(.*\)$" y la de destino "\2.\1".

"Capitalizaci�n"

Podemos hacer cambios entre may�sculas y min�sculas en los
nombres de archivos. Si usamos '\u' o '\l' en la m�scara
destino, el siguiente car�cter ser� convertido a
may�sculas o min�sculas respectivamente.

Si usamos '\U' o '\L' en la m�scara destino, los
siguientes caracteres ser�n convertidos a may�sculas o
min�sculas respectivamente hasta encontrar '\E' o un
segundo '\U' o '\L' o el fin del nombre del archivo.

'\u' y '\l' tienen prioridad sobre '\U' y '\L'.

Por ejemplo, si la m�scara fuente es '*' (con Patrones
Shell activo) o '^\(.*\)$' (Patrones Shell desactivado) y
la m�scara destino es '\L\u*' los nombres de archivos
ser�n convertidos para que tengan su inicial en may�scula
y el resto del nombre en min�sculas.

Tambi�n podemos usar '\' como car�cter de escape evitando
la interpretaci�n de todos estos caracteres especiales.
Por ejemplo, '\\' es una contrabarra y '\*' es un
asterisco.[Internal File Viewer]
Visor de Archivos Interno

El visor de archivos interno ofrece dos modos de
presentaci�n: ASCII y hexadecimal. Para alternar entre
ambos modos, se emplea la tecla F4.

El visor intenta usar el mejor m�todo disponible en el
sistema, seg�n el tipo de archivo, para mostrar
informaci�n. Los archivos comprimidos se descomprimen
autom�ticamente si los programas correspondientes (GNU
gzip � bzip2) est�n instalados en el sistema. El propio
visor es capaz de interpretar ciertas secuencias de
caracteres que se emplean para activar los atributos de
negrita y subrayado, mejorando la presentaci�n de los
archivos.

En modo hexadecimal, la funci�n de b�squeda admite texto
entre comillas o valores num�ricos. El texto
entrecomillado se busca tal cual (retirando las comillas)
y cada n�mero se corresponde a un byte. Unos y otros se
pueden entremezclar como en:

"Cadena" -1 0xBB 012 "otro texto"

N�tese que 012 es un n�mero octal y -1 se convierte en
0xFF.

Algunos detalles internos del visualizador: En sistemas
con acceso a la llamada del sistema mmap(2), el programa
mapea el archivo en vez de cargarlo; si el sistema no
provee de la llamada al sistema mmap(2) o el archivo
realiza una acci�n que necesita de un filtro, entonces el
visor usar� sus cach�s de crecimiento, cargando s�lo las
partes del archivo a las que actualmente estamos
accediendo (esto incluye a los archivos comprimidos).

He aqu� una lista de las acciones asociadas a cada tecla
que Midnight Commander gestiona en el visor interno de
archivos.

F1 Invoca el visor de ayuda de hipertexto interno.

F2 Cambia el modo de ajuste de l�neas en pantalla.

N. del T.- Envuelta (Ajustada), se muestra toda la
informaci�n de la l�nea en la pantalla, de modo que si
�sta ocupa m�s del ancho de la pantalla aparece como si
fuese otra l�nea aparte o bien desenvuelta (desajustada),
truncando el contenido de la l�nea que sobresale de la
pantalla. Este contenido puede ser consultado utilizando
las teclas del cursor.

F4 Cambia entre el modo hexadecimal y el Ascii.

F5 Ir a la l�nea. Nos pedir� el n�mero de l�nea en el que
deseamos posicionarnos y mostrar� el archivo a partir de
esa l�nea.

F6, /. B�squeda de expresi�n regular desde la posici�n
actual hacia adelante.

?, B�squeda de expresi�n regular desde la posici�n actual
hacia atr�s.

F7 B�squeda normal/ b�squeda en modo hexadecimal.

C-s. Comienza una b�squeda normal si no existe una
expresi�n de b�squeda previa si no busca la pr�xima
coincidencia.

C-r. Comienza una b�squeda hacia atr�s si no hab�a
expresi�n de b�squeda anterior si no busca la pr�xima
coincidencia.

n. Buscar la pr�xima coincidencia.

F8 Intercambia entre el modo crudo y procesado: esto
mostrar� el archivo como se encuentra en disco o si se ha
especificado un filtro de visualizaci�n en el archivo
mc.ext, entonces la salida filtrada. El modo actual es
siempre el contrario al mostrado en la etiqueta del bot�n,
en tanto que el bot�n muestra el modo en el que entraremos
con la pulsaci�n de esa tecla.

F9 Alterna entre la visualizaci�n con y sin formato: en el
modo con formato se interpretan algunas secuencias de
caracteres para mostrar texto en negrita y subrayado con
diferentes colores. Como en el caso anterior, la etiqueta
del bot�n muestra el estado contrario al actual.

F10, Esc. Sale del visor interno.

Av p�g, espacio, C-v. Avanza una p�gina hacia abajo.

Re p�g, M-v, C-b, Retroespacio. Retrocede una p�gina hacia
arriba.

Cursor Abajo Desplaza el texto una l�nea hacia arriba,
mostrando en la l�nea inferior de la pantalla una nueva
l�nea que antes quedaba oculta.

Cursor Arriba Desplaza una l�nea hacia abajo.

C-l Redibuja el contenido de la pantalla.

! Engendra un nuevo shell en el directorio de trabajo
actual.

"[n] m" Coloca la marca n.

"[n] r" Salta hasta la marca n.

C-f Salta al archivo siguiente.

C-b �dem al archivo anterior.

M-r Intercambia entre los diferentes modos de regla:
desactivado, arriba, abajo.

Es posible adiestrar al visor de archivos sobre c�mo
mostrar un archivo, m�rese la secci�n Editar Archivo de
ExtensionesExtension File Edit.[Internal File Editor]
Editor de Archivos Interno

El editor de archivos interno es un editor a pantalla
completa de avanzadas prestaciones. Puede editar archivos
de hasta 64 MB y tambi�n permite modificar archivos
binarios. Se inicia pulsando F4 supuesto que la variable
use_internal_edit est� presente en el archivo de
inicializaci�n.

Las caracter�sticas soportadas actualmente son: copia,
desplazamiento, borrado, corte, y pegado de bloques;
deshacer paso a paso; men�s desplegables; inserci�n de
archivos; definici�n de macros; buscar y reemplazar usando
expresiones regulares (y su propio buscar y reemplazar
basado en formatos de scanf/printf); selecci�n de texto
con may�sculas-cursor (si el terminal lo soporta);
alternancia insertar-sobreescribir; plegado de l�neas;
sangrado autom�tico; tama�o de tabulaci�n configurable;
realce de sintaxis para varios tipos de archivos; y la
opci�n de pasar bloques de texto por filtros externos como
indent o ispell.

El editor es muy f�cil de usar y no requiere aprendizaje
alguno. Para conocer las teclas asignadas a cada funci�n,
basta consultar los men�s correspondientes. Adem�s, las
teclas de desplazamiento con la tecla de may�sculas
seleccionan texto. Se puede seleccionar con el rat�n,
aunque podemos recuperar su funcionamiento habitual en
terminales (copiar y pegar) manteniendo pulsada la tecla
may�sculas. Ctrl-Ins copia al archivo cooledit.clip y
May�sculas-Ins pega desde cooledit.clip. May�sculas-Supr
corta y copia en cooledit.clip, y Ctrl-Supr elimina el
texto resaltado. La tecla Intro produce un salto de l�nea
con sangrado autom�tico opcional.

Para definir una macro, pulsar Ctrl-R y entonces
teclearemos las secuencias de teclas que deseamos sean
ejecutadas. Pulsaremos Ctrl-R de nuevo al finalizar.
Podemos asignar la macro a la tecla que queramos pulsando
sobre ella. La macro ser� ejecutada cuando pulsemos Ctrl-A
seguido de la tecla asignada. Tambi�n ser� ejecutada si
pulsamos Meta (Alt), Ctrl, o Escape y la tecla asignada,
siempre y cuando la tecla no sea usada por ninguna otra
funci�n. Una vez definida, los comandos de macro ir�n al
archivo cedit/cooledit.macros en nuestro directorio de
inicio. Podemos eliminar una macro borrando la l�nea
adecuada en este archivo.

F19 formatear� el bloque seleccionado (sea texto, c�digo C
o C++ u otro). Esto est� controlado por el archivo
/home/john/prjroot/rootfs/usr/share/mc/edit.indent.rc que
se copia la primera vez que se usa en
.mc/cedit/edit.indent.rc en el directorio personal.

Podemos usar la b�squeda scanf y reemplazar para buscar y
cambiar una cierta cadena en formato C. Se pueden
consultar las p�ginas del manual de sscanf y sprintf para
saber qu� es una cadena de formato y c�mo funciona. Veamos
un ejemplo: supongamos que queremos cambiar todas las
apariciones de un par�ntesis abierto, tres n�meros
separados por comas, y un par�ntesis cerrado, con la
palabra Melones_De_Pozo-Estrecho, el tercer n�mero, la
palabra Tomates_De_Mazarr�n y el segundo n�mero.
Rellenaremos el di�logo Reemplazar como sigue:

 Teclee el texto a buscar:
  (%d,%d,%d)
 Teclee el cambio a realizar:
  Melones_De_Pozo-Estrecho %d Tomates_De_Mazarr�n %d
 Teclee el orden de los argumentos:
  3,2

La �ltima l�nea indica que el tercer y el segundo n�mero
deben ser usados en primer y segundo lugar
respectivamente.

Es conveniente usar esta caracter�stica con "Confirmar
cambios" marcado, porque se pueden producir coincidencias
que no correspondan exactamente con lo deseado. Scanf
tambi�n trata el espacio en blanco como si fuese el�stico.
El formato de scanf %[ resulta muy �til para rastrear
cadenas, y el espacio en blanco.

El editor tambi�n visualiza caracteres no estadounidenses
(160+). Al editar archivos binarios, debemos configurar
los bits de pantalla a 7 bits en el men� de opciones para
mantener el espaciado saneado.[Completion]
Terminaci�n

Permite a Midnight Commander escribir por nosotros.

Intenta completar el texto escrito antes de la posici�n
actual. MC intenta la terminaci�n tratando el texto como
si fuera una variable (si el texto comienza con $ ),
nombre de usuario (si el texto empieza por ~ ), nombre de
m�quina (si el texto comienza con @ ) o un comando (si
estamos en la l�nea de �rdenes en una posici�n donde
podr�amos escribir un comando; las terminaciones posibles
entonces incluyen las palabras reservadas del shell as�
como comandos internos del shell) en ese orden. Si nada de
lo anterior es aplicable, se intenta la terminaci�n con
nombres de archivo.

La terminaci�n de nombres de archivo, usuario y m�quina
funciona en todas las l�neas de entrada; la terminaci�n de
comandos es espec�fica de la l�nea de �rdenes. Si la
terminaci�n es ambigua (hay varias posibilidades
diferentes), MC pita, y la acci�n siguiente depende de la
opci�n Completar: Mostrar Todos en el di�logo de
Configuraci�nConfiguration. Si est� activada, se despliega
inmediatamente junto a la posici�n actual una lista con
todas las posibilidades donde se puede seleccionar con las
flechas de movimiento e Intro la entrada correcta. Tambi�n
podemos seguir escribiendo caracteres con lo que la l�nea
se sigue completando tanto como sea posible y
simult�neamente la primera entrada coincidente de la lista
se va resaltando. Si volvemos a pulsar M-Tab, s�lo las
coincidencias permanecen en la lista. Tan pronto como no
haya ambig�edad, la lista desaparece; tambi�n podemos
quitarla con las teclas de cancelaci�n Esc, F10 y las
teclas de movimiento a izquierda y derecha. Si Completar:
Mostrar TodosConfiguration est� desactivado, la lista aparece cuando
pulsamos M-Tab por segunda vez; con la primera MC s�lo
emite un pitido.[Virtual File System]
Sistemas de Archivos Virtuales (VFS)

Midnight Commander dispone de una capa de c�digo de acceso
al sistema de archivos; esta capa se denomina Sistema de
Archivos Virtual (VFS). El Sistema de Archivos Virtual
permite a Midnight Commander manipular archivos no
ubicados en el sistema de archivos Unix.

Midnight Commander incluye actualmente varios Sistemas de
Archivos Virtuales: el sistema de archivos local,
utilizado para acceder al sistema de archivos Unix
habitual; tarfs para manipular archivos empaquetados con
el comando tar y acaso comprimidos; undelfs para recuperar
archivos borrados en sistemas de archivos de tipo ext2
(sistema de archivos habitual en Linux); FTPfs para
manipular archivos en sistemas remotos a trav�s de FTP;
FISH para manipular archivos a trav�s de conexiones a
shell como rsh o ssh y finalmente MCfs (Midnight Commander
file system), un sistema de archivos para red. Si el
programa se compil� incluyendo SMBfs se pueden manipular
archivos en sistemas remotos empleando el protocolo SMB
(CIFS).

Se facilita tambi�n un sistema de archivos gen�rico extfs
(EXternal virtual File System) para extender con facilidad
las posibilidades de VFS empleando guiones y programas
externos.

El c�digo VFS interpretar� todos los nombres de ruta
usados y los dirigir� al sistema de archivos correcto. El
formato usado para cada uno de los sistemas de archivos se
describe m�s adelante en su propia secci�n.[Tar File System]
Sistema de archivos Tar (tarfs)

El sistema de archivos tar y los archivos tar comprimidos
pueden consultarse usando el comando chdir. Para mostrar
en el panel el contenido de un archivo tar, cambiamos de
directorio empleando la siguiente sintaxis:

/archivo.tar#utar/[directorio-dentro-tar]

El archivo mc.ext tambi�n ofrece un atajo para los
archivos tar, esto quiere decir que normalmente basta con
apuntar a un archivo tar y pulsar Intro para entrar en el
archivo tar. V�ase la secci�n Edici�n del Archivo de
ExtensionesExtension File Edit para obtener m�s detalles sobre c�mo hacer
esto.

Ejemplos:

    mc-3.0.tar.gz#utar/mc-3.0/vfs
    /ftp/GCC/gcc-2.7.0.tar#utar

En este �ltimo se indica la ruta completa hasta el archivo
tar.[FTP File System]
Sistema de archivos FTP (FTPfs)

FTPfs permite manipular archivos en m�quinas remotas. Para
utilizarlo se puede emplear la opci�n de men� Conexi�n por
FTP o simplemente emplear la orden cd como cuando
cambiamos habitualmente de directorio, pero indicando como
ruta:

/#ftp:[!][usuario[:clave]@]maquina[:puerto][dir-remoto]

Los elementos usuario, puerto y directorio-remoto son
opcionales. Si especificamos el elemento usuario, entonces
Midnight Commander intentar� conectarse con la m�quina
remota como ese usuario, y si no, establecer� una conexi�n
en modo an�nimo o con el nombre de usuario indicado en el
archivo ~/.netrc. El elemento clave tambi�n es opcional, y
si est� presente, se emplea como contrase�a de acceso.
Esta forma de colocar la contrase�a como parte del nombre
del directorio virtual no es muy recomendable porque
eventualmente puede aparecer en pantalla y guardarse en el
hist�rico de directorios.

Si es necesario utilizar un proxy de FTP, se a�ade un
s�mbolo de exclamaci�n ! delante del nombre de la m�quina.

Ejemplos:

    /#ftp:ftp.nuclecu.unam.mx/linux/local
    /#ftp:tsx-11.mit.edu/pub/linux/packages
    /#ftp:!detras.barrera.edu/pub
    /#ftp:guest@pcremoto.com:40/pub
    /#ftp:miguel:xxx@servidor/pub
    /#ftp:ftp.um.es/pub

La opciones de FTPfs se encuentran entre las opciones de
configuraci�n del Sistema de Archivos Virtual (VFS)Virtual FS.[FIle transfer over SHell filesystem]
Sistema de archivos de env�o Archivos por SHell (FISH)

El FISH es un sistema de archivos por red que permite
manipular archivos en una m�quina remota como si
estuvieran almacenados localmente. Para ello es preciso
que el sistema remoto este ejecutando el servidor FISH o
que la shell sea de tipo bash.

Para conectar con la m�quina remota basta cambiar de
directorio a un directorio virtual cuyo nombre sea de la
forma:

/#sh:[usuario@]maquina[:opciones]/[directorio-remoto]

Los elementos usuario, opciones y directorio-remoto son
opcionales. Si se especifica el elemento usuario Midnight
Commander intentar� entrar en la m�quina remota como ese
usuario, y si no usar� nuestro nombre.

Como opciones se puede poner 'C' para usar compresi�n y
'rsh' para utilizar una conexi�n rsh en vez de ssh. Si se
indica el directorio-remoto, se buscar� �ste como primer
directorio al conectar con la m�quina remota.

Ejemplos:

    /#sh:solorsh.es:r/linux/local
    /#sh:pepe@quiero.comprension.edu:C/privado
    /#sh:pepe@sincomprimir.ssh.edu/privado
[Network File System]
Sistema de archivos de Red

El sistema de archivos de Midnight Commander es un sistema
de archivos de red b�sico que nos permite manipular
archivos en una m�quina remota como si estuviesen
accesibles localmente. Para utilizar esto, la m�quina
remota debe estar ejecutando el programa servidor
mcserv(8).

Para conectar a una m�quina remota, s�lo necesitamos hacer
un chdir a un directorio especial cuyo nombre sigue el
siguiente formato:

/#mc:[usuario@]m�quina[:puerto][directorio-remoto]

Los elementos usuario, puerto y directorio-remoto son
opcionales. Si especificamos el elemento usuario entonces
Midnight Commander intentar� acceder a la m�quina como ese
usuario, si no, usar� nuestro login.

El elemento puerto es necesario cuando el servidor remoto
se ejecuta en un puerto especial (v�ase la p�gina del
manual de mcserv(8) para m�s informaci�n acerca de
puertos); finalmente, si el elemento directorio-remoto
est� presente, nuestro directorio actual en la m�quina
remota ser� �ste.

Ejemplos:

    /#mc:ftp.nuclecu.unam.mx/linux/local
    /#mc:pepe@foo.edu:11321/privado
[SMB File System]
Sistema de archivos SMB

El SMBfs permite manipular archivos en m�quinas remotas
con el protocolo denominado SMB (o CIFS). Esto incluye
Windows Trabajo en Grupo, Windows 9x/ME/XP, Windows NT,
Windows 2000 y Samba. Para comenzar a usarlo, se puede
emplear la "Conexi�n por SMB..." (accesible desde la barra
de men�s) o bien cambiar de directorio a un directorio
virtual cuyo nombre sea de la forma:

/#smb:[usuario@]maquina[/recurso][/directorio-remoto]

Los elementos usuario, recurso y directorio-remoto son
opcionales. El usuario, dominio y contrase�a se pueden
especificar en un cuadro de di�logo.

Ejemplos:

    /#smb:maquina/Compartido
    /#smb:otramaquina
    /#smb:invitado@maquina/publico/leyes
[Undelete File System]
Sistema de archivos de Recuperaci�n

En sistemas Linux, si el programa de configuraci�n nos
pregunt� si quer�amos usar las facilidades de recuperaci�n
de archivos de ext2fs, tendremos el sistema de archivos
recuperables accesible. La recuperaci�n de archivos
borrados est� disponible s�lo en los sistemas de archivos
ext2. El sistema de archivos recuperable es s�lo un
interface de la librer�a ext2fs con: restaurar todos los
archivos borrados en un ext2fs y proporciona la extracci�n
selectiva de archivos en una partici�n regular.

Para usar este sistema de archivos, tendremos que hacer un
chdir a un nombre de archivo especial formado por el
prefijo "/#undel" y el nombre de archivo donde se
encuentra el sistema de archivos actual.

Por ejemplo, para recuperar archivos borrados en la
segunda partici�n del primer disco scsi en Linux,
usar�amos el siguiente nombre de ruta:

    /#undel:sda2

Esto le llevar�a un tiempo a undelfs para cargar la
informaci�n antes de empezar a navegar por los archivos
all� contenidos.[EXTernal File System]
Sistema de archivos EXTerno (extfs)

extfs permite incorporar a GNU Midnight Commander
numerosas utilidades y tipos de archivos de manera
sencilla, simplemente escribiendo guiones (scripts).

Los sistemas de archivos Extfs son de dos tipos:

1. Sistemas de archivos aut�nomos, que no est�n asociados
a ning�n archivo existente. Representan alg�n tipo de
informaci�n relacionada con el sistema en forma de �rbol
de directorios. Se accede a ellos ejecutando 'cd
#nombrefs' donde nombrefs es el nombre corto que
identifica el extfs (ver m�s adelante). Ejemplos de �stos
son audio (lista de pistas de sonido en el CD) o apt
(lista de paquetes de tipo Debian en el sistema).

Por ejemplo, para listar las pistas de m�sica del CD,
escribir

  cd #audio

2. Sistemas de archivos en un archivo (como rpm, patchfs y
m�s), que muestran los contenidos de un archivo en forma
de �rbol de directorios. Puede tratarse de archivos reales
empaquetados o comprimidos en un archivo (urar, rpm) o
archivos virtuales, como puede ser el caso de mensajes en
un archivo de correo electr�nico (mailfs) o partes de un
archivo de modificaciones o parches (patchfs). Para
acceder a ellos se a�ade '#nombrefs' al nombre del archivo
a abrir. Este archivo podr�a �l mismo estar en otro
sistema de archivos virtual.

Por ejemplo, para listar los contenidos de un archivo
documentos.zip comprimido hay que escribir

  cd documentos.zip#uzip

En muchos aspectos, se puede tratar un sistema de archivos
externo como cualquier otro directorio. Podr�amos a�adirlo
a la lista de favoritos o cambiar a �l desde la historia
de directorios. Una limitaci�n importante es que, estando
dentro de �l, no se puede ejecutar �rdenes del sistema,
como por otra parte ocurre en cualquier sistema de
archivos VFS no local.

Midnigth Commander incluye inicialmente guiones para
algunos sistemas de archivos externos:

a       acceder a un disquete DOS/Windows 'A:' (cd #a).

apt     monitor del sistema de gesti�n de paquetes APT de
        Debian (cd #apt).

audio   acceso y audici�n de CDs (cd #audio o cd
        dispositivo#audio).

bpp     paquete de la distribuci�n GNU/Linux Bad Penguin
        (cd archivo.bpp#bpp).

deb     paquete de la distribuci�n GNU/Linux Debian (cd
        archivo.deb#deb).

dpkg    paquetes instalados en Debian GNU/Linux (cd
        #deb).

hp48    ver o copiar archivos a/desde una calculadora
        HP48 (cd #hp48).

lslR    navegaci�n en listados lslR empleados en
        bastantes sitios FTP (cd filename#lslR).

mailfs  soporte para archivos de correo electr�nico tipo
        mbox (cd archivo_mbox#mailfs).

patchfs manipulaci�n de archivos de cambios/parches tipo
        diff (cd archivo#patchfs).

rpm     paquete RPM (cd archivo#rpm).

rpms    base de datos de paquetes RPM instalados (cd
        #rpms).

ulha, urar, uzip, uzoo, uar, uha
        herramientas de compresi�n (cd archivo#xxxx
        siendo xxxx uno de estos: ulha, urar, uzip, uzoo,
        uar, uha).

Se pueden asociar extensiones o tipos de archivo a un
determinado sistema de archivos externo tal como se
describe en la secci�n sobre c�mo Editar el Archivo de
ExtensionesExtension File Edit de Midnight Commander. He aqu�, a modo de
ejemplo, una entrada para paquetes Debian:

  regex/.deb$
          Open=%cd %p#deb
[Colors]
Colores

Midnight Commander intentar� determinar si nuestro
terminal soporta el uso de color utilizando la base de
datos de terminales y nuestro nombre de terminal. Algunas
veces estar� confundido, por lo que deberemos forzar el
modo en color o deshabilitar el modo de color usando el
argumento -c y -b respectivamente.

Si el programa est� compilado con el gestor pantallas
Slang en lugar de ncurses, tambi�n chequear� la variable
COLORTERM, si existe, lo que tiene el mismo efecto que la
opci�n -c.

Podemos especificar a los terminales que siempre fuercen
el modo en color a�adiendo la variable color_terminals a
la secci�n Colors del archivo de inicializaci�n. Esto
evitar� que Midnight Commander intente la detecci�n de
soporte de color. Ejemplo:

[Colors]
color_terminals=linux,xterm
color_terminals=nombre-terminal1,nombre-terminal2...

El programa puede compilarse con ncurses y slang, ncurses
no ofrece la posibilidad de forzar el modo en color:
ncurses utiliza la informaci�n de la base de datos de
terminales.

Midnight Commander ofrece una forma de cambiar los colores
por defecto. Actualmente los colores se configuran a
trav�s de la variable de entorno MC_COLOR_TABLE o en la
secci�n Colors del archivo de inicializaci�n.

En la secci�n Colors, el mapa de colores por defecto se
carga desde la variable base_color. Podemos especificar un
mapa de colores alternativo para un terminal utilizando el
nombre del terminal como clave en esta secci�n. Ejemplo:

[Colors]
base_color=
xterm=menu=magenta:marked=,magenta:markselect=,red

El formato de la definici�n de color es:

  <PalabraClave>=<ColorTexto>,<ColorFondo>:<PalabraClave>= ...

los colores son opcionales, y las palabras claves son:
normal, selected, marked, markselect, errors, input,
reverse menu, menusel, menuhot, menuhotsel, gauge; los
colores por defecto son: dnormal, dfocus, dhotnormal,
dhotfocus; Los colores de Ayuda son: helpnormal,
helpitalic, helpbold, helplink, helpslink; Color del
visor: viewunderline; Modo especial resaltado: executable,
directory, link, stalelink, device, special, core. Colores
del editor: editnormal, editbold, editmarked.

Los cuadros de di�logo usan los siguientes colores:
dnormal usado para el texto normal, dfocus usado para el
componente actualmente seleccionado, dhotnormal usado para
diferenciar el color de la tecla activa en los componentes
normales, mientras que el color dhotfocus se utiliza para
el color resaltado en el componente seleccionado.

Los men�s utilizan el mismo esquema equivalente con los
nombres menu, menusel, menuhot and menuhotsel en lugar de
los anteriores.

La ayuda utiliza los siguientes colores: helpnormal texto
normal, helpitalic utilizado para el texto enfatizado con
letra it�lica en la p�gina del manual, helpbold usado para
el texto enfatizado en negrita en la p�gina del manual,
helplink usado para los hiperenlaces no seleccionados y
helpslink es utilizado para el hiperenlace seleccionado.

gauge (indicador) determina el color de la parte
completada de la barra de progresi�n (gauge), que muestra
qu� porcentaje de archivos fueron copiados etc. de modo
gr�fico.

Para el modo de resaltado del tipo de archivos, directory
especifica el color con que se muestran los directorios;
executable para los archivos ejecutables; link usado para
representar enlaces; device para dispositivos de
caracteres y de bloque; special para archivos especiales,
tales como colas (FIFO) e IPC sockets; core es para los
archivos volcados (v�ase tambi�n la opci�n highlight_mode
en la secci�n sobre Ajustes EspecialesSpecial Settings ).

Los colores posibles son: negro (black), gris (gray), rojo
(red), rojo brillante (brightred), verde (green), verde
claro (brightgreen), marr�n (brown), amarillo (yellow),
azul oscuro (blue), azul brillante (brightblue), rosa
(magenta), rosa claro (brightmagenta), azul celeste
(cyan), celeste claro (brightcyan), gris claro (lightgray)
y blanco (white). Hay una palabra clave especial para
obtener un fondo transparente. Se trata de 'default'.
'default' solo se puede utilizar para en el color de
fondo. Ejemplo:

[Colors]
base_color=normal=white,default:marked=magenta,default
[Special Settings]
Ajustes Especiales

La mayor�a de las opciones de Midnight Commander pueden
cambiarse desde los men�s. Sin embargo, hay un peque�o
n�mero de ajustes para los que es necesario editar el
archivo de configuraci�n.

Estas variables se pueden cambiar en nuestro archivo
~/.mc/ini:

clear_before_exec

        Por defecto Midnight Commander limpia la pantalla
        antes de ejecutar un comando. Si preferimos ver
        la salida del comando en la parte inferior de la
        pantalla, editaremos nuestro archivo ~/mc.ini y
        cambiaremos el valor del campo clear_before_exec
        a 0.

confirm_view_dir

        Al pulsar F3 en un directorio, normalmente MC
        entra en ese directorio. Si este valor est� a 1,
        entonces MC pedir� confirmaci�n antes de cambiar
        el directorio si tenemos archivos marcados.

ftpfs_retry_seconds

        Este valor es el n�mero de segundos que Midnight
        Commander esperar� antes de intentar volver a
        conectar con un servidor de ftp que ha denegado
        el acceso. Si el valor es cero, el programa no
        reintentar� el acceso.

ftpfs_use_passive_connections

        Esta opci�n est� desactivada por defecto. Hace
        que el c�digo de FTPfs utilice el modo de
        apertura pasivo para transferir archivos. Esto es
        usado por aquellos que est�n detr�s de un
        encaminador con filtrado de paquetes. Esta opci�n
        s�lo funciona si estamos utilizando un proxy para
        ftp.

max_dirt_limit

        Especifica cu�ntas actualizaciones de pantalla
        pueden saltarse al menos en el visor de archivos
        interno. Normalmente este valor no es
        significativo, porque el c�digo autom�ticamente
        ajusta el n�mero de actualizaciones a saltar de
        acuerdo al volumen de pulsaciones de teclas
        recibidas. Empero, en m�quinas muy lentas o en
        terminales con autorepetici�n de teclado r�pida,
        un valor grande puede hacer que la pantalla se
        actualice dando saltos.

        Parece ser que poniendo max_dirt_limit a 10
        produce el mejor comportamiento, y �ste es el
        valor por defecto.

mouse_move_pages

        Controla cu�ndo el desplazamiento de pantalla
        realizado con el rat�n se realiza por p�ginas o
        l�nea a l�nea en los paneles.

mouse_move_pages_viewer

        Controla cu�ndo el desplazamiento de pantalla
        realizado con el rat�n se realiza por p�ginas o
        l�nea a l�nea en el visor de archivos interno.

old_esc_mode

        Por defecto Midnight Commander trata la tecla ESC
        como prefijo de tecla (old_esc_mode=0), si
        activamos esta opci�n (old_esc_mode=1), entonces
        la tecla ESC actuar� como prefijo de tecla
        durante un segundo, y si no hay pulsaciones,
        entonces ESC ser� interpretado como la tecla de
        cancelaci�n (ESC ESC).

only_leading_plus_minus

        Produce un tratamiento especial para '+', '-',
        '*' en la l�nea de �rdenes (seleccionar,
        deseleccionar, selecci�n inversa) s�lo si la
        l�nea de �rdenes est� vac�a. No necesitamos
        entrecomillar estos caracteres en la l�nea de
        �rdenes. Pero no podremos cambiar la selecci�n
        cuando la l�nea de �rdenes no est� vac�a.

panel_scroll_pages

        Si existe (por defecto), el panel se desplazar�
        media pantalla cuando el cursor alcance el final
        o el principio del panel, en otro caso se
        desplazar� un archivo cada vez.

show_output_starts_shell

        Esta variable s�lo funciona si no se utiliza el
        soporte de subshell. Cuando utilizamos la
        combinaci�n C-o para volver a la pantalla de
        usuario, si est� activada, tendremos un nuevo
        shell. De otro modo, pulsando cualquier tecla nos
        devolver� a Midnight Commander.

torben_fj_mode

        Si este modificador existe, entonces las teclas
        Inicio y Fin funcionar�n de manera diferente en
        los paneles, en lugar de mover la selecci�n al
        primer o �ltimo archivo en los paneles, actuar�n
        como sigue:

        La tecla Inicio: Ir� a la l�nea central del
        panel, si est� bajo ella; sino va a la primera
        l�nea a menos que ya est� all�, en este caso ir�
        al primer archivo del panel.

        La tecla Fin tiene un comportamiento similar: Ir�
        a la l�nea central del panel, si est� situada en
        la mitad superior del panel; si no ir� a la l�nea
        inferior del panel a menos que ya estemos ah�, en
        cuyo caso mover� la selecci�n al �ltimo nombre de
        archivo del panel.

use_file_to_guess_type

        Si esta variable est� activada (por defecto lo
        est�) se recurrir� al comando "file" para
        reconocer los tipos de archivo referidos en el
        archivo mc.extExtension File Edit.

xterm_mode

        Si esta variable est� activada (por defecto no)
        cuando naveguemos por el sistema de archivos en
        un panel en �rbol, se ir� actualizando
        autom�ticamente el otro panel con los contenidos
        del directorio seleccionado en cada momento.[Terminal databases]
Ajustes del Terminal

Midnight Commander permite hacer ajustes a la base de
datos de terminales del sistema sin necesidad de
privilegios de superusuario. El programa busca
definiciones de teclas en el archivo de inicializaci�n del
sistema /home/john/prjroot/rootfs/usr/share/mc/mc.lib o en
el del usuario ~/.mc/ini, en la secci�n
"terminal:nuestro-terminal" y si no en "terminal:general".
Cada l�nea comienza con el identificador de la tecla,
seguido de un signo de igual y la definici�n de la tecla.
Para representar el car�cter de escape se utiliza \e y ^x
para el car�cter control-x.

Los identificadores de tecla son:

f0 a f20      teclas de funci�n f0 a f20
bs            tecla de borrado
home          tecla de inicio
end           tecla de fin
up            tecla de cursor arriba
down          tecla de cursor abajo
left          tecla de cursor izquierda
right         tecla de cursor derecha
pgdn          tecla de avance de p�gina
pgup          tecla de retroceso de p�gina
insert        tecla de insertar
delete        tecla de suprimir
complete      tecla para completar

Ejemplo: para indicar que la secuencia Escape + [ + O + p
corresponde a la tecla de insertar, hay que colocar en el
archivo ~/.mc/ini:

insert=\e[Op

El identificador complete representa la secuencia usada
para invocar el mecanismo de completar nombres. Esto se
hace habitualmente con M-tabulador, pero podemos
configurar otras teclas para esta funci�n, especialmente
en teclados que incorporan tantas teclas especiales
(bonitas pero in�tiles o infrautilizadas).

[FILES]
ARCHIVOS AUXILIARES

Los directorios indicados a continuaci�n pueden variar de
una instalaci�n a otra. Tambi�n se pueden modificar con la
variable de entorno MC_DATADIR, que de estar definida se
emplear�a en vez de
/home/john/prjroot/rootfs/usr/share/mc.

/home/john/prjroot/rootfs/usr/share/mc.hlp

        Archivo de ayuda.

/home/john/prjroot/rootfs/usr/share/mc/mc.ext

        Archivo de extensiones por defecto del sistema.

~/.mc/bindings

        Archivo de usuario de extensiones y configuraci�n
        de visor y editor. Si est� presente prevalece
        sobre el contenido de los archivos del sistema.

/home/john/prjroot/rootfs/usr/share/mc/mc.ini

        Archivo de configuraci�n del sistema para
        Midnight Commander, s�lo si el usuario no dispone
        de su propio ~/.mc/ini.

/home/john/prjroot/rootfs/usr/share/mc/mc.lib

        Opciones globales de Midnight Commander. Se
        aplican siempre a todos los usuarios, tengan
        ~/.mc/ini o no. Actualmente s�lo se emplea para
        los ajustes de terminalTerminal databases.

~/.mc/ini

        Configuraci�n personal del usuario. Si este
        archivo est� presente entonces se cargar� la
        configuraci�n desde aqu� en lugar de desde el
        archivo de configuraci�n del sistema.

/home/john/prjroot/rootfs/usr/share/mc/mc.hint

        Este archivo contiene los mensajes cortos de
        ayuda mostrados por el programa.

/home/john/prjroot/rootfs/usr/share/mc/mc.menu

        Este archivo contiene el men� de aplicaciones por
        defecto para el sistema.

~/.mc/menu

        Men� de aplicaciones personal del usuario. Si
        est� presente ser� utilizado en lugar del men�
        por defecto del sistema.

~/.mc/Tree

        La lista de directorios para el �rbol de
        directorios y la vista en �rbol.

./.mc.menu

        Men� local definido por el usuario. Si este
        archivo est� presente ser� usado en lugar del
        men� de aplicaciones personal o de sistema.[AVAILABILITY]
DISPONIBILIDAD

La �ltima versi�n de este programa puede encontrarse en
ftp://ftp.ibiblio.org/pub/Linux/utils/file/managers/mc/.[SEE ALSO]
V�ASE TAMBI�N

mcedit(1), mcserv(8), sh(1), bash(1), tcsh(1), zsh(1),
ed(1), view(1), terminfo(1), gpm(1).

La p�gina web de Midnight Commander est� en:
	http://www.ibiblio.org/mc/

La presente documentaci�n recoge informaci�n relativa a la
versi�n 4.6.1 (Enero de 2004). Esta traducci�n no est�
completamente actualizada con la versi�n original en
ingl�s. Para acceder a informaci�n sobre versiones
recientes consultar la p�gina de manual en ingl�s que
contiene informaci�n m�s completa y actualizada. Para ver
el susodicho manual original ejecutar en la l�nea de
�rdenes:
        LANG= LC_ALL= man mc
[AUTHORS]
AUTORES

Los autores y contribuciones se recogen en el archivo
AUTHORS de la distribuci�n.[BUGS]
ERRORES

V�ase el archivo "TODO" en la distribuci�n para saber qu�
falta por hacer.

Para informar de problemas con el programa, env�ar un
mensaje a la direcci�n: mc-devel@gnome.org.

Se debe proporcionar una descripci�n detallada del
problema, la versi�n del programa (se obtiene con 'mc -V')
y el sistema operativo utilizados. Si el programa
revienta, ser�a tambi�n �til disponer del estado de la
pila.[TRANSLATION]
TRADUCCI�N

Francisco Gabriel Aroca, 1998. Reformateado y actualizado
por David Mart�n, 2002-2004.

Midnight Commander traducido a castellano por David Mart�n
<dmartina@excite.com>.

[main]
 lqwqk     k           k     
 x x x .   x     .     x     
 x x x k lqu wqk k lqw tqk n 
 x x x x x x x x x x x x x x 
 v   v v mqv v v v mqu v v mj
     qqqqqqCommanderqj 

�sta es la pantalla de inicio de la ayuda de
GNU Midnight Commander.

Puede pulsar la tecla IntroHow to use help para aprender a navegar por el
sistema de ayuda, o acceder directamente a los contenidosContents.

GNU Midnight Commander es obra de sus numerosos autoresAUTHORS.

GNU Midnight Commander NO INCLUYE NING�N TIPO DE GARANT�AWarranty,
es software libre, y se alienta su redistribuci�n en los
terminos y condiciones que est�n contenidos en la Licencia
P�blica General de GNU (GPL)Licencia GNU, de la que existe una
traducci�n no oficial al espa�olLicencia GNU (Espa�ol).[Licencia GNU]

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

[Licencia GNU (Espa�ol)]

Licencia P�blica GNU

Esta  es  la conocida como GNU Public License (GPL), versi�n 2
(de junio de 1.991), que cubre la mayor parte del software  de
la Free Software Foundation, y muchos m�s programas.

---

NOTA IMPORTANTE:

Esta es una traducci�n no oficial al espa�ol de la GNU General
Public LicenseLicencia GNU.

No ha sido publicada por la Free  Software  Foundation,  y  no
establece  legalmente  las condiciones de distribuci�n para el
software que usa la GNU GPL. Estas condiciones  se  establecen
solamente por el texto original, en ingl�s, de la GNU GPL. Sin
embargo,  esperamos  que   esta   traducci�n   ayude   a   los
hispanohablantes a entender mejor la GNU GPL.


IMPORTANT NOTICE:

This  is  an  unofficial translation of the GNU General Public
License into  Spanish.  It  was  not  published  by  the  Free
Software   Foundation,   and   does   not  legally  state  the
distribution terms for software that uses  the  GNU  GPL--only
the  original  English text of the GNU GPL does that. However,
we hope that  this  translation  will  help  Spanish  speakers
understand the GNU GPL better.

---

Copyright  (C)  1989,  1991 Free Software Foundation, Inc.  51
Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

Se permite la copia y distribuci�n de copias literales de este
documento, pero no se permite su modificaci�n.

Pre�mbulo

Las  licencias  que  cubren  la mayor parte del software est�n
dise�adas para quitarle a usted la libertad de  compartirlo  y
modificarlo.  Por el contrario, la Licencia P�blica General de
GNU pretende garantizarle la libertad de compartir y modificar
software  libre,  para  asegurar que el software es libre para
todos sus usuarios. Esta Licencia P�blica General se aplica  a
la mayor parte del software de la Free Software Foundation y a
cualquier otro  programa  si  sus  autores  se  comprometen  a
utilizarla.   (Existe   otro  software  de  la  Free  Software
Foundation que est� cubierto por la Licencia  P�blica  General
de GNU para Bibliotecas). Si quiere, tambi�n puede aplicarla a
sus propios programas.

Cuando hablamos de software  libre,  estamos  refiri�ndonos  a
libertad,  no  a precio. Nuestras Licencias P�blicas Generales
est�n dise�adas para asegurarnos de que tenga la  libertad  de
distribuir copias de software libre (y cobrar por ese servicio
si quiere), de  que  reciba  el  c�digo  fuente  o  que  pueda
conseguirlo si lo quiere, de que pueda modificar el software o
usar fragmentos de �l en nuevos programas  libres,  y  de  que
sepa que puede hacer todas estas cosas.

Para  proteger  sus derechos necesitamos algunas restricciones
que prohiban a cualquiera negarle a  usted  estos  derechos  o
pedirle  que renuncie a ellos. Estas restricciones se traducen
en ciertas obligaciones que le afectan  si  distribuye  copias
del software, o si lo modifica.

Por  ejemplo,  si distribuye copias de uno de estos programas,
sea gratuitamente, o a cambio de  una  contraprestaci�n,  debe
dar  a  los  receptores  todos  los  derechos  que tiene. Debe
asegurarse de que ellos tambi�n reciben, o  pueden  conseguir,
el c�digo fuente. Y debe mostrarles estas condiciones de forma
que conozcan sus derechos.

Protegemos sus derechos con la combinaci�n de dos medidas:

1. Ponemos el software bajo copyright y

2. le ofrecemos esta licencia, que le da  permiso  legal  para
copiar, distribuir y/o modificar el software.

Tambi�n, para la protecci�n de cada autor y la nuestra propia,
queremos asegurarnos de que todo el mundo comprende que no  se
proporciona  ninguna  garant�a para este software libre. Si el
software se modifica  por  cualquiera  y  �ste  a  su  vez  lo
distribuye,  queremos  que  sus  receptores  sepan  que lo que
tienen no es el original,  de  forma  que  cualquier  problema
introducido por otros no afecte a la reputaci�n de los autores
originales.

Por  �ltimo,  cualquier  programa  libre  est�  constantemente
amenazado  por  patentes sobre el software. Queremos evitar el
peligro de que  los  redistribuidores  de  un  programa  libre
obtengan  patentes  por  su  cuenta,  convirtiendo de facto el
programa en propietario. Para evitar esto, hemos dejado  claro
que  cualquier  patente  debe  ser pedida para el uso libre de
cualquiera, o no ser pedida.

Los  t�rminos  exactos  y  las  condiciones  para  la   copia,
distribuci�n y modificaci�n se exponen a continuaci�n.

T�rminos   y   condiciones   para  la  copia,  distribuci�n  y
modificaci�n

1. Esta Licencia se aplica a cualquier programa u otro tipo de
trabajo  que  contenga  una  nota  colocada por el tenedor del
copyright diciendo que puede ser distribuido bajo los t�rminos
de  esta  Licencia P�blica General. En adelante, �Programa� se
referir�  a  cualquier  programa  o  trabajo  que  cumpla  esa
condici�n  y  �trabajo basado en el Programa� se referir� bien
al Programa o a cualquier trabajo derivado de �l seg�n la  ley
de  copyright.  Esto es, un trabajo que contenga el programa o
una porci�n de �l, bien en forma literal o con  modificaciones
y/o  traducido  en otro lenguaje.  Por lo tanto, la traducci�n
est� incluida sin limitaciones en el  t�rmino  �modificaci�n�.
Cada concesionario (licenciatario) ser� denominado �usted�.

Cualquier  otra  actividad que no sea la copia, distribuci�n o
modificaci�n no est� cubierta por esta Licencia, est� fuera de
su   �mbito.   El   acto  de  ejecutar  el  Programa  no  est�
restringido, y los resultados  del  Programa  est�n  cubiertos
�nicamente  si sus contenidos constituyen un trabajo basado en
el Programa, independientemente de haberlo producido  mediante
la  ejecuci�n  del programa. El que esto se cumpla, depende de
lo que haga el programa.

2. Usted puede copiar y distribuir copias literales del c�digo
fuente  del  Programa,  seg�n  lo  has  recibido, en cualquier
medio, supuesto que de forma adecuada y bien visible  publique
en cada copia un anuncio de copyright adecuado y un repudio de
garant�a, mantenga intactos todos los anuncios que se refieran
a  esta  Licencia y a la ausencia de garant�a, y proporcione a
cualquier  otro  receptor  del  programa  una  copia  de  esta
Licencia junto con el Programa.

Puede  cobrar  un  precio por el acto f�sico de transferir una
copia, y puede, seg�n su libre albedr�o,  ofrecer  garant�a  a
cambio de unos honorarios.

3.  Puede  modificar  su  copia  o  copias  del  Programa o de
cualquier porci�n de �l, formando de esta  manera  un  trabajo
basado  en el Programa, y copiar y distribuir esa modificaci�n
o  trabajo  bajo  los  t�rminos  del  apartado  1,  antedicho,
supuesto que adem�s cumpla las siguientes condiciones:

a.  Debe  hacer  que  los ficheros modificados lleven anuncios
prominentes indicando que  los  ha  cambiado  y  la  fecha  de
cualquier cambio.

b.  Debe hacer que cualquier trabajo que distribuya o publique
y que en todo o en parte contenga o sea derivado del  Programa
o  de  cualquier  parte de �l sea licenciada como un todo, sin
carga alguna, a todas las terceras partes y bajo los  t�rminos
de esta Licencia.

c.   Si   el   programa  modificado  lee  normalmente  �rdenes
interactivamente cuando es ejecutado, debe hacer  que,  cuando
comience su ejecuci�n para ese uso interactivo de la forma m�s
habitual, muestre o escriba un mensaje que incluya un  anuncio
de copyright y un anuncio de que no se ofrece ninguna garant�a
(o por el contrario que s�  se  ofrece  garant�a)  y  que  los
usuarios   pueden   redistribuir   el   programa   bajo  estas
condiciones, e indicando al usuario c�mo ver una copia de esta
licencia.  (Excepci�n:  si  el  propio programa es interactivo
pero normalmente no muestra ese anuncio, no se requiere que su
trabajo basado en el Programa muestre ning�n anuncio).

Estos  requisitos  se  aplican  al  trabajo modificado como un
todo. Si partes identificables de ese trabajo no son derivadas
del  Programa,  y  pueden,  razonablemente,  ser  consideradas
trabajos independientes y separados por ellos mismos, entonces
esta  Licencia  y  sus  t�rminos  no  se aplican a esas partes
cuando sean distribuidas como trabajos separados. Pero  cuando
distribuya esas mismas secciones como partes de un todo que es
un trabajo basado en el Programa,  la  distribuci�n  del  todo
debe  ser  seg�n los t�rminos de esta licencia, cuyos permisos
para otros licenciatarios se extienden al todo completo, y por
lo  tanto  a todas y cada una de sus partes, con independencia
de qui�n la escribi�.

Por lo tanto, no es la intenci�n  de  este  apartado  reclamar
derechos  o  desafiar  sus  derechos  sobre  trabajos escritos
totalmente por usted mismo. El intento es ejercer el derecho a
controlar  la  distribuci�n de trabajos derivados o colectivos
basados en el Programa.

Adem�s, el simple hecho de reunir un trabajo no basado  en  el
Programa  con  el  Programa  (o  con  un  trabajo basado en el
Programa) en un volumen de almacenamiento o  en  un  medio  de
distribuci�n no hace que dicho trabajo entre dentro del �mbito
cubierto por esta Licencia.

4. Puede copiar y distribuir el Programa (o un trabajo  basado
en  �l,  seg�n  se  especifica  en  el apartado 2, como c�digo
objeto o en formato  ejecutable  seg�n  los  t�rminos  de  los
apartados  1  y  2,  supuesto  que  adem�s  cumpla  una de las
siguientes condiciones:

a. Acompa�arlo con el c�digo fuente completo  correspondiente,
en  formato  electr�nico,  que  debe  ser distribuido seg�n se
especifica en los apartados 1 y 2 de esta Licencia en un medio
habitualmente utilizado para el intercambio de programas, o

b.  Acompa�arlo  con una oferta por escrito, v�lida durante al
menos tres a�os, de proporcionar a cualquier tercera parte una
copia  completa  en  formato  electr�nico  del  c�digo  fuente
correspondiente, a un  coste  no  mayor  que  el  de  realizar
f�sicamente  la  distribuci�n del fuente, que ser� distribuido
bajo  las  condiciones  descritas  en  los  apartados  1  y  2
anteriores,  en  un  medio  habitualmente  utilizado  para  el
intercambio de programas, o

c. Acompa�arlo con la  informaci�n  que  recibiste  ofreciendo
distribuir  el  c�digo fuente correspondiente. (Esta opci�n se
permite s�lo para distribuci�n no comercial y  s�lo  si  usted
recibi� el programa como c�digo objeto o en formato ejecutable
con tal oferta, de acuerdo con el apartado b anterior).

Por c�digo fuente de un trabajo se entiende la forma preferida
del trabajo cuando se le hacen modificaciones. Para un trabajo
ejecutable, se entiende por c�digo  fuente  completo  todo  el
c�digo  fuente  para  todos  los  m�dulos  que  contiene,  m�s
cualquier fichero asociado de definici�n  de  interfaces,  m�s
los   guiones  utilizados  para  controlar  la  compilaci�n  e
instalaci�n del ejecutable. Como excepci�n especial el  c�digo
fuente   distribuido   no   necesita   incluir  nada  que  sea
distribuido normalmente  (bien  como  fuente,  bien  en  forma
binaria) con los componentes principales (compilador, kernel y
similares) del  sistema  operativo  en  el  cual  funciona  el
ejecutable,  a  no  ser  que  el propio componente acompa�e al
ejecutable.

Si la distribuci�n del ejecutable o del c�digo objeto se  hace
mediante  la  oferta  acceso para copiarlo de un cierto lugar,
entonces se considera la  oferta  de  acceso  para  copiar  el
c�digo  fuente  del  mismo  lugar como distribuci�n del c�digo
fuente, incluso aunque terceras partes  no  est�n  forzadas  a
copiar el fuente junto con el c�digo objeto.

5.  No  puede  copiar, modificar, sublicenciar o distribuir el
Programa  excepto  como  prev�  expresamente  esta   Licencia.
Cualquier   intento   de   copiar,  modificar  sublicenciar  o
distribuir el Programa de otra forma es inv�lida, y  har�  que
cesen  autom�ticamente  los  derechos  que te proporciona esta
Licencia. En cualquier caso, las  partes  que  hayan  recibido
copias  o  derechos  de usted bajo esta Licencia no cesar�n en
sus derechos mientras esas partes contin�en cumpli�ndola.

6. No est� obligado a aceptar esta licencia, ya que no  la  ha
firmado.   Sin  embargo,  no  hay  hada m�s que le proporcione
permiso para modificar o distribuir el Programa o sus trabajos
derivados.  Estas  acciones  est�n prohibidas por la ley si no
acepta esta Licencia.  Por lo tanto, si modifica o  distribuye
el  Programa (o cualquier trabajo basado en el Programa), est�
indicando que acepta esta Licencia para poder hacerlo, y todos
sus t�rminos y condiciones para copiar, distribuir o modificar
el Programa o trabajos basados en �l.

7. Cada vez que redistribuya el Programa (o cualquier  trabajo
basado en el Programa), el receptor recibe autom�ticamente una
licencia del licenciatario original para copiar, distribuir  o
modificar  el  Programa,  de  forma  sujeta a estos t�rminos y
condiciones. No puede imponer al receptor ninguna  restricci�n
m�s  sobre  el ejercicio de los derechos aqu� garantizados. No
es usted  responsable  de  hacer  cumplir  esta  licencia  por
terceras partes.

8.  Si  como  consecuencia de una resoluci�n judicial o de una
alegaci�n de infracci�n de patente o por cualquier otra  raz�n
(no  limitada  a  asuntos  relacionados  con  patentes)  se le
imponen condiciones (ya sea por mandato judicial, por  acuerdo
o por cualquier otra causa) que contradigan las condiciones de
esta Licencia, ello no le exime de cumplir las condiciones  de
esta  Licencia.  Si  no puede realizar distribuciones de forma
que se satisfagan simult�neamente sus obligaciones  bajo  esta
licencia y cualquier otra obligaci�n pertinente entonces, como
consecuencia, no  puede  distribuir  el  Programa  de  ninguna
forma.   Por   ejemplo,   si   una   patente   no  permite  la
redistribuci�n libre de derechos de  autor  del  Programa  por
parte   de   todos  aquellos  que  reciban  copias  directa  o
indirectamente a trav�s de usted, entonces la �nica  forma  en
que  podr�a  satisfacer tanto esa condici�n como esta Licencia
ser�a evitar completamente la distribuci�n del Programa.

Si cualquier porci�n de este apartado se considera inv�lida  o
imposible  de  cumplir bajo cualquier circunstancia particular
ha de cumplirse el  resto  y  la  secci�n  por  entero  ha  de
cumplirse en cualquier otra circunstancia.

No  es  el  prop�sito  de  este apartado inducirle a infringir
ninguna reivindicaci�n de patente ni de ning�n otro derecho de
propiedad   o   impugnar  la  validez  de  ninguna  de  dichas
reivindicaciones. Este apartado tiene el  �nico  prop�sito  de
proteger la integridad del sistema de distribuci�n de software
libre, que se realiza mediante pr�cticas de licencia  p�blica.
Mucha  gente  ha  hecho  contribuciones  generosas  a  la gran
variedad de software distribuido mediante ese sistema  con  la
confianza de que el sistema se aplicar� consistentemente. Ser�
el autor/donante quien decida si  quiere  distribuir  software
mediante  cualquier  otro  sistema  y  una  licencia  no puede
imponer esa elecci�n.

Este apartado pretende dejar completamente  claro  lo  que  se
cree que es una consecuencia del resto de esta Licencia.

9.  Si la distribuci�n y/o uso de el Programa est� restringida
en ciertos pa�ses, bien por patentes  o  por  interfaces  bajo
copyright,  el  tenedor del copyright que coloca este Programa
bajo esta Licencia puede a�adir una  limitaci�n  expl�cita  de
distribuci�n  geogr�fica  excluyendo esos pa�ses, de forma que
la distribuci�n se permita s�lo  en  o  entre  los  pa�ses  no
excluidos   de   esta  manera.  En  ese  caso,  esta  Licencia
incorporar� la limitaci�n como  si  estuviese  escrita  en  el
cuerpo de esta Licencia.

10.  La  Free  Software  Foundation  puede  publicar versiones
revisadas y/o nuevas de la Licencia P�blica General de  tiempo
en tiempo. Dichas nuevas versiones ser�n similares en esp�ritu
a la presente versi�n, pero pueden ser diferentes en  detalles
para considerar nuevos problemas o situaciones.

Cada  versi�n  recibe un n�mero de versi�n que la distingue de
otras. Si el Programa especifica un n�mero de versi�n de  esta
Licencia  que  se  refiere  a  ella  y  a  �cualquier  versi�n
posterior�,  tienes  la  opci�n  de  seguir  los  t�rminos   y
condiciones,  bien  de  esa versi�n, bien de cualquier versi�n
posterior publicada por la Free  Software  Foundation.  Si  el
Programa  no especifica un n�mero de versi�n de esta Licencia,
puedes  escoger  cualquier  versi�n  publicada  por  la   Free
Software Foundation.

11.   Si  quiere  incorporar  partes  del  Programa  en  otros
programas  libres  cuyas  condiciones  de   distribuci�n   son
diferentes,  escribe  al  autor  para  pedirle  permiso. Si el
software tiene  copyright  de  la  Free  Software  Foundation,
escribe  a  la Free Software Foundation: algunas veces hacemos
excepciones en estos casos. Nuestra decisi�n estar� guiada por
el  doble  objetivo  de  de preservar la libertad de todos los
derivados de nuestro software  libre  y  promover  el  que  se
comparta y reutilice el software en general.

AUSENCIA DE GARANT�A

12. Como el programa se licencia libre de cargas, no se ofrece
ninguna garant�a sobre el  programa,  en  todas  la  extensi�n
permitida  por  la  legislaci�n  aplicable.  Excepto cuando se
indique de otra forma por escrito, los tenedores del copyright
y/u  otras  partes  proporcionan  el  programa �tal cual�, sin
garant�a de ninguna  clase,  bien  expresa  o  impl�cita,  con
inclusi�n,  pero  sin  limitaci�n  a las garant�as mercantiles
impl�citas o a la conveniencia para un  prop�sito  particular.
Cualquier  riesgo  referente  a  la calidad y prestaciones del
programa es asumido por usted. Si se probase que  el  Programa
es   defectuoso,   asume   el  coste  de  cualquier  servicio,
reparaci�n o correcci�n.

13. En ning�n caso,  salvo  que  lo  requiera  la  legislaci�n
aplicable o haya sido acordado por escrito, ning�n tenedor del
copyright ni ninguna otra parte que modifique y/o redistribuya
el Programa seg�n se permite en esta Licencia ser� responsable
ante usted  por  da�os,  incluyendo  cualquier  da�o  general,
especial,  incidental  o  resultante producido por el uso o la
imposibilidad de uso del Programa  (con  inclusi�n,  pero  sin
limitaci�n  a la p�rdida de datos o a la generaci�n incorrecta
de datos o a p�rdidas sufridas por usted o por terceras partes
o  a  un  fallo  del  Programa al funcionar en combinaci�n con
cualquier otro programa), incluso  si  dicho  tenedor  u  otra
parte ha sido advertido de la posibilidad de dichos da�os.

FIN DE T�RMINOS Y CONDICIONES

Ap�ndice:  C�mo aplicar estos t�rminos a sus nuevos programas.

Si usted desarrolla un nuevo Programa, y quiere  que  sea  del
mayor  uso  posible para el p�blico en general, la mejor forma
de  conseguirlo  es  convirti�ndolo  en  software  libre   que
cualquiera pueda redistribuir y cambiar bajo estos t�rminos.

Para  hacerlo,  a�ada  los siguientes anuncios al programa. Lo
m�s seguro es a�adirlos al principio de  cada  fichero  fuente
para  transmitir  lo  m�s efectivamente posible la ausencia de
garant�a. Adem�s cada fichero deber�a tener al menos la  l�nea
de  �copyright�  y  un  indicador a d�nde puede encontrarse el
anuncio completo.

<una l�nea para indicar el nombre del programa  y  una  r�pida
idea de qu� hace.>

Copyright (C) <a�o>  <nombre del autor>

Este  programa  es  software  libre.  Puede redistribuirlo y/o
modificarlo bajo los t�rminos de la Licencia  P�blica  General
de  GNU  seg�n  es  publicada por la Free Software Foundation,
bien de la versi�n 2  de  dicha  Licencia  o  bien  (seg�n  su
elecci�n) de cualquier versi�n posterior.

Este  programa se distribuye con la esperanza de que sea �til,
pero SIN NINGUNA GARANT�A, incluso sin la  garant�a  MERCANTIL
impl�cita  o  sin garantizar la CONVENIENCIA PARA UN PROP�SITO
PARTICULAR. V�ase la Licencia P�blica General de GNU para  m�s
detalles.

Deber�a  haber  recibido  una  copia  de  la  Licencia P�blica
General junto con este programa. Si no ha sido as�, escriba  a
la Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
Boston, MA  02110-1301  USA.  A�ada tambi�n informaci�n  sobre
c�mo contactar con usted mediante correo electr�nico y postal.

Si el programa es interactivo, haga  que  muestre  un  peque�o
anuncio como el siguiente, cuando comienza a funcionar en modo
interactivo:

Gnomovision versi�n 69, Copyright (C) a�o   nombre  del  autor
Gnomovision no ofrece ABSOLUTAMENTE NINGUNA GARANT�A. Para m�s
detalles escriba �show w�.

Los comandos hipot�ticos �show w� y �show c� deber�an  mostrar
las  partes  adecuadas  de  la  Licencia  P�blica General. Por
supuesto, los comandos que use pueden  llamarse  de  cualquier
otra  manera.  Podr�an  incluso  ser  pulsaciones  del rat�n o
elementos de un men� (lo que sea apropiado para su  programa).

Tambi�n  deber�a  conseguir  que su empleador (si trabaja como
programador) o su  Universidad  (si  es  el  caso)  firme  una
�renuncia  de  copyright� para el programa, si es necesario. A
continuaci�n se ofrece un ejemplo, altere  los  nombres  seg�n
sea conveniente:

Yoyodyne,  Inc.  mediante  este documento renuncia a cualquier
inter�s de derechos de  copyright  con  respecto  al  programa
Gnomovision (que hace pasadas a compiladores) escrito por Pepe
Programador.

<firma de Pepito Grillo>,  20  de  diciembre  de  1996  Pepito
Grillo, Presidente de Asuntillos Varios.

Esta  Licencia  P�blica  General  no  permite  que incluya sus
programas en programas propietarios. Si  su  programa  es  una
biblioteca   de  subrutinas,  puede  considerar  m�s  �til  el
permitir el  enlazado  de  aplicaciones  propietarias  con  la
biblioteca.  Si  este  es  el  caso,  use  la Licencia P�blica
General de GNU para Bibliotecas en lugar de esta Licencia.

[QueryBox]
Cuadros de di�logo

En los cuadros de di�logo puede desplazarse con el teclado
usando las flechas o las teclas de las letras resaltadas.

Tambi�n se pueden pulsar los botones con el rat�n.

[How to use help]
Uso de la ayuda

Se pueden utilizar las flechas o el rat�n para navegar
por el sistema de ayuda.

La flecha de abajo cambia al siguiente elemento o baja.
La tecla de arriba vuelve al elemento anterior o sube.
La tecla derecha sigue el enlace activo.
La tecla izquierda vuelve a la �ltima p�gina visitada.

Si el terminal no es compatible con las flechas de cursor
se puede avanzar con la barra espaciadora y retroceder con
la tecla b (back). El tabulador activa el elemento siguiente y
con INTRO se puede entrar al enlace correspondiente.
La tecla l (last) permite volver a la �ltima p�gina.

ESC pulsada dos veces permite salir de la ayuda.

El bot�n izquierdo del rat�n avanza o sigue enlaces y el
bot�n derecho retrocede o vuelve a la �ltima p�gina.

La funci�n de todas las teclas en la ayuda:

Las teclas de desplazamiento gen�ricasGeneral Movement Keys son v�lidas.

tabulador       Avanzar al elemento posterior.
Alt-tabulador   Retroceder al elemento anterior.
abajo           Avanzar elemento o bajar una l�nea.
arriba          Retroceder elemento o subir una l�nea.
derecha, INTRO  Seguir enlace.
izquierda, l    Volver a la �ltima p�gina visitada.
F1              Mostrar la ayuda del sistema de ayuda.
n               Pasar a la p�gina siguiente.
p               Pasar a la p�gina anterior.
c               Pasar a la p�gina de contenidos.
F10, ESC        Salir de la ayuda.

Local variables:
fill-column: 58
end:
