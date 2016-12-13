 var errfound=false ;

 /* Function  to give error message on a perticular text box */
 function error(elem, text)
 {
                if (errfound)
				 return;
                window.alert(text); 
				if(eval(elem+".type") != 'select-one' && eval(elem+".type") != 'select-multiple'){
				 eval(elem+".select()"); }
                eval(elem+".focus()"); 
                errfound = true;
 }
 
 /* THIS FUNCTION VALIDATES THAT FIELD IS NULL */
 function isNull(item){
 		if(eval(item=="")) {
					return false;
		}
		return true;
 }

 /* THIS FUNCTION VALIDATES STRINGS WITHOUT SPECIAL CHARACTERS */
 	 function ValidateLeadTrailBlanks(item){
	 	 var l = parseInt(item.length);
		
	 	if(item.charAt(0)==' '||item.charAt(l-1)==' '){
			
			return false;
		}
		 return true;
	 }
 
/* THIS FUNCTION VALIDATES STRINGS WITHOUT SPECIAL CHARACTERS */
  function ValidName(item)
{
 var str="\\:qwertyiuposadfghjklxzcvbmnQEWRTYUOIPLKJHGFDSAMNBVCXZ1234567890- ";
                var l = item.length;
/*			if( item.indexOf(' ') == 0 ) {
			       	return false;
			}*/
/*			else if(item.indexOf(' ') == l-1||eval(item.charAt(l-1))==' '){
			       	return false;			
			}
*/
                  for (i=0; i < l; i++){
                     if (str.indexOf(item.charAt(i)) == -1){
                       return false;
					 }
				  }	   
                return true;
}

/* THIS FUNCTION VALIDATES STRINGS WITHOUT SPECIAL CHARACTERS including front-slash */
  function ValidNameSpecial(item)
{
 var str="\\:qwertyiuposadfghjklxzcvbmnQEWRTYUOIPLKJHGFDSAMNBVCXZ1234567890-/ ";
                var l = item.length;
/*			if( item.indexOf(' ') == 0 ) {
			       	return false;
			}*/
/*			else if(item.indexOf(' ') == l-1||eval(item.charAt(l-1))==' '){
			       	return false;			
			}
*/
                  for (i=0; i < l; i++){
                     if (str.indexOf(item.charAt(i)) == -1){
                       return false;
					 }
				  }	   
                return true;
}


/* THIS FUNCTION VALIDATES STRINGS WITHOUT SPECIAL CHARACTERS */
  function ValidSpecial(item)
{
 var str="\\:qwertyiuposadfghjklxzcvbmnQEWRTYUOIPLKJHGFDSAMNBVCXZ1234567890-, ";
                var l = item.length;
/*			if( item.indexOf(' ') == 0 ) {
			       	return false;
			}*/
/*			else if(item.indexOf(' ') == l-1||eval(item.charAt(l-1))==' '){
			       	return false;			
			}
*/
                  for (i=0; i < l; i++){
                     if (str.indexOf(item.charAt(i)) == -1){
                       return false;
					 }
				  }	   
                return true;
}


/* THIS FUNCTION VALIDATES STRINGS WITHOUT SPACES */
 function ValidId(item)
{
 var str="\\:qwertyiuposadfghjklxzcvbmnQEWRTYUOIPLKJHGFDSAMNBVCXZ1234567890-";
                var l = item.length;
/*			if( item.indexOf(' ') == 0 ) {
			       	return false;
			}*/
/*			else if(item.indexOf(' ') == l-1||eval(item.charAt(l-1))==' '){
			       	return false;			
			}
*/
                  for (i=0; i < l; i++){
                     if (str.indexOf(item.charAt(i)) == -1){
					// alert("chintu")
                       return false;
					 }
				  }	   
                return true;
}


/* THIS FUNCTION VALIDATES POSITIVE NON ZERO INTEGERS */
 function ValidPositiveNonZeroInt(item)
{
                if (item == 0)
                 return false;
                var str="1234567890";
                var l = item.length;
                for (i=0; i < l; i++){
				if (str.indexOf(item.charAt(i)) == -1)
                    return false;
				
				}
               return true;
}

/* THIS FUNCTION VALIDATES POSITIVE INTEGERS INCLUDING ZERO  */
function ValidPositiveWithZeroInt(item)
{
	if (item == 0)
		return true;
	var str="1234567890";
    var l = item.length;
    for (i=0; i < l; i++){
		if (str.indexOf(item.charAt(i)) == -1){
			return false;
		}
	}
    return true;
}

/* THIS FUNCTION VALIDATES NEGATIVE INCLUDING ZERO INTEGERS */
function ValidNegativeWithZeroInt(item)
{				
	if (item == 0)
		return true;
		/*if (item > 0)
        return false; */
    var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		if(!result)
			return false;
		}
		if(item<0){
			return true;
		} else{
			for (i=0; i < l; i++)
                 if (str.indexOf(item.charAt(i)) == -1)
                    return false;
		}
	return true;
}

/* THIS FUNCTION VALIDATES NEGATIVE NON ZERO INTEGERS */
function ValidNegativeNonZeroInt(item)
{				
	if (item == 0)
		return false;
	if (item > 0)
		return false; 
    var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		if(!result)
			return false;
		}
		if(item<0){
			return true;
		} else{
			for (i=0; i < l; i++)
				if (str.indexOf(item.charAt(i)) == -1)
                    return false;
		}
	return true;
}

/* THIS FUNCTION VALIDATES ALL NUMBERS */
function ValidAllNum(item)
{				
	var l = item.length;
	if(eval(item=="") || (item.indexOf(' ') == 0) || (item.indexOf(' ') == l-1)) {
		return false;
	}
    if (item == 0){
		return true;
	}
    var str="1234567890";
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		var temp=eval(item.charAt(l-1)==".");
		if(result && temp){
			return true;
		}
		if(!(result))
			return true;
		}
		if(item<0){
			return true;
		} else {
			for (i=0; i < l; i++)
				if (str.indexOf(item.charAt(i)) == -1)
                    return false;
			}
        return true;
}

