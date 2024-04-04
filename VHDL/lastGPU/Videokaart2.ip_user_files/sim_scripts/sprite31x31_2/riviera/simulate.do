transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+sprite31x31_2  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sprite31x31_2 xil_defaultlib.glbl

do {sprite31x31_2.udo}

run 1000ns

endsim

quit -force
