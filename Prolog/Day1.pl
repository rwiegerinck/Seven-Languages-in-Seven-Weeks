%-- De boeken --%
book(aa).
book(bb).
book(cc).
book(dd).
book(ee).

%-- De authors --%
author(11).
author(22).
author(33).

%-- Author heeft boek geschreven --%
wrote(11, aa).
wrote(11, bb).
wrote(22, cc).
wrote(33, dd).
wrote(22, ee).

%-- De Muziekant speelt instrument --%
musician(dummy1, gitaar).
musician(dummy2, drumstel).
musician(dummy3, viool).
musician(dummy4, gitaar).

%-- De Muziekant speelt genre --%
musician_genre(dummy1, rock).
musician_genre(dummy2, pop).
musician_genre(dummy3, rock).
musician_genre(dummy4, classic).