//FUNCTION TO VALIDATE DECIMAL-WITH-ZERO-POSITIVE NUMBER
function ValidDesimalWithZeroPosNum(item)
{
	if ( item == 0 )
		return true;
	var str="1234567890.";
	var l = item.length;
	if(	!( isNaN(item) ) )
	{
		var item1 = parseInt(item);
		var result = eval( item == item1 );
		var temp = eval( item.charAt(l-1) == "." );
		if( result && temp && item>0 )
		{
			return true;
		}
		if( !(result)&& item>0 )
		{
			return true;
		}
	}
	if( item<0 )
	{
		return false;
	} 
	else
	{
		for ( i = 0; i < l; i++ )
		{
			if ( str.indexOf(item.charAt(i)) == -1 )
			{
				return false;
			}
		}
	}
	return true;
}

//FUNCTION TO VALIDATE DECIMAL-WITH-ZERO-POSITIVE NUMBER and not to allow more than one decimal point. 
// ADDED by Shueb Dalvi
function ValidDesimalWithZeroPosNumNew(item)
{
	if ( item == 0 )
		return true;
	var str="1234567890.";
	var l = item.length;
	var chkdot = 0;
	if(	!( isNaN(item) ) )
	{
		var item1 = parseInt(item);
		var result = eval( item == item1 );
		var temp = eval( item.charAt(l-1) == "." );
		if( result && temp && item>0 )
		{
			return true;
		}
		if( !(result)&& item>0 )
		{
			return true;
		}
	}
	if( item<0 )
	{
		return false;
	} 
	else
	{
		for ( i = 0; i < l; i++ )
		{
			if ( str.indexOf(item.charAt(i)) == -1 )
			{
				return false;
			}
		}
	}

	for( i = 0; i < l; i++ )
	{
		if( item.charAt(i) == "." )
		{
			//alert(chkdot);
	//		alert(item.charAt(i));
			chkdot = chkdot + 1 ;
			//alert( chkdot);
		}
	}
	//alert( (chkdot) );
	if( chkdot > 1 )
		return false;
	return true;
}

// FUNCTION TO VALIDATE DECIMAL-WITH-ZERO-NEGATIVE-NUMBER
function ValidDesimalWithZeroNegativeNum(item)
{
	if (item == 0)
		return true;
	var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		var temp=eval(item.charAt(l-1)==".");
			if(result && temp && item<0){
				return true;
			}
			if(!(result)&& item<0){
				return true;
			}
	}
	if(item<0){
		return true;
	} else if(!(isNaN(item)&& item>0)){
		return false;
	} else {
		for (i=0; i < l; i++)
			if (str.indexOf(item.charAt(i)) == -1)
				return false;
		}
    return true;
 }

// FUNCTION TO VALIDATE DECIMAL-NONZERO-POSITIVE-NUMBER  
function ValidDesimalNonZeroPosNum(item)
{	
	if (item == 0)
		return false;
    var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		var temp=eval(item.charAt(l-1)==".");
			if(result && temp && item>0  ){
				return true;
			}
			if(!(result)&& item>0 ){
				return true;
			}
	}
	if(item<0){
		return false;
	} else{
		for (i=0; i < l; i++)
			if (str.indexOf(item.charAt(i)) == -1)
				return false;
			}
    return true;
}
  
// FUNCTION TO VALIDATE DECIMAL-NONZERO-NEGATIVENUM
function ValidDesimalNonZeroNegativeNum(item)
 {	
	if (item == 0)
		return false;
	var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseInt(item);
		var result=eval(item==item1);
		var temp=eval(item.charAt(l-1)==".");
		if(result && temp && item<0){
			return true;
		}
		if(!(result)&& item<0){
			return true;
		}
	}
	if(item<0){
		return true;
	} else if(!(isNaN(item)&& item>0)){
			return false;
		} else {
            for (i=0; i < l; i++)
				if (str.indexOf(item.charAt(i)) == -1)
                    return false;
				}
    return true;
 }
  //FUNCTION TO VALIDATE DECIMAL-WITH-ZERO-FLOAT NUMBER
function ValidDesimalWithZeroFloat(item)
{
	if (item == 0)
		return false;
    var str="1234567890";
    var l = item.length;
	if(!(isNaN(item))){
		var item1=parseFloat(item);
		var result=eval(item!=item1);
		var temp=eval(item.charAt(l-1)==".");
		if(result && temp && item>0  ){
			return true;
		}
		if(!(result)&& item>0 ){
			return true;
		}
	}
	if(item<0){
		return false;
	} else{
		for (i=0; i < l; i++)
			if (str.indexOf(item.charAt(i)) == -1)
				return false;
		}
    return true;
}
// FUNCTION TO VALIDATE DATE USING FORMAT DD/MM/YYYY.
function ValidDateDDMMYYYY(item){
	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
	if(item.indexOf(" ")!=-1)
		{
			return false;
		}
	if(l>10|| l<10)
		return false;
	if(!(slash1==2 && slash2==5)) 
		{
			// item.focus()
			return false;
		}
	var day = parseInt(item.substring(0,slash1), 10);
	var month = parseInt(item.substring(slash1+1,slash2), 10);
	var year1 = item.substring(slash2+1,l);       
	var year = parseInt(item.substring(slash2+1,l), 10);
    var date = new Date();
    if ((slash1 == -1)||(slash2 == -1)) return false;
	if (((isNaN(month))||(isNaN(day)))||(isNaN(year))) return false;
    if ((day < 1)||(day > 31)) { 
		//item.focus()
		return false;
    }                                             
	if ((month < 1)||(month > 12)) {
		//item.focus();
		return false;
    }
	if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day >30)){                  
		//item.focus()
		return false;
	}
    if (month == 2) {
		if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)) {
			if (day > 29){
			    //item.focus()
				return false;
			}
		}
    else{
		if (day > 28){ 
			//item.focus()
			return false;
		}
    }     
	}                      
			
  return true;			
}
 
 // FUNCTION TO VALIDATE DATE USING FORMAT MM/DD/YYYY.
