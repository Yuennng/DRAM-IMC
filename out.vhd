attribute BOX_TYPE : STRING;
attribute BOX_TYPE of ddr2_mcb : component is "user_black_box";

-- component ports
mcb3_dram_dq : out std_logic_vector(C3_NUM_DQ_PINS-1 downto 0);
mcb3_dram_a : out std_logic_vector(C3_MEM_ADDR_WIDTH-1 downto 0);
mcb3_dram_ba : out std_logic_vector(C3_MEM_BANKADDR_WIDTH-1 downto 0);
mcb3_dram_ras_n : out std_logic;
mcb3_dram_cas_n : out std_logic;
mcb3_dram_we_n : out std_logic;
mcb3_dram_odt : out std_logic;
mcb3_dram_cke : out std_logic;
mcb3_dram_dm : out std_logic;
mcb3_dram_udqs : out std_logic;
mcb3_dram_udqs_n : out std_logic;
mcb3_rzq : out std_logic;
mcb3_zio : out std_logic;
mcb3_dram_udm : out std_logic;
c3_sys_clk_p : in std_logic;
c3_sys_clk_n : in std_logic;
c3_sys_rst_i : in std_logic;
c3_calib_done : out std_logic;
c3_clk0 : out std_logic;
c3_rst0 : out std_logic;
mcb3_dram_dqs : out std_logic;
mcb3_dram_dqs_n : out std_logic;
mcb3_dram_ck : out std_logic;
mcb3_dram_ck_n : out std_logic;
c3_s0_axi_aclk : in std_logic;
c3_s0_axi_aresetn : in std_logic;
c3_s0_axi_awid : in std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
c3_s0_axi_awaddr : in std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0);
c3_s0_axi_awlen : in std_logic_vector(7 downto 0);
c3_s0_axi_awsize : in std_logic_vector(2 downto 0);
c3_s0_axi_awburst : in std_logic_vector(1 downto 0);
c3_s0_axi_awlock : in std_logic_vector(0 downto 0);
c3_s0_axi_awcache : in std_logic_vector(3 downto 0);
c3_s0_axi_awprot : in std_logic_vector(2 downto 0);
c3_s0_axi_awqos : in std_logic_vector(3 downto 0);
c3_s0_axi_awvalid : in std_logic;
c3_s0_axi_awready : out std_logic;
c3_s0_axi_wdata : in std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0);
c3_s0_axi_wstrb : in std_logic_vector(C3_S0_AXI_DATA_WIDTH/8 - 1 downto 0);
c3_s0_axi_wlast : in std_logic;
c3_s0_axi_wvalid : in std_logic;
c3_s0_axi_wready : out std_logic;
c3_s0_axi_bid : out std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
c3_s0_axi_wid : out std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
c3_s0_axi_bresp : out std_logic_vector(1 downto 0);
c3_s0_axi_bvalid : out std_logic;
c3_s0_axi_bready : in std_logic;
c3_s0_axi_arid : in std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
c3_s0_axi_araddr : in std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0);
c3_s0_axi_arlen : in std_logic_vector(7 downto 0);
c3_s0_axi_arsize : in std_logic_vector(2 downto 0);
c3_s0_axi_arburst : in std_logic_vector(1 downto 0);
c3_s0_axi_arlock : in std_logic_vector(0 downto 0);
c3_s0_axi_arcache : in std_logic_vector(3 downto 0);
c3_s0_axi_arprot : in std_logic_vector(2 downto 0);
c3_s0_axi_arqos : in std_logic_vector(3 downto 0);
c3_s0_axi_arvalid : in std_logic;
c3_s0_axi_arready : out std_logic;
c3_s0_axi_rid : out std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
c3_s0_axi_rdata : out std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0);
c3_s0_axi_rresp : out std_logic_vector(1 downto 0);
c3_s0_axi_rlast : out std_logic;
c3_s0_axi_rvalid : out std_logic;
c3_s0_axi_rready : in std_logic;

