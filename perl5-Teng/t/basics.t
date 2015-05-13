use strict;
use warnings;
use Test::More;
use Log::Minimal qw(ddf);

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

subtest 'basic test' => sub {
    my $txn = $db->txn_scope;
    my $row = $db->insert('user', +{ id => 1, name => 'nekokak' });
    diag ddf($row);
    my @users = $db->search('user' => +{});
    diag 'Search Users';
    diag ddf(@users);
    ok(1, 'true');
    $txn->rollback;
};

done_testing;

__END__

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
