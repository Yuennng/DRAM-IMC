----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:25 11/13/2024 
-- Design Name: 
-- Module Name:    ddr2_mcb_wrapper - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ddr2_mcb_wrapper is
  port (
	 p_sysclk_2x : in std_logic;
	 p_sysclk_2x_180 : in std_logic;
	 p_pll_ce_0 : in std_logic;
	 p_pll_ce_90 : in std_logic;
	 p_pll_lock : in std_logic;
	 p_pll_lock_bufpll_o : out std_logic;
	 p_sysclk_2x_bufpll_o : out std_logic;
	 p_sysclk_2x_180_bufpll_o : out std_logic;
	 p_pll_ce_0_bufpll_o : out std_logic;
	 p_pll_ce_90_bufpll_o : out std_logic;
	 p_sys_rst : in std_logic;
	 p_ui_clk : in std_logic;
	 p_uo_done_cal : out std_logic;
  
    p_axi4_0_M_ARADDR : in std_logic_vector(31 downto 0);
	p_axi4_0_M_ARBURST : in std_logic_vector(1 downto 0);
	p_axi4_0_M_ARCACHE : in std_logic_vector(3 downto 0);
   p_axi4_0_M_ARESETN : in std_logic_vector(0 to 0);
   p_axi4_0_M_ARID : in std_logic_vector(0 to 0);
   p_axi4_0_M_ARLEN : in std_logic_vector(7 downto 0);
   p_axi4_0_M_ARLOCK : in std_logic_vector(1 downto 0);
   p_axi4_0_M_ARPROT : in std_logic_vector(2 downto 0);
   p_axi4_0_M_ARQOS : in std_logic_vector(3 downto 0);
   p_axi4_0_M_ARREADY : out std_logic_vector(0 to 0);
   p_axi4_0_M_ARSIZE : in std_logic_vector(2 downto 0);
   p_axi4_0_M_ARVALID : in std_logic_vector(0 to 0);
   p_axi4_0_M_AWADDR : in std_logic_vector(31 downto 0);
   p_axi4_0_M_AWBURST : in std_logic_vector(1 downto 0);
   p_axi4_0_M_AWCACHE : in std_logic_vector(3 downto 0);
   p_axi4_0_M_AWID : in std_logic_vector(0 to 0);
   p_axi4_0_M_AWLEN : in std_logic_vector(7 downto 0);
   p_axi4_0_M_AWLOCK : in std_logic_vector(1 downto 0);
   p_axi4_0_M_AWPROT : in std_logic_vector(2 downto 0);
   p_axi4_0_M_AWQOS : in std_logic_vector(3 downto 0);
   p_axi4_0_M_AWREADY : out std_logic_vector(0 to 0);
   p_axi4_0_M_AWSIZE : in std_logic_vector(2 downto 0);
   p_axi4_0_M_AWVALID : in std_logic_vector(0 to 0);
   p_axi4_0_M_BID : out std_logic_vector(0 to 0);
   p_axi4_0_M_BREADY : in std_logic_vector(0 to 0);
   p_axi4_0_M_BRESP : out std_logic_vector(1 downto 0);
   p_axi4_0_M_BVALID : out std_logic_vector(0 to 0);
   p_axi4_0_M_RDATA : out std_logic_vector(31 downto 0);
   p_axi4_0_M_RID : out std_logic_vector(0 to 0);
   p_axi4_0_M_RLAST : out std_logic_vector(0 to 0);
   p_axi4_0_M_RREADY : out std_logic_vector(0 to 0);
   p_axi4_0_M_RRESP : out std_logic_vector(1 downto 0);
   p_axi4_0_M_RVALID : out std_logic_vector(0 to 0);
   p_axi4_0_M_WDATA : in std_logic_vector(31 downto 0);
   p_axi4_0_M_WLAST : in std_logic_vector(0 to 0);
   p_axi4_0_M_WREADY : out std_logic_vector(0 to 0);
   p_axi4_0_M_WSTRB : in std_logic_vector(3 downto 0);
   p_axi4_0_M_WVALID : in std_logic_vector(0 to 0)
  
    p_mcbx_dram_we_n : out std_logic;
    p_mcbx_dram_udqs_n : inout std_logic;
    p_mcbx_dram_udqs : inout std_logic;
    p_mcbx_dram_udm : out std_logic;
    p_mcbx_dram_ras_n : out std_logic;
    p_mcbx_dram_odt : out std_logic;
    p_mcbx_dram_ldm : out std_logic;
    p_mcbx_dram_dqs_n : inout std_logic;
    p_mcbx_dram_dqs : inout std_logic;
    p_mcbx_dram_dq : inout std_logic_vector(15 downto 0);
    p_mcbx_dram_clk_n : out std_logic;
    p_mcbx_dram_clk : out std_logic;
    p_mcbx_dram_cke : out std_logic;
    p_mcbx_dram_cas_n : out std_logic;
    p_mcbx_dram_ba : out std_logic_vector(2 downto 0);
    p_mcbx_dram_addr : out std_logic_vector(12 downto 0);
    p_zio : inout std_logic;
    p_rzq : inout std_logic;
  );
end ddr2_mcb_wrapper;

