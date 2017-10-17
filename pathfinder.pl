% Declaration for route 4 up to commercial drive
stop(ubc, 4, alli, 1).
stop(alli, 4, acad, 1).
stop(acad, 4, bl53, 1).
stop(bl53, 4, bl51, 1).
stop(bl51, 4, w10, 3).
stop(w10, 4, w8, 1).
stop(w8, 4, w6, 1).
stop(w6, 4, blan, 1).
stop(blan, 4, tolm, 1).
stop(tolm, 4, trim, 1).
stop(trim, 4, bl41, 1).
stop(bl41, 4, diep, 1).
stop(diep, 4, wall, 1).
stop(wall, 4, high, 1).
stop(high, 4, alma, 1).
stop(alma, 4, coll, 1).
stop(coll, 4, wtloo, 1).
stop(wtloo, 4, trut, 1).
stop(trut, 4, bays, 2).
stop(bays, 4, mac, 1).
stop(mac, 4, traf, 2).
stop(traf, 4, larc, 1).
stop(larc, 4, bals, 1).
stop(bals, 4, vine, 1).
stop(vine, 4, arbu_3, 2).
stop(arbu_3, 4, cypr, 1).
stop(cypr, 4, burr, 1).
stop(burr, 4, fir, 2).
stop(fir, 4, gran, 3).
stop(gran, 4, drak, 6).
stop(drak, 4, davi, 1).
stop(davi, 4, nels, 1).
stop(nels, 4, smit, 1).
stop(smit, 4, wgeo, 1).
stop(wgeo, 4, duns, 1).
stop(duns, 4, wpen, 1)
stop(wpen, 4, whas, 1).
stop(whas, 4, seym, 1).
stop(seym, 4, home, 1).
stop(home, 4, abbo, 2).
stop(abbo, 4, carr, 1).
stop(carr, 4, main, 2).
stop(main, 4, dunl, 1).
stop(dunl, 4, prin, 2).
stop(prin, 4, hawk, 1).
stop(hawk, 4, glen, 2).
stop(glen, 4, clar, 2).
stop(clar, 4, mcle, 1).
stop(mcle, 4, comm, 1).

% Declaration for route 14 up to commercial drive
stop(ubc, 14, alli, 1).
stop(alli, 14, acad, 1).
stop(acad, 14, bl53, 1).
stop(bl53, 14, bl51, 2).
stop(bl51, 14, blan_10, 3).
stop(blan_10, 14, tolm_10, 1).
stop(tolm_10, 14, sas_10, 1).
stop(sas_10, 14, trim_10, 1).
stop(trim_10, 14, disc_10, 1).
stop(disc_10, 14, cour_10, 1).
stop(cour_10, 14, camo_10, 1).
stop(camo_10, 14, crow_10, 1).
stop(crow_10, 14, wall_10, 1).
stop(wall_10, 14, high_10, 1).
stop(high_10, 14, w10_alma, 1).
stop(w10_alma, 14, coll_wbroad, 1).
stop(coll_wbroad, 14, blen_wbroad, 1).
stop(blen_wbroad, 14, bala_wbroad, 2).
stop(bala_wbroad, 14, bays_wbroad, 1).
stop(bays_wbroad, 14, mac_wbroad, 1).
stop(mac_wbroad, 14, traf_wbroad, 1).
stop(traf_wbroad, 14, larc_wbroad, 1).
stop(larc_wbroad, 14, vine_wbroad, 2).
stop(vine_wbroad, 14, arbu_wbroad, 1).
stop(arbu_wbroad, 14, mapl_wbroad, 1).
stop(mapl_wbroad, 14, burr_wbroad, 2).
stop(burr_wbroad, 14, fir_wbroad, 2).
stop(fir_wbroad, 14, wbroad_gran, 3).
stop(wbroad_gran, 14, w7_gran, 1).
stop(w7_gran, 14, w5_gran, 1).
stop(w5_gran, 14, drak, 1).
stop(drak, 14, davi, 1).
stop(davi, 14, nels, 1).
stop(nels, 14, smit, 1).
stop(smit, 14, wgeo, 1).
stop(wgeo, 14, duns, 1).
stop(duns, 14, wpen, 1).
stop(wpen, 14, seym, 1).
stop(seym, 14, home, 1).
stop(home, 14, abbo, 2).
stop(abbo, 14, carr, 1).
stop(carr, 14, main, 2).
stop(main, 14, gore, 1).
stop(gore, 14, jack, 2).
stop(jack, 14, prin, 1).
stop(prin, 14, hawk, 1).
stop(hawk, 14, camp, 1).
stop(camp, 14, glen, 1).
stop(glen, 14, clar, 2).
stop(clar, 14, mcle, 1).
stop(mcle, 14, comm, 1).

% Declaration for route 44
stop(ubc, 44, wepa, 2).
stop(wepa, 44, hamb, 3).
stop(hamb, 44, tolm, 7).
stop(tolm, 44, alma, 7).
stop(alma, 44, mac, 5).
stop(mac, 44, vine, 3).
stop(vine, 44, davi, 6).
stop(davi, 44, como, 1).
stop(como, 44, nels, 1).
stop(nels, 44, robs, 2).
stop(robs, 44, wgeo, 1).
stop(wgeo, 44, bay5_burr, 1).
stop(bay5_burr, 44, burr, 1).
stop(burr, 44, gran, 1).
stop(gran, 44, whas, 2).

routeTime(StopA, StopA, _, 0).

routeTime(StopA, StopB, Route, T) :-
  stop(StopA, Route, NextStop, T0),
  routeTime(NextStop, StopB, Route, T1),
  T is T0 + T1.

tripTime(L, R, T) :-
  stop(ClosestStop, R, _, _),
  routeTime(ubc, ClosestStop, R, T0),
  landmark(L, ClosestStop, T1),
  T is T0 + T1.
