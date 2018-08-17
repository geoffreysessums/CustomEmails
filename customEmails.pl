#!/usr/bin/perl -w

if ($#ARGV != 0) {
    print "Usage: customEmails.pl mm/dd/yyyy\n";
    die "You must specify a date.\n";
}

my $date = "@ARGV";
my $flag = 0;
open(INFILE, "<", "customer.txt") or die "Could not open INFILE: $!\n";

if (-e 'Emails' and -d 'Emails') {
    `rm -r Emails`;
}

`mkdir "Emails"`;

while (my $line = <INFILE>) {
    $_ = $line;
    my ($email, $fullname, $title, $paid, $owe) = /([^,]*),([^,]*),([^,]*),([^,]*),([0-9]*)/;
    my ($firstName, $middleName, $lastName) = split(" ", $fullname);
    if ($owe > $paid) {
        $flag = 1;
        open(INFILE2, "<", "template.txt") or die "Could not open INFILE: $!\n";
        my $outputLine;
        open(OUTFILE, ">", "$email");
        while (my $inputLine = <INFILE2>) {
            $outputLine = $inputLine;
            $outputLine =~ s/EMAIL/$email/g;
            $outputLine =~ s/FULLNAME/$fullname/g;
            $outputLine =~ s/TITLE/$title/g;
            if (defined $lastName) {
                $outputLine =~ s/NAME/$lastName/g;
            }
            else {
                $outputLine =~ s/NAME/$middleName/g;
            }
            $outputLine =~ s/AMOUNT/$owe/g;
            $outputLine =~ s/DATE/$date/g;
            print OUTFILE $outputLine;
            
        }
        close(INFILE2);
        close (OUTFILE);
        `mv "$email" Emails`;
    }
}
close(INFILE);
