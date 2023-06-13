[top]
components : mobileadhocnode

[mobileadhocnode]
type : cell
dim : (20, 20, 2)
delay : transport
defaultDelayTime  : 0
border : nowrapped
neighbors : mobileadhocnode(-1,-1,0)    mobileadhocnode(-1,0,0)    mobileadhocnode(-1,1,0)
neighbors : mobileadhocnode(0,-1,0)     mobileadhocnode(0,0,0)     mobileadhocnode(0,1,0) 
neighbors : mobileadhocnode(1,-1,0)     mobileadhocnode(1,0,0)     mobileadhocnode(1,1,0)
neighbors : mobileadhocnode(-1,-1,-1)   mobileadhocnode(-1,0,-1)   mobileadhocnode(-1,1,-1)
neighbors : mobileadhocnode(0,-1,-1)    mobileadhocnode(0,0,-1)    mobileadhocnode(0,1,-1) 
neighbors : mobileadhocnode(1,-1,-1)    mobileadhocnode(1,0,-1)    mobileadhocnode(1,1,-1)

initialvalue : 0
initialCellsValue : mobileadhocnode.val
localtransition : mover_and_hop-rule

zone : cornerUL-rule { (0,0,0) }
zone : cornerUR-rule { (0,19,0) }
zone : cornerDL-rule { (19,0,0) }
zone : cornerDR-rule { (19,19,0) }
zone : top-rule { (0,1,0)..(0,18,0) }
zone : bottom-rule { (19,1,0)..(19,18,0) }
zone : left-rule { (1,0,0)..(18,0,0) }
zone : right-rule { (1,19,0)..(18,19,0) }

[mover_and_hop-rule]

rule : 1 500 { cellpos(2) = 0 and (0,0,0) = 4 and (-1,-1,0) != 0 }
rule : 4 500 { cellpos(2) = 0 and (0,0,0) = 1 and (1,1,0) != 0 }
rule : 3 500 { cellpos(2) = 0 and (0,0,0) = 2 and (-1,1,0) != 0 }  
rule : 2 500 { cellpos(2) = 0 and (0,0,0) = 3 and (1,-1,0) != 0 }

rule : 5 500 { cellpos(2) = 0 and (0,0,0) = 5 }
rule : 6 500 { cellpos(2) = 0 and (0,0,0) = 6 }
rule : 4 500 { cellpos(2) = 0 and (0,0,0) = 0 and (1,1,0) = 4 }
rule : 3 500 { cellpos(2) = 0 and (0,0,0) = 0 and (-1,1,0) = 3 }  
rule : 2 500 { cellpos(2) = 0 and (0,0,0) = 0 and (1,-1,0) = 2 }
rule : 1 500 { cellpos(2) = 0 and (0,0,0) = 0 and (-1,-1,0) = 1 }
rule : 0 500 { cellpos(2) = 0 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 5 and statecount(99) > 0 }
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 5 and ( ( (0,0,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 5 and ( ( (0,0,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 5 and ( ( (0,0,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 5 and ( ( (0,0,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 5 and t }

rule : 0 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) != 4 and (-1,1,-1) != 3 and (1,-1,-1) != 2 and (-1,-1,-1) != 1 }
rule : 0 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) = 0 }
rule : 0 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) = 0 }
rule : 0 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) = 0 }
rule : 0 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) = 0 }
rule : 99 500 { cellpos(2) = 1 and (0,0,-1) = 6 }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and ( ( (1,1,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and ( ( (1,1,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and ( ( (1,1,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and ( ( (1,1,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,1,-1) = 4 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and ( ( (-1,1,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and ( ( (-1,1,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and ( ( (-1,1,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and ( ( (-1,1,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,1,-1) = 3 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and ( ( (1,-1,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and ( ( (1,-1,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and ( ( (1,-1,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and ( ( (1,-1,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (1,-1,-1) = 2 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and ( ( (-1,-1,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and ( ( (-1,-1,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and ( ( (-1,-1,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and ( ( (-1,-1,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 0 and (-1,-1,-1) = 1 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and ( ( (0,0,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and ( ( (0,0,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and ( ( (0,0,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and ( ( (0,0,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 1 and (1,1,-1) != 0 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and ( ( (0,0,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and ( ( (0,0,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and ( ( (0,0,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and ( ( (0,0,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 2 and (-1,1,-1) != 0 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and ( ( (0,0,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and ( ( (0,0,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and ( ( (0,0,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and ( ( (0,0,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 3 and (1,-1,-1) != 0 and t }

rule : 10 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and statecount(99) > 0 } 
rule : 20 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and ( ( (0,0,0) != 10 and statecount(10) > 0 ) or statecount(10) > 1 ) }
rule : 30 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and ( ( (0,0,0) != 20 and statecount(20) > 0 ) or statecount(20) > 1 ) }
rule : 40 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and ( ( (0,0,0) != 30 and statecount(30) > 0 ) or statecount(30) > 1 ) }
rule : 50 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and ( ( (0,0,0) != 40 and statecount(40) > 0 ) or statecount(40) > 1 ) }
rule : 60 500 { cellpos(2) = 1 and (0,0,-1) = 4 and (-1,-1,-1) != 0 and t }

[top-rule]
rule : 3 500 { (0,0,0) = 0 and (1,1,0) = 4 }
rule : 1 500 { (0,0,0) = 0 and (1,-1,0) = 2 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { t }


[bottom-rule]
rule : 4 500 { (0,0,0) = 0 and (-1,1,0) = 3 }
rule : 2 500 { (0,0,0) = 0 and (-1,-1,0) = 1 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[left-rule]
rule : 1 500 { (0,0,0) = 0 and (-1,1,0) = 3 }
rule : 2 500 { (0,0,0) = 0 and (1,1,0) = 4 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[right-rule]
rule : 3 500 { (0,0,0) = 0 and (-1,-1,0) = 1 }
rule : 4 500 { (0,0,0) = 0 and (1,-1,0) = 2 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[cornerUL-rule]
rule : 1 500 { (0,0,0) = 0 and (1,1,0) = 4 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[cornerUR-rule]
rule : 3 500 { (0,0,0) = 0 and (1,-1,0) = 2 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[cornerDL-rule]
rule : 2 500 { (0,0,0) = 0 and (-1,1,0) = 3 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }

[cornerDR-rule]
rule : 4 500 { (0,0,0) = 0 and (-1,-1,0) = 1 }
rule : 5 500 { (0,0,0) = 5 }
rule : 0 500 { (0,0,0) != 5 and t }


# NOTES
# Movement of mobile nodes:
#
# 0 = empty cell
# 1 = Moves in south-east direction
# 2 = Moves in north-east direction
# 3 = Moves in south-west direction
# 4 = Moves in north-west direction
# 5 = Static Node
# 6 = Base Station
# 10 = 1 hop away from the base station
# 20 = 2 hops away from the base station
# 30 = 3 hops away from the base station
# 40 = 4 hops away from the base station
# 50 = 5 hops away from the base station
# 60 = Can not reach to the base station
# 99 = Base station (plane 1)

