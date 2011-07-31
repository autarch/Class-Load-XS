#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 1;

BEGIN { $ENV{CLASS_LOAD_IMPLEMENTATION} = 'XS'; }

use_ok 'Class::Load';

