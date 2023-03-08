          Cube 
       For Delphi
   Copyright 2004 MCoP
--------------------------

Installation 

 1-Run Delphi.
 2-Choose "Install Component..." from Component menu.
 3-Select "MCube.pas" file.
 4-Choose a package.
 5-Click OK to install.
 6-Control will be appeared in Component Palette on MCoP page.

--------------------------

Properties

 Bitmap1 to 6: Faces Pictures.
 CenterX,CenterY: Drawing center position.
 Size: Cube radius size.
 Rotation: Rotation angles.
 DrawBorders: Borders visible.

--------------------------

Methods

 Rotate(X,Y,Z:Double) : Rotates cube.
 Draw(Dest:TCanvas) : Draws cube on a canvas.
 FaceAt(X,Y:Integer):Byte : Return face number includes given point.
 