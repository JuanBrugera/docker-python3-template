import subprocess
import os
import sys

if __name__ == '__main__':
    docker_image = os.path.split(os.path.dirname(os.path.abspath(__file__)))[1]
    command = f'docker run -i -t --rm {docker_image}'
    sys.exit(subprocess.check_call(command))
