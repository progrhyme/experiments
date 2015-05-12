package Foo;

use strict;
use warnings;
use 5.010_001;
use parent qw/Teng/;

use version; our $VERSION = 'v0.1.0';

__PACKAGE__->load_plugin(qw/Count/);
__PACKAGE__->load_plugin(qw/Pager/);

1;

__END__

=encoding utf8

=head1 NAME

B<Foo> - abstract

=head1 SYNOPSIS

    use Foo;

=head1 DESCRIPTION

This module is ...

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
