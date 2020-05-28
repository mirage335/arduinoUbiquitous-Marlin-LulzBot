
#_declare_arduino_device_zero
_declare_arduino_installation_1.8.5

#Enable search if "vm.img" and related files are missing.
export ubVirtImageLocal="false"

# _arduino_example_blink() {
# 	_arduino_run "$scriptLib"/Blink
# }
# 
# 
# _task_scope_arduinoide_blink() {
# 	_scope_arduinoide "$scriptLib"/Blink "$@"
# }
# 
# 
# _refresh_anchors_task() {
# 	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_task_scope_arduinoide_blink
# }


_rewrite_arduinoide() {
	find . -maxdepth 1 -type f -name "*.h" -exec sed -i 's/utility\/u8g.h/clib\/u8g.h/g' {} \;
	find . -maxdepth 1 -type f -name "*.cpp" -exec sed -i 's/utility\/u8g.h/clib\/u8g.h/g' {} \;

	find . -maxdepth 1 -type f -name "*SdBaseFile.h" -exec sed -i 's/fpos_t/fpos_t1/g' {} \;
	find . -maxdepth 1 -type f -name "*SdBaseFile.cpp" -exec sed -i 's/fpos_t/fpos_t1/g' {} \;
}

