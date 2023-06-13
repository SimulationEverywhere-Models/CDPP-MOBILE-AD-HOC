MOBILE ADHOC NODES MODEL
 
This model is developed to simulate, how mobile and/or static ad hoc nodes determine, how many hops away the base station is. First plane represents the mobility plane, the second plane represents the hop count states. It is possible to observe different scenarios by changing the initial values of cells in the .VAL file. Because collision avoidance between two mobile nodes is not implemented, there is no performance guarantees in the case of colission.. 

DEMO.BAT runs the simulation. DRAW.BAT generates the mobileadhocnode.DRW output, which shows a visual representation of the simulation outputs in a text document.

By using modeller, it is possible to see the 2D representations of both planes in a GUI environment. Both .DRW and .PAL files are included to be used by the modeller.

Also mobileadhocnode_3D.PAL file is included for 3D GUI environment. But, the .PAL file could not be loaded because there are more than 10 colors and VRML GUI does not permit using more than 10 colors.

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

 



 