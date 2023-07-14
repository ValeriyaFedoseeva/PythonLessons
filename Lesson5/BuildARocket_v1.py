import maya.cmds as cmds


class Rocket(object):

    def __init__(self, axis=1, height=1, radius=1, nummber_of_bodyparts=1, noseConeHeight = 1, fuelTanks = 1):

        self.axis = axis
        self.height = height
        self.radius = radius
        self.nummber_of_bodyparts = nummber_of_bodyparts
        self.noseConeHeight = noseConeHeight
        self.fuelTanks = fuelTanks
        self.body_Grp = None

        self.create_body()
        self.create_fueltank()

    def create_body(self):

        '''
        This function creates main body of the rocket depending on entered values in the command. (Example: Rocket(axis=18, height=5, radius=4, nummber_of_bodyparts=6) )
        Adds the top of the rocket.
        Puts all created body elements into a group called RocketBody.
        '''

        parts = []
        for i in range(self.nummber_of_bodyparts):
            rocket_body = cmds.polyCylinder(name="RocketBody" + str(i + 1))
            self.rocket_body_node = rocket_body[1]
            self.rocket_body_name = rocket_body[0]

            cmds.setAttr(self.rocket_body_node + '.subdivisionsAxis', self.axis)
            cmds.setAttr(self.rocket_body_node + '.height', self.height)
            cmds.setAttr(self.rocket_body_node + '.radius', self.radius)

            cmds.xform(self.rocket_body_name, t=[0, (i + 0.5) * self.height, 0], r=1)
            parts.append(self.rocket_body_name)

        topBB = cmds.xform(self.rocket_body_name, q=1, bb=1, ws=1)
        self.topBB = topBB
        # [X_min, Y_min, Z_min, X_max, Y_max, Z_max]
        cmds.select(parts)
        body_Grp = cmds.group(name="RocketBody_Grp")
        self.body_Grp = body_Grp
        rocket_top = cmds.polyCone(name="RocketTop")
        self.rocket_top_node = rocket_top[1]
        self.rocket_top_name = rocket_top[0]

        cmds.setAttr(self.rocket_top_node + '.radius', self.radius)
        cmds.setAttr(self.rocket_top_node + '.subdivisionsAxis', self.axis)
        cmds.setAttr(self.rocket_top_node + '.height', self.noseConeHeight)

        top_offset = topBB[4] + self.noseConeHeight * 0.5
        #top_offset = cmds.xform(self.rocket_top_nam, q=1, bb=1, ws=1)

        cmds.xform(self.rocket_top_name, t=[0, top_offset, 0], r=1)
        cmds.parent(self.rocket_top_name, body_Grp)

    def create_fueltank(self):

        '''
        This funtion creates 4 fuel tanks at the base of the body of rocket we created with the function above.
        Each tank is offset to be on the side of the body, and then each tank is put in its own group which is then rotated by 90 degrees. 
        At the end, each element is parented to the top group.
        '''

        tanks = []
        for tank in range(self.fuelTanks):
            name = 'Fuel_Tank'
            fuel_tank = cmds.polyCone(name=name + str(tank + 1))

            self.fuel_tank_node = fuel_tank[1]
            self.fuel_tank_name = fuel_tank[0]

            cmds.setAttr(self.fuel_tank_node + '.radius', self.radius * 0.5)
            cmds.setAttr(self.fuel_tank_node + '.subdivisionsAxis', self.axis)
            cmds.setAttr(self.fuel_tank_node + '.height', self.height * 2)

            tankBB = cmds.xform(self.fuel_tank_name, q=1, bb=1, ws=1)
            tank_Grp = cmds.group(name="{}{}".format(name, '_Grp') + str(tank + 1))
            cmds.xform(self.fuel_tank_name, t=[tankBB[3] * 2, tankBB[4] * 0.5, 0], r=1)
            
            rotation_angle = 360 / self.fuelTanks  # Calculate rotation angle for each tank
            cmds.xform(tank_Grp, ro=[0, rotation_angle * tank, 0], r=1)
            tanks.append(tank_Grp)

        cmds.select(tanks)
        cmds.select(self.body_Grp, add=1)
        cmds.parent()


class RocketNew(Rocket):
    '''
    This class adds a bit of variation to the class Rocket by adding fins at the side of the body.
    '''
    def __init__(self, axis=1, height=1, radius=1, nummber_of_bodyparts=1, noseConeHeight = 1, fuelTanks = 1):
        super(RocketNew, self).__init__(axis, height, radius, nummber_of_bodyparts, noseConeHeight, fuelTanks)

        self.create_fins()

    def create_fins(self):
        
        '''
        This funtion creates 4 Fins at theside of the body of rocket we created with the class Rocket.
        Each Fin is offset to be on the side of the body, and then is put in its own group which is then rotated by 90 degrees. 
        At the end, each element is parented to the top group.
        '''

        name = "Fin"
        fins = []
        for f in range(4):
            fin = cmds.polyCube(name=name + str(f + 1))

            self.fin_node = fin[1]
            self.fin_name = fin[0]

            cmds.setAttr(self.fin_node + '.width', 4)
            cmds.setAttr(self.fin_node + '.height', 2.5)
            cmds.setAttr(self.fin_node + '.depth', 0.5)

            bb = cmds.xform(self.fin_name, q=1, bb=True, ws=True)
            # [X_min, Y_min, Z_min, X_max, Y_max, Z_max]

            fin_width = bb[3] - bb[0]
            fin_offset = self.radius + fin_width / 2  # Calculate the offset from the RocketBody's radius
            
            side = cmds.xform(self.body_Grp, q=1, bb=1)

            #offset = side[3] + fin_offset
 
            fin_Grp = cmds.group(name="{}{}".format(name, '_Grp') + str(f + 1))
            cmds.xform(fin, t=[fin_offset, side[4] * 0.35, 0], r=1)
            rotation_angle_fin = 90 * (f + 1)
            cmds.xform(fin_Grp, ro=[0, rotation_angle_fin, 0], r=1)
            fins.append(fin_Grp)

        cmds.select(fins)
        cmds.select(self.body_Grp, add=1)
        cmds.parent()


#myRocket = Rocket(axis=18, height=5, radius=4, nummber_of_bodyparts=6, noseConeHeight = 10, fuelTanks = 4)

mySuperRocket = RocketNew(axis=18, height=5, radius=4, nummber_of_bodyparts=6, noseConeHeight = 10, fuelTanks = 4)