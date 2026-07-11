# 🧰 Tool Chest Printables

> Parametric 3D-printable trays for squarin' away your tool chest. Punch in the dimensions, print the bin.

A small collection of [OpenSCAD](https://openscad.org/) models for keeping a tool chest (or a drawer, or a shelf) shipshape. Everything is parametric — open the `.scad`, change a few numbers up top, and export an STL sized for your exact drawer.

## What's aboard

### `Sizable tray.scad`

A rounded, chamfered open-top tray with a scooped **front opening** so you can slide a fingertip in and lift small parts out. Every dimension is a variable at the top of the file:

| Parameter | What it does | Default |
|---|---|---|
| `$inner_x` | Inner width (mm) | 120 |
| `$inner_y` | Inner depth (mm) | 120 |
| `$inner_z` | Inner height (mm) | 120 |
| `$chamfer` | Corner rounding radius (mm) | 3 |
| `$wall_width` | Wall thickness (mm) | 2 |
| `$floor_width` | Floor thickness (mm) | 2 |
| `$opening_width` | Width of the front finger-scoop (mm) | 25 |
| `$opening_lift` | How far the scoop sits up from the floor (mm) | 5 |

## Printing it

1. Open `Sizable tray.scad` in [OpenSCAD](https://openscad.org/downloads.html).
2. Edit the dimensions at the top to fit your drawer.
3. Press **F6** to render, then **Export → STL**.
4. Slice and print — no supports needed. A 0.2 mm layer height and 3 perimeters makes a sturdy tray.

## License

Free to print, remix, and share. Fair winds. ⚓
