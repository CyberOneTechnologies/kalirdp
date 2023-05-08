# RDP to Kali
Enabling RDP on a Kali desktop, whether it is a virtual machine or a remote system, can provide a more efficient way to access the system compared to conventional VNC remote desktop services. The following steps guide you to download a script from a GitHub repository that will install all the necessary programs and software required to enable RDP on your Kali Linux desktop using Xfce4 and xrdp. Once executed, the script will make it easy for you to enable RDP access to your Kali desktop.

## Getting Started
To get started, simply follow these steps:

1.	Open your terminal and run the following command:

```
sudo git clone https://github.com/CyberOneTechnologies/kalirdp.git
```

2.	Once the files are downloaded, navigate to the KaliRDP directory:

```
cd kalirdp/
```

3.	Make the script executable:

```
sudo chmod +x xfce4.sh
```

4.	Run the script:

```
sudo ./xfce4.sh
```

5.	Wait for the script to finish. This will take some time as it updates and upgrades your Kali system, installs Xfce4 and xrdp, and configures xrdp to listen on port 3390.

6.	Once the script finishes, you should be able to connect to your Kali desktop using any RDP client. Simply open your RDP client and connect to your Kali system's IP address on port 3390.

## Troubleshooting
If you encounter any issues with the script or have trouble connecting to your Kali system via RDP, please refer to the following troubleshooting steps:

1.	Double-check that you followed all the steps correctly and that the script finished successfully.
2.	Make sure that your Kali system is running and connected to the network.
3.	Check that your firewall is not blocking port 3390.
4.	Verify that your RDP client is configured to connect to your Kali system on port 3390.

