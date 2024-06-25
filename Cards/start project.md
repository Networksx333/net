up:: [[SIYI project]]
tags:: 

# start project

```
sudo chmod 777 /dev/ttyUSB0
MdmDisp
NetTopology
sudo python3 cursed_gui.py --address 127.0.0.1 --modem 1:1
```
### Setting up CAN Bus on Rock Pi 5 B

#### 1. Edit the Configuration File
First, you need to modify the system configuration to enable SPI and configure the MCP2515 CAN controller. Open the configuration file using Vim:

```bash
sudo vim /config/config.txt
```

Depending on your MCP2515's oscillator, add the appropriate configuration at the end of the file:

- For a 12 MHz oscillator:   
``` bash
dtparam=spi=on
dtoverlay=mcp2515-can0,oscillator=12000000,interrupt=25,spimaxfrequency=2000000
```

![[Pasted image 20240624122136.png]]
- For an 8 MHz oscillator:
![[Pasted image 20240624122157.png]]
```
dtparam=spi=on
dtoverlay=mcp2515-can0,oscillator=8000000,interrupt=25,spimaxfrequency=1000000
```
Save and exit Vim :)
#### 2. Manage Overlays
After editing the configuration, use the `rsetup` tool to manage device overlays:

```bash
sudo rsetup
```

Navigate to `=>overlays=>manage overlays=>` and make the following changes:
- **Enable**:
  - `Enable CAN1-M0`
  - `Enable MCP2515 with 8MHz external clock on SPI0-M2 over CS0`
- **Disable** all other options not required for your setup.
![[Pasted image 20240624123806.png]]
#### 3. Verify the Configuration
After configuring the overlays, reboot your Rock Pi 5. Post-reboot, check that the SPI and CAN interfaces are correctly loaded and operational by entering:

```bash
dmesg | grep -i '\(can\|spi\)'
```

#### Expected Outputs
- **Good Output**: This will indicate that both CAN and SPI interfaces are loaded without errors. You should see messages confirming the successful initialization of these interfaces.
![[Pasted image 20240624122341.png]]
- **Bad Output**: Errors or warnings related to CAN or SPI, indicating issues in configuration or hardware connections.
![[Pasted image 20240624122405.png]]

If not working after correct initialization, try 
```

```

By following these revised instructions, you should be able to set up the CAN interface on your Rock Pi 5 with greater clarity and accuracy. If you encounter any error messages, double-check the configurations, especially the oscillator values and pin assignments.

zsh 

UART CAN 

ublox gnss 

uavmonitor imu
