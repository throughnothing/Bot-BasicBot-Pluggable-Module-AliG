use strict;
use warnings;
package Bot::BasicBot::Pluggable::Module::AliG;
use base qw(Bot::BasicBot::Pluggable::Module);

# VERSION

use Acme::AliG;

sub help { return "Talk like Ali G."; }

sub said {
    my ($self, $msg, $pri) = @_;

    return unless $pri == 2;
    my ($command, $phrase) = split( /\s+/, $msg->{body}, 2 );
    return Acme::AliG::alig($phrase) if(lc($command) eq 'alig');
}

# ABSTRACT: IRC bot that translates phrases from English to Ali G

=head1 SYNOPSIS

    use Bot::BasicBot::Pluggable::Module;

=head1 DESCRIPTION

This is an IRC bot that translates phrases from English to Ali G.
The keyword alig triggers the translation.

=cut

1;
