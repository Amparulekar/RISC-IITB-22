# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.cache/wt [current_project]
set_property parent.project_path C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Register_File/111gen.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/ALU/ALU.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Bit_accessor/Bit_accessor.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Register_File/DEMUX.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Incrementer_Decrementer/Incrementer.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Register_File/MUX.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Registers/Register.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Register_File/Register_File.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/SE_1_16.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Sign_Extenders/SE_6_16.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Sign_Extenders/SE_9_16.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Shift_Seven/Shift_Seven.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/8_to_3_decoder/decoder.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/demux1to8.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/mux2to1.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/mux3to1.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/mux6to1.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/mux8to1.vhd
  C:/Users/nikhi/Desktop/RISC-IITB-22-main/uP/uP.srcs/sources_1/imports/hdl/Misc_components/top.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7k70tfbv676-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]