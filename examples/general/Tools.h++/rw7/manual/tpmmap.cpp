/*
 * This example is from the Tools.h++ manual, version 7
 *
 * Copyright (c) 1989-1999 Rogue Wave Software, Inc.  All Rights Reserved.
 *
 * This computer software is owned by Rogue Wave Software, Inc. and is
 * protected by U.S. copyright laws and other laws and by international
 * treaties.  This computer software is furnished by Rogue Wave Software,
 * Inc. pursuant to a written license agreement and may be used, copied,
 * transmitted, and stored only in accordance with the terms of such
 * license and with the inclusion of the above copyright notice.  This
 * computer software or any other copies thereof may not be provided or
 * otherwise made available to any other person.
 *
 * U.S. Government Restricted Rights.  This computer software is provided
 * with Restricted Rights.  Use, duplication, or disclosure by the
 * Government is subject to restrictions as set forth in subparagraph (c)
 * (1) (ii) of The Rights in Technical Data and Computer Software clause
 * at DFARS 252.227-7013 or subparagraphs (c) (1) and (2) of the
 * Commercial Computer Software � Restricted Rights at 48 CFR 52.227-19,
 * as applicable.  Manufacturer is Rogue Wave Software, Inc., 5500
 * Flatiron Parkway, Boulder, Colorado 80301 USA.
 */

#include <rw/tpmmap.h>
#include <rw/cstring.h>
#include <rw/rwdate.h>
#include <iostream.h>
#include <stdcomp.h>

#ifndef RWSTD_NO_NAMESPACE
   using namespace std;
#endif

main(){
  typedef RWTPtrMultiMap<RWCString, RWDate, less<RWCString> > 
   RWMMap;
  RWMMap birthdays;

  birthdays.insert(new RWCString("John"),
                              new RWDate(12, "April", 1975));
  birthdays.insert(new RWCString("Ivan"),
                              new RWDate(2, "Nov", 1980));
  birthdays.insert(new RWCString("Mary"),
                              new RWDate(22, "Oct", 1987));
  birthdays.insert(new RWCString("Ivan"),
                              new RWDate(19, "June", 1971));
  birthdays.insert(new RWCString("Sally"),
                              new RWDate(15, "March", 1976));
  birthdays.insert(new RWCString("Ivan"),
                              new RWDate(6, "July", 1950));

  // How many "Ivan"s?
  RWCString ivanstr("Ivan");
  RWMMap::size_type n = birthdays.occurrencesOf(&ivanstr);
  RWMMap::size_type idx = 0;
  cout << "There are " << n << " Ivans:" << endl;
  RWMMap::const_iterator iter = 
                             birthdays.std().lower_bound(&ivanstr);

  while (++idx <= n) 
    cout << idx << ".  " << *(*iter++).second << endl; 
  return 0;
}