function ValidDateMMDDYYYY(item)	{
	if(item.indexOf(" ")!=-1)
		{ return false;}

	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
    if(l>10|| l<10)
		return false;
	if (!(slash1==2 && slash2==5)) {
		//item.focus()
		return false;
	}
	var month1 = item.substring(0,slash1);
    var day1 = item.substring(slash1+1,slash2);
    var year1 =item.substring(slash2+1,l);
	var month = parseInt(item.substring(0,slash1), 10);
    var day = parseInt(item.substring(slash1+1,slash2), 10);
    var year = parseInt(item.substring(slash2+1,l), 10);
    var date = new Date();
	if(day1.charAt(0)==" " || day1.charAt(1)==" ")
		return false;     
	if(month1.charAt(0)==" " || month1.charAt(1)==" ")
		return false; 
	if(year1.charAt(0)==" " || year1.charAt(1)==" "||year1.charAt(2)==" "||year1.charAt(3)==" ")
		return false;
	if ((slash1 == -1)||(slash2 == -1)) return false;
		if (((isNaN(month))||(isNaN(day)))||(isNaN(year))) return false;
			if ((day < 1)||(day > 31)) {
			   //item.focus()
				return false;
			}
            if ((month < 1)||(month > 12)){
				//item.focus()
				return false;
			} 
            if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day > 30)){
				//item.focus()
				return false;
			}
			if (month == 2) {
				if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)){
					if (day > 29){
						//item.focus()
						return false;
					}
				} else {
                    if (day > 28) {
						//item.focus()
						return false;
					}
		   		 }
			 }
	return true;			
}	

  // FUNCTION TO VALIDATE DATE USING FORMAT YYYY/MM/DD
function ValidDateYYYYMMDD(item){
	if(item.indexOf(" ")!=-1)
		{ return false;}
	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
    if(l>10|| l<10)
		return false;
	if(!(slash1==4 && slash2==7)){
		//item.focus()
		return false;
	}
	var month1 = item.substring(0,slash1);
    var day1 = item.substring(slash1+1,slash2);
    var year1 =item.substring(slash2+1,l);
	var year = parseInt(item.substring(0,slash1), 10);
	var month = parseInt(item.substring(slash1+1,slash2), 10);
    var day = parseInt(item.substring(slash2+1,l), 10);
	var date = new Date();
	if(day1.charAt(0)==" " || day1.charAt(1)==" ")
		return false;     
	if(month1.charAt(0)==" " || month1.charAt(1)==" ")
		return false; 
	if(year1.charAt(0)==" " || year1.charAt(1)==" "||year1.charAt(2)==" "||year1.charAt(3)==" ")
		return false;
    if ((slash1 == -1)||(slash2 == -1)) return false;
		if (((isNaN(month))||(isNaN(day)))||(isNaN(year))) return false;
			if ((day < 1)||(day > 31)) {
				//item.focus()
				return false;
			}
            if ((month < 1)||(month > 12)){
				//item.focus()
				return false;
			} 
            if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day > 30)){ 
				//item.focus()
				return false;
			}
			if (month == 2) {
				if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)){
					if (day > 29){
						//item.focus()
						return false;
					}
				} else{
					if (day > 28){ 
						//item.focus()
						return false;
					}
		   		}
            }
				
	return true;			
}	
 
 ////FUNCTION TO VALIDATE FORM SUBMITTED OR NOT
function formValidate() { 
	errfound = false;
    if ((document.formName.formElement.value=="")||(!ValidNum(document.formName.formElement.value)))
		error(document.formName.formElement,"Enter No");
		return !errfound;
	}

//FUNCTION TO VALIDATE STRING
function isFilled(item) 
{
	if ((item.value==null)||(item.value=="")){
		return false;
	} else {
		var filled = false;
		var i = 0;
		for (i = 0; i < item.value.length; i++){
			if (item.value.charAt(i) != " ") {
				filled = true;
			}
		}
		return filled;
	}		
}

//FUNCTION TO VALIDATE E-MAIL ADDRESS
function isEmailValid(item) {
	var l = item.value.length;
	var at = item.value.indexOf("@");
	var dot = item.value.indexOf(".",at+1);
	if (((at < 1)||(dot <= at+1))||(dot == l-1)) 
		return false;
	return true;
}

//FUNCTION TO VALIDATE SINGLEQUOTE WITH TWO SINGLEQUOTES.
function isEmailValidjay(item) {
	var l = item.length;
	var at = item.indexOf("@");
	var dot = item.indexOf(".",at+1);
	if (((at < 1)||(dot <= at+1))||(dot == l-1)) 
		return false;
	return true;
}

//FUNCTION TO VALIDATE SINGLEQUOTE WITH TWO SINGLEQUOTES.
function ValidQuotedText(item){          
	var c=""
    for(i=0; i<item.length; i++) { 
		var p=item.charAt(i);     
        if(p=='\'' ){   
			p =p+ "\'"
			c+=p; 
        } else {   
			if(c!=""){ 
				c+=p; 
			} else {			  
				c=item.charAt(0);     
			}      
		}
	}
	item=c;
	//alert(item);
	return true;
}
	 
//Function to Validate Email
function ValidEmail(item) {
	var count=0;
    var j="";
    var c="";
    while(item.indexOf('@') != -1){
		if (item.indexOf ('@', 0) == -1){
			return false;
		} else {  
			j = eval(item.indexOf('@'));  
			c = item.substring(eval(j+1),eval(item.length));
			item = c;
		    count++;
       }
   }
	if(count>1){
		return false;
	} else{
		return true;
	}
}


//Function To validate IP
function ValidIp(item){
	var countDots=0;
    if (item == 0)
		return false;
	var str="1234567890.";
    var l = item.length;
	for (i=0; i < l; i++){
		if (str.indexOf(item.charAt(i)) == -1)
			return false;
		else if(item.charAt(i)=='.' )
			countDots = countDots+1;
		}
		if (item.indexOf('.')== -1)
			return false;
		if(countDots !=3)
			return false;
		if (item.charAt(0)=='.'||item.charAt(l-1)=='.')
			return false;
	return true;
}


