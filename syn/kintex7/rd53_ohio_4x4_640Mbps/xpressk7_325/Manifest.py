# To list file
# ls -1 | xargs -I % echo \"%\",

target = "xilinx"
action = "synthesis"

syn_device = "xc7k325"
syn_grade = "-2"
syn_package = "tfbg676"
syn_top = "top_level"
syn_project = "yarr"
syn_tool = "vivado"

#library = "work"

modules = {
"local" : ["../../../../rtl/common","../../../../rtl/kintex7","../../../../rtl/","../../../../ip-cores/kintex7"],
#"git" : ["https://bitbucket.org/levkurilenko/aurora_rx.git"]
}

fetchto = "../../../../ip-cores"

files = [
#TOP
"../board_pkg.vhd",
"../../xpressk7_325_type.vhd",
"../../bram_yarr_trenz.vhd",
"../../app_pkg.vhd",
"../../app.vhd",
"../../xpressk7.xdc",
"../../xpressk7-fmc-ohio.xdc",
"../../xpressk7-timing.xdc",
"../../handshake_sdc.tcl",
"../../handshake.xdc",
"../../version.vhd",
]

