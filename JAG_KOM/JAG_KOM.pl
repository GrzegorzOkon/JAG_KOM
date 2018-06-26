@baty = ('select_43_prod.bat');

foreach $bat (@baty)
 {
  open(plik, "$bat|");

  while (<plik>) 
   {
    if(/ [A-Z] / || /ile/) 
     {
      print $_;
     }
   }
 }

close plik;