//Function To validate Space
function chkSpace(valnum)
{
	var strlen = valnum.length;
	var i;
	
	for (i=0;i<strlen;++i)
	{
	  if(valnum.charCodeAt(i)!=32 && valnum.charCodeAt(i)!=13 && valnum.charCodeAt(i)!=10)
		{			
			return true;
	    }
	} 
  return false; 
}

//Function to Validate Numeric value
function isnumeric(valnum){
	var strlen = valnum.length;
	var i;
	for ( i = 0; i < strlen ; ++i ) {
		if (!((valnum.charAt(i)>= '0') && (valnum.charAt(i)<= '9'))) {
			return false;
	    } 
	} 
	return true; 
}


//Validate the Junk characters and spaces.
function isSpace(valnum) {
	var strlen = valnum.length;
	var i;
	if ((strlen==1) && ((valnum=="@") ||(valnum=="!") ||(valnum=="#")  ||(valnum=="*") ||(valnum=="$") ||(valnum=="%") ||(valnum=="^")||(valnum=="&")||(valnum=="(")||(valnum==")") ||(valnum=="-") ||(valnum=="_") ||(valnum=="=") ||(valnum=="+")||(valnum=="|")||(valnum=="||")||(valnum=="~")||(valnum=="'")||(valnum==":")||(valnum==";")||(valnum==".")||(valnum==",")||(valnum=="/")||(valnum=="`")||(valnum=="{")||(valnum=="}")||(valnum=="[")||(valnum=="]")||(valnum=="<")||(valnum==">")||(valnum=="?"))) {
		return false;
	} 
	for (i=0;i<strlen;++i) {
	    if(valnum.charCodeAt(i)!=32 && valnum.charCodeAt(i)!=10 && valnum.charCodeAt(i)!=13) {
			return true;
		} else { 
			return false; 
		}
	} 
  //return false; 
}

//*********************************************************************************************

// FUNCTION TO VALIDATE DATE USING FORMAT MM/DD/YYYY.
function ValidDateMMDDYYYY1(item)	{
	if(item.indexOf(" ")!=-1)
		{ return false;}
	var slash1 = item.indexOf("/",0); 
	var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
 
	if ((slash1==1 && slash2==3)) {
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
    	var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var year1 =item.substring(slash2+1,l);
	}
	if ((slash1==2 && slash2==4)){
		var month1 = item.substring(0,slash1);
		month1  =month1;
		var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var  year1 =item.substring(slash2+1,l);
	}
	if ((slash1==1 && slash2==4)){
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
    	var day1 = item.substring(slash1+1,slash2);
		day1=day1;
		var year1 =item.substring(slash2+1,l);
	}
	if ((slash1==2 && slash2==5)){
		var month1 = item.substring(0,slash1);
		var day1 = item.substring(slash1+1,slash2);
		var year1 =item.substring(slash2+1,l);
	}
	item = month1+"/"+day1+"/"+year1;
	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
	//************
	if(l>10|| l<10)
		return false;
	if (!(slash1==2 && slash2==5)) {
		return false;
	}
	var month1 = item.substring(0,slash1);
    var day1 = item.substring(slash1+1,slash2);
    var year1 =item.substring(slash2+1,l);
	var month = parseInt(item.substring(0,slash1), 10);
    var day = parseInt(item.substring(slash1+1,slash2), 10);
    var year = parseInt(item.substring(slash2+1,l), 10);
    var date = new Date();
	
	if(day1.charAt(0)==" " || day1.charAt(1)==" ")
		return false;     
	if(month1.charAt(0)==" " || month1.charAt(1)==" ")
		return false; 

	if(year1.charAt(0)==" " || year1.charAt(1)==" "||year1.charAt(2)==" "||year1.charAt(3)==" ")
		return false;
	if ((slash1 == -1)||(slash2 == -1)) 
		return false;
	
	if (((isNaN(month))||(isNaN(day)))||(isNaN(year))) 
		return false;
        
	if ((day < 1)||(day > 31)) {
		return false;
	}
	
	if ((month < 1)||(month > 12)) {
		return false;
	} 

	if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day > 30)){
		return false;
	}
	
	if (month == 2) {
		if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)) {
        	if (day > 29) {
				//item.focus()
				return false;
			}
		} else {
        	if (day > 28) {
				return false;
			}
		}
	}
	return true;			
}	
//***********************************************************************************************


// FUNCTION TO VALIDATE DATE USING FORMAT DD/MM/YYYY.
function ValidDateDDMMYYYY(item){
	//function ValidDateMMDDYYYY(item){
    var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
	if(item.indexOf(" ")!=-1)
		{ return false;}

    if ((slash1==1 && slash2==3)) {
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
		var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var year1 =item.substring(slash2+1,l);
	}
	if ((slash1==2 && slash2==4)) {
		var month1 = item.substring(0,slash1);
		month1  =month1;
		var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var  year1 =item.substring(slash2+1,l);
	}
	if ((slash1==1 && slash2==4)) {
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
		var day1 = item.substring(slash1+1,slash2);
		day1=day1;
		var year1 =item.substring(slash2+1,l);
	}
	if ((slash1==2 && slash2==5)) {
		var month1 = item.substring(0,slash1);
		var day1 = item.substring(slash1+1,slash2);
		var year1 =item.substring(slash2+1,l);
	}

	item = month1+"/"+day1+"/"+year1;
	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 

	if(l>10|| l<10)
		return false;
    if(!(slash1==2 && slash2==5)) {
		return false;
	}
				 
	var day = parseInt(item.substring(0,slash1), 10);
	var month = parseInt(item.substring(slash1+1,slash2), 10);
    var year1 = item.substring(slash2+1,l);       
	var year = parseInt(item.substring(slash2+1,l), 10);
    
	var date = new Date();
    if ((slash1 == -1)||(slash2 == -1)) return false;
		if (((isNaN(month))||(isNaN(day)))||(isNaN(year))) return false;
			if ((day < 1)||(day > 31)) { 
				//item.focus()
				return false;
            }                                             
			if ((month < 1)||(month > 12)) {
				//item.focus();
				return false;
            }
		    if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day >30)){                  
				//item.focus()
				return false;
		    }
            if (month == 2) {
				if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)) {
					if (day > 29){
						//item.focus()
						return false;
					}
				} else {
                    if (day > 28){ 
						//item.focus()
						return false;
					}
				}     
			}                      

	return true;	
	return item;		
}
//**************************


