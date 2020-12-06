grammar hello;

main returns [Integer val]: e1 = e {System.out.println($e1.val);};

e returns [Integer val, Integer sign]: d1 = d ',' e1 = e   {
	$sign = $e1.sign;
	if($e1.sign==-1){
		if($d1.val>$e1.val)
			$val = $e1.val;
		else
			$val = $d1.val;
	}
	else{
		if($d1.val<$e1.val)
			$val = $e1.val;
		else
			$val = $d1.val;
	}
}

	| d1 = d ',' s1 = s {$val = $d1.val; $sign = $s1.sign;};
	
s returns [Integer val, Integer sign]: '+' {$sign = 1;}
	| '-' {$sign = -1;};

d returns [Integer val]: '0' { $val = 0;} 
	| '1' { $val = 1;} 
	| '2' { $val = 2;}
	| '3' { $val = 3;}
	| '4' { $val = 4;}
	| '5' { $val = 5;}
	| '6' { $val = 6;}
	| '7' { $val = 7;}
	| '8' { $val = 8;}
	| '9' { $val = 9;};