package Geo::Coder::List;

our $VERSION = 0.00;

sub new {
	my $proto = shift;
	my $class = ref($proto) || $proto;

	return unless(defined($class));

	my %args = (ref($_[0]) eq 'HASH') ? %{$_[0]} : @_;

	return bless { %args, geocoders => [] }, $class;
}

sub push {
	my($self, $geocoder) = @_;

	push @{$self->{geocoders}}, $geocoder;
}

sub geocode {
	my $self = shift;
	my %params;
	
	if(ref($_[0]) eq 'HASH') {
		%params = %{$_[0]};
	} elsif(@_ % 2 == 0) {
		%params = @_;
	} else {
		$params{'location'} = shift;
	}

	if(!defined($params{'location'})) {
		return;
	}

	foreach my $geocoder($self->{geocoders}) {
		my @rc = $geocoder->geocode(%params);
		if(scalar(@rc)) {
			return wantarray ? @rc : $rc[0];
		}
	}
}

1;
