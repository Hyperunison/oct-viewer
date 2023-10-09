# oct-viewer
This is docker implementation of https://github.com/pyushkevich/itksnap
To run oct viewer, run following commands:
```bash
host+
docker run --rm -ti -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix entspuml/oct-viewer
```
