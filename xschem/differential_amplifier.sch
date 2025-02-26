v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -460 -190 340 210 {flags=graph
y1=-0.16
y2=0.16
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0010825442
x2=0.0049416313
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"diff_out; vout2 vout1 -\\"
\\"diff_in; vin1 vin2 -\\"
\\"diff_out_; vout2_ vout1_ -\\""
color="7 8 4"
dataset=0
unitx=1
logx=0
logy=0
autoload=0}
N 0 -310 0 -270 {
lab=GND}
N 140 -310 140 -270 {
lab=GND}
N 320 -490 320 -470 {
lab=GND}
N 300 -490 320 -490 {
lab=GND}
N -150 -370 -140 -370 {
lab=vin1}
N 930 -490 930 -470 {
lab=GND}
N 910 -490 930 -490 {
lab=GND}
C {vsource.sym} -140 -340 0 0 {name=V1 value="SIN(0 0.1 1k)"}
C {vsource.sym} 0 -340 0 0 {name=V2 value=0.5 savecurrent=false}
C {gnd.sym} 0 -270 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -140 -370 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 0 -370 0 0 {name=p5 sig_type=std_logic lab=Vb}
C {launcher.sym} -410 -310 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/differential_amplifier.raw tran"
}
C {lab_pin.sym} 300 -510 0 1 {name=p7 sig_type=std_logic lab=vout2}
C {lab_pin.sym} 300 -530 0 1 {name=p8 sig_type=std_logic lab=vout1}
C {vsource.sym} 140 -340 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 140 -270 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 140 -370 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -310 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {gnd.sym} 320 -470 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 300 -550 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -530 0 0 {name=p11 sig_type=std_logic lab=vin2}
C {lab_pin.sym} 0 -550 0 0 {name=p12 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 0 -510 0 0 {name=p13 sig_type=std_logic lab=Vb}
C {simulator_commands_shown.sym} -290 -530 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1e-5 100e-3
.save all
"}
C {diff_amp.sym} 150 -520 0 0 {name=x1}
C {code.sym} -470 -470 2 1 {name=Essentials only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {lab_pin.sym} 910 -510 0 1 {name=p1 sig_type=std_logic lab=vout2_}
C {lab_pin.sym} 910 -530 0 1 {name=p4 sig_type=std_logic lab=vout1_}
C {gnd.sym} 930 -470 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 910 -550 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -530 0 0 {name=p14 sig_type=std_logic lab=vin2}
C {lab_pin.sym} 610 -550 0 0 {name=p15 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 610 -510 0 0 {name=p16 sig_type=std_logic lab=Vb}
C {diff_amp.sym} 760 -520 0 0 {name=x2
schematic=diff_amp_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/diff_amp.sim.spice])"
tclcommand="textwindow [file normalize ../mag/diff_amp.sim.spice]"
}
