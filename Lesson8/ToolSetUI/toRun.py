import sys

packages = ['ToolSetUI']

for i in sys.modules.keys()[:]:
    for package in packages:
        if package in i:
            del (sys.modules[i])

import ToolSetUI.mainUI

reload(ToolSetUI.mainUI)
ToolSetUI.mainUI.main()