//Function To Convert Date into DDMMYYYY
function convertMMDDYYYY(item){		 
	var slash1 = item.indexOf("/",0); 
    var slash2 = item.indexOf("/",slash1+1);
    var l = item.length; 
	if(item.indexOf(" ")!=-1)
		{ return false;}

	if ((slash1==1 && slash2==3)) {
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
    	var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var year1 =item.substring(slash2+1,l);
	}
	
	if ((slash1==2 && slash2==4)) {
		var month1 = item.substring(0,slash1);
		month1  =month1;
		var day1 = item.substring(slash1+1,slash2);
		day1="0"+day1;
		var  year1 =item.substring(slash2+1,l);
	}

	if ((slash1==1 && slash2==4)){
		var month1 = item.substring(0,slash1);
		month1  ="0"+month1;
    	var day1 = item.substring(slash1+1,slash2);
		day1=day1;
		var year1 =item.substring(slash2+1,l);
	}

	if ((slash1==2 && slash2==5)) {
		var day1 = item.substring(0,slash1);
		var month1 = item.substring(slash1+1,slash2);
		var year1 =item.substring(slash2+1,l);
	}

	//item = day1+"/"+month1+"/"+year1;
	//Now
	item = month1+"/"+day1+"/"+year1; 
	return item;
}


// Function to validate whether the item has been given or not (Check Null)
function isFilled(item) {
	if ((item.value==null)||(item.value=="")){
		return false;
	} else {
		var filled = false;
		var i = 0;
		for (i = 0; i < item.value.length; i++) {
			if (item.value.charAt(i) != " "){
				filled = true;
			}
		}
		return filled;
	}		
}


//Function To validate Email
function isEmailValid(item) {
	var l = item.value.length;
	var at = item.value.indexOf("@");
	var dot = item.value.indexOf(".",at+1);
	if (((at < 1)||(dot <= at+1))||(dot == l-1)) 
		return false;
	return true;
}

//Function To validate Date
function isDate(item) {
	var l = item.value.length;
	var slash1 = item.value.indexOf("/",0); 
	var slash2 = item.value.indexOf("/",slash1+1);
	var d = item.value.substring(0,slash1), day = parseInt(d, 10);
	var m = item.value.substring(slash1+1,slash2), month = parseInt(m, 10);
	var y = item.value.substring(slash2+1,l), year = parseInt(y, 10);
	var date = new Date();
	if ((y.length != 2)&&(y.length != 4)) return false;
	if ((slash1 == -1)||(slash2 == -1)) return false;
	if (((isNaN(m))||(isNaN(d)))||(isNaN(y))) return false;
	if ((day < 1)||(day > 31)) return false;
	if ((month < 1)||(month > 12)) return false;
	if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day > 30)) return false;
	date.setDate(day); date.setMonth(month); date.setYear(year);
	year = (date.getYear() >= 2000) ? date.getYear() : date.getYear()+1900;
	if ((year > 2060) || (year < 1900)) return false;
	if (month == 2) {
		 if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)) {
			 if (day > 29) return false;
		 } else {
			 if (day > 28) return false;
		 }
	}
	return true;
}


//fUNCTION TO VALIDATE DATE TIME
function isDateTime(item) {	  
	var l = item.value.length;
	var slash1 = item.value.indexOf("/",0); 
	var slash2 = item.value.indexOf("/",slash1+1);
	var space = item.value.indexOf(" ",slash2+1);
	var colon1 = item.value.indexOf(":",space+1);
	var colon2 = item.value.indexOf(":",colon1+1);
	var d = item.value.substring(0,slash1), day = parseInt(d, 10);
	var m = item.value.substring(slash1+1,slash2), month = parseInt(m, 10);
	var y = item.value.substring(slash2+1,space), year = parseInt(y, 10);
	var h = item.value.substring(space+1,colon1), hour = parseInt(h, 10);
	var min = item.value.substring(colon1+1,colon2), minute = parseInt(min, 10);
	var s = item.value.substring(colon2+1,l), second = parseInt(s, 10);
	var date = new Date();
	if ((y.length != 2)&&(y.length != 4)) return false;
	if ((slash1 == -1)||(slash2 == -1)) return false;
	if (((isNaN(m))||(isNaN(d)))||(isNaN(y))) return false;
	if (((isNaN(h))||(isNaN(min)))||(isNaN(s))) return false;
	if (((h=="")||(min==""))||(s=="")) return false;
	if ((day < 1)||(day > 31)) return false;
	if ((month < 1)||(month > 12)) return false;
	if (((((month == 4)||(month == 6))||(month == 9))||(month == 11))&&(day > 30)) return false;
	date.setDate(day); date.setMonth(month); date.setYear(year);
	year = (date.getYear() >= 2000) ? date.getYear() : date.getYear()+1900;
	if ((year > 2060) || (year < 1900)) return false;
	if (month == 2) {
		 if (((year % 4 == 0)&&(year % 100 != 0))||(year % 400 == 0)) 
			{if (day > 29) return false;}
		else
			{if (day > 28) return false;}
	}
	if ((hour > 24) || (hour < 0)) {return false;}
	if ((minute > 60) || (minute < 0)) {return false;}
	if ((second > 60) || (second < 0)) {return false;}
	return true;
}
 

//Function To Validate Time
function isTime(item) {
	if(eval(item.value=="")){
		return false;
	}
	var l = item.value.length;
	var colon1 = item.value.indexOf(":",0); 
	var h = item.value.substring(0,colon1), hour = parseInt(h, 10);
	var min = item.value.substring(colon1+1,l), minute = parseInt(min, 10);
	var date = new Date();
	if (((isNaN(h))||(isNaN(min)))) return false;
	if (((h=="")||(min==""))) return false;
	if ((hour > 12) || (hour < 0)) {return false;}
	if ((minute >= 60) || (minute < 0)) {return false;}
	return true;
}

