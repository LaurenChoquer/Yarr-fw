-- Simulation testbench for channel_bonding.vhd


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library work;
use work.aurora_rx_pkg.all;

entity sim_aurora_cb is
--  Port ( );
end sim_aurora_cb;

architecture Behavioral of sim_aurora_cb is
    component simple_aurora_rx_channel
    generic (
        g_NUM_LANES : integer range 1 to 4 := 1
    );
    port (
        -- Sys connect
        rst_n_i : in std_logic;
        clk_rx_i : in std_logic; -- Fabric clock (serdes/8)
        
        -- Input
        rx_data       : in rx_data_array(g_NUM_LANES-1 downto 0);
        rx_header     : in rx_header_array(g_NUM_LANES-1 downto 0);
        rx_data_valid : in std_logic_vector(g_NUM_LANES-1 downto 0);

        -- Output
        rx_data_o : out std_logic_vector(63 downto 0);
        rx_valid_o : out std_logic;
        rx_stat_o : out std_logic_vector(7 downto 0)
    );
    end component simple_aurora_rx_channel;
    
    constant g_NUM_LANES : integer := 4;
    constant c_52_ZEROS : std_logic_vector(51 downto 0) := (others => '0');
    constant c_CB_FRAME : std_logic_vector(63 downto 0) := c_AURORA_IDLE & "0001" & c_52_ZEROS;   

    signal clk_rx_i : std_logic := '0';    
    constant RX_CLK_PERIOD : time := 6.4ns; 
    
    signal rx_cb_din : rx_data_array(g_NUM_LANES-1 downto 0);
    signal rx_cb_header : rx_header_array(g_NUM_LANES-1 downto 0);
    signal rx_cb_dvalid : std_logic_vector(g_NUM_LANES-1 downto 0);
    signal rx_cb_status : rx_status_array(g_NUM_LANES-1 downto 0);
    signal rx_cb_dout : rx_data_array(g_NUM_LANES-1 downto 0);
    signal rx_cb_header_o : rx_header_array(g_NUM_LANES-1 downto 0);
    signal rx_cb_dvalid_o : std_logic_vector(g_NUM_LANES-1 downto 0);
    signal rx_empty_o : std_logic_vector(g_NUM_LANES-1 downto 0);
    signal rx_read_i : std_logic_vector(g_NUM_LANES-1 downto 0);
    signal counter : unsigned(1 downto 0) := "00";
    
begin

    rx_clk_proc: process
    begin
        clk_rx_i <= '1';
        wait for RX_CLK_PERIOD/2;
        clk_rx_i <= '0';
        wait for RX_CLK_PERIOD/2;
    end process rx_clk_proc;
    
    dut_aurora_rx_channel : simple_aurora_rx_channel
        generic map (g_NUM_LANES => 2)
        port map(
        rst_n_i  =>,
        clk_rx_i =>,
        rx_data       =>,
        rx_header     =>,
        rx_data_valid =>,
        rx_data_o =>,
        rx_valid_o =>,
        rx_stat_o =>
    );
    
    pr_incr_cnt : process(clk_rx_i)
    begin
        if rising_edge(clk_rx_i) then
            counter <= counter + 1;
        end if;
    end process;

    pr_set_input : process(clk_rx_i)
    begin
        if rising_edge(clk_rx_i) then
            if (counter = "00") then
                rx_cb_din(0) <= c_CB_FRAME;
                rx_cb_header(0) <= "10";
                rx_cb_din(1) <= (others => '0');
                rx_cb_header(1) <= "01";
                rx_read_i <= "00";
            elsif (counter = "01") then
                rx_cb_din(0) <= (others => '0');
                rx_cb_header(0) <= "01";
                rx_cb_din(1) <= c_CB_FRAME;
                rx_cb_header(1) <= "10";
                rx_read_i <= "11";
            else
                rx_cb_din(0) <= (others => '1');
                rx_cb_header(0) <= "01";
                rx_cb_din(1) <= (others => '1');
                rx_cb_header(0) <= "01";
                rx_read_i <= "00";
            end if;
        end if;
    end process;
                 
end Behavioral;
