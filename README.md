# docker-firefox-xvfb
This dockerfile contains the steps to create an image with firefox and a virtual display for CI

In your CI script do not forget to attach the screen with the following commands:

~~~~
Xvfb -ac :0 -screen 0 1280x1024x16 &
trap 'killall -9 Xvfb' EXIT
~~~~