import sys

from util import UnbufferedIO
from util import run

# Enforce unbuffered output
sys.stdout = UnbufferedIO(sys.stdout)
sys.stderr = UnbufferedIO(sys.stderr)

pip_dependencies = [
    'EmPy',
    'coverage',
    'catkin_pkg',
    'flake8',
]

pip_packages = list(pip_dependencies)
cmd = "pip3 install --force-reinstall mypy"
print("------run-----")
print(cmd)
run(cmd)
print("------finish-----")
