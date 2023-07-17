#!/usr/bin/perl

use strict;
use warnings;

while (my $line = <STDIN>) {
    # Check for title field, skip if double curly braces already present, and add double curly braces
    if ($line =~ /^\s*title\s*=\s*{/ && $line !~ /^\s*title\s*=\s*"/ && $line !~ /\{\{.+\}\}/) {
        $line =~ s/{(.+)}/{\{$1\}}/;
    }

    # Check for journal field, skip if double curly braces already present, and add double curly braces
    if ($line =~ /^\s*journal\s*=\s*{/ && $line !~ /^\s*journal\s*=\s*"/ && $line !~ /\{\{.+\}\}/) {
        $line =~ s/{(.+)}/{\{$1\}}/;
    }

    print $line;
}
