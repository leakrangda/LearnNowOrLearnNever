Package Address;


sub new{
	my $package = shift;
	my $self ={@_};
	return bless $self, $pakcage;
}
sub country{
	my $self = shift;
	return @_ ? ($self->{country} = shift) : $self->{country};
}
sub as_string{
	my $self =shift;
	my $string;

	foreach(qw(name street city zone country)){
		$string.="self->{$_}\n" if defined $self->{$_};
	}
	return $string;
}
