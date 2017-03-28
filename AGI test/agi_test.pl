#!/usr/bin/perl

#*
#	AGI
#	Written by narutaka.org
#	Version : 0.0 ( 0000/00/00 )
#*

# --- φ(.. ) ---

	#	extensions から呼び出して環境変数をすべて表示

#--------------------- Declaration -------------------

	# --- 
	use utf8;
	use strict;
	use warnings;

	# --- 
	use Asterisk::AGI;

	# --- 
	$|=1;					# 出力のバッファリング オン


#--------------------- Function -------------------

	# --- AGI 準備 ---

	my $agi  = new Asterisk::AGI;
	my %agi_env = $agi->ReadParse;

	# --- データー取得 ---

	print STDERR "==================================================\n";
	foreach my $key (keys %agi_env) 
	{
	  print STDERR qq($key = $agi_env{$key}\n);
	}
	print STDERR "==================================================\n";


#--------------------- End -------------------
exit 0;
