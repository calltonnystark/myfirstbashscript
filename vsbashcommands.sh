#!/usr/bin/bash
# This #executale is used for executing the file suytem in to the machine.
executeable= chmod -x vsbashcommands.sh
echo $executeable
# We used this to update & upgrade our system because it is essential for smoothly execustion.
    sudo apt update && sudo apt upgrade -y
# This message is displayed after complete all the 


 echo  " System Update and Upgrade Sucessfully "
 echo " Now the processing of downloading & installing the process is started "
 sleep 2 
 echo 
"
       ''                                    ,'                     
                   ::'                                  '::                     
                  ;:::,                                ':::;                    
                 .:::::,                              .:::::                    
                 :::::::;                            '::::::;                   
                '::::::::;                          .::::::::.                  
                :::::::::::                        .::::::::::                  
               ;:::::::::::;                      .:::::::::::;                 
              .::::::::::::::                    .:::::::::::::.                
              ;:::::::::::::::.                 ':::::::::::::::                
             .::::::::::::::::::::::::::::::::::::::::::::::::::.               
             ::::::::::::::::::::::::::::::::::::::::::::::::::::               
            ;::::::::::::::::::::::::::::::::::::::::::::::::::::,              
          .:::::::::::::::::::::::::::::::::::::::::::::::::::::::;.            
        .;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::,.          
       ;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::;         
     ,::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::,       
   '::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::'     
   .::::::::::.    '::::::::::::::::::::::::::::::::::::::;    .:::::::::::     
      :::::::::'     .::::::::::::::::::::::::::::::::::.     ':::::::::,       
        ;::::::::,      ;:::::::::::::::::::::::::::::.     ,:::::::::.         
          ;::::::::,.     ':::::::::::::::::::::::::     .,:::::::::.           
            '::::::::;.     .:::::::,    .:::::::,     .;::::::::;              
               :::::::::.      ;:::.       ;:::.     .;::::::::'                
                 :::::::::'      .    .'    .      ':::::::::.                  
                   ;::::::::,        '::;        ':::::::::                     
                     '::::::::,.    ;:::::.    '::::::::;                       
                       .::::::::;,,::::::::;,,::::::::;                         
                         '::::::::::::::::::::::::::'                           
                          ,::::::::::::::::::::::::;                            
                           ;::::::::::::::::::::::;                             
                            ::::::::::::::::::::::                              
                             ::::::::::::::::::::.                              
                              ::::::::::::::::::.                               
                              .::::::::::::::::.                                
                               .::::::::::::::,                                 
                                .::::::::::::;                                  
                                 ':::::::::::                                   
                                  ::::::::::,                                                                          
 
"
 echo " Loading ********"
 echo " Loading *******"
 echo " Loading ******"
 echo " Loading *****"
 echo " Loading ****"
 echo " Loading ***"
 echo " Loading **"
 echo " Loading *"
 #This is the command which help to install 
    curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh
  sleep 3
echo " DO'NT TURN OFF YOUR MACHINE WHILE PROCESSING " 
sudo bash wazuh-install.sh -a   

date
echo " Now our system start to download the wazuh-manger in your machine "
 echo " Loading ********"
 echo " Loading *******"
 echo " Loading ******"
 echo " Loading *****"
 echo " Loading ****"
 echo " Loading ***"
 echo " Loading **"
 echo " Loading *"
sleep 3 
 echo " DO'NT TURN OFF YOUR MACHINE WHILE PROCESSING "
# This command is used to install the wazuh manger 
sudo systemctl start Wazuh-manager

echo " Congratulation your wazuh manager is installed sucessfully  " 

echo " Now, we check the status of the Wazuh-Manager "
sudo systemctl status Wazuh-manager

timeout 4s ip a