$a = 2;
print "value of a ",$a,"\n";
$b = 5;
print "value of b ",$b,"\n \n------\n";

print "Addition of a , b\n";
print $a + $b,"\n\n";
print "Substration of a , b\n";
print $a - $b,"\n\n";
print "Multiplication of a, b\n";
print $a * $b,"\n\n";
print "Division of a ,b\n";
print $a / $b,"\n\n";
print "Mod of a ,b\n";
print $a % $b,"\n\n";
$a = 2;
print "----------------------------\n\n";

print "int a assign to c\n";
$c = $a;
print "int c = ",$c,"\n\n";


print "int a Increment\n";
$a++;
print $a,"\n\n";

print "int b Decrement\n";
$b--;
print $b,"\n\n";

print "----------------------------\n\n";

$a = 1;
$b = 0;
print $a && $b,"\n";
print $a || $b,"\n";
print not($a ,$b),"\n";

print "FILE READING\n";

$path_to_file = "/Users/patelhiteshi/Desktop/number.txt";
open my $handle, '<', $path_to_file;
chomp(my @lines = <$handle>);
print @lines;
close $handle;

my $handle;
unless (open $handle, "<:encoding(utf8)", $path_to_file) {
   print STDERR "Could not open file '$path_to_file': $!\n";
   # we return 'undefined', we could also 'die' or 'croak'
   return undef
}
chomp(my @lines = <$handle>);
unless (close $handle) {
   # what does it mean if close yields an error and you are just reading?
   print STDERR "Don't care error while closing '$path_to_file': $!\n";
} 

