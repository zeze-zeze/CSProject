import angr
import sys
from angrutils import plot_cfg

proj = angr.Project(sys.argv[1], load_options={"auto_load_libs":False})
cfg = proj.analyses.CFGFast()
plot_cfg(cfg, sys.argv[1] , remove_imports = True, remove_path_terminator=True)
