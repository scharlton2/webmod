#!/bin/sh
JARDIR=../../lib
java -cp $JARDIR/oui4.jar:$JARDIR/AbsoluteLayout.jar:$JARDIR/jcommon-1.0.12.jar:$JARDIR/jfreechart-1.0.9.jar oui.mms.gui.Mms ./control/webmod.control
