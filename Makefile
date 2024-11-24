FG_SCENERY=${HOME}/Dropbox/FlightGear/local-scenery-mods

TARGET_DIR=Objects/w090n40/w085n46/

VIEW_LAT=46.50094149
VIEW_LON=-84.37185567
VIEW_HDG=77
VIEW_ALT=1000

FILES=soo-lift-bridge/soo-lift-bridge.ac \
  soo-lift-bridge/soo-lift-bridge.xml \
  soo-lift-bridge/soo-lift-bridge1.png \
  soo-lift-bridge/soo-lift-bridge2.png

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --aircraft=ufo --timeofday=noon --lat=${VIEW_LAT} --lon=${VIEW_LON} --altitude=${VIEW_ALT} --heading=${VIEW_HDG}

view-dawn: install
	fgfs --aircraft=ufo --timeofday=dawn --lat=${VIEW_LAT} --lon=${VIEW_LON} --altitude=${VIEW_ALT} --heading=${VIEW_HDG}

view-dusk: install
	fgfs --aircraft=ufo --timeofday=dusk --lat=${VIEW_LAT} --lon=${VIEW_LON} --altitude=${VIEW_ALT} --heading=${VIEW_HDG}

view-night: install
	fgfs --aircraft=ufo --timeofday=midnight --lat=${VIEW_LAT} --lon=${VIEW_LON} --altitude=${VIEW_ALT} --heading=${VIEW_HDG}