architecture Structural of ddr2_mcb_wrapper is
component system_mcb_ddr2_wrapper is
    port (
      sysclk_2x : in std_logic;
      sysclk_2x_180 : in std_logic;
      pll_ce_0 : in std_logic;
      pll_ce_90 : in std_logic;
      pll_lock : in std_logic;
      pll_lock_bufpll_o : out std_logic;
      sysclk_2x_bufpll_o : out std_logic;
      sysclk_2x_180_bufpll_o : out std_logic;
      pll_ce_0_bufpll_o : out std_logic;
      pll_ce_90_bufpll_o : out std_logic;
      sys_rst : in std_logic;
      mcbx_dram_addr : out std_logic_vector(12 downto 0);
      mcbx_dram_ba : out std_logic_vector(2 downto 0);
      mcbx_dram_ras_n : out std_logic;
      mcbx_dram_cas_n : out std_logic;
      mcbx_dram_we_n : out std_logic;
      mcbx_dram_cke : out std_logic;
      mcbx_dram_clk : out std_logic;
      mcbx_dram_clk_n : out std_logic;
      mcbx_dram_dq : inout std_logic_vector(15 downto 0);
      mcbx_dram_dqs : inout std_logic;
      mcbx_dram_dqs_n : inout std_logic;
      mcbx_dram_udqs : inout std_logic;
      mcbx_dram_udqs_n : inout std_logic;
      mcbx_dram_udm : out std_logic;
      mcbx_dram_ldm : out std_logic;
      mcbx_dram_odt : out std_logic;
      mcbx_dram_ddr3_rst : out std_logic;
      rzq : inout std_logic;
      zio : inout std_logic;
      ui_clk : in std_logic;
      uo_done_cal : out std_logic;
      s0_axi_aclk : in std_logic;
      s0_axi_aresetn : in std_logic;
      s0_axi_awid : in std_logic_vector(0 to 0);
      s0_axi_awaddr : in std_logic_vector(31 downto 0);
      s0_axi_awlen : in std_logic_vector(7 downto 0);
      s0_axi_awsize : in std_logic_vector(2 downto 0);
      s0_axi_awburst : in std_logic_vector(1 downto 0);
      s0_axi_awlock : in std_logic_vector(0 to 0);
      s0_axi_awcache : in std_logic_vector(3 downto 0);
      s0_axi_awprot : in std_logic_vector(2 downto 0);
      s0_axi_awqos : in std_logic_vector(3 downto 0);
      s0_axi_awvalid : in std_logic;
      s0_axi_awready : out std_logic;
      s0_axi_wdata : in std_logic_vector(31 downto 0);
      s0_axi_wstrb : in std_logic_vector(3 downto 0);
      s0_axi_wlast : in std_logic;
      s0_axi_wvalid : in std_logic;
      s0_axi_wready : out std_logic;
      s0_axi_bid : out std_logic_vector(0 to 0);
      s0_axi_bresp : out std_logic_vector(1 downto 0);
      s0_axi_bvalid : out std_logic;
      s0_axi_bready : in std_logic;
      s0_axi_arid : in std_logic_vector(0 to 0);
      s0_axi_araddr : in std_logic_vector(31 downto 0);
      s0_axi_arlen : in std_logic_vector(7 downto 0);
      s0_axi_arsize : in std_logic_vector(2 downto 0);
      s0_axi_arburst : in std_logic_vector(1 downto 0);
      s0_axi_arlock : in std_logic_vector(0 to 0);
      s0_axi_arcache : in std_logic_vector(3 downto 0);
      s0_axi_arprot : in std_logic_vector(2 downto 0);
      s0_axi_arqos : in std_logic_vector(3 downto 0);
      s0_axi_arvalid : in std_logic;
      s0_axi_arready : out std_logic;
      s0_axi_rid : out std_logic_vector(0 to 0);
      s0_axi_rdata : out std_logic_vector(31 downto 0);
      s0_axi_rresp : out std_logic_vector(1 downto 0);
      s0_axi_rlast : out std_logic;
      s0_axi_rvalid : out std_logic;
      s0_axi_rready : in std_logic;
      s1_axi_aclk : in std_logic;
      s1_axi_aresetn : in std_logic;
      s1_axi_awid : in std_logic_vector(3 downto 0);
      s1_axi_awaddr : in std_logic_vector(31 downto 0);
      s1_axi_awlen : in std_logic_vector(7 downto 0);
      s1_axi_awsize : in std_logic_vector(2 downto 0);
      s1_axi_awburst : in std_logic_vector(1 downto 0);
      s1_axi_awlock : in std_logic_vector(0 to 0);
      s1_axi_awcache : in std_logic_vector(3 downto 0);
      s1_axi_awprot : in std_logic_vector(2 downto 0);
      s1_axi_awqos : in std_logic_vector(3 downto 0);
      s1_axi_awvalid : in std_logic;
      s1_axi_awready : out std_logic;
      s1_axi_wdata : in std_logic_vector(31 downto 0);
      s1_axi_wstrb : in std_logic_vector(3 downto 0);
      s1_axi_wlast : in std_logic;
      s1_axi_wvalid : in std_logic;
      s1_axi_wready : out std_logic;
      s1_axi_bid : out std_logic_vector(3 downto 0);
      s1_axi_bresp : out std_logic_vector(1 downto 0);
      s1_axi_bvalid : out std_logic;
      s1_axi_bready : in std_logic;
      s1_axi_arid : in std_logic_vector(3 downto 0);
      s1_axi_araddr : in std_logic_vector(31 downto 0);
      s1_axi_arlen : in std_logic_vector(7 downto 0);
      s1_axi_arsize : in std_logic_vector(2 downto 0);
      s1_axi_arburst : in std_logic_vector(1 downto 0);
      s1_axi_arlock : in std_logic_vector(0 to 0);
      s1_axi_arcache : in std_logic_vector(3 downto 0);
      s1_axi_arprot : in std_logic_vector(2 downto 0);
      s1_axi_arqos : in std_logic_vector(3 downto 0);
      s1_axi_arvalid : in std_logic;
      s1_axi_arready : out std_logic;
      s1_axi_rid : out std_logic_vector(3 downto 0);
      s1_axi_rdata : out std_logic_vector(31 downto 0);
      s1_axi_rresp : out std_logic_vector(1 downto 0);
      s1_axi_rlast : out std_logic;
      s1_axi_rvalid : out std_logic;
      s1_axi_rready : in std_logic;
      s2_axi_aclk : in std_logic;
      s2_axi_aresetn : in std_logic;
      s2_axi_awid : in std_logic_vector(3 downto 0);
      s2_axi_awaddr : in std_logic_vector(31 downto 0);
      s2_axi_awlen : in std_logic_vector(7 downto 0);
      s2_axi_awsize : in std_logic_vector(2 downto 0);
      s2_axi_awburst : in std_logic_vector(1 downto 0);
      s2_axi_awlock : in std_logic_vector(0 to 0);
      s2_axi_awcache : in std_logic_vector(3 downto 0);
      s2_axi_awprot : in std_logic_vector(2 downto 0);
      s2_axi_awqos : in std_logic_vector(3 downto 0);
      s2_axi_awvalid : in std_logic;
      s2_axi_awready : out std_logic;
      s2_axi_wdata : in std_logic_vector(31 downto 0);
      s2_axi_wstrb : in std_logic_vector(3 downto 0);
      s2_axi_wlast : in std_logic;
      s2_axi_wvalid : in std_logic;
      s2_axi_wready : out std_logic;
      s2_axi_bid : out std_logic_vector(3 downto 0);
      s2_axi_bresp : out std_logic_vector(1 downto 0);
      s2_axi_bvalid : out std_logic;
      s2_axi_bready : in std_logic;
      s2_axi_arid : in std_logic_vector(3 downto 0);
      s2_axi_araddr : in std_logic_vector(31 downto 0);
      s2_axi_arlen : in std_logic_vector(7 downto 0);
      s2_axi_arsize : in std_logic_vector(2 downto 0);
      s2_axi_arburst : in std_logic_vector(1 downto 0);
      s2_axi_arlock : in std_logic_vector(0 to 0);
      s2_axi_arcache : in std_logic_vector(3 downto 0);
      s2_axi_arprot : in std_logic_vector(2 downto 0);
      s2_axi_arqos : in std_logic_vector(3 downto 0);
      s2_axi_arvalid : in std_logic;
      s2_axi_arready : out std_logic;
      s2_axi_rid : out std_logic_vector(3 downto 0);
      s2_axi_rdata : out std_logic_vector(31 downto 0);
      s2_axi_rresp : out std_logic_vector(1 downto 0);
      s2_axi_rlast : out std_logic;
      s2_axi_rvalid : out std_logic;
      s2_axi_rready : in std_logic;
      s3_axi_aclk : in std_logic;
      s3_axi_aresetn : in std_logic;
      s3_axi_awid : in std_logic_vector(3 downto 0);
      s3_axi_awaddr : in std_logic_vector(31 downto 0);
      s3_axi_awlen : in std_logic_vector(7 downto 0);
      s3_axi_awsize : in std_logic_vector(2 downto 0);
      s3_axi_awburst : in std_logic_vector(1 downto 0);
      s3_axi_awlock : in std_logic_vector(0 to 0);
      s3_axi_awcache : in std_logic_vector(3 downto 0);
      s3_axi_awprot : in std_logic_vector(2 downto 0);
      s3_axi_awqos : in std_logic_vector(3 downto 0);
      s3_axi_awvalid : in std_logic;
      s3_axi_awready : out std_logic;
      s3_axi_wdata : in std_logic_vector(31 downto 0);
      s3_axi_wstrb : in std_logic_vector(3 downto 0);
      s3_axi_wlast : in std_logic;
      s3_axi_wvalid : in std_logic;
      s3_axi_wready : out std_logic;
      s3_axi_bid : out std_logic_vector(3 downto 0);
      s3_axi_bresp : out std_logic_vector(1 downto 0);
      s3_axi_bvalid : out std_logic;
      s3_axi_bready : in std_logic;
      s3_axi_arid : in std_logic_vector(3 downto 0);
      s3_axi_araddr : in std_logic_vector(31 downto 0);
      s3_axi_arlen : in std_logic_vector(7 downto 0);
      s3_axi_arsize : in std_logic_vector(2 downto 0);
      s3_axi_arburst : in std_logic_vector(1 downto 0);
      s3_axi_arlock : in std_logic_vector(0 to 0);
      s3_axi_arcache : in std_logic_vector(3 downto 0);
      s3_axi_arprot : in std_logic_vector(2 downto 0);
      s3_axi_arqos : in std_logic_vector(3 downto 0);
      s3_axi_arvalid : in std_logic;
      s3_axi_arready : out std_logic;
      s3_axi_rid : out std_logic_vector(3 downto 0);
      s3_axi_rdata : out std_logic_vector(31 downto 0);
      s3_axi_rresp : out std_logic_vector(1 downto 0);
      s3_axi_rlast : out std_logic;
      s3_axi_rvalid : out std_logic;
      s3_axi_rready : in std_logic;
      s4_axi_aclk : in std_logic;
      s4_axi_aresetn : in std_logic;
      s4_axi_awid : in std_logic_vector(3 downto 0);
      s4_axi_awaddr : in std_logic_vector(31 downto 0);
      s4_axi_awlen : in std_logic_vector(7 downto 0);
      s4_axi_awsize : in std_logic_vector(2 downto 0);
      s4_axi_awburst : in std_logic_vector(1 downto 0);
      s4_axi_awlock : in std_logic_vector(0 to 0);
      s4_axi_awcache : in std_logic_vector(3 downto 0);
      s4_axi_awprot : in std_logic_vector(2 downto 0);
      s4_axi_awqos : in std_logic_vector(3 downto 0);
      s4_axi_awvalid : in std_logic;
      s4_axi_awready : out std_logic;
      s4_axi_wdata : in std_logic_vector(31 downto 0);
      s4_axi_wstrb : in std_logic_vector(3 downto 0);
      s4_axi_wlast : in std_logic;
      s4_axi_wvalid : in std_logic;
      s4_axi_wready : out std_logic;
      s4_axi_bid : out std_logic_vector(3 downto 0);
      s4_axi_bresp : out std_logic_vector(1 downto 0);
      s4_axi_bvalid : out std_logic;
      s4_axi_bready : in std_logic;
      s4_axi_arid : in std_logic_vector(3 downto 0);
      s4_axi_araddr : in std_logic_vector(31 downto 0);
      s4_axi_arlen : in std_logic_vector(7 downto 0);
      s4_axi_arsize : in std_logic_vector(2 downto 0);
      s4_axi_arburst : in std_logic_vector(1 downto 0);
      s4_axi_arlock : in std_logic_vector(0 to 0);
      s4_axi_arcache : in std_logic_vector(3 downto 0);
      s4_axi_arprot : in std_logic_vector(2 downto 0);
      s4_axi_arqos : in std_logic_vector(3 downto 0);
      s4_axi_arvalid : in std_logic;
      s4_axi_arready : out std_logic;
      s4_axi_rid : out std_logic_vector(3 downto 0);
      s4_axi_rdata : out std_logic_vector(31 downto 0);
      s4_axi_rresp : out std_logic_vector(1 downto 0);
      s4_axi_rlast : out std_logic;
      s4_axi_rvalid : out std_logic;
      s4_axi_rready : in std_logic;
      s5_axi_aclk : in std_logic;
      s5_axi_aresetn : in std_logic;
      s5_axi_awid : in std_logic_vector(3 downto 0);
      s5_axi_awaddr : in std_logic_vector(31 downto 0);
      s5_axi_awlen : in std_logic_vector(7 downto 0);
      s5_axi_awsize : in std_logic_vector(2 downto 0);
      s5_axi_awburst : in std_logic_vector(1 downto 0);
      s5_axi_awlock : in std_logic_vector(0 to 0);
      s5_axi_awcache : in std_logic_vector(3 downto 0);
      s5_axi_awprot : in std_logic_vector(2 downto 0);
      s5_axi_awqos : in std_logic_vector(3 downto 0);
      s5_axi_awvalid : in std_logic;
      s5_axi_awready : out std_logic;
      s5_axi_wdata : in std_logic_vector(31 downto 0);
      s5_axi_wstrb : in std_logic_vector(3 downto 0);
      s5_axi_wlast : in std_logic;
      s5_axi_wvalid : in std_logic;
      s5_axi_wready : out std_logic;
      s5_axi_bid : out std_logic_vector(3 downto 0);
      s5_axi_bresp : out std_logic_vector(1 downto 0);
      s5_axi_bvalid : out std_logic;
      s5_axi_bready : in std_logic;
      s5_axi_arid : in std_logic_vector(3 downto 0);
      s5_axi_araddr : in std_logic_vector(31 downto 0);
      s5_axi_arlen : in std_logic_vector(7 downto 0);
      s5_axi_arsize : in std_logic_vector(2 downto 0);
      s5_axi_arburst : in std_logic_vector(1 downto 0);
      s5_axi_arlock : in std_logic_vector(0 to 0);
      s5_axi_arcache : in std_logic_vector(3 downto 0);
      s5_axi_arprot : in std_logic_vector(2 downto 0);
      s5_axi_arqos : in std_logic_vector(3 downto 0);
      s5_axi_arvalid : in std_logic;
      s5_axi_arready : out std_logic;
      s5_axi_rid : out std_logic_vector(3 downto 0);
      s5_axi_rdata : out std_logic_vector(31 downto 0);
      s5_axi_rresp : out std_logic_vector(1 downto 0);
      s5_axi_rlast : out std_logic;
      s5_axi_rvalid : out std_logic;
      s5_axi_rready : in std_logic
    );
  end component;
  
  signal axi4_0_M_ARADDR : std_logic_vector(31 downto 0);
  signal axi4_0_M_ARBURST : std_logic_vector(1 downto 0);
  signal axi4_0_M_ARCACHE : std_logic_vector(3 downto 0);
  signal axi4_0_M_ARESETN : std_logic_vector(0 to 0);
  signal axi4_0_M_ARID : std_logic_vector(0 to 0);
  signal axi4_0_M_ARLEN : std_logic_vector(7 downto 0);
  signal axi4_0_M_ARLOCK : std_logic_vector(1 downto 0);
  signal axi4_0_M_ARPROT : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARQOS : std_logic_vector(3 downto 0);
  signal axi4_0_M_ARREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_ARSIZE : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_AWADDR : std_logic_vector(31 downto 0);
  signal axi4_0_M_AWBURST : std_logic_vector(1 downto 0);
  signal axi4_0_M_AWCACHE : std_logic_vector(3 downto 0);
  signal axi4_0_M_AWID : std_logic_vector(0 to 0);
  signal axi4_0_M_AWLEN : std_logic_vector(7 downto 0);
  signal axi4_0_M_AWLOCK : std_logic_vector(1 downto 0);
  signal axi4_0_M_AWPROT : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWQOS : std_logic_vector(3 downto 0);
  signal axi4_0_M_AWREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_AWSIZE : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_BID : std_logic_vector(0 to 0);
  signal axi4_0_M_BREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_BRESP : std_logic_vector(1 downto 0);
  signal axi4_0_M_BVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_RDATA : std_logic_vector(31 downto 0);
  signal axi4_0_M_RID : std_logic_vector(0 to 0);
  signal axi4_0_M_RLAST : std_logic_vector(0 to 0);
  signal axi4_0_M_RREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_RRESP : std_logic_vector(1 downto 0);
  signal axi4_0_M_RVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_WDATA : std_logic_vector(31 downto 0);
  signal axi4_0_M_WLAST : std_logic_vector(0 to 0);
  signal axi4_0_M_WREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_WSTRB : std_logic_vector(3 downto 0);
  signal axi4_0_M_WVALID : std_logic_vector(0 to 0);
  
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd2 : std_logic_vector(1 downto 0);
  signal net_gnd3 : std_logic_vector(0 to 2);
  signal net_gnd4 : std_logic_vector(0 to 3);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd16 : std_logic_vector(0 to 15);
  signal net_gnd32 : std_logic_vector(0 to 31);
  signal net_gnd4096 : std_logic_vector(0 to 4095);
  signal net_vcc0 : std_logic;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system_mcb_ddr2_wrapper : component is "user_black_box";

