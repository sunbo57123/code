#!/usr/bin/env bash

echo "done."
exec xvfb-run -s "-ac -screen 0 1280x1024x24" /bin/sh -c "$*"
