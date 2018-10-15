#!/usr/bin/perl

use strict;

my $strServer = "luna";
###my @lstSachsen = ( "Pirna", "Chemnitz", "Dresden" );
my @lstSachsen = qw ( Pirna Chemnitz Dresden Zinnwald Radeberg Radebeul ); 
### qw = quote words, q , qq, qw

my @lstUSA = qw ( Boston Berlin );
@lstUSA = ( @lstUSA, "New York", "Los Angeles", "Palm Springs" );


print ( @lstSachsen, "\n" );
print ( "@lstSachsen\n" );

foreach my $strNest ( @lstSachsen )
{
    print ( $strNest, "\n" );
}

#print ( $strNest ); ### $strNest sadece foreach içinde tanımlı olduğu için program 
                     ### dışında kullanıldığında hata verir.

foreach  ( @lstSachsen )   ### if we don't use any variable, it will get the $_ variable. it always exists and empty
{
    print;                 ### if we don't put this print, it will print empty!
    print ( "\n" );
}

foreach $_ ( @lstSachsen )     
{
    print ( $_ , "\n" );
}

print ("-" x 40, "\n");
foreach ( reverse sort @lstSachsen )    ### reverse sort or sort , (@lstSachsen) te işe yarar
{
    print ( "$_\n" );
}

print ("-" x 40, "\n");
print ( @lstSachsen[1], "\n" );     ### @ ist für Liste ("Chemnitz")
print ( $lstSachsen[1], $lstSachsen [4], "\n" );     # $ ist für Skalar "Chemnitz" , give me first element of lstSachsen
print (@lstSachsen [0, 2, 5], "\n" );

my @lstNordsachsen = @lstSachsen [4, 5 ];       ### Teilliste
my $strHauptstadt = $lstSachsen [2 ];           ### Komma-Operator, das letzte Element gewinnt
my $iAnzahlElemente = @lstSachsen;
print ( "Hauptstadt: $strHauptstadt\n" );
print ( "Anzahl: $iAnzahlElemente\n");
print ( "Norden: @lstNordsachsen\n" );
print ( "Norden: " . @lstNordsachsen . "\n" );  ### Punkt-Operator Skalar . Skalar
print ( "Norden: " , @lstNordsachsen , "\n" );

print ( "Anzahl: ", $#lstSachsen+1, "\n" );     ### Nummer des letzten listenelements #NameDerListe
print ( "Anzahl: ", $iAnzahlElemente, "\n" );

for ( my $iIndex = 0; $iIndex < $#lstSachsen+1; $iIndex ++)
{
    print ( $lstSachsen [$iIndex] );            ### BURAYI ANLAMADIM $ yerine @ koyduğumuzda da sonuç aynı!
    print ( "\n" );
}

### push ( @lstSachsen, "Leipzig" );
my @lstTemp = qw ( a b c );
push ( @lstTemp , @lstSachsen );
unshift ( @lstSachsen, "Riesa" );

print ( "@lstSachsen\n" );
print ( "@lstTemp\n" );

#print ("-" x 40, "\n");
#shift @lstSachsen;
#unshift ( @lstSachsen, "Riesa" );
#print ( "@lstSachsen\n" );


print ("-" x 40, "\n");
@lstSachsen = ( @lstSachsen, "Bautzen" );   ### push ( @lstSachsen, "Bautzen" ); aynı
print ("@lstSachsen\n");

print ("-" x 40, "\n");
print ( "Sachsen: ", @lstSachsen, "\n");
@lstSachsen = ( @lstSachsen, "Bautzen", "Bischofswerda", "Kamenz", "Schiebock", "Ottendorf-Okrilla" );
print ( "Sachsen: ", @lstSachsen, "\n" );


print ("-" x 40, "\n");
print ( "Sachsen: ", @lstSachsen, "\n");
@lstSachsen = ( @lstSachsen, "Bautzen", "Bischofswerda", @lstSachsen, "Kamenz", "Schiebock", "Ottendorf-Okrilla" );     ### listeyi yazdığımız stringlerin arasında yazıyor ve tamamını alıyor!
print ( "Sachsen: ", @lstSachsen, "\n" );