begin

      axi4_0_M_ARESETN <= p_axi4_0_M_ARESETN;
      axi4_0_M_AWID <= p_axi4_0_M_AWID;
      axi4_0_M_AWADDR <= p_axi4_0_M_AWADDR;
      axi4_0_M_AWLEN <= p_axi4_0_M_AWLEN;
      axi4_0_M_AWSIZE <= p_axi4_0_M_AWSIZE;
      axi4_0_M_AWBURST <= p_axi4_0_M_AWBURST;
      axi4_0_M_AWLOCK <= p_axi4_0_M_AWLOCK;
      axi4_0_M_AWCACHE <= p_axi4_0_M_AWCACHE;
      axi4_0_M_AWPROT <= p_axi4_0_M_AWPROT;
      axi4_0_M_AWQOS <= p_axi4_0_M_AWQOS;
      axi4_0_M_AWVALID <= p_axi4_0_M_AWVALID;
      axi4_0_M_AWREADY <= p_axi4_0_M_AWREADY;
      axi4_0_M_WDATA <= p_axi4_0_M_WDATA;
      axi4_0_M_WLAST => p_axi4_0_M_WLAST;
      axi4_0_M_WVALID => p_axi4_0_M_WVALID;
      axi4_0_M_WREADY <= p_axi4_0_M_WREADY;
      axi4_0_M_BID <= p_axi4_0_M_BID;
      axi4_0_M_BRESP <= p_axi4_0_M_BRESP;
      axi4_0_M_BVALID <= p_axi4_0_M_BVALID;
      axi4_0_M_BREADY <= p_axi4_0_M_BREADY;
      axi4_0_M_ARID <= p_axi4_0_M_ARID;
      axi4_0_M_ARADDR <= p_axi4_0_M_ARADDR;
      axi4_0_M_ARLEN <= p_axi4_0_M_ARLEN;
      axi4_0_M_ARSIZE <= p_axi4_0_M_ARSIZE;
      axi4_0_M_ARBURST <= p_axi4_0_M_ARBURST;
      axi4_0_M_ARLOCK <= p_axi4_0_M_ARLOCK;
      axi4_0_M_ARCACHE <= p_axi4_0_M_ARCACHE;
      axi4_0_M_ARPROT <= p_axi4_0_M_ARPROT;
      axi4_0_M_ARQOS <= p_axi4_0_M_ARQOS;
      axi4_0_M_ARVALID <= p_axi4_0_M_ARVALID;
      axi4_0_M_ARREADY <= p_axi4_0_M_ARREADY;
      axi4_0_M_RID <= p_axi4_0_M_RID;
      axi4_0_M_RDATA <= p_axi4_0_M_RDATA;
      axi4_0_M_RRESP <= p_axi4_0_M_RRESP;
      axi4_0_M_RLAST <= p_axi4_0_M_RLAST;
      axi4_0_M_RVALID <= p_axi4_0_M_RVALID;
      axi4_0_M_RREADY <= p_axi4_0_M_RREADY;
		
	-- Internal assignments
	  net_gnd0 <= '0';
	  net_gnd1(0 to 0) <= B"0";
	  net_gnd16(0 to 15) <= B"0000000000000000";
	  net_gnd2(1 downto 0) <= B"00";
	  net_gnd3(0 to 2) <= B"000";
	  net_gnd32(0 to 31) <= B"00000000000000000000000000000000";
	  net_gnd4(0 to 3) <= B"0000";
	  net_gnd4096(0 to 4095) <= X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
	  net_gnd8(7 downto 0) <= B"00000000";
	  net_vcc0 <= '1';
  

