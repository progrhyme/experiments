#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010000;
use autodie;

package My::Row;
use parent qw(Teng::Row);

sub strtime { print "success!\n" }

package My::DB::Schema;
use Teng::Schema::Declare;

table {
    name 'foo';
    columns qw/t/;
    row_class 'My::Row';
};

package My::DB;
use parent qw(Teng);

package main;

my $db = My::DB->new({ connect_info => [ 'dbi:SQLite:' ] });
$db->do('create table foo (t)');
$db->insert('foo', {
    t => time()
});
for ($db->search('foo')) {
    warn $_->strtime;
}
