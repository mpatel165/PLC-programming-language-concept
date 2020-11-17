#Declaring Global Variable
$a = 0;

#Function Fetching Global
sub foo {
  return $a;
}

#Function Fetching Global
sub staticScope {
  my $a = 1; 
  return foo();
}
print("Printing a function Calling Global Variable\n\n");
print staticScope(),"\n"; 
#Declaring Global Variable
$b = 0;
sub bar {
  return $b;
}

sub dynamicScope {
  #Declaring Local Variable
  local $b = 1;
  return bar();
}

print("Printing a function Calling Global Variable with Dynamic Scoping\n\n");
print dynamicScope(); 