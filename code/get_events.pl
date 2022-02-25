#!/usr/bin/env perl

use strict;
use warnings;
use v5.14;

my $week = 820000; # modified on 1/25 to grab most recent events
#my $week = 666000;
#my $week = 600000;

my $wget_cmd = "wget https://data.vexvia.dwabtech.com/api/v3/events?since=";

for (1..200) {
    my $num = $week + ($_ * 1000);
    say $wget_cmd . $num;
}
