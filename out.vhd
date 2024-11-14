
-- component ports
mcb3_dram_dq : inout std_logic_vector(C3_NUM_DQ_PINS-1 downto 0),
mcb3_dram_a : output std_logic_vector(C3_MEM_ADDR_WIDTH-1 downto 0),
mcb3_dram_ba : output std_logic_vector(C3_MEM_BANKADDR_WIDTH-1 downto 0),
mcb3_dram_ras_n : output std_logic,
mcb3_dram_cas_n : output std_logic,
mcb3_dram_we_n : output std_logic,
mcb3_dram_odt : output std_logic,
mcb3_dram_cke : output std_logic,
mcb3_dram_dm : output std_logic,
mcb3_dram_udqs : inout std_logic,
mcb3_dram_udqs_n : inout std_logic,
mcb3_rzq : inout std_logic,
mcb3_zio : inout std_logic,
mcb3_dram_udm : output std_logic,
c3_sys_clk_p : input std_logic,
c3_sys_clk_n : input std_logic,
c3_sys_rst_i : input std_logic,
c3_calib_done : output std_logic,
c3_clk0 : output std_logic,
c3_rst0 : output std_logic,
mcb3_dram_dqs : inout std_logic,
mcb3_dram_dqs_n : inout std_logic,
mcb3_dram_ck : output std_logic,
mcb3_dram_ck_n : output std_logic,
c3_s0_axi_aclk : input std_logic,
c3_s0_axi_aresetn : input std_logic,
c3_s0_axi_awid : input std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0),
c3_s0_axi_awaddr : input std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0),
c3_s0_axi_awlen : input std_logic_vector(7 downto 0),
c3_s0_axi_awsize : input std_logic_vector(2 downto 0),
c3_s0_axi_awburst : input std_logic_vector(1 downto 0),
c3_s0_axi_awlock : input std_logic_vector(0 downto 0),
c3_s0_axi_awcache : input std_logic_vector(3 downto 0),
c3_s0_axi_awprot : input std_logic_vector(2 downto 0),
c3_s0_axi_awqos : input std_logic_vector(3 downto 0),
c3_s0_axi_awvalid : input std_logic,
c3_s0_axi_awready : output std_logic,
c3_s0_axi_wdata : input std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0),
c3_s0_axi_wstrb : input std_logic_vector(C3_S0_AXI_DATA_WIDTH/8 - 1 downto 0),
c3_s0_axi_wlast : input std_logic,
c3_s0_axi_wvalid : input std_logic,
c3_s0_axi_wready : output std_logic,
c3_s0_axi_bid : output std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0),
c3_s0_axi_wid : output std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0),
c3_s0_axi_bresp : output std_logic_vector(1 downto 0),
c3_s0_axi_bvalid : output std_logic,
c3_s0_axi_bready : input std_logic,
c3_s0_axi_arid : input std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0),
c3_s0_axi_araddr : input std_logic_vector(C3_S0_AXI_ADDR_WIDTH - 1 downto 0),
c3_s0_axi_arlen : input std_logic_vector(7 downto 0),
c3_s0_axi_arsize : input std_logic_vector(2 downto 0),
c3_s0_axi_arburst : input std_logic_vector(1 downto 0),
c3_s0_axi_arlock : input std_logic_vector(0 downto 0),
c3_s0_axi_arcache : input std_logic_vector(3 downto 0),
c3_s0_axi_arprot : input std_logic_vector(2 downto 0),
c3_s0_axi_arqos : input std_logic_vector(3 downto 0),
c3_s0_axi_arvalid : input std_logic,
c3_s0_axi_arready : output std_logic,
c3_s0_axi_rid : output std_logic_vector(C3_S0_AXI_ID_WIDTH - 1 downto 0),
c3_s0_axi_rdata : output std_logic_vector(C3_S0_AXI_DATA_WIDTH - 1 downto 0),
c3_s0_axi_rresp : output std_logic_vector(1 downto 0),
c3_s0_axi_rlast : output std_logic,
c3_s0_axi_rvalid : output std_logic,
c3_s0_axi_rready : input std_logic,

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
mcb3_dram_dq => i_mcb3_dram_dq;
mcb3_dram_a => i_mcb3_dram_a;
mcb3_dram_ba => i_mcb3_dram_ba;
mcb3_dram_ras_n => mcb3_dram_ras_n;
mcb3_dram_cas_n => mcb3_dram_cas_n;
mcb3_dram_we_n => mcb3_dram_we_n;
mcb3_dram_odt => mcb3_dram_odt;
mcb3_dram_cke => mcb3_dram_cke;
mcb3_dram_dm => mcb3_dram_dm;
mcb3_dram_udqs => mcb3_dram_udqs;
mcb3_dram_udqs_n => mcb3_dram_udqs_n;
mcb3_rzq => mcb3_rzq;
mcb3_zio => mcb3_zio;
mcb3_dram_udm => mcb3_dram_udm;
c3_sys_clk_p => c3_sys_clk_p;
c3_sys_clk_n => c3_sys_clk_n;
c3_sys_rst_i => c3_sys_rst_i;
c3_calib_done => c3_calib_done;
c3_clk0 => c3_clk0;
c3_rst0 => c3_rst0;
mcb3_dram_dqs => mcb3_dram_dqs;
mcb3_dram_dqs_n => mcb3_dram_dqs_n;
mcb3_dram_ck => mcb3_dram_ck;
mcb3_dram_ck_n => mcb3_dram_ck_n;
c3_s0_axi_aclk => c3_s0_axi_aclk;
c3_s0_axi_aresetn => c3_s0_axi_aresetn;
c3_s0_axi_awid => c3_s0_axi_awid;
c3_s0_axi_awaddr => c3_s0_axi_awaddr;
c3_s0_axi_awlen => c3_s0_axi_awlen;
c3_s0_axi_awsize => c3_s0_axi_awsize;
c3_s0_axi_awburst => c3_s0_axi_awburst;
c3_s0_axi_awlock => c3_s0_axi_awlock;
c3_s0_axi_awcache => c3_s0_axi_awcache;
c3_s0_axi_awprot => c3_s0_axi_awprot;
c3_s0_axi_awqos => c3_s0_axi_awqos;
c3_s0_axi_awvalid => c3_s0_axi_awvalid;
c3_s0_axi_awready => c3_s0_axi_awready;
c3_s0_axi_wdata => c3_s0_axi_wdata;
c3_s0_axi_wstrb => c3_s0_axi_wstrb;
c3_s0_axi_wlast => c3_s0_axi_wlast;
c3_s0_axi_wvalid => c3_s0_axi_wvalid;
c3_s0_axi_wready => c3_s0_axi_wready;
c3_s0_axi_bid => i_c3_s0_axi_bid;
c3_s0_axi_wid => i_c3_s0_axi_wid;
c3_s0_axi_bresp => i_c3_s0_axi_bresp;
c3_s0_axi_bvalid => c3_s0_axi_bvalid;
c3_s0_axi_bready => c3_s0_axi_bready;
c3_s0_axi_arid => c3_s0_axi_arid;
c3_s0_axi_araddr => c3_s0_axi_araddr;
c3_s0_axi_arlen => c3_s0_axi_arlen;
c3_s0_axi_arsize => c3_s0_axi_arsize;
c3_s0_axi_arburst => c3_s0_axi_arburst;
c3_s0_axi_arlock => c3_s0_axi_arlock;
c3_s0_axi_arcache => c3_s0_axi_arcache;
c3_s0_axi_arprot => c3_s0_axi_arprot;
c3_s0_axi_arqos => c3_s0_axi_arqos;
c3_s0_axi_arvalid => c3_s0_axi_arvalid;
c3_s0_axi_arready => c3_s0_axi_arready;
c3_s0_axi_rid => i_c3_s0_axi_rid;
c3_s0_axi_rdata => i_c3_s0_axi_rdata;
c3_s0_axi_rresp => i_c3_s0_axi_rresp;
c3_s0_axi_rlast => c3_s0_axi_rlast;
c3_s0_axi_rvalid => c3_s0_axi_rvalid;
c3_s0_axi_rready => c3_s0_axi_rready;
