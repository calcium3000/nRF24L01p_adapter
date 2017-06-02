# nRF24L01+ to Raspberry Pi adapter
Here lies a simple adapter for attaching one of those dirt-cheap nRF24L01+ modules to a Raspberry Pi (all models).  As seen on calcium3000.wordpress.com.

## Assembly
Pads are included for an optional 0805 surface mount capacitor, C1.  Some have reported that such a capacitor helps prevent wonkiness when transmitting at higher output (0dBm).  If extra capacitance at the power rails sounds peachy, install this guy first to make life easier later on.

Next, install P1 with a 2x4, 0.1" (2.54mm) female header such that the header sticks out of the side labeled 'BOTTOM' -- this is also where the P1 designator sits.  P2 can either be another 2x4 female header for easy exchange of nRFs, or an nRF module can be soldered directly in.  Either way, make sure the header/radio protrudes from the opposite side of P1, labeled 'TOP.'  If the nRF is directly soldered in, don't forget to clip the leads on the bottom side lest they sit dangerously close to the Broadcom chip and look quite ugly.

## License
Hardware files for this guy are licensed under the TAPR Open Hardware License.  See LICENSE.txt for more information.