MCB_DDR2 : system_mcb_ddr2_wrapper
    port map (
      sysclk_2x => p_sysclk_2x,
      sysclk_2x_180 => p_sysclk_2x_180,
      pll_ce_0 => net_vcc0,
      pll_ce_90 => net_vcc0,
      pll_lock => p_pll_lock,
      pll_lock_bufpll_o => open,
      sysclk_2x_bufpll_o => open,
      sysclk_2x_180_bufpll_o => open,
      pll_ce_0_bufpll_o => open,
      pll_ce_90_bufpll_o => open,
      sys_rst => p_sys_rst,
      mcbx_dram_addr => p_mcbx_dram_addr,
      mcbx_dram_ba => p_mcbx_dram_ba,
      mcbx_dram_ras_n => p_mcbx_dram_ras_n,
      mcbx_dram_cas_n => p_mcbx_dram_cas_n,
      mcbx_dram_we_n => p_mcbx_dram_we_n,
      mcbx_dram_cke => p_mcbx_dram_cke,
      mcbx_dram_clk => p_mcbx_dram_clk,
      mcbx_dram_clk_n => p_mcbx_dram_clk_n,
      mcbx_dram_dq => p_mcbx_dram_dq,
      mcbx_dram_dqs => p_mcbx_dram_dqs,
      mcbx_dram_dqs_n => p_mcbx_dram_dqs_n,
      mcbx_dram_udqs => p_mcbx_dram_udqs,
      mcbx_dram_udqs_n => p_mcbx_dram_udqs_n,
      mcbx_dram_udm => p_mcbx_dram_udm,
      mcbx_dram_ldm => p_mcbx_dram_ldm,
      mcbx_dram_odt => p_mcbx_dram_odt,
      mcbx_dram_ddr3_rst => open,
      rzq => p_rzq,
      zio => p_zio,
      ui_clk => pgassign1(1),
      uo_done_cal => open,
      s0_axi_aclk => pgassign1(1),
      s0_axi_aresetn => axi4_0_M_ARESETN(0),
      s0_axi_awid => axi4_0_M_AWID(0 to 0),
      s0_axi_awaddr => axi4_0_M_AWADDR,
      s0_axi_awlen => axi4_0_M_AWLEN,
      s0_axi_awsize => axi4_0_M_AWSIZE,
      s0_axi_awburst => axi4_0_M_AWBURST,
      s0_axi_awlock => axi4_0_M_AWLOCK(0 downto 0),
      s0_axi_awcache => axi4_0_M_AWCACHE,
      s0_axi_awprot => axi4_0_M_AWPROT,
      s0_axi_awqos => axi4_0_M_AWQOS,
      s0_axi_awvalid => axi4_0_M_AWVALID(0),
      s0_axi_awready => axi4_0_M_AWREADY(0),
      s0_axi_wdata => axi4_0_M_WDATA,
      s0_axi_wstrb => axi4_0_M_WSTRB,
      s0_axi_wlast => axi4_0_M_WLAST(0),
      s0_axi_wvalid => axi4_0_M_WVALID(0),
      s0_axi_wready => axi4_0_M_WREADY(0),
      s0_axi_bid => axi4_0_M_BID(0 to 0),
      s0_axi_bresp => axi4_0_M_BRESP,
      s0_axi_bvalid => axi4_0_M_BVALID(0),
      s0_axi_bready => axi4_0_M_BREADY(0),
      s0_axi_arid => axi4_0_M_ARID(0 to 0),
      s0_axi_araddr => axi4_0_M_ARADDR,
      s0_axi_arlen => axi4_0_M_ARLEN,
      s0_axi_arsize => axi4_0_M_ARSIZE,
      s0_axi_arburst => axi4_0_M_ARBURST,
      s0_axi_arlock => axi4_0_M_ARLOCK(0 downto 0),
      s0_axi_arcache => axi4_0_M_ARCACHE,
      s0_axi_arprot => axi4_0_M_ARPROT,
      s0_axi_arqos => axi4_0_M_ARQOS,
      s0_axi_arvalid => axi4_0_M_ARVALID(0),
      s0_axi_arready => axi4_0_M_ARREADY(0),
      s0_axi_rid => axi4_0_M_RID(0 to 0),
      s0_axi_rdata => axi4_0_M_RDATA,
      s0_axi_rresp => axi4_0_M_RRESP,
      s0_axi_rlast => axi4_0_M_RLAST(0),
      s0_axi_rvalid => axi4_0_M_RVALID(0),
      s0_axi_rready => axi4_0_M_RREADY(0),
      s1_axi_aclk => net_gnd0,
      s1_axi_aresetn => net_gnd0,
      s1_axi_awid => net_gnd4(0 to 3),
      s1_axi_awaddr => net_gnd32(0 to 31),
      s1_axi_awlen => net_gnd8,
      s1_axi_awsize => net_gnd3(0 to 2),
      s1_axi_awburst => net_gnd2,
      s1_axi_awlock => net_gnd1(0 to 0),
      s1_axi_awcache => net_gnd4(0 to 3),
      s1_axi_awprot => net_gnd3(0 to 2),
      s1_axi_awqos => net_gnd4(0 to 3),
      s1_axi_awvalid => net_gnd0,
      s1_axi_awready => open,
      s1_axi_wdata => net_gnd32(0 to 31),
      s1_axi_wstrb => net_gnd4(0 to 3),
      s1_axi_wlast => net_gnd0,
      s1_axi_wvalid => net_gnd0,
      s1_axi_wready => open,
      s1_axi_bid => open,
      s1_axi_bresp => open,
      s1_axi_bvalid => open,
      s1_axi_bready => net_gnd0,
      s1_axi_arid => net_gnd4(0 to 3),
      s1_axi_araddr => net_gnd32(0 to 31),
      s1_axi_arlen => net_gnd8,
      s1_axi_arsize => net_gnd3(0 to 2),
      s1_axi_arburst => net_gnd2,
      s1_axi_arlock => net_gnd1(0 to 0),
      s1_axi_arcache => net_gnd4(0 to 3),
      s1_axi_arprot => net_gnd3(0 to 2),
      s1_axi_arqos => net_gnd4(0 to 3),
      s1_axi_arvalid => net_gnd0,
      s1_axi_arready => open,
      s1_axi_rid => open,
      s1_axi_rdata => open,
      s1_axi_rresp => open,
      s1_axi_rlast => open,
      s1_axi_rvalid => open,
      s1_axi_rready => net_gnd0,
      s2_axi_aclk => net_gnd0,
      s2_axi_aresetn => net_gnd0,
      s2_axi_awid => net_gnd4(0 to 3),
      s2_axi_awaddr => net_gnd32(0 to 31),
      s2_axi_awlen => net_gnd8,
      s2_axi_awsize => net_gnd3(0 to 2),
      s2_axi_awburst => net_gnd2,
      s2_axi_awlock => net_gnd1(0 to 0),
      s2_axi_awcache => net_gnd4(0 to 3),
      s2_axi_awprot => net_gnd3(0 to 2),
      s2_axi_awqos => net_gnd4(0 to 3),
      s2_axi_awvalid => net_gnd0,
      s2_axi_awready => open,
      s2_axi_wdata => net_gnd32(0 to 31),
      s2_axi_wstrb => net_gnd4(0 to 3),
      s2_axi_wlast => net_gnd0,
      s2_axi_wvalid => net_gnd0,
      s2_axi_wready => open,
      s2_axi_bid => open,
      s2_axi_bresp => open,
      s2_axi_bvalid => open,
      s2_axi_bready => net_gnd0,
      s2_axi_arid => net_gnd4(0 to 3),
      s2_axi_araddr => net_gnd32(0 to 31),
      s2_axi_arlen => net_gnd8,
      s2_axi_arsize => net_gnd3(0 to 2),
      s2_axi_arburst => net_gnd2,
      s2_axi_arlock => net_gnd1(0 to 0),
      s2_axi_arcache => net_gnd4(0 to 3),
      s2_axi_arprot => net_gnd3(0 to 2),
      s2_axi_arqos => net_gnd4(0 to 3),
      s2_axi_arvalid => net_gnd0,
      s2_axi_arready => open,
      s2_axi_rid => open,
      s2_axi_rdata => open,
      s2_axi_rresp => open,
      s2_axi_rlast => open,
      s2_axi_rvalid => open,
      s2_axi_rready => net_gnd0,
      s3_axi_aclk => net_gnd0,
      s3_axi_aresetn => net_gnd0,
      s3_axi_awid => net_gnd4(0 to 3),
      s3_axi_awaddr => net_gnd32(0 to 31),
      s3_axi_awlen => net_gnd8,
      s3_axi_awsize => net_gnd3(0 to 2),
      s3_axi_awburst => net_gnd2,
      s3_axi_awlock => net_gnd1(0 to 0),
      s3_axi_awcache => net_gnd4(0 to 3),
      s3_axi_awprot => net_gnd3(0 to 2),
      s3_axi_awqos => net_gnd4(0 to 3),
      s3_axi_awvalid => net_gnd0,
      s3_axi_awready => open,
      s3_axi_wdata => net_gnd32(0 to 31),
      s3_axi_wstrb => net_gnd4(0 to 3),
      s3_axi_wlast => net_gnd0,
      s3_axi_wvalid => net_gnd0,
      s3_axi_wready => open,
      s3_axi_bid => open,
      s3_axi_bresp => open,
      s3_axi_bvalid => open,
      s3_axi_bready => net_gnd0,
      s3_axi_arid => net_gnd4(0 to 3),
      s3_axi_araddr => net_gnd32(0 to 31),
      s3_axi_arlen => net_gnd8,
      s3_axi_arsize => net_gnd3(0 to 2),
      s3_axi_arburst => net_gnd2,
      s3_axi_arlock => net_gnd1(0 to 0),
      s3_axi_arcache => net_gnd4(0 to 3),
      s3_axi_arprot => net_gnd3(0 to 2),
      s3_axi_arqos => net_gnd4(0 to 3),
      s3_axi_arvalid => net_gnd0,
      s3_axi_arready => open,
      s3_axi_rid => open,
      s3_axi_rdata => open,
      s3_axi_rresp => open,
      s3_axi_rlast => open,
      s3_axi_rvalid => open,
      s3_axi_rready => net_gnd0,
      s4_axi_aclk => net_gnd0,
      s4_axi_aresetn => net_gnd0,
      s4_axi_awid => net_gnd4(0 to 3),
      s4_axi_awaddr => net_gnd32(0 to 31),
      s4_axi_awlen => net_gnd8,
      s4_axi_awsize => net_gnd3(0 to 2),
      s4_axi_awburst => net_gnd2,
      s4_axi_awlock => net_gnd1(0 to 0),
      s4_axi_awcache => net_gnd4(0 to 3),
      s4_axi_awprot => net_gnd3(0 to 2),
      s4_axi_awqos => net_gnd4(0 to 3),
      s4_axi_awvalid => net_gnd0,
      s4_axi_awready => open,
      s4_axi_wdata => net_gnd32(0 to 31),
      s4_axi_wstrb => net_gnd4(0 to 3),
      s4_axi_wlast => net_gnd0,
      s4_axi_wvalid => net_gnd0,
      s4_axi_wready => open,
      s4_axi_bid => open,
      s4_axi_bresp => open,
      s4_axi_bvalid => open,
      s4_axi_bready => net_gnd0,
      s4_axi_arid => net_gnd4(0 to 3),
      s4_axi_araddr => net_gnd32(0 to 31),
      s4_axi_arlen => net_gnd8,
      s4_axi_arsize => net_gnd3(0 to 2),
      s4_axi_arburst => net_gnd2,
      s4_axi_arlock => net_gnd1(0 to 0),
      s4_axi_arcache => net_gnd4(0 to 3),
      s4_axi_arprot => net_gnd3(0 to 2),
      s4_axi_arqos => net_gnd4(0 to 3),
      s4_axi_arvalid => net_gnd0,
      s4_axi_arready => open,
      s4_axi_rid => open,
      s4_axi_rdata => open,
      s4_axi_rresp => open,
      s4_axi_rlast => open,
      s4_axi_rvalid => open,
      s4_axi_rready => net_gnd0,
      s5_axi_aclk => net_gnd0,
      s5_axi_aresetn => net_gnd0,
      s5_axi_awid => net_gnd4(0 to 3),
      s5_axi_awaddr => net_gnd32(0 to 31),
      s5_axi_awlen => net_gnd8,
      s5_axi_awsize => net_gnd3(0 to 2),
      s5_axi_awburst => net_gnd2,
      s5_axi_awlock => net_gnd1(0 to 0),
      s5_axi_awcache => net_gnd4(0 to 3),
      s5_axi_awprot => net_gnd3(0 to 2),
      s5_axi_awqos => net_gnd4(0 to 3),
      s5_axi_awvalid => net_gnd0,
      s5_axi_awready => open,
      s5_axi_wdata => net_gnd32(0 to 31),
      s5_axi_wstrb => net_gnd4(0 to 3),
      s5_axi_wlast => net_gnd0,
      s5_axi_wvalid => net_gnd0,
      s5_axi_wready => open,
      s5_axi_bid => open,
      s5_axi_bresp => open,
      s5_axi_bvalid => open,
      s5_axi_bready => net_gnd0,
      s5_axi_arid => net_gnd4(0 to 3),
      s5_axi_araddr => net_gnd32(0 to 31),
      s5_axi_arlen => net_gnd8,
      s5_axi_arsize => net_gnd3(0 to 2),
      s5_axi_arburst => net_gnd2,
      s5_axi_arlock => net_gnd1(0 to 0),
      s5_axi_arcache => net_gnd4(0 to 3),
      s5_axi_arprot => net_gnd3(0 to 2),
      s5_axi_arqos => net_gnd4(0 to 3),
      s5_axi_arvalid => net_gnd0,
      s5_axi_arready => open,
      s5_axi_rid => open,
      s5_axi_rdata => open,
      s5_axi_rresp => open,
      s5_axi_rlast => open,
      s5_axi_rvalid => open,
      s5_axi_rready => net_gnd0
    );

end Structural;