-- internal signals
signal i_mcb3_dram_dq : std_logic_vector(C3_NUM_DQ_PINS-1 downto 0);
signal i_mcb3_dram_a : std_logic_vector(C3_MEM_ADDR_WIDTH-1 downto 0);
signal i_mcb3_dram_ba : std_logic_vector(C3_MEM_BANKADDR_WIDTH-1 downto 0);
signal i_mcb3_dram_ras_n : std_logic;
signal i_mcb3_dram_cas_n : std_logic;
signal i_mcb3_dram_we_n : std_logic;
signal i_mcb3_dram_odt : std_logic;
signal i_mcb3_dram_cke : std_logic;
signal i_mcb3_dram_dm : std_logic;
signal i_mcb3_dram_udqs : std_logic;
signal i_mcb3_dram_udqs_n : std_logic;
signal i_mcb3_rzq : std_logic;
signal i_mcb3_zio : std_logic;
signal i_mcb3_dram_udm : std_logic;
signal i_c3_sys_clk_p : std_logic;
signal i_c3_sys_clk_n : std_logic;
signal i_c3_sys_rst_i : std_logic;
signal i_c3_calib_done : std_logic;
signal i_c3_clk0 : std_logic;
signal i_c3_rst0 : std_logic;
signal i_mcb3_dram_dqs : std_logic;
signal i_mcb3_dram_dqs_n : std_logic;
signal i_mcb3_dram_ck : std_logic;
signal i_mcb3_dram_ck_n : std_logic;
signal i_c3_s0_axi_aclk : std_logic;
signal i_c3_s0_axi_aresetn : std_logic;
signal i_c3_s0_axi_awid : std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
signal i_c3_s0_axi_awaddr : std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0);
signal i_c3_s0_axi_awlen : std_logic_vector(7 downto 0);
signal i_c3_s0_axi_awsize : std_logic_vector(2 downto 0);
signal i_c3_s0_axi_awburst : std_logic_vector(1 downto 0);
signal i_c3_s0_axi_awlock : std_logic_vector(0 downto 0);
signal i_c3_s0_axi_awcache : std_logic_vector(3 downto 0);
signal i_c3_s0_axi_awprot : std_logic_vector(2 downto 0);
signal i_c3_s0_axi_awqos : std_logic_vector(3 downto 0);
signal i_c3_s0_axi_awvalid : std_logic;
signal i_c3_s0_axi_awready : std_logic;
signal i_c3_s0_axi_wdata : std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0);
signal i_c3_s0_axi_wstrb : std_logic_vector(C3_S0_AXI_DATA_WIDTH/8 - 1 downto 0);
signal i_c3_s0_axi_wlast : std_logic;
signal i_c3_s0_axi_wvalid : std_logic;
signal i_c3_s0_axi_wready : std_logic;
signal i_c3_s0_axi_bid : std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
signal i_c3_s0_axi_wid : std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
signal i_c3_s0_axi_bresp : std_logic_vector(1 downto 0);
signal i_c3_s0_axi_bvalid : std_logic;
signal i_c3_s0_axi_bready : std_logic;
signal i_c3_s0_axi_arid : std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
signal i_c3_s0_axi_araddr : std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0);
signal i_c3_s0_axi_arlen : std_logic_vector(7 downto 0);
signal i_c3_s0_axi_arsize : std_logic_vector(2 downto 0);
signal i_c3_s0_axi_arburst : std_logic_vector(1 downto 0);
signal i_c3_s0_axi_arlock : std_logic_vector(0 downto 0);
signal i_c3_s0_axi_arcache : std_logic_vector(3 downto 0);
signal i_c3_s0_axi_arprot : std_logic_vector(2 downto 0);
signal i_c3_s0_axi_arqos : std_logic_vector(3 downto 0);
signal i_c3_s0_axi_arvalid : std_logic;
signal i_c3_s0_axi_arready : std_logic;
signal i_c3_s0_axi_rid : std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0);
signal i_c3_s0_axi_rdata : std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0);
signal i_c3_s0_axi_rresp : std_logic_vector(1 downto 0);
signal i_c3_s0_axi_rlast : std_logic;
signal i_c3_s0_axi_rvalid : std_logic;
signal i_c3_s0_axi_rready : std_logic;

-- internal signal assigments
i_c3_sys_clk_p <= c3_sys_clk_p;
i_c3_sys_clk_n <= c3_sys_clk_n;
i_c3_sys_rst_i <= c3_sys_rst_i;
i_c3_s0_axi_aclk <= c3_s0_axi_aclk;
i_c3_s0_axi_aresetn <= c3_s0_axi_aresetn;
i_c3_s0_axi_awid <= c3_s0_axi_awid;
i_c3_s0_axi_awaddr <= c3_s0_axi_awaddr;
i_c3_s0_axi_awlen <= c3_s0_axi_awlen;
i_c3_s0_axi_awsize <= c3_s0_axi_awsize;
i_c3_s0_axi_awburst <= c3_s0_axi_awburst;
i_c3_s0_axi_awlock <= c3_s0_axi_awlock;
i_c3_s0_axi_awcache <= c3_s0_axi_awcache;
i_c3_s0_axi_awprot <= c3_s0_axi_awprot;
i_c3_s0_axi_awqos <= c3_s0_axi_awqos;
i_c3_s0_axi_awvalid <= c3_s0_axi_awvalid;
i_c3_s0_axi_wdata <= c3_s0_axi_wdata;
i_c3_s0_axi_wstrb <= c3_s0_axi_wstrb;
i_c3_s0_axi_wlast <= c3_s0_axi_wlast;
i_c3_s0_axi_wvalid <= c3_s0_axi_wvalid;
i_c3_s0_axi_bready <= c3_s0_axi_bready;
i_c3_s0_axi_arid <= c3_s0_axi_arid;
i_c3_s0_axi_araddr <= c3_s0_axi_araddr;
i_c3_s0_axi_arlen <= c3_s0_axi_arlen;
i_c3_s0_axi_arsize <= c3_s0_axi_arsize;
i_c3_s0_axi_arburst <= c3_s0_axi_arburst;
i_c3_s0_axi_arlock <= c3_s0_axi_arlock;
i_c3_s0_axi_arcache <= c3_s0_axi_arcache;
i_c3_s0_axi_arprot <= c3_s0_axi_arprot;
i_c3_s0_axi_arqos <= c3_s0_axi_arqos;
i_c3_s0_axi_arvalid <= c3_s0_axi_arvalid;
i_c3_s0_axi_rready <= c3_s0_axi_rready;

