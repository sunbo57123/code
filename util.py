import asyncio
import sys
import subprocess
class UnbufferedIO(object):
    def __init__(self, stream):
        self.stream = stream

    def write(self, data):
        if self.stream.encoding != 'utf-8':
            data = data.encode(encoding=self.stream.encoding, errors='replace').decode()
        self.stream.write(data)
        self.stream.flush()

    def __getattr__(self, attr):
        return getattr(self.stream, attr)

def run(cmd):
    subprocess.run(cmd, shell=True, check=True)