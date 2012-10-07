package Class::Load::XS;

use strict;
use warnings;

use Class::Load 0.20;

use XSLoader;
XSLoader::load(
    __PACKAGE__,
    exists $Class::Load::XS::{VERSION}
    ? ${ $Class::Load::XS::{VERSION} }
    : (),
);

1;

# ABSTRACT: XS implementation of parts of Class::Load

__END__

=head1 SYNOPSIS

    use Class::Load;

=head1 DESCRIPTION

This module provides an XS implementation for portions of L<Class::Load>. See
L<Class::Load> for API details.
