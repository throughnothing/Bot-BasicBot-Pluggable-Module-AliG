use strict;
use warnings;
package Bot::BasicBot::Pluggable::Module::AliG;
use base qw(Bot::BasicBot::Pluggable::Module);
use Acme::AliG;

# ABSTRACT: turns phrases into alig-phrases

sub help { return "Talk like Ali G."; }

sub said {
    my ($self, $msg, $pri) = @_;

    return unless $pri == 2;
    my ($command, $phrase) = split( /\s+/, $msg->{body}, 2 );
    return Acme::AliG::alig($phrase) if(lc($command) eq 'alig');
}

1;
