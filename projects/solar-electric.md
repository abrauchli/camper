# Solar Electric Install
This covers the electrical aspects of the solar install on a Grand Design
Momentum 395m.
See [Solar Mechanic](solar-mechanic.md) for the mechanical part.

- Time: 3 days
- Money: $4,000 with wiring, inverter, solar chargers and batteries *TODO: check receipts*

## Goal
Self-sufficient electric installation that's road-worthy and can sustain the electric needs of a
family while boon-docking for about a week.

## Batteries
For best value, we went with a two-pack of 300Ah Renogy Core Mini.

## Mounting
- Batteries
- Unistrut bonded and screwed into structure
- Shared roof junction box for Starlink (RJ45) + solar

## Wiring
4/0 wires for 12V, 6Ga for solar.
The no-name Amazon 1ft wires turned out to be of poor quality. The connectors
weren't clamped well and the cable heated up under load. Once we supplemented
them with 4/0 from O'reilly's many problems went away: No more voltage dips
at 60% SoC (State of Charge) that causes Victron to shut off 110V
supply and no more barely-touchable wires during charging phases or not being able to start the
generator at low SoC.

## Breakers

TODO

## MPPT Solar Chargers

We first used Renogy products but they went out simultaneously overnight after
a few weeks. Switched to Victron BlueSolar and never had issues since.

## Inverter
Victron 3kW 12V inverter (UL Certified).
Works great and has many options.
Downsides:
* 12V only and doesn't do 12/24V or even 12/24/48V so you can't switch later on
  without swapping the inverter unit.
* Requires the VE-bus USB adapter (sold separately) to be configured.

## Smart Shunt
Good for monitoring the SoC of the battery by bluetooth (BLE). Display sold
separately.
Shunts recalibrate themselves at 100% SoC.
Useful with a display in the living area. I had already installed the Renogy
display in the living area so I'm now running two shunts in series with Victron
being the "master" (closest to batteries) and the Renogy being the convenience
one.

### Renogy vs Victron Smart Shunt Precision
Renogy's estimation is typically below the Victron one, esp. after a few days
without hitting 100% SoC it can be off by as much as 20%. I trust Victron has
the better algorithm.

## Photos

<p>
  <img src="../pics/SolarPanels.jpg" width="45%">
</p>

<p>
  <img src="../pics/RoofJunctionBoxForSolarAndStarlink.jpg" width="45%">
</p>

## Notes
Doing it again, I'd go with a 48V battery pack (or 24V if you only have two 12V
battery packs) and just use one 12V AGM battery for the leveling jacks and
generator start. Ensure enough CCA (Cold Cranking Amps).

If you want to support 12V from your non-12V system you'll need another DC-DC
converter to supply enough amps at 12V or attach the 110V->12V rectifier that's
included with the camper.

### Real World 12V Usage
Measuring my real-world draw came down to about:
* Generator: 100Amps for a few seconds at ~60F
* Leveling Jacks: 120Amps while pushing up the front hydraulic leveling jacks.

