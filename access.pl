#!/usr/bin/perl

use strict;

my  @lstUser = `cat /etc/passwd`;       ### `command` call in Perl
chomp   @lstUser;                       ### delete new line at the end of the line

## Unix: \n
## Windows: \r\n
## Mac: \n\r
## chop: nimmt immer das letzte Zeichen weg (her zaman en sondaki elementi siliyor)

print ( @lstUser );
print ( "$^0\n" );      ### shows which OS we are using! OS-Name, linux, macOS, Win32, zOS, BeOS
print ("-" x 40, "\n" );


foreach my $strUser ( @lstUser )
{
    print ( "$strUser\n" );
    my @lstDatensatz = split ( /:/, $strUser );     ### / ten ayırmak için "split ( /\//, $strUser)""  ya da "split ( "/", $strUser)""  kullanarız.
    foreach my $strName ( @lstDatensatz )
    {
        print ( $strName );
        print ( "\n" );
    }
}

print ("-" x 40, "\n" );
print ("-" x 40, "\n" );
print ("-" x 40, "\n" );


my @lstFiles = `ls -l`;
chomp @lstFiles;
shift @lstFiles;

my $iSum = 0;
foreach my $strOneFile ( @lstFiles )
{
    print ( $strOneFile );
    print ( "\n" );
    my  @lstFileInfo = split / +/, $strOneFile;     ### / +/ split every spaces 'one or more'
    print ( $lstFileInfo [4] );
    print ( "\n" );
    $iSum += $lstFileInfo [4];
}

print ( "Gesamt : $iSum\n" );

### test test test test test test for GIT
