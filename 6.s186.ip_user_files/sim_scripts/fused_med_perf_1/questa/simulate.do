onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fused_med_perf_opt

do {wave.do}

view wave
view structure
view signals

do {fused_med_perf.udo}

run -all

quit -force
