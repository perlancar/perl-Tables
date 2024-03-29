package TableData;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Specification for TableData::*, modules that contains table data

=head1 SYNOPSIS

Use one of the C<TableData::*> modules.


=head1 SPECIFICATION VERSION

0.1


=head1 DESCRIPTION

B<NOTE: EARLY SPECIFICATION; THINGS WILL STILL CHANGE A LOT>.

C<TableData::*> modules are modules that contain two-dimensional table data. The
table can be accessed via a standard interface (see
L<TableDataRole::Spec::Basic>). An example of table data would be list of
countries along with their names and country code, or a list of CPAN authors
along with their published email addresses.

Why put data in a Perl module, as a Perl distribution? To leverage the Perl/CPAN
toolchain and infrastructure: 1) ease of installation, update, and
uninstallation; 2) allowing dependency expression and version comparison; 3)
ease of packaging further as OS packages, e.g. Debian packages (converted from
Perl distribution); 4) testing by CPAN Testers.

The table data can actually be stored as CSV in the DATA section of a Perl
module, or as a CSV file in a shared directory of a Perl distribution, or a Perl
structure in the module source code, or from other sources.

The standard interface provides a convenient and consistent way to access the
data, from accessing the rows, getting the column names, and dumping to CSV or
Perl structure for other tools to operate on.

To get started, see L<TableDataRole::Spec::Basic> and one of existing
C<TableData::*> module.


=head1 NAMESPACE ORGANIZATION

C<TableData> (this module) is the specification.

C<TableDataRole::*> the roles.

All the modules under C<TableData::*> will be modules with actual table data.

C<TableDataCollection-*> name for distribution that contains several
C<TableData> modules.


=head1 FAQ


=head1 SEE ALSO

L<ArrayData>, L<HashData> are related projects.

L<WordList> is an older, related project.

Modules and CLIs that manipulate table data: L<Data::TableData::Object>, L<td>
(from L<App::td>).
