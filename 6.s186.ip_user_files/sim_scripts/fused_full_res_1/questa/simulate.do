onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fused_full_res_opt

do {wave.do}

view wave
view structure
view signals

do {fused_full_res.udo}

run -all

quit -force