-- port map
mcb3_dram_dq => i_mcb3_dram_dq,
mcb3_dram_a => i_mcb3_dram_a,
mcb3_dram_ba => i_mcb3_dram_ba,
mcb3_dram_ras_n => mcb3_dram_ras_n,
mcb3_dram_cas_n => mcb3_dram_cas_n,
mcb3_dram_we_n => mcb3_dram_we_n,
mcb3_dram_odt => mcb3_dram_odt,
mcb3_dram_cke => mcb3_dram_cke,
mcb3_dram_dm => mcb3_dram_dm,
mcb3_dram_udqs => mcb3_dram_udqs,
mcb3_dram_udqs_n => mcb3_dram_udqs_n,
mcb3_rzq => mcb3_rzq,
mcb3_zio => mcb3_zio,
mcb3_dram_udm => mcb3_dram_udm,
c3_sys_clk_p => c3_sys_clk_p,
c3_sys_clk_n => c3_sys_clk_n,
c3_sys_rst_i => c3_sys_rst_i,
c3_calib_done => c3_calib_done,
c3_clk0 => c3_clk0,
c3_rst0 => c3_rst0,
mcb3_dram_dqs => mcb3_dram_dqs,
mcb3_dram_dqs_n => mcb3_dram_dqs_n,
mcb3_dram_ck => mcb3_dram_ck,
mcb3_dram_ck_n => mcb3_dram_ck_n,
c3_s0_axi_aclk => c3_s0_axi_aclk,
c3_s0_axi_aresetn => c3_s0_axi_aresetn,
c3_s0_axi_awid => c3_s0_axi_awid,
c3_s0_axi_awaddr => c3_s0_axi_awaddr,
c3_s0_axi_awlen => c3_s0_axi_awlen,
c3_s0_axi_awsize => c3_s0_axi_awsize,
c3_s0_axi_awburst => c3_s0_axi_awburst,
c3_s0_axi_awlock => c3_s0_axi_awlock,
c3_s0_axi_awcache => c3_s0_axi_awcache,
c3_s0_axi_awprot => c3_s0_axi_awprot,
c3_s0_axi_awqos => c3_s0_axi_awqos,
c3_s0_axi_awvalid => c3_s0_axi_awvalid,
c3_s0_axi_awready => c3_s0_axi_awready,
c3_s0_axi_wdata => c3_s0_axi_wdata,
c3_s0_axi_wstrb => c3_s0_axi_wstrb,
c3_s0_axi_wlast => c3_s0_axi_wlast,
c3_s0_axi_wvalid => c3_s0_axi_wvalid,
c3_s0_axi_wready => c3_s0_axi_wready,
c3_s0_axi_bid => i_c3_s0_axi_bid,
c3_s0_axi_wid => i_c3_s0_axi_wid,
c3_s0_axi_bresp => i_c3_s0_axi_bresp,
c3_s0_axi_bvalid => c3_s0_axi_bvalid,
c3_s0_axi_bready => c3_s0_axi_bready,
c3_s0_axi_arid => c3_s0_axi_arid,
c3_s0_axi_araddr => c3_s0_axi_araddr,
c3_s0_axi_arlen => c3_s0_axi_arlen,
c3_s0_axi_arsize => c3_s0_axi_arsize,
c3_s0_axi_arburst => c3_s0_axi_arburst,
c3_s0_axi_arlock => c3_s0_axi_arlock,
c3_s0_axi_arcache => c3_s0_axi_arcache,
c3_s0_axi_arprot => c3_s0_axi_arprot,
c3_s0_axi_arqos => c3_s0_axi_arqos,
c3_s0_axi_arvalid => c3_s0_axi_arvalid,
c3_s0_axi_arready => c3_s0_axi_arready,
c3_s0_axi_rid => i_c3_s0_axi_rid,
c3_s0_axi_rdata => i_c3_s0_axi_rdata,
c3_s0_axi_rresp => i_c3_s0_axi_rresp,
c3_s0_axi_rlast => c3_s0_axi_rlast,
c3_s0_axi_rvalid => c3_s0_axi_rvalid,
c3_s0_axi_rready => c3_s0_axi_rready,
