#!/usr/bin/python3

import os
import time
from gpiozero import MotionSensor

pir = MotionSensor(4)

while True:
        pir.wait_for_motion()
        # print("Motion!")
        os.system("vcgencmd display_power 1")
        pir.wait_for_no_motion()
        # print("No motion...")
        os.system("vcgencmd display_power 0")
