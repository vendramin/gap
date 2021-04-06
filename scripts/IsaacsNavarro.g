IsaacsNavarro := function(G, k, p)
  local mG, mN, N;

  N := Normalizer(G, SylowSubgroup(G, p));
  mG := Number(Filtered(Irr(G), x->Degree(x) mod p <> 0), x->Degree(x) mod p in [-k,k] mod p);
  mN := Number(Filtered(Irr(N), x->Degree(x) mod p <> 0), x->Degree(x) mod p in [-k,k] mod p);
  if mG = mN then
    return true;
  else
    return false;
  fi;
end;
