Ore := function(char) 
  local s,f,k;
  
  for k in [1..NrConjugacyClasses(char)] do
    s := 0;
    for f in Irr(char) do
      s := s+f[k]/Degree(f);  
    od;
    if s<=0 then
      return false;
    fi;
  od;
  return true;
end;

