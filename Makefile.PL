
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Locale::POFileManager',
                       'DISTNAME' => 'Locale-POFileManager',
                       'AUTHOR' => 'Jesse Luehrs <doy at tozt dot net>',
                       'ABSTRACT' => '',
                       'EXE_FILES' => [
                                        'bin/po_find_missing',
                                        'bin/po_add_stubs'
                                      ],
                       'VERSION' => '0.01',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'MooseX::Types::Path::Class' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Locale::PO' => '0',
                                        'List::MoreUtils' => '0',
                                        'Moose' => '0.90'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



