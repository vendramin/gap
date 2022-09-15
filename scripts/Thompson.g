Thompson_v1 := function(group)
  local classes, SquareSet;

  SquareSet := function(s)
    return Set(Cartesian(s, s), x->x[1]*x[2]);
  end;

  classes := ConjugacyClasses(group);
  return ForAny(classes, c->Size(SquareSet(c)) = Order(group));
end;

Thompson_v2 := function(t)
  local k, C;

  k := NrConjugacyClasses(t);

  for C in RealClasses(t) do
    if ForAll([1..k], D->Sum(Irr(t), f->(f[C]^2*f[D])/Degree(f)) <> 0) then
      return true;
    fi;
  od;
  return false;
end;
