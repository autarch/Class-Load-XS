package Class::Load::XS;

use strict;
use warnings;

use XSLoader;
XSLoader::load(
    __PACKAGE__,
    exists $Class::Load::XS::{VERSION}
    ? ${ $Class::Load::XS::{VERSION} }
    : (),
);

1;

# ABSTRACT: XS implementation of parts of Class::Load

