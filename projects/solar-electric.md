# Solar Electric Install

This covers the electrical aspects of the solar install on a Grand Design
Momentum 395m. See [Solar Mechanic](solar-mechanic.md) for the mechanical part.

- Time: 3 days
- Money: $4,000 with wiring, inverter, solar chargers and batteries _TODO: check
  receipts_

## Goal

Self-sufficient electric installation that's road-worthy and can sustain the
electric needs of a family while boon-docking for about a week.

## Photos

## Material

### Devices

- [12V Victron 3kW Inverter](https://www.amazon.com/Victron-Energy-MultiPlus-II-Inverter-UL-Certified/dp/B0BZV4Z9TM?tag=rvlifehacks-20)
  only for 12V setups.

  or

  [24V Victron 3kW Inverter](https://www.amazon.com/Victron-Energy-MultiPlus-II-70-50-2x120V/dp/B0D98JJBQB?tag=rvlifehacks-20)
  only for 24V setups.

- [MK3 VE.bus USB adapter](https://www.amazon.com/Interface-MK3-USB-C-VE-Bus-to-USB-C/dp/B0BNBVKSTH?tag=rvlifehacks-20)
  needed to configure the inverter from a PC or phone

- [Victron Smart Shunt](https://www.amazon.com/Victron-SmartShunt-500AMP-Bluetooth-Battery/dp/B0856PHNLX?tag=rvlifehacks-20)
  works for 6.5-70V setups
- [150V 60A Victron MPPT Solar Charger](https://www.amazon.com/Victron-BlueSolar-60-Tr-Charge-Controller/dp/B01EW2ASIK?tag=rvlifehacks-20)
  Need one for each string of solar panels (take the sum of Voc (open circuit
  voltage)). Two for 2x 3 solar panels in series. My panels have Voc 37.83, so
  150V / 37.82V = max 3.96 (virtually 4 but strictly speaking 3) panels per MPPT
  charger.

  or

  [150V 60A Victron MPPT Solar Charger with Bluetooth](https://www.amazon.com/Victron-SmartSolar-Charge-Controller-150V/dp/B07B4KF7LY/ref=sr_1_9?tag=rvlifehacks-20)
  if I'd do it again, I'd take with Bluetooth for the added convenience of
  configuring without the cable.

- [Renogy Core Mini 12V 300Ah 2Pcs](https://www.amazon.com/Renogy-300Ah-LiFePO4-Lithium-Battery/dp/B0DLNMWTY6?tag=rvlifehacks-20)

- [500A Battery Disconnect Switch](https://www.amazon.com/gp/product/B0D4Z8X6PY?tag=rvlifehacks-20)
- [250V 500A Fuse](https://www.amazon.com/gp/product/B0D2Z3JF4Y?tag=rvlifehacks-20)
  Based on max expected load on the batteries with 12V 600A you have 7200Wh and
  thus you can comfortably draw 7200W. Then as an absolute extreme example you
  could get about there by drawing 3000W off the inverter, 1500W for the
  hydraulic jacks, 1500W for the slide-outs and why not another 1000W to start
  the generator, that's 7000W or 583A at 12V, so 600A sounds about right. Cut in
  half and round up for 24V.
- [63A 2 Pole DC Breaker](https://www.amazon.com/gp/product/B0DK3JCBFM?tag=rvlifehacks-20)
  Connects the wire from the panel series to the MPPT solar charger. My 3 solar
  250W panels in series could deliver a maximum of 750W or 24.9A at 30.08Vmp.
  Good. With 63A I could attach a max of 1895W to that DC breaker (30.08Vmp \*
  63A = 1895.04VA or 1895W)
- [Inline Fuse (with set of fuses) 10Pcs](https://www.amazon.com/gp/product/B0DQWNZ7R4?smid=A35CT1Z0FOO90R?tag=rvlifehacks-20)
  Inline fuse for the solar wires. Use with 10A or 15A fuse.

- [Roof junction box](https://www.amazon.com/gp/product/B077QM9VM9?smid=A7QD3FRGORQFJ?tag=rvlifehacks-20)
- [Roof Junction Box Cable Gland 20Pcs](https://www.amazon.com/dp/B09GV9Q79C?tag=rvlifehacks-20)
- [Step drill bit](https://www.amazon.com/HSS-Step-Drill-Bit-Set/dp/B0BG43YQ4K?tag=rvlifehacks-20)
  Drill open the junction box for the gland

### Wires

- [20ft Red/Black 6Ga Wires](https://www.amazon.com/gp/product/B0CDLLV1HC?tag=rvlifehacks-20)
  MPPT to Battery (negative via disconnect switch)
- [30ft 12Ga Solar Connector on one end (both polarities)](https://www.amazon.com/gp/product/B09YGNV1DB?tag=rvlifehacks-20)
  Last solar panel to roof junction box
- [40ft 12Ga Solar Connector on both ends (both polarities)](https://www.amazon.com/gp/product/B0C4N6WLGR?tag=rvlifehacks-20)
  Connect solar panels in series if needed. The wires on the back of the solar
  panels usually reach the adjacent panel when mounted next to each other.
- [Butt connector set 100Pcs](https://www.amazon.com/TICONN-Connectors-Waterproof-Electrical-Automotive/dp/B086Z3H4X8?tag=rvlifehacks-20)
  Connect open-ended cable from junction box down to the MPPT.
- [12" 4/0Ga wire-pair red/black](https://www.amazon.com/Gauge-Performance-Battery-Inverter-Cables/dp/B0BQXLBPKL?tag=rvlifehacks-20)
  4/0Ga for up to 250A. Inter-connect the batteries with those and connect the
  shunt, disconnect switch, and inverter to the batteries with those. If you go
  with a 24V, half will do (1x 2/0Ga or 2x 0Ga in parallel might be even easier)
  **Better get the 4/0 Ga at an auto-parts store** I used the linked ones and
  they were bad. If you do buy those, make sure to hand-feel the temperature. If
  it gets hot to the touch when charging or drawing, replace them or your
  inverter will keep dropping out and you're potentially even risking a fire.

## Batteries

- For best value, we went with a
  [two-pack of 300Ah Renogy Core Mini](https://www.amazon.com/Renogy-300Ah-LiFePO4-Lithium-Battery/dp/B0DLNMWTY6?tag=rvlifehacks-20).
  if money plays no role, Victron offers high-quality
  [24V 200Ah packs](https://www.amazon.com/Victron-Energy-12-8-Volt-LiFePO4-Lithium/dp/B0B12GTKM9?tag=rvlifehacks-20).
  Get two of those and form 48V system with the
  [Victron 48V inverter](https://www.amazon.com/Victron-Energy-MultiPlus-II-3000-35-50/dp/B0945S183W?tag=rvlifehacks-20).
- Batteries are just placed in the compartment and held in place by the thick
  4/0 wires and gravity.

## Wiring

As stated in the bill of materials, use 4/0 wires for 12V, 6Ga for solar. The
no-name Amazon 1ft wires turned out to be of poor quality. The connectors
weren't clamped well and the cable heated up under load. Once we supplemented
them with 4/0 from O'reilly's many problems went away: No more voltage dips at
60% SoC (State of Charge) that causes Victron to shut off 110V supply and no
more barely-touchable wires during charging phases or not being able to start
the generator at low SoC.

## Breakers

Connects the 10A fused solar panel wires to the MPPTs

## MPPT Solar Chargers

We first used Renogy products but they went out simultaneously overnight after a
few weeks. Switched to Victron BlueSolar and never had issues since.

## Inverter

Victron 3kW 12V inverter (UL Certified). Works great and has many options.
Downsides:

- 12V only and doesn't do 12/24V or even 12/24/48V so you can't switch later on
  without swapping the inverter unit.
- Requires the
  [MK3 VE.bus USB adapter](https://www.amazon.com/Interface-MK3-USB-C-VE-Bus-to-USB-C/dp/B0BNBVKSTH?tag=rvlifehacks-20)
  (sold separately) to be configured.

## Smart Shunt

Good for monitoring the SoC of the battery by bluetooth (BLE). Display sold
separately. Shunts recalibrate themselves at 100% SoC. Useful with a display in
the living area. I had already installed the Renogy display in the living area
so I'm now running two shunts in series with Victron being the "master" (closest
to batteries) and the Renogy being the convenience one.

### Renogy vs Victron Smart Shunt Precision

Renogy's estimation is typically below the Victron one, esp. after a few days
without hitting 100% SoC it can be off by as much as 20%. I trust Victron has
the better algorithm.

## Photos

<p>
  <img src="../assets/pics/thumbs/SolarPanels.jpg" width="45%">
</p>

<p>
  <img src="../assets/pics/thumbs/RoofJunctionBoxForSolarAndStarlink.jpg" width="45%">
</p>

## Notes

- Doing it again, I'd go with a 48V battery pack (or 24V if you only have two
  12V battery packs) and just use one 12V AGM battery for the leveling jacks and
  generator start. Ensure enough CCA (Cold Cranking Amps).
- If you want to support 12V from your non-12V system you'll need another DC-DC
  converter to supply enough amps at 12V or attach the 110V->12V rectifier
  that's included with the camper.
- You will need to reroute your Automatic Transfer Switch, the box that switches
  over to the generator into the inverter (from the RVs main breaker panel.) At
  the same time, you'll route the output from the inverter into the panel where
  you took out the transfer switch output. You can probably reuse the RV wires
  for that if the inverter is not too far off. It worked on mine.
- With a 12V setup you'll also need to disconnect the 12V DC battery charger
  that connects to the 110V AC since that charger is designed for lead-acid/AGM
  batteries and not Lithium Iron Phosphate (LiFePo4) batteries. I use that now
  free 110V plug for the [Starlink router](starlink.md) in the basement.

### Real World 12V Usage

Measuring my real-world draw came down to about:

- Generator: 100Amps for a few seconds at ~60F
- Leveling Jacks: 120Amps while pushing up the front hydraulic leveling jacks.
- AC starting: 1200W, AC running 900W
