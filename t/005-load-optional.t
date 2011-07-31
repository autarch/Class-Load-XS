
use strict;
use warnings;

use Test::More tests => 8;
use Test::Fatal;
use Class::Load qw( :all );
use lib 't/lib';

is(
  exception {
    load_optional_class('Class::Load::OK');
  },
  undef,
  'No failure loading a good class'
);

is(
  exception {
    load_optional_class('Class::Load::IDONOTEXIST');
  },
  undef,
  'No failure loading a missing class'
);

isnt(
  exception {
      load_optional_class('Class::Load::SyntaxError');
  },
  undef,
  'Loading a broken class breaks'
);

is( load_optional_class('Class::Load::OK'), 1 , 'Existing Class => 1');
is( load_optional_class('Class::Load::IDONOTEXIST'), 0, 'Missing Class => 0');

is( load_optional_class('Class::Load::VersionCheck'), 1, 'VersionCheck => 1');
is( load_optional_class('Class::Load::VersionCheck', {-version => 43}), 1,
    'VersionCheck (with too-high version) => 0');
is( load_optional_class('Class::Load::VersionCheck', {-version => 41}), 1,
    'VersionCheck (with ok version) => 1');
