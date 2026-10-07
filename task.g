count := 0;
PrintTo("results.md", "IdGroup      | Nilpotency Class\n");
AppendTo("results.md", "-------------------------------\n");

for G in AllSmallGroups(27) do
    if not IsCyclic(G) then
        count := count + 1;
        id := IdGroup(G);
        lcs := LowerCentralSeriesOfGroup(G);
        class := Length(lcs) - 1;
        
        AppendTo("results.md", id, "      | ", class, "\n");
    fi;
od;

AppendTo("results.md", "-------------------------------\n");
AppendTo("results.md", "Total non-cyclic 3-groups of order 27: ", count, "\n");
QUIT;
