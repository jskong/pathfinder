stop(ubc, 99, sas, 8).
stop(ubc, 14, sas, 8).
stop(sas, 99, gran, 10).
stop(sas, 14, mac, 4).
stop(mac, 14, gran, 4).
stop(gran, 99, end, 0).
stop(gran, 14, end, 0).
landmark(indigo, gran, 1).

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
