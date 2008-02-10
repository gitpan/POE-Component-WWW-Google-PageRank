use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::WWW::Google::PageRank',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/WWW/Google/PageRank.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'POE'                    => 0.9999,
        'POE::Filter::Reference' => 1.2187,
        'POE::Filter::Line'      => 1.1920,
        'POE::Wheel::Run'        => 1.2179,
        'WWW::Google::PageRank'  => 0.14,
        'Carp'                   => 1.04,
    },
    add_to_cleanup      => [ 'POE-Component-WWW-Google-PageRank-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
