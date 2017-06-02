# nRF24L01+ to Raspberry Pi adapter
Here lies a simple adapter for attaching one of those dirt-cheap nRF24L01+ modules to a Raspberry Pi (all models).  As seen on calcium3000.wordpress.com.

## Assembly
Pads are included for an optional 0805 surface mount capacitor, C1.  Some have reported that such a capacitor helps prevent wonkiness when transmitting at higher output (0dBm).  If extra capacitance at the power rails sounds peachy, install this guy first to make life easier later on.

Next, install P1 with a 2x4, 0.1" (2.54mm) female header such that the header sticks out of the side labeled *BOTTOM* -- this is also where the P1 designator sits.  P2 can either be another 2x4 female header for easy exchange of nRFs, or an nRF module can be soldered directly in.  Either way, make sure the header/radio protrudes from the opposite side of P1, labeled *TOP*.  If the nRF is directly soldered in, don't forget to clip the leads on the bottom side lest they sit dangerously close to the Broadcom chip and look quite ugly.

## Connection to RPi
This adapter is meant to plug directly into the GPIO header of a Raspberry Pi, facing inwards towards the processor.  Our adapter friend sits directly in the middle of the header on pins 17 to 24 (+3.3V to BCM 8) leaving 8 rows (16 pins) on each side when seated correctly.  See https://pinout.xyz for a good pin diagram.

Below is a table describing the pin functions and how they map from the RPi to the nRF24L01+.

| Pin function | nRF24L01+ | Raspberry Pi     |
| ------------ | --------- | ---------------- |
| VDD          | VDD (2)   | +3.3V (17)       |
| GND          | GND (1)   | GND (20)         |
| SCK          | SCK (5)   | BCM 11/SCK (23)  |
| MOSI         | MOSI (6)  | BCM 10/MOSI (19) |
| MISO         | MISO (7)  | BCM 9/MISO (21)  |
| CSN          | CSN (4)   | BCM 8/CE0 (24)   |
| CE           | CE (3)    | BCM 25 (22)      |
| IRQ          | IRQ (8)   | BCM 24 (18)      |


## License
Hardware files for this guy are licensed under the TAPR Open Hardware License.  See LICENSE.txt for more information.