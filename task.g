# task.g
count := 0;
Print("IdGroup      | Nilpotency Class\n");
Print("-------------------------------\n");

for G in AllSmallGroups(27) do
    if not IsCyclic(G) then
        count := count + 1;
        id := IdGroup(G);
        lcs := LowerCentralSeriesOfGroup(G);
        
        class := Length(lcs) - 1;
        
        Print(id, "      | ", class, "\n");
    fi;
od;

Print("-------------------------------\n");
Print("Total non-cyclic 3-groups of order 27: ", count, "\n");

QUIT; 