/* Function To Find The Difference between Dates dd/mm/yyyy (Greater )*/
function isDateDiffProper(frD, toD) {
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() >= toDate.getTime()) return false;
	return true;
}


/* Function To Find The Difference between Dates dd/mm/yyyy (Greater )
function isDateDiffLess(frD, toD) {
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() > toDate.getTime()) return false;
	return true;
}
*/

/* Function To Find The Difference between Dates dd/mm/yyyy (Greater )*/
function isDateDiffLess(frD, toD) {
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	if(yearFD > yearTD){
		return false;
	}else {
		if(yearFD == yearTD){
			if(monthFD > monthTD){
				return false;
			} else {
				if(monthFD == monthTD){
					if(dayFD > dayTD){
						return false;
					}else {
						return true;
					}
				} else {
					return true;
				}
			}
		} else {
			return true;
		}
	}
}

/* Function to find whether one is greater than the other dd/mm/yyyy Equal*/
function isDateDiffProper1(frD, toD) {
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
  /*	if (fromDate.getTime() > toDate.getTime()) return false;
	return true; */
               /* here ajit */
      
               if(yearFD > yearTD){
		return false;
	}else {
		if(yearFD == yearTD){
			if(monthFD > monthTD){
				return false;
			} else {
				if(monthFD == monthTD){
					if(dayFD > dayTD){
						return false;
					}else {
						return true;
					}
				} else {
					return true;
				}
			}
		} else {
			return true;
		}
	}
  

                  
               /* end ajit  */

}


/* Function for Checking only if it is equal */
function isDateSame(frD, toD) {
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() != toDate.getTime()) return false;
	return true;
}



function selectError(item, text) {
	if (error) return;
	error = true;
	window.alert(text);
	item.focus();
}

function inputError(item, text) {
	if (error) return;
	error = true;
	window.alert(text);
	item.select();
	item.focus();
}

// Function to check that at least one check box should be checked for modification or deletion
// Name Changed by Gandhali  on 10 july 2002
	function validateCheckBox()
	{
		var i=0;
		var flag=0;
		if(document.fnm.RecordIDs)
		{
			if(document.fnm.RecordIDs.length) {
				var chkBoxOnScreen=parseInt(document.fnm.RecordIDs.length);
	    		while(i<chkBoxOnScreen){
					if(eval("document.fnm.RecordIDs["+i+"].checked")){
					   flag=1;
					}
					i++;
				}
			}
			else{
	   	 		if(eval("document.fnm.RecordIDs.checked"))
					flag=1;
	 		}
			if( eval(flag==1)){
					return true;
			}
			else{
					alert("Please select At least one record for action to be performed.");
					return false;
			}
		}		//	END IF RECORD IS PRESENT
		else
		{
			alert("No record to Delete");
		}
	}

	function validateChkBox(a)
	{
		var i=0;
		var flag=0;
		size = parseInt(document.forms[0].totalRecordOnPage.value);
		for(i=0;i<size;i++){
			if(eval("document.forms[0]."+a+i+".checked") ){
		   		flag=1;
			}
		}
		if( eval(flag==1)){
				return true;
		}
		else{
				alert("Please select At least one record");
				return false;
		}
	}
	function validateChkBoxOnlyOne(a)
	{
		var i=0;
		var flag=0;
		var countChk = 0;
		var size = parseInt(document.forms[0].totalRecordOnPage.value);
		if(size != 1){
			for(pp=0;pp<size;pp++){
/*
				if(eval("document.forms[0]."+a+"["+pp+"].checked")){
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+"["+pp+"].value");
				}*/
				if(eval("document.forms[0]."+a+pp+".checked")){
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+pp+".value");
				}
			}
		} else {
				if(eval("document.forms[0]."+a+".checked")){
					//alert("kddk");
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+".value");
				}
		}
		if(eval(flag==1)){
				if(countChk > 1){
					alert("Please select Only one record");
					return false;				
				}
				return true;
		}
		else{
				alert("Please select Only one record");
				return false;
		}
	}

function validateChkBoxOnlyOneNew(a)
	{
		var i=0;
		var flag=0;
		var countChk = 0;
		var size = parseInt(document.forms[0].totalRecordOnPage.value);
		if(size != 1){
			for(pp=0;pp<size;pp++){

				if(eval("document.forms[0]."+a+"["+pp+"].checked")){
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+"["+pp+"].value");
				}
/*				if(eval("document.forms[0]."+a+pp+".checked")){
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+pp+".value");
				}
*/
			}
		} else {
				if(eval("document.forms[0]."+a+".checked")){
					//alert("kddk");
					flag=1;
					countChk = countChk+1;
					document.forms[0].getValueOfChk.value = eval("document.forms[0]."+a+".value");
				}
		}
		if(eval(flag==1)){
				if(countChk > 1){
					alert("Please select Only one record");
					return false;				
				}
				return true;
		}
		else{
				alert("Please select Only one record");
				return false;
		}
	}


