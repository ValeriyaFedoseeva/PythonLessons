import maya.cmds as cmds
import maya.OpenMaya as om

def main():
    crv_list = []

    selection = cmds.ls(sl=True, l=True, fl=True)[0]

    selectionList = om.MSelectionList()
    selectionList.add(selection)

    mDagPath = om.MDagPath()
    selectionList.getDagPath(0, mDagPath)

    fnMesh = om.MFnMesh(mDagPath)

    edgeIterator = om.MItMeshEdge(mDagPath)
    while not edgeIterator.isDone():
        vtx_id_A = edgeIterator.index(0)
        vtx_id_B = edgeIterator.index(1)
        
        point_A = om.MPoint()
        point_B = om.MPoint()

        coord = om.MSpace.kWorld

        fnMesh.getPoint(vtx_id_A, point_A, coord)
        fnMesh.getPoint(vtx_id_B, point_B, coord)

        crv = cmds.curve(d=1, p=[(point_A.x, point_A.y, point_A.z), (point_B.x, point_B.y, point_B.z)], k=[0,1])
        crv_list.append(crv)
        ring = cmds.circle(nr=(0, 0, 1), c=(0, 0, 0), r=1, ch=0)[0]
        mPath = cmds.pathAnimation( ring, crv, fractionMode=1, follow=1, followAxis='z', upAxis='y', worldUpType="scene", inverseUp=0, inverseFront=1, bank=0, startTimeU=1, endTimeU=2)

        tube = cmds.extrude(ring, crv, ch=0, rn=0, po=0, et=2, ucp=0, fpt=1, upn=1, rotation=1, scale=1, rsp=1)
        cmds.reverseSurface(tube, d=0, ch=0, rpo=1)

        cmds.delete(crv, ring, mPath)

        edgeIterator.next()



main()
