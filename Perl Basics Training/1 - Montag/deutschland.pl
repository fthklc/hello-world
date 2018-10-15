#!/usr/bin/perl

use strict;

my @lstA = qw ( Dresden Pirna Leipzig Radeberg Kamenz );
my @lstB = qw ( Postdam Werder Oranienburg Cottbus Nauen );
my @lstC = qw ( Anklam Demmin Loitz Rostock Wismar Greifswald );

=begin
my  @lstAlmanya2 = ( @lstA, @lstB, @lstC );      ### Listelerden başka bir liste yarattım!
print @lstAlmanya2;      ### print ("@lstAlmanya"); >>> birbirinden ayrı oluyor kelimeler
print "\n";
print ("-" x 40, "\n");
foreach my $bundesland ( @lstAlmanya2 )
{
    print ( $bundesland );
    print ("\n" );
}
=cut 

print "\n";
print ("-" x 40, "\n");
my  @lstAlmanya = ( \@lstA, \@lstB, \@lstC );
print @lstAlmanya;

=begin
print "\n";
print ("-" x 40, "\n");
foreach my $bundesland ( @lstAlmanya )
{
    print ( $bundesland, "\n" );

    my @lstEinBundesLand = @$bundesland;        ### deferenziere das Array
    foreach my $strOrt ( @lstEinBundesLand )
    {
        print $strOrt;
        print "\n";
    }
}
=cut

print "\n";
print ("-" x 40, "\n");
foreach my $refLstBundesland ( @lstAlmanya )
{
    my @lstEinBundesLand = @$refLstBundesland;        ### deferenziere das Array
    foreach my $strOrt ( @lstEinBundesLand )
    {
        print $strOrt;
        print "\n";
    }
}

print ("-" x 40, "\n");
### Uwesches Operator
foreach( @lstAlmanya )
{
    for ( my $iX = 0; $iX < @$_; $iX++ )
    {
        print ( "$$_[$iX]\n" );
    }
}

print ("-" x 40, "\n");
### Joes Operator 
foreach my $element ( @lstAlmanya )
{
    foreach my $ort ( @$element )
    {
        print "$ort\n";
    }
}

print ("-" x 40, "\n");
### Stefansche Schleife
foreach my $ref ( @lstAlmanya )
{
    print ( join "\n", @$ref);
    print "\n";
} 


print ("-" x 40, "\n");
### Super-Arbeitsplatzsichernde-Stefansche Schleife
foreach ( @lstAlmanya )
{
    print join ("\n", @$_), "\n";
}

