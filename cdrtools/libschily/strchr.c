/* @(#)strchr.c	1.3 09/06/07 Copyright 1985,2009 J. Schilling */
/*
 *	strchr() to be used if missing in libc
 *
 *	Copyright (c) 1985,2009 J. Schilling
 */
/*
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License, Version 1.0 only
 * (the "License").  You may not use this file except in compliance
 * with the License.
 *
 * See the file CDDL.Schily.txt in this distribution for details.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file CDDL.Schily.txt from this distribution.
 */

#include <schily/standard.h>
#include <schily/schily.h>

#ifndef	HAVE_STRCHR

EXPORT char *
strchr(s, c)
	register const char	*s;
	register	int	c;
{
	do {
		if (*s == (char)c)
			return ((char *)s);
	} while (*s++ != '\0');
	return (0);
}

#endif
