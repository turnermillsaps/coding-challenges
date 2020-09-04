use warnings;

# Recursive function that ends when array variable length is 1
sub king {
    my @newMen = @_;
    my $remainingMen = scalar @newMen;

    if ($remainingMen == 1) {
        return $newMen[0];
    } else {
        my $killed = splice(@newMen, 1, 1);
        my $killer = shift(@newMen);
        push(@newMen, $killer);
        printf "$killer killed $killed!\n";
        return king(@newMen);
    }
}

# Array of men
my @men = ('John Doe', 'John Smith', 'Bob Smith', 'Some Guy', 'Greg Long', 'Turner Millsaps', 'Chad Hitchcock', 'Brandon Ainsworth', 'John Blackwell', 'Hondo', 'Thor', 'Steve Kent', 'Seth Western');

my $king = king(@men);
printf "The new king is $king!";