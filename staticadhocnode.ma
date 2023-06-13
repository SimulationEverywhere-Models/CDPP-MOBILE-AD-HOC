[top]
components : staticadhocnode

[staticadhocnode]
type : cell
dim : (20, 20, 2)
delay : transport
defaultDelayTime  : 0
border : nowrapped
neighbors : staticadhocnode(-1,-1,0)    staticadhocnode(-1,0,0)    staticadhocnode(-1,1,0)
neighbors : staticadhocnode(0,-1,0)     staticadhocnode(0,0,0)     staticadhocnode(0,1,0) 
neighbors : staticadhocnode(1,-1,0)     staticadhocnode(1,0,0)     staticadhocnode(1,1,0)
neighbors : staticadhocnode(-1,-1,-1)   staticadhocnode(-1,0,-1)   staticadhocnode(-1,1,-1)
neighbors : staticadhocnode(0,-1,-1)    staticadhocnode(0,0,-1)    staticadhocnode(0,1,-1) 
neighbors : staticadhocnode(1,-1,-1)    staticadhocnode(1,0,-1)    staticadhocnode(1,1,-1)

initialvalue : 0
initialCellsValue : staticadhocnode.val
localtransition : mover_and_hop-rule

[mover_and_hop-rule]

rule : 8 100 { cellpos(2) = 0 and (0,0,0) = 8 }
rule : 9 100 { cellpos(2) = 0 and (0,0,0) = 9 }
rule : 0 100 { cellpos(2) = 0 and t }

rule : 1 100 { cellpos(2) = 1 and (0,0,-1) = 8 and statecount(9) > 0 }
rule : 2 100 { cellpos(2) = 1 and (0,0,-1) = 8 and ( ( (0,0,0) != 1 and statecount(1) > 0 ) or statecount(1) > 1 ) and statecount(9) =0 }
rule : 3 100 { cellpos(2) = 1 and (0,0,-1) = 8 and ( ( (0,0,0) != 2 and statecount(2) > 0 ) or statecount(2) > 1 ) and statecount(1) = 0 and statecount(9) =0 }
rule : 4 100 { cellpos(2) = 1 and (0,0,-1) = 8 and ( ( (0,0,0) != 3 and statecount(3) > 0 ) or statecount(3) > 1 ) and statecount(2) = 0 and statecount(1) = 0 and statecount(9) =0 }
rule : 5 100 { cellpos(2) = 1 and (0,0,-1) = 8 and ( ( (0,0,0) != 4 and statecount(4) > 0 ) or statecount(4) > 1 ) and statecount(3) = 0 and statecount(2) = 0 and statecount(1) = 0 and statecount(9) =0 }
rule : 6 100 { cellpos(2) = 1 and (0,0,-1) = 8 and statecount(4) = 0 and statecount(3) = 0 and statecount(2) = 0 and statecount(1) = 0 and statecount(9) =0 }
rule : 6 100 { cellpos(2) = 1 and (0,0,-1) = 8 and t }

rule : 0 100 { cellpos(2) = 1 and (0,0,-1) = 0 }
rule : 9 100 { cellpos(2) = 1 and (0,0,-1) = 9 }


# NOTES
#
# 0 = empty cell
# 8 = Static Node
# 9 = Base Station
# 1 = 1 hop away from the base station
# 2 = 2 hops away from the base station
# 3 = 3 hops away from the base station
# 4 = 4 hops away from the base station
# 5 = 5 hops away from the base station
# 6 = Can not reach to the base station