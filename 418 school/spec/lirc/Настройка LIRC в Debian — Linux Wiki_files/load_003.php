
importScript_=importScript
importScript=function(page,proj){if(!proj)importScript_(page)
else{if(proj.indexOf('.')==-1)proj+='.wikipedia.org'
importScriptURI('http://'+proj+'/w/index.php?action=raw&ctype=text/javascript&title='+encodeURIComponent(page.replace(/ /g,'_')))}}
addLoadEvent=addOnloadHook
var NavigationBarShowDefault=2
var NavigationBarHide='[скрыть]'
var NavigationBarShow='[показать]'
var hasClass=(function(){var reCache={}
return function(element,className){return(reCache[className]?reCache[className]:(reCache[className]=new RegExp("(?:\\s|^)"+className+"(?:\\s|$)"))).test(element.className)}})()
function collapsibleTables(){var Table,HRow,HCell,btn,a,tblIdx=0,colTables=[]
var allTables=document.getElementsByTagName('table')
for(var i=0;Table=allTables[i];i++){if(!hasClass(Table,'collapsible'))continue
if(!(HRow=Table.rows[0]))continue
if(!(HCell=HRow.getElementsByTagName('th')[0]))continue
Table.id='collapsibleTable'+tblIdx
btn=document.createElement('span')
btn.style.cssText='float:right; font-weight:normal; font-size:smaller'
a=document.createElement('a')
a.id='collapseButton'+tblIdx
a.href='javascript:collapseTable('+tblIdx+');'
a.style.color=HCell.style.color
a.appendChild(document.createTextNode(NavigationBarHide))
btn.appendChild(a)
HCell.insertBefore(btn,HCell.childNodes[0])
colTables[tblIdx++]=Table}for(var i=0;i<tblIdx;i++)if((tblIdx>NavigationBarShowDefault&&hasClass(colTables[i],'autocollapse'))||hasClass(colTables[i],'collapsed'))collapseTable(i)}function collapseTable(idx){var Table=document.getElementById('collapsibleTable'+idx)
var btn=document.getElementById('collapseButton'+idx)
if(!Table||!btn)return false
var Rows=Table.rows
var isShown=(btn.firstChild.data==NavigationBarHide)
btn.firstChild.data=isShown?NavigationBarShow:NavigationBarHide
var disp=isShown?'none':Rows[0].style.display
for(var i=1;i<Rows.length;i++)Rows[i].style.display=disp}function collapsibleDivs(){var navIdx=0,colNavs=[],i,NavFrame
var divs=document.getElementById('content').getElementsByTagName('div')
for(i=0;NavFrame=divs[i];i++){if(!hasClass(NavFrame,'NavFrame'))continue
NavFrame.id='NavFrame'+navIdx
var a=document.createElement('a')
a.className='NavToggle'
a.id='NavToggle'+navIdx
a.href='javascript:collapseDiv('+navIdx+');'
a.appendChild(document.createTextNode(NavigationBarHide))
for(var j=0;j<NavFrame.childNodes.length;j++)if(hasClass(NavFrame.childNodes[j],'NavHead'))NavFrame.childNodes[j].appendChild(a)
colNavs[navIdx++]=NavFrame}for(i=0;i<navIdx;i++)if((navIdx>NavigationBarShowDefault&&!hasClass(colNavs[i],'expanded'))||hasClass(colNavs[i],'collapsed'))collapseDiv(i)}function collapseDiv(idx){var div=document.getElementById('NavFrame'+idx)
var btn=document.getElementById('NavToggle'+idx)
if(!div||!btn)return false
var isShown=(btn.firstChild.data==NavigationBarHide)
btn.firstChild.data=isShown?NavigationBarShow:NavigationBarHide
var disp=isShown?'none':'block'
for(var child=div.firstChild;child!=null;child=child.nextSibling)if(hasClass(child,'NavPic')||hasClass(child,'NavContent'))child.style.display=disp}if(wgCanonicalNamespace=='Special'){switch(wgCanonicalSpecialPageName){case'Upload':importScript_('MediaWiki:Upload.js');break
case'Search':importScript_('MediaWiki:Search.js');break}}else if(wgAction!='history'){addOnloadHook(collapsibleDivs)
addOnloadHook(collapsibleTables)
importScript('MediaWiki:Wikiminiatlas.js','meta.wikimedia.org')
if(navigator.appName=='Microsoft Internet Explorer'&&document.createStyleSheet)document.createStyleSheet().addRule('.IPA','font-family: "Doulos SIL", "Charis SIL", Gentium, "DejaVu Sans", Code2000, "TITUS Cyberbit Basic", "Arial Unicode MS", "Lucida Sans Unicode", "Chrysanthi Unicode";')
if(wgNamespaceNumber==0)importScript_('MediaWiki:Collapserefs.js')
if(wgAction=='edit'||wgAction=='submit')importScript_('MediaWiki:Editpage.js')};mw.loader.state({"site":"ready"});
/* cache key: 2_linuxoidwiki-lxw_:resourceloader:filter:minify-js:7:2c1e7c13dc49727d2d4ca5aaac946319 */