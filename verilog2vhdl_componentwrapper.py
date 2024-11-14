text = """
inout  [C3_NUM_DQ_PINS-1:0]                      mcb3_dram_dq,
   output [C3_MEM_ADDR_WIDTH-1:0]                   mcb3_dram_a,
   output [C3_MEM_BANKADDR_WIDTH-1:0]               mcb3_dram_ba,
   output                                           mcb3_dram_ras_n,
   output                                           mcb3_dram_cas_n,
   output                                           mcb3_dram_we_n,
   output                                           mcb3_dram_odt,
   output                                           mcb3_dram_cke,
   output                                           mcb3_dram_dm,
   inout                                            mcb3_dram_udqs,
   inout                                            mcb3_dram_udqs_n,
   inout                                            mcb3_rzq,
   inout                                            mcb3_zio,
   output                                           mcb3_dram_udm,
   input                                            c3_sys_clk_p,
   input                                            c3_sys_clk_n,
   input                                            c3_sys_rst_i,
   output                                           c3_calib_done,
   output                                           c3_clk0,
   output                                           c3_rst0,
   inout                                            mcb3_dram_dqs,
   inout                                            mcb3_dram_dqs_n,
   output                                           mcb3_dram_ck,
   output                                           mcb3_dram_ck_n,
      input		c3_s0_axi_aclk   ,
      input		c3_s0_axi_aresetn,
      input [C3_S0_AXI_ID_WIDTH - 1:0]	c3_s0_axi_awid   ,
      input [C3_S0_AXI_ADDR_WIDTH - 1:0]	c3_s0_axi_awaddr ,
      input [7:0]	c3_s0_axi_awlen  ,
      input [2:0]	c3_s0_axi_awsize ,
      input [1:0]	c3_s0_axi_awburst,
      input [0:0]	c3_s0_axi_awlock ,
      input [3:0]	c3_s0_axi_awcache,
      input [2:0]	c3_s0_axi_awprot ,
      input [3:0]	c3_s0_axi_awqos  ,
      input		c3_s0_axi_awvalid,
      output		c3_s0_axi_awready,
      input [C3_S0_AXI_DATA_WIDTH - 1:0]	c3_s0_axi_wdata  ,
      input [C3_S0_AXI_DATA_WIDTH/8 - 1:0]	c3_s0_axi_wstrb  ,
      input		c3_s0_axi_wlast  ,
      input		c3_s0_axi_wvalid ,
      output		c3_s0_axi_wready ,
      output [C3_S0_AXI_ID_WIDTH - 1:0]	c3_s0_axi_bid    ,
      output [C3_S0_AXI_ID_WIDTH - 1:0]	c3_s0_axi_wid    ,
      output [1:0]	c3_s0_axi_bresp  ,
      output		c3_s0_axi_bvalid ,
      input		c3_s0_axi_bready ,
      input [C3_S0_AXI_ID_WIDTH - 1:0]	c3_s0_axi_arid   ,
      input [C3_S0_AXI_ADDR_WIDTH - 1:0]	c3_s0_axi_araddr ,
      input [7:0]	c3_s0_axi_arlen  ,
      input [2:0]	c3_s0_axi_arsize ,
      input [1:0]	c3_s0_axi_arburst,
      input [0:0]	c3_s0_axi_arlock ,
      input [3:0]	c3_s0_axi_arcache,
      input [2:0]	c3_s0_axi_arprot ,
      input [3:0]	c3_s0_axi_arqos  ,
      input		c3_s0_axi_arvalid,
      output		c3_s0_axi_arready,
      output [C3_S0_AXI_ID_WIDTH - 1:0]	c3_s0_axi_rid    ,
      output [C3_S0_AXI_DATA_WIDTH - 1:0]	c3_s0_axi_rdata  ,
      output [1:0]	c3_s0_axi_rresp  ,
      output		c3_s0_axi_rlast  ,
      output		c3_s0_axi_rvalid ,
      input		c3_s0_axi_rready 
"""

outfile = "out.vhd"

import re

def type_convt(t):
    if "out" in t:
        return "out"
    elif "in" in t:
        return "in"
    else:
        return "inout"

with open(outfile, 'w') as f:

    f.write("attribute BOX_TYPE : STRING;\n")
    f.write("attribute BOX_TYPE of ddr2_mcb : component is \"user_black_box\";\n")
    
    ####
    f.write("\n-- component ports\n")
    for line in text.split('\n'):
        ll = "error"
        line = line.replace(',','')
        vec_size = re.findall(r'(\[.*?\])', line)
        if len(vec_size) == 1:
            c = [l.strip() for l in line.split(vec_size[0])] + vec_size
            ll = f"{c[1]} : {type_convt(c[0])} std_logic_vector({c[2].split(':')[0][1:]} downto {c[2].split(':')[1][:-1]});"
        elif len(vec_size) == 0:
            c = [l.strip() for l in line.split()]
            if len(c) == 2:
                ll = f"{c[1]} : {type_convt(c[0])} std_logic;"
            if len(c) == 0:
                continue
        f.write(ll + '\n')

    ####
    f.write("\n-- internal signals\n")
    for line in text.split('\n'):
        ll = "error"
        line = line.replace(',','')
        vec_size = re.findall(r'(\[.*?\])', line)
        if len(vec_size) == 1:
            c = [l.strip() for l in line.split(vec_size[0])] + vec_size
            ll = f"signal i_{c[1]} : std_logic_vector({c[2].split(':')[0][1:]} downto {c[2].split(':')[1][:-1]});"
        elif len(vec_size) == 0:
            c = [l.strip() for l in line.split()]
            if len(c) == 2:
                ll = f"signal i_{c[1]} : std_logic;"
            if len(c) == 0:
                continue
        f.write(ll + '\n')

    ####
    f.write("\n-- internal signal assigments\n")
    for line in text.split('\n'):
        ll = "error"
        line = line.replace(',','')
        vec_size = re.findall(r'(\[.*?\])', line)
        if len(vec_size) == 1:
            c = [l.strip() for l in line.split(vec_size[0])] + vec_size
            if len(c) == 0:
                continue
            if "out" in c[0]:
                continue
            else:
                ll = f"i_{c[1]} <= {c[1]};"
        elif len(vec_size) == 0:
            c = [l.strip() for l in line.split()]
            if len(c) == 0:
                continue
            if "out" in c[0]:
                continue
            if len(c) == 2:
                ll = f"i_{c[1]} <= {c[1]};"
        f.write(ll + '\n')    

    ####
    f.write("\n-- port map\n")
    for line in text.split('\n'):
        ll = "error"
        line = line.replace(',','')
        vec_size = re.findall(r'(\[.*?\])', line)
        if len(vec_size) == 1:
            c = [l.strip() for l in line.split(vec_size[0])] + vec_size
            if len(c) == 0:
                continue
            if "out" in c[0]:
                ll = f"{c[1]} => i_{c[1]},"
            else:
                ll = f"{c[1]} => {c[1]},"
        elif len(vec_size) == 0:
            c = [l.strip() for l in line.split()]
            if len(c) == 0:
                continue
            if "out" in c[0]:
                ll = f"{c[1]} => i_{c[1]},"
            if len(c) == 2:
                ll = f"{c[1]} => {c[1]},"
        f.write(ll + '\n')  