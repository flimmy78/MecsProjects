function setAdvertise(page){
	var d1 = document.form1;
	var d2 = document.form2;
	if(page == 'ad'){
		setDis('advertisement','adcom','adport','adinterval','adr1','adr2','adr3','adr4','add','del','list');
	}
	else if(page == 'pj'){
		setDis('pjtalk','pjcom','pjport','pjtimeout','adr1','adr2','adr3','adr4','add','del','list');
	}
	if(d1.adadr.value != ''){
		var v = d1.adadr.value.split(',');
		for(i=0;i<4;i++){ d2.elements[i].value = fullToDot(v[i],1);}
	}
	listBtn(d2);
	setAdrlist(d2);
}
function clickSwitch(page){
	var msg = '';
		if(page == 'ad'){
		setDis('advertisement','adcom','adport','adinterval','adr1','adr2','adr3','adr4','add','del','list');
	}
	else if(page == 'pj'){
		
		if(document.form3.pjlinkstart.value == 'on'){
			top.TITLE.document.form1.pjlinkstart.value = 'on';
		}
		else{
			top.TITLE.document.form1.pjlinkstart.value = 'off';
		}
		if((top.TITLE.document.form1.pjlinkstart.value == 'on')&&(document.form1.elements[0].checked == true)){
			document.form1.elements[0].disabled = true;
			document.form1.elements[0].checked = false;
			msg = top.STRING.getMessage('MSG_SU50');
			alert(msg);
		}
		setDis('pjtalk','pjcom','pjport','pjtimeout','adr1','adr2','adr3','adr4','add','del','list');
	}
	if(document.form1.elements[0].checked == true){ listBtn(document.form2);}
}
function clickPJLink(){
	var d = document.form2;
	var msg = '';
		if(document.form1.pjtalkstart.value == 'on'){
		top.TITLE.document.form1.pjtalkstart.value = 'on';
	}
	else{
		top.TITLE.document.form1.pjtalkstart.value = 'off';
	}
	if((top.TITLE.document.form1.pjtalkstart.value == 'on')&&(d.elements[0].checked == true)){
		d.elements[0].disabled = true;
		d.elements[0].checked = false;
		msg = top.STRING.getMessage('MSG_SU51');
		alert(msg);
	}
	if(d.pjLink.checked == true){
		
		d.pjLinkAuth.disabled = false;
		d.pjLinkPassword.disabled = false;
		d.pjLinkPasswordConfirm.disabled = false;
	}
	else{
		
		d.pjLinkAuth.disabled = true;
		d.pjLinkPassword.disabled = true;
		d.pjLinkPasswordConfirm.disabled = true;
	}
}
function clickPJLinkAuth(){
	var d = document.form2;
	if(d.pjLinkAuth.checked == true){
		d.pjLinkPassword.disabled = false;
		d.pjLinkPasswordConfirm.disabled = false;
	}
	else{
		d.pjLinkPassword.disabled = true;
		d.pjLinkPasswordConfirm.disabled = true;
	}
}
function apply_advertise(){
	var d1 = document.form1;
	var d2 = document.form2;
	var err = 0;
	var msg = '';
	mUp();
	if(d1.elements[0].checked == true){
		for(i=0;i<d1.length;i++){
			var checkItem = d1.elements[i];
			var t = Number(checkItem.value);
						if(checkItem.name == 'adcom' || checkItem.name == 'pjcom'){
				if(checkItem.value == '' || checkErrorChar(checkItem.value, 1) == 1 || checkItem.value.length < 4){
					msg = top.STRING.getMessage('MSG_SU16');
					errItem = checkItem;
					err++;
					break;
				}
			}
			else if(checkItem.name == 'adport' || checkItem.name == 'pjport'){
				
				if(checkItem.name == 'adport'){
					top.TITLE.document.form1.pjtalkport.value = document.form3.pjtalkport.value;
					top.TITLE.document.form1.pjlinkport.value = document.form3.pjlinkport.value;
					top.TITLE.document.form1.amxport.value = document.form3.amxport.value;
					if((checkItem.value == top.TITLE.document.form1.pjtalkport.value) ||
							(checkItem.value == top.TITLE.document.form1.pjlinkport.value) ||
								(checkItem.value == top.TITLE.document.form1.amxport.value)){
						msg = top.STRING.getMessage('MSG_SU52');
						errItem = checkItem;
						err++;
						break;
					}
				}
				if(checkItem.name == 'pjport'){
					top.TITLE.document.form1.advertport.value = document.form3.advertport.value;
					top.TITLE.document.form1.pjlinkport.value = document.form3.pjlinkport.value;
					top.TITLE.document.form1.amxport.value = document.form3.amxport.value;
					if((checkItem.value == top.TITLE.document.form1.advertport.value) ||
							(checkItem.value == top.TITLE.document.form1.pjlinkport.value) ||
								(checkItem.value == top.TITLE.document.form1.amxport.value)){
						msg = top.STRING.getMessage('MSG_SU52');
						errItem = checkItem;
						err++;
						break;
					}
				}
				if(checkItem.value == '' || t < 1 || t < 1024 || t > 65535 || checkErrorChar(checkItem.value,3) == 1){
					
					msg = top.STRING.getMessage('MSG_SU49');
					errItem = checkItem;
					err++;
					break;
				}
			}
			else if(checkItem.name == 'adinterval'){
				if(checkItem.value == '' || t < 10 || t > 65535 || checkErrorChar(checkItem.value,3) == 1){
					msg = top.STRING.getMessage('MSG_SU09');
					errItem = checkItem;
					err++;
					break;
				}
			}
			else if(checkItem.name == 'pjtimeout'){
				if(checkItem.value == '' || t < 10 || t > 65535 || checkErrorChar(checkItem.value,3) == 1){
					msg = top.STRING.getMessage('MSG_SU09');
					errItem = checkItem;
					err++;
					break;
				}
			}
		}
	}
	if(err == 0){
		if(d1.elements[0].name == 'pjtalk'){
			if(document.getElementById('pjtalk').checked == true){
				top.TITLE.document.form1.pjtalkstart.value = 'on';
				top.TITLE.document.form1.pjtalkport.value = d1.pjport.value;
							}
			else{
				top.TITLE.document.form1.pjtalkstart.value = 'off';
			}
		}
		if(d1.elements[0].name == 'advertisement'){
			if(document.getElementById('advertisement').checked == true){
				top.TITLE.document.form1.advertport.value = d1.adport.value;
							}
		}
		d1.adadr.value = ip4to1(d2);
		d1.submit();
	}
	else {
		alert(msg);
		errItem.focus();
		errItem.select();
	}
}
function setSnmp(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	var d4 = document.form4;
	var d5 = document.form5;
	if(d1.com0.value == ''){
		d2.editcom.disabled = true;
		d2.removecom.disabled = true;
	}
	else {
		for(i=0;i<3;i++){
			if(d1.elements[i].value == ''){ break;}
			else {
				var v = d1.elements[i].value.split(',');
				d2.community.options[i] = new Option(v[0],i);
				if(i==2){ d2.addcom.disabled = true;}
			}
		}
		d2.community.selectedIndex = 0;
		chooseCom();
	}
	for(i=0;i<d3.length;i++){ d3.elements[i].disabled = true;}
	if(d1.sendtrap.value == '' || d1.sendtrap.value == '0'){ d4.sendtrap.checked = false;}
	else if(d1.sendtrap.value == '1'){ d4.sendtrap.checked = true;}
	d4.accept[d1.accepthost.value].checked = true;
	var hip = d1.iphost.value.split(',');
	for(i=8;i<d4.length;i++){ d4.elements[i].disabled = true;}
	for(i=0;i<4;i++){ d4.elements[i].value = fullToDot(hip[i],1);}
	setHost();
	setAdrlist(d4);
	listBtn(d3);
	listBtn(d4);
}
function chooseCom(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	if(d1.com0.value == ''){ clearForm3();}
	else {
		var com = d2.community.selectedIndex;
		var v = document.getElementById('com' + com).value.split(',');
		setDummyadr(com);
		d3.comname.value = v[0];
		d3.rights.selectedIndex = v[1];
		setAdrlist(d3);
	}
}
function setDummyadr(c){
	var d1 = document.form1;
	var d3 = document.form3;
	var v = document.getElementById('ipcom' + c).value.split(',');
	for(i=0;i<4;i++){ d3.elements[i].value = fullToDot(v[i],1);}
}
function addCom(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	d3.editstatus.value = 'add';
	clearForm3();
	for(i=0;i<d2.length;i++){ d2.elements[i].disabled = true;}
	for(i=0;i<d3.length;i++){ d3.elements[i].disabled = false;}
	d3.comname.focus();
}
function editCom(){
	var d2 = document.form2;
	var d3 = document.form3;
	d3.editstatus.value = d2.community.selectedIndex;
	for(i=0;i<d2.length;i++){ d2.elements[i].disabled = true;}
	for(i=0;i<d3.length;i++){ d3.elements[i].disabled = false;}
	listBtn(d3);
}
function removeCom(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	var com = d2.community.selectedIndex;
	d1.elements[com].value = '';
	d1.elements[com+3].value = '';
	d2.community[com] = null;
	for(i=0;i<2;i++){
		if(d1.elements[i].value == ''){
			d1.elements[i].value = d1.elements[i+1].value;
			d1.elements[i+1].value = '';
			d1.elements[i+3].value = d1.elements[i+4].value;
			d1.elements[i+4].value = '';
		}
	}
	if(d1.com0.value == ''){
		d3.comname.value = '';
		d3.rights.selectedIndex = 0;
		for(i=0;i<4;i++){ d3.elements[i].value = '';}
		setAdrlist(d3);
		d2.editcom.disabled = true;
		d2.removecom.disabled = true;
	}
	else {
		d2.community.selectedIndex = 0;
		chooseCom();
		d2.editcom.disabled = false;
		d2.removecom.disabled = false;
	}
	d2.addcom.disabled = false;
}
function setCom(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	var com;
	var err = 0;
	if(d3.comname.value == ''){
		msg = top.STRING.getMessage('MSG_SU30');
		err++;
	}
	else if(checkJapanese(d3.comname.value) == 1){
		msg = top.STRING.getMessage('MSG_SU36');
		err++;
	}
	else if(d3.comname.value.indexOf('"') != -1){
		msg = top.STRING.getMessage('MSG_SU34');
		err++;
	}
	else {
		for(i=0;i<3;i++){
			var cname = d1.elements[i].value.split(',');
			if((i != d3.editstatus.value) && d3.comname.value == cname[0]){
				msg = top.STRING.getMessage('MSG_SU38');
				err++;
				break;
			}
		}
	}
	if(err != 0){
		alert(msg);
		d3.comname.focus();
		d3.comname.select();
	}
	else {
		if(d3.editstatus.value == 'add'){
			for(i=0;i<3;i++){ if(d1.elements[i].value == ''){ break;} }
			com = i;
			d2.community.options[com] = new Option(d3.comname.value, com);
		}
		else {
			com = d3.editstatus.value;
			d2.community.options[com].text = d3.comname.value;
		}
		var ncom = new Number(com) + 3;
		d1.elements[com].value = d3.comname.value + ',' + d3.rights.selectedIndex;
		d1.elements[ncom].value = ip4to1(d3);
		d2.community.selectedIndex = com;
		chooseCom();
		for(i=0;i<d2.length;i++){ d2.elements[i].disabled = false;}
		for(i=0;i<d3.length;i++){ d3.elements[i].disabled = true;}
		if(d1.com2.value != ''){ d2.addcom.disabled = true;}
		for(i=10;i<14;i++){ d3.elements[i].value = '';}
		d3.editstatus.value = '';
	}
}
function cancelCom(){
	var d1 = document.form1;
	var d2 = document.form2;
	var d3 = document.form3;
	clearForm3();
	if(d3.editstatus.value == 'add'){ com = 0;}
	else { com = d3.editstatus.value;}
	d2.community.selectedIndex = com;
	chooseCom();
	d2.community.disabled = false;
	if(d1.com0.value == ''){ d2.addcom.disabled = false;}
	else if(d1.com2.value != ''){
		d2.editcom.disabled = false;
		d2.removecom.disabled = false;
	}
	else { for(i=0;i<d2.length;i++){ d2.elements[i].disabled = false;} }
	for(i=0;i<d3.length;i++){ d3.elements[i].disabled = true;}
	if(d1.com2.value != ''){ d2.addcom.disabled = true;}
	d3.editstatus.value = '';
}
function addTrap(posi){
	if(posi == 'adv'){
		var d = document.form2;
		var adr = 'adr';
	}
	else if(posi == 'trap'){
		var d = document.form3;
		var adr = 'adr';
	}
	else if(posi == 'host'){
		var d = document.form4;
		var adr = 'host';
	}
	if(d.trap3.value != ''){ ;}
	else {
		var t = 0;
		var err = 0;
		for(j=1;j<5;j++){
			box = document.getElementById(adr+j);
			if(checkIP(box.value) == 1){
					msg = top.STRING.getMessage('MSG_SU10');
					alert(msg);
					err++;
					box.focus();
					box.select();
					break;
			}
			else if(box.value == '' || box.value == 0){ t += 1;}
			if(t == 4){ err++; break;}
		}
		if(err == 0){
			var address = boxToDot(adr);
			for(i=0;i<5;i++){
				if(d.elements[i].value == address){ break;}
				else if(d.elements[i].value == ''){
					d.elements[i].value = address;
					for(j=1;j<5;j++){ document.getElementById(adr+j).value = '';}
					break;
				}
			}
			if(d.trap3.value != ''){ d.add.disabled = true; d.del.disabled = false;}
			else { d.add.disalbed = false; d.del.disabled = false;}
			listBtn(d);
			setAdrlist(d);
		}
	}
}
function delTrap(posi){
	if(posi == 'adv'){
		var d = document.form2;
		var adr = 'adr';
	}
	else if(posi == 'trap'){
		var d = document.form3;
		var adr = 'adr';
	}
	else if(posi == 'host'){
		var d = document.form4;
		var adr = 'host';
	}
	var item = d.list.selectedIndex;
	if(item == -1){ ;}
	else {
		d.tempadr.value = d.elements[item].value;
		d.elements[item].value = '';
		var box = d.tempadr.value.split('.');
		for(i=1;i<5;i++){ document.getElementById(adr + i).value = box[i-1];}
		for(i=0;i<3;i++){
			if(d.elements[i].value == ''){
				d.elements[i].value = d.elements[i+1].value;
				d.elements[i+1].value = '';
			}
		}
		listBtn(d);
		setAdrlist(d);
		d.list.selectedIndex = -1;
		d.tempadr.value = '';
	}
}
function listBtn(d){
	if(d.trap0.value == ''){ d.del.disabled = true;}
	else if(d.trap3.value != ''){ d.add.disabled = true;}
	else {
		d.add.disabled = false;
		d.del.disabled = false;
	}
}
function setAdrlist(d){
	for(i=d.list.length;i>-1;i--){ if(d.list.options[i]){ d.list.options[i] = null;} }
	for(i=0;i<4;i++){
		if(d.elements[i].value == ''){ break;}
		else { d.list.options[i] = new Option(d.elements[i].value, i);}
	}
}
function clearForm3(){
	var d3 = document.form3;
	d3.comname.value = '';
	d3.rights.selectedIndex = 0;
	d3.adr1.value = '';
	d3.adr2.value = '';
	d3.adr3.value = '';
	d3.adr4.value = '';
	for(j=0;j<4;j++){ d3.elements[j].value = '';}
	setAdrlist(d3);
}
function setHost(){
	var d4 = document.form4;
	if(d4.accept[0].checked == true){
		for(i=8;i<d4.length;i++){ d4.elements[i].disabled = true;}
		d4.list.selectedIndex = -1;
	}
	else if(d4.accept[1].checked == true){
		for(i=8;i<d4.length;i++){ d4.elements[i].disabled = false;}
		listBtn(d4);
	}
}
function apply_snmp(){
	var d1 = document.form1;
	var d4 = document.form4;
	var d5 = document.form5;
	var err = 0;
	var msg = '';
	var errItem;
	mUp();
	if(d4.accept[1].checked == true && d4.list.length == 0){
		msg = top.STRING.getMessage('MSG_SU43');
		errItem = d4.host1;
		err++;
	}
	if(err == 0){
		if(d4.sendtrap.checked == false){ d1.sendtrap.value = '0';}
		else if(d4.sendtrap.checked == true){ d1.sendtrap.value = '1';}
		if(d4.accept[0].checked == true){ d1.accepthost.value = '0';}
		else if(d4.accept[1].checked == true){ d1.accepthost.value = '1';}
		d1.iphost.value = ip4to1(d4);
		d1.submit();
	}
	else {
		alert(msg);
		errItem.focus();
		errItem.select();
	}

}
function apply_dddp(){
	var d1 = document.form1;
	mUp();
	d1.submit();
}
function apply_pjlink(){
	var d1 = document.form1;
	var d2 = document.form2;
	var err = 0;
	var errItem;
	var msg = '';
	mUp();
	if(d2.pjLink.checked == true && d2.pjLinkAuth.checked == true){
		if(d2.pjLinkPassword.value == ''){
			msg = top.STRING.getMessage('MSG_SU33');
			errItem = d2.pjLinkPassword;
			err++;
		}
		else if(d2.pjLinkPassword.value != d2.pjLinkPasswordConfirm.value){
			msg = top.STRING.getMessage('MSG_SU04');
			errItem = d2.pjLinkPasswordConfirm;
			err++;
		}
	}
	if(err == 0){
		if(d2.pjLink.checked == true){
			d1.start.value = '1';
			top.TITLE.document.form1.pjlinkstart.value = 'on';
		}
		else{
			d1.start.value = '0';
			top.TITLE.document.form1.pjlinkstart.value = 'off';
		}
		if(d2.pjLinkAuth.checked == true){
			d1.auth.value = '1';
			d1.password.value = d2.pjLinkPassword.value;
		}
		else
			d1.auth.value = '0';
		d1.submit();
	}
	else {
		alert(msg);
		errItem.focus();
		errItem.select();
	}
}
function setPJLink(){
	var d1 = document.form1;
	var d2 = document.form2;
	if(d1.start.value.charAt(0) == 0){ d2.pjLink.checked = false;}
	else if(d1.start.value.charAt(0) == 1){ d2.pjLink.checked = true;}
	if(d1.auth.value.charAt(0) == 0){ d2.pjLinkAuth.checked = false;}
	else if(d1.auth.value.charAt(0) == 1){ d2.pjLinkAuth.checked = true;}
	d2.pjLinkPassword.value = d1.password.value;
	d2.pjLinkPasswordConfirm.value = d1.password.value;
	if(d2.pjLink.checked == true){
		d2.pjLinkAuth.disabled = false;
		if(d2.pjLinkAuth.checked == true){
			d2.pjLinkPassword.disabled = false;
			d2.pjLinkPasswordConfirm.disabled = false;
		}
		else{
			d2.pjLinkPassword.disabled = true;
			d2.pjLinkPasswordConfirm.disabled = true;
		}
	}
	else{
		d2.pjLinkAuth.disabled = true;
		d2.pjLinkPassword.disabled = true;
		d2.pjLinkPasswordConfirm.disabled = true;
	}
}
