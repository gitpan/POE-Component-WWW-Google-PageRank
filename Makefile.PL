use 5.008008;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'POE::Component::WWW::Google::PageRank',
    VERSION_FROM      => 'lib/POE/Component/WWW/Google/PageRank.pm', 
    PREREQ_PM         => {
    	POE			 => 0.9999,
	'POE::Wheel::Run'	 => 1.2179,
	'POE::Filter::Reference' => 1.2187,
	'POE::Filter::Line'	 => 1.1920,
    	'WWW::Google::PageRank'  => 0.14,
    },
    ($] >= 5.005 ?    
      (ABSTRACT_FROM  => 'lib/POE/Component/WWW/Google/PageRank.pm',
       AUTHOR         => 'Zoffix Znet <zoffix@cpan.org>') : ()),
);
