#!/usr/bin/env perl

use strict;
use warnings;
use 5.010_001;

use Foo;
use Foo::Schema;

my $db = Foo->new(
    connect_info => [
        'dbi:mysql:database=teng_test',
        $ENV{MYSQL_USER},
        $ENV{MYSQL_PASSWORD},
        +{ RaiseError => 1, PrintError => 0, AutoCommit => 1 },
    ],
    schema => Foo::Schema->instance,
);

my @users = $db->search('user' => +{});

use Data::Dumper;
print Dumper(\@users);

__END__

=encoding utf8

=head1 NAME

B<program_name> - abstract

=head1 SYNOPSIS

    foo.pl

=head1 DESCRIPTION

This script is ...

=head1 AUTHORS

YASUTAKE Kiyoshi E<lt>yasutake.kiyoshi@gmail.comE<gt>

=head1 LICENSE

Copyright (C) 2015 YASUTAKE Kiyoshi.

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.  That means either (a) the GNU General Public
License or (b) the Artistic License.

=cut

# for Emacsen
# Local Variables:
# mode: cperl
# cperl-indent-level: 4
# cperl-close-paren-offset: -4
# cperl-indent-parens-as-block: t
# indent-tabs-mode: nil
# coding: utf-8
# End:

# vi: set ts=4 sw=4 sts=0 et ft=perl fenc=utf-8 ff=unix :
