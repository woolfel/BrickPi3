#! /bin/bash

echo =============================
echo BrickPi3 Troubleshooting Script
echo ============================= 

echo ""
echo Adding permissions to the scripts
echo =================================
cd /home/pi/Dexter/BrickPi3/Troubleshooting/
#chmod +x software_status.sh
#chmod +x avrdude_test.sh
#chmod +x i2c_test1.sh
chmod +x hardware_and_firmware_test.sh
#chmod +x motor_enc_led_test.sh

#sudo ./software_status.sh 2>&1| tee log.txt
#sudo ./avrdude_test.sh 2>&1| tee -a log.txt
#sudo ./i2c_test1.sh 2>&1| tee -a log.txt
sudo ./hardware_and_firmware_test.sh 2>&1| tee -a log.txt
#sudo ./motor_enc_led_test.sh 2>&1| tee -a log.txt

cp log.txt /home/pi/Desktop/log.txt
echo "Log has been saved to Desktop. Please copy it and send it by email or upload it on the forums"
