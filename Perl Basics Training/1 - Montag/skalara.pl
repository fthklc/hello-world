#!/usr/bin/perl

use strict; 	#to show error messages on your code
				# Karoly Simoniy -creater of str, etc. language-
###Skalare
my $strServer = "merlin";
my $iX = 4711;
my $iY = 694;
my $iZ = 78;
my ( $iA, $iB, $iC ) = ( 8, 9, 10 );
my $dRadius = 8.98;

print ( $strServer,"\n" );
print ( "$strServer\n" );		###Hochkommas, ticks, Taste #
print ( '$strServer\n' );  #problem var
print ( "Der Server heisst $strServer.\n" );
print ( "Übeltaeter stehlen Aepfel\n" );
print ( $strServer . "\n" );
print ( $strServer , "\n" );
print ( $strServer );
print ( "\n" );

print ( '$iX + $iY = ', $iX + $iY, "\n" );
print ( '$iX . $iY = ', $iX . $iY, "\n" );
print ( '$iX x $iY = ', $iX x $iY, "\n" );
print ( '$iX * $iY = ', $iX * $iY, "\n" );

if ( $iX == $iY )
{
	print ( "beide gleich\n" );
}
else
{
	print ( "ungleich\n" );
}

if ( $strServer eq "othello" )		#normalde '==' sayılar için kullanıldığından dolayı null döner ve strServer'da null olduğu için TRUE olur! ama 'eq' olarak karşılaştırırsak string'e direk eşit mi diye bakar!
{
	print ( "merlin gefunden\n" );
}

unless ( $strServer ne "othello" )	#same as 'if not' , 
{
	print ( "gefunden");
}

print ( "gefunden\n" ) if ( $strServer eq "merlin" );
print ( "gefunden\n" ) unless ( $strServer ne "merlin" );

print ( ($iX == $iY) ? "true\n" : "false\n" );	# '?' operator: when the condition is true, it prints 'true', otherwise 'false'

### Zahlen:				== != < > <= >= <=>
### Zeichenketten:		eq ne lt gt le ge cmp

my $vergleich = ( $iX <=> $iY );	#Eğer $iX $iY'ye eşit ise 0 , küçükse -1 , büyükse 1 döner. my $iX = 693,694,695 vererek gör!
my ( $strA, $strB ) = ( "alpha" , "beta" );

print ( "Vergleiche mit cmp: ", $strA cmp $strB, "\n" );	# alfabetik sıraya göre string i karşılaştırıyor. a b'den önce geliyor o yüzden -1 dönüyor.

print ( "\n", '$vergleich: ', $vergleich, "\n" );

print ( "Perl: Write once - never understand again\n" );
print ( "Perl ist die einzige Sprache, welche vor und nach dem Verschlüsseln gleich aussieht\n" );
print ( "INTERCAL\n" );

my $refServer = \$strServer ;

print ( "Referenz auf eine Variable: $refServer\n" );
print ( "Dereferenzieren: $$refServer\n" );

my $rrServer = \$refServer;
my $rrrServer = \$rrServer;

print ("Server = $$$$rrrServer\n" );	#referans kullanmayı kontrol et

my $referenz = \\\$strServer;











