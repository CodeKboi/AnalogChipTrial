v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -320 240 -320 {
lab=GND}
N 420 -320 450 -320 {
lab=GND}
N 210 -470 210 -350 {
lab=vout1}
N 450 -390 450 -350 {
lab=vout2}
N 210 -560 210 -530 {
lab=VDD}
N 210 -560 450 -560 {
lab=VDD}
N 450 -560 450 -550 {
lab=VDD}
N 450 -550 450 -530 {
lab=VDD}
N 330 -590 330 -560 {
lab=VDD}
N 210 -290 210 -240 {
lab=virtual_gnd}
N 210 -240 450 -240 {
lab=virtual_gnd}
N 450 -290 450 -240 {
lab=virtual_gnd}
N 320 -240 320 -170 {
lab=virtual_gnd}
N 160 -500 170 -500 {
lab=vout1}
N 160 -500 160 -460 {
lab=vout1}
N 160 -460 210 -460 {
lab=vout1}
N 490 -500 510 -500 {
lab=vout2}
N 510 -500 510 -460 {
lab=vout2}
N 450 -460 510 -460 {
lab=vout2}
N 210 -500 230 -500 {
lab=VDD}
N 230 -540 230 -500 {
lab=VDD}
N 210 -540 230 -540 {
lab=VDD}
N 430 -500 450 -500 {
lab=VDD}
N 430 -540 430 -500 {
lab=VDD}
N 430 -540 450 -540 {
lab=VDD}
N 320 -110 320 -80 {
lab=GND}
N 320 -140 340 -140 {
lab=GND}
N 340 -140 340 -100 {
lab=GND}
N 320 -100 340 -100 {
lab=GND}
N 450 -470 450 -390 {
lab=vout2}
N 240 -320 420 -320 {
lab=GND}
N 320 -320 320 -280 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 300 -140 0 0 {name=M1
W=10
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 190 -500 0 0 {name=M2
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 470 -500 0 1 {name=M3
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 190 -320 0 0 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 470 -320 0 1 {name=M5
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 280 -140 0 0 {name=p6 sig_type=std_logic lab=Vb}
C {opin.sym} 450 -400 0 1 {name=p7 sig_type=std_logic lab=vout2}
C {opin.sym} 210 -400 0 1 {name=p8 sig_type=std_logic lab=vout1}
C {ipin.sym} 490 -320 0 1 {name=p1 sig_type=std_logic lab=vin2}
C {ipin.sym} 170 -320 0 0 {name=p4 sig_type=std_logic lab=vin1}
C {iopin.sym} 320 -80 0 0 {name=p2 sig_type=std_logic lab=GND}
C {iopin.sym} 330 -590 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -240 2 1 {name=p5 sig_type=std_logic lab=virtual_gnd}
C {lab_pin.sym} 320 -280 0 0 {name=p9 sig_type=std_logic lab=GND}