/********** Old Function*****************/
	
	function selectRecordNew(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			//EXTRA FIELD
		p_hiddenelement 	= arguments[6];			//Code
		if(field_name3==null)
			field_name3="";
		//alert(arguments[0]+"*"+arguments[1]+"*"+arguments[2]+"*"+arguments[3]+"*"+arguments[4]+"*"+arguments[5]+"*"+arguments[6])
		ddropDown = window.open ('../Includes/ShowRecordsNew.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordUniqueRecord(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		docId  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		empType 	= arguments[5];			//EXTRA FIELD
		p_hiddenelement 	= arguments[6];			//Code
		deptCode = arguments[7];
		tableName = arguments[8];
		ddropDown = window.open ('../Includes/ShowRecordsUniqueEmp.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&docId='+docId+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&empType='+empType+'&deptCode='+deptCode+'&tableName='+tableName,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordUpdatedRecord(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			//EXTRA FIELD
		p_hiddenelement = arguments[6];			//Code
		field_name4 	= arguments[7];			//EXTRA FIELD
		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsUpdatedRecord.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordNewGSL(){

		p_element			= arguments[0];
		p_title     			= arguments[1];
		table_name  		= arguments[2];
		field_name1 		= arguments[3];			// VALUE IF THE FIELD
		field_name2 		= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 		= arguments[5];			//EXTRA FIELD
		p_hiddenelement 	= arguments[6];			//Code
		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsNewGSL.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordUser(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			//EXTRA FIELD
		field_name4 	= arguments[6];			//EXTRA FIELD
		p_hiddenelement 	= arguments[7];		//Code

		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsUser.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}

	function selectRecordBoss(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			// EXTRA FIELD
		p_hiddenelement 	= arguments[6];		// Code
		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsBoss.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordBossAll(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			// EXTRA FIELD
		p_hiddenelement 	= arguments[6];		// Code
		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsBossAll.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}
	function selectRecordAlt(){

		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		field_name3 	= arguments[5];			//EXTRA FIELD
		p_hiddenelement 	= arguments[6];			//Code
		if(field_name3==null)
			field_name3="";
		ddropDown = window.open ('../Includes/ShowRecordsAlt.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3,'ddropDown','height=225 ,width=300 ,scrollbars=1,status=0 ,left=300 ,top=200 ,resize=true');
	}

	//-- Method to show JSP that allows Multiple Selection --//	
function selectMultipleRecords(){
		var converted="";
		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		p_title2 	    = arguments[9];				// Title 2
		p_title3 	    = arguments[10];				// Title 3
		p_title4 	    = arguments[11];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
		//-- Till Here to replace + with %2B    --//
	/*	if(field_name4!=""){
			ddropDown = window.open ('../Includes/SelectMultipleEmployees.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&p_title2='+p_title2+'&p_title3='+p_title3+'&p_title4='+p_title4,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		}
		else{*/
			ddropDown = window.open ('../Includes/SelectMultipleRecords.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}	
	//-- Method to show JSP that allows Multiple Selection --//	

function selectMultipleRecordsSearch(){
		var converted="";
		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectMultipleRecordsSearch.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}

function selectSingleRecordsSearch(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
		//alert(p_element+"-"+p_title+"-"+table_name+"-"+field_name1+"-"+field_name2+"\n"+p_hiddenelement+"-"+field_name3+"-"+field_name4+"-"+field_name5+"-"+field_name6+"-"+p_title2+"-"+p_title3+"-"+p_title4);	
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsSearch.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}

	function selectSingleRecordsSearchTMS(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		columnField1 = arguments[10];
		p_title2 	    = arguments[12];				// Title 2
		p_title3 	    = arguments[13];				// Title 3
		p_title4 	    = arguments[14];				// Title 4		
		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		if(columnField1==null)columnField1="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsSearchForTMS.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6+'&columnField1='+columnField1,'ddropDown','height=400 ,width=500 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}

/* Added by sagar to get top 2000 gatepassentry for material status module */
function selectSingleRecordsSearchMat(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		columnField1 = arguments[10];
		p_title2 	    = arguments[12];				// Title 2
		p_title3 	    = arguments[13];				// Title 3
		p_title4 	    = arguments[14];				// Title 4		
		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		if(columnField1==null)columnField1="";
		alert(p_element+"-"+p_title+"-"+table_name+"-"+field_name1+"-"+field_name2+"\n"+p_hiddenelement+"-"+field_name3+"-"+field_name4+"-"+field_name5+"-"+field_name6+"-"+columnField1+"-"+p_title2+"-"+p_title3+"-"+p_title4);
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsSearchForMat.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6+'&columnField1='+columnField1,'ddropDown','height=400 ,width=500 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
			alert(ddropDown);
		//}
	}

/*---------------------------------------------------------------------*/	
	function selectSingleRecordsSearchForDM(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4	
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsSearchForDM.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6+'&initiator='+p_title2,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=1 ,left=300 ,top=200');
		//}
	}

function selectSingleRecordsnewSearch(){
		var converted="";
		p_element       = arguments[0];
		p_title     	= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsnewSearch.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}

function selectSingleRecordsEmpSupSearch(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectSingleRecordsEmpSupSearch.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}

//added by dipti on 26-02-2005

function selectFestivalSearch(){
		var converted="";
		p_element       = arguments[0];
		p_title     		= arguments[1];
		table_name  	= arguments[2];
		field_name1 	= arguments[3];			// VALUE IF THE FIELD
		field_name2 	= arguments[4];			// DESCRIPTION OF THE FIELD
		p_hiddenelement = arguments[5];		// Code
		field_name3 	= arguments[6];			// EXTRA FIELD
		field_name4 	= arguments[7];			// EXTRA FIELD
		field_name5 	= arguments[8];			// EXTRA FIELD
		field_name6 	= arguments[9];			// EXTRA FIELD
		p_title2 	    = arguments[10];				// Title 2
		p_title3 	    = arguments[11];				// Title 3
		p_title4 	    = arguments[12];				// Title 4		
		if(field_name3==null)field_name3="";
		if(field_name4==null)field_name4="";
		if(field_name5==null)field_name5="";
		if(field_name6==null)field_name6="";
		if(p_title2==null)p_title2="";
		if(p_title3==null)p_title3="";
		if(p_title4==null)p_title4="";
		
	//-- Code to Replace + with %2B so that + sign can be passed in query string --//		
			
		if(field_name2.indexOf('+')!= -1)
		{
			for(var i=0;i<field_name2.length;i++)
			{
				if(field_name2.charAt(i)=='+'){
					converted+=" %2B ";
				}
				else{
					converted +=field_name2.charAt(i);
				}
			}			// End For	
		}
		else{
			converted=field_name2;
		}
		field_name2 =converted;
			ddropDown = window.open ('../Includes/SelectFestivalSearch.jsp?element='+p_element+'&hiddenelement='+p_hiddenelement+'&title='+p_title+'&tableName='+table_name+'&fieldName1='+field_name1+'&fieldName2='+field_name2+'&fieldName3='+field_name3+'&fieldName4='+field_name4+'&fieldName5='+field_name5+'&fieldName6='+field_name6,'ddropDown','height=300 ,width=310 ,scrollbars=1,resizable=1,status=0 ,left=300 ,top=200');
		//}
	}


//

	function checkQuotes(item){
		var l = item.length;
		var singleQuote = item.value.indexOf("\'");
		var doubleQuote = item.value.indexOf("\"");
		if(singleQuote >= 0 || doubleQuote >= 0)
			return false;
		return true;	
	}

/*-----Added By Vijay On 06-07-2006 for special Character-----*/

/* This Function Validates Strings Without Special Characters */
  function isSpecialCharacter(item) {
	var str="%$#@&<>`=\"";
    var l = item.length;

    for (var nameSize=0; nameSize < l; nameSize++){
		if (str.indexOf(item.charAt(nameSize)) != -1){
			return false;
		}
	}	   
    return true;
  }
	
/*-----ended By Vijay On 06-07-2006 for special Character-----*/

/* Function to find Days Between Two Dates
function CalculateDays(frD, toD) {
	var one_day=1000*60*60*24

	var tDays;
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() > toDate.getTime()) return false;
	else
	{		tDays = (Math.ceil((toDate.getTime()-fromDate.getTime())/(one_day)))

		
	}
	return tDays;
}
*/
/* Function to find Days Between Two Dates*/
function CalculateDays(frD, toD) {
	var one_day=1000*60*60*24
	

/*
	var tDays;
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date(), toDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() > toDate.getTime()) return false;
	else
	{		tDays = (Math.ceil((toDate.getTime()-fromDate.getTime())/(one_day)))
			alert(toDate.getTime());
			alert(fromDate.getTime());
			alert(one_day);
		
	}
	return tDays;*/
	var tDays;
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	var toDate = new Date();
//	if(dayTD != '31'){
//		toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
//	} else {
		toDate.setDate(dayTD); toDate.setMonth(monthTD); toDate.setYear(yearTD);
//	}
	if (fromDate.getTime() > toDate.getTime()) return false;
	//return true;
	else
	{		
		tDays = (Math.ceil((toDate.getTime()-fromDate.getTime())/(one_day)))
	}
//	if(dayTD == '31'){
		return eval(tDays-1);
//	} else {
		return tDays;		
//	}

}

function CalculateDaysDiff(frD, toD) {
	var one_day=1000*60*60*24
	var tDays;
	var lFD = frD.length, lTD = toD.length;
	var slash1FD = frD.indexOf("/",0), slash1TD = toD.indexOf("/",0); 
	var slash2FD = frD.indexOf("/",slash1FD+1), slash2TD = toD.indexOf("/",slash1TD+1);
	var dayFD = parseInt(frD.substring(0,slash1FD), 10),  dayTD = parseInt(toD.substring(0,slash1TD), 10);	  
	var monthFD = parseInt(frD.substring(slash1FD+1,slash2FD), 10), monthTD = parseInt(toD.substring(slash1TD+1,slash2TD), 10);
	var yearFD = parseInt(frD.substring(slash2FD+1,lFD), 10), yearTD = parseInt(toD.substring(slash2TD+1,lTD), 10);
	var fromDate = new Date();
	fromDate.setDate(dayFD); fromDate.setMonth(monthFD-1); fromDate.setYear(yearFD);
	var toDate = new Date();
	toDate.setDate(dayTD); toDate.setMonth(monthTD-1); toDate.setYear(yearTD);
	if (fromDate.getTime() > toDate.getTime()) return false;
	else
	{		
		tDays = (Math.ceil((toDate.getTime()-fromDate.getTime())/(one_day)))
	}
	return eval(tDays);
}


//------------Added By DILIP on 28/12/2002  ----------------//
function trim(inputString) {
   // Removes leading and trailing spaces from the passed string. Also removes
   // consecutive spaces and replaces it with one space. If something besides
   // a string is passed in (null, custom object, etc.) then return the input.
   if (typeof inputString != "string") { return inputString; }
   var retValue = inputString;
   var ch = retValue.substring(0, 1);
   while (ch == " ") { // Check for spaces at the beginning of the string
      retValue = retValue.substring(1, retValue.length);
      ch = retValue.substring(0, 1);
   }
   ch = retValue.substring(retValue.length-1, retValue.length);
   while (ch == " ") { // Check for spaces at the end of the string
      retValue = retValue.substring(0, retValue.length-1);
      ch = retValue.substring(retValue.length-1, retValue.length);
   }
   while (retValue.indexOf("  ") != -1) { // Note that there are two spaces in the string - look for multiple spaces within the string
      retValue = retValue.substring(0, retValue.indexOf("  ")) + retValue.substring(retValue.indexOf("  ")+1, retValue.length); // Again, there are two spaces in each of the strings
   }
   return retValue; // Return the trimmed string back to the user
} // Ends the "trim" function

  function ValidFileName(item)
{
 var str="qwertyiuposadfghjklxzcvbmnQEWRTYUOIPLKJHGFDSAMNBVCXZ1234567890-!@#$%^&() ";
                var l = item.length;
                  for (i=0; i < l; i++){
                     if (str.indexOf(item.charAt(i)) == -1){
                       return false;
					 }
				  }	   
                return true;
}

function Trim(item)
{
	//alert(item)
	for (i=0; i<item.length; i++)
	{
		if(item.charAt(0)==" ")
		{
			item = item.substring(1,item.length);
			i = 0;
		}
	}
	for (i=0; i<item.length; i++)
	{
		if(item.charAt(item.length-1)==" ")
		{
			item = item.substring(0,item.length-1);
			i = 0;
		}
	}
	return item;
}

function roundNumber(num, dec) {
	var result = Math.round(num*Math.pow(10,dec))/Math.pow(10,dec);
	return result;
}

