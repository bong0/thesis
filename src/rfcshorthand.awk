#!/usr/bin/awk
{
	if(match($0, ".*rfc[0-9]+,.*"))
	{
		print;
		match($0, "rfc[0-9]+", matcharr);
		print "  shorthand=\"" toupper(matcharr[0]) "\",";
	}
	else
	{
		print $0;
	}
}

