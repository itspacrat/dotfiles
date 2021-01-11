#!/bin/bash

chkgfx() {
echo 'string: opengl renderer'
glxinfo | grep "OpenGL renderer"
echo 'execute again with DRI_PRIME=1:'
DRI_PRIME=1 glxinfo | grep "OpenGL renderer"
}
