.PHONY: upload

filament-spool-spindle.stl: filament-spool-spindle.scad
	openscad -o $@ $<

publish: filament-spool-spindle.stl
	thingiverse-publisher

clean: 
	rm filament-spool-spindle.stl
	
