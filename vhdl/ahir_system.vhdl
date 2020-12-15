-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity dotP is -- 
  generic (tag_length : integer); 
  port ( -- 
    R : in  std_logic_vector(7 downto 0);
    result : out  std_logic_vector(31 downto 0);
    memory_space_1_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_1_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_1_lr_addr : out  std_logic_vector(8 downto 0);
    memory_space_1_lr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_1_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_1_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_1_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_1_lc_tag :  in  std_logic_vector(0 downto 0);
    memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lr_addr : out  std_logic_vector(8 downto 0);
    memory_space_0_lr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_0_lc_tag :  in  std_logic_vector(0 downto 0);
    memory_space_2_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_2_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_2_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_2_lr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_2_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_2_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_2_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_2_lc_tag :  in  std_logic_vector(0 downto 0);
    memory_space_3_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_3_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_3_lr_addr : out  std_logic_vector(3 downto 0);
    memory_space_3_lr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_3_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_3_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_3_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_3_lc_tag :  in  std_logic_vector(0 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity dotP;
architecture dotP_arch of dotP is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 8)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 32)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  signal R_buffer :  std_logic_vector(7 downto 0);
  signal R_update_enable: Boolean;
  -- output port buffer signals
  signal result_buffer :  std_logic_vector(31 downto 0);
  signal result_update_enable: Boolean;
  signal dotP_CP_0_start: Boolean;
  signal dotP_CP_0_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_16_branch_req_0 : boolean;
  signal phi_stmt_18_req_1 : boolean;
  signal phi_stmt_18_req_0 : boolean;
  signal phi_stmt_18_ack_0 : boolean;
  signal nC_91_22_buf_req_0 : boolean;
  signal nC_91_22_buf_ack_0 : boolean;
  signal nC_91_22_buf_req_1 : boolean;
  signal nC_91_22_buf_ack_1 : boolean;
  signal phi_stmt_23_req_0 : boolean;
  signal phi_stmt_23_req_1 : boolean;
  signal phi_stmt_23_ack_0 : boolean;
  signal nval_even_66_25_buf_req_0 : boolean;
  signal nval_even_66_25_buf_ack_0 : boolean;
  signal nval_even_66_25_buf_req_1 : boolean;
  signal nval_even_66_25_buf_ack_1 : boolean;
  signal phi_stmt_28_req_1 : boolean;
  signal phi_stmt_28_req_0 : boolean;
  signal phi_stmt_28_ack_0 : boolean;
  signal nval_odd_81_32_buf_req_0 : boolean;
  signal nval_odd_81_32_buf_ack_0 : boolean;
  signal nval_odd_81_32_buf_req_1 : boolean;
  signal nval_odd_81_32_buf_ack_1 : boolean;
  signal array_obj_ref_42_index_0_scale_req_0 : boolean;
  signal array_obj_ref_42_index_0_scale_ack_0 : boolean;
  signal array_obj_ref_42_index_0_scale_req_1 : boolean;
  signal array_obj_ref_42_index_0_scale_ack_1 : boolean;
  signal array_obj_ref_42_index_sum_1_req_0 : boolean;
  signal array_obj_ref_42_index_sum_1_ack_0 : boolean;
  signal array_obj_ref_42_index_sum_1_req_1 : boolean;
  signal array_obj_ref_42_index_sum_1_ack_1 : boolean;
  signal array_obj_ref_42_load_0_req_0 : boolean;
  signal array_obj_ref_42_load_0_ack_0 : boolean;
  signal array_obj_ref_42_load_0_req_1 : boolean;
  signal array_obj_ref_42_load_0_ack_1 : boolean;
  signal array_obj_ref_47_index_0_scale_req_0 : boolean;
  signal array_obj_ref_47_index_0_scale_ack_0 : boolean;
  signal array_obj_ref_47_index_0_scale_req_1 : boolean;
  signal array_obj_ref_47_index_0_scale_ack_1 : boolean;
  signal array_obj_ref_47_index_sum_1_req_0 : boolean;
  signal array_obj_ref_47_index_sum_1_ack_0 : boolean;
  signal array_obj_ref_47_index_sum_1_req_1 : boolean;
  signal array_obj_ref_47_index_sum_1_ack_1 : boolean;
  signal array_obj_ref_47_load_0_req_0 : boolean;
  signal array_obj_ref_47_load_0_ack_0 : boolean;
  signal array_obj_ref_47_load_0_req_1 : boolean;
  signal array_obj_ref_47_load_0_ack_1 : boolean;
  signal array_obj_ref_51_load_0_req_0 : boolean;
  signal array_obj_ref_51_load_0_ack_0 : boolean;
  signal array_obj_ref_51_load_0_req_1 : boolean;
  signal array_obj_ref_51_load_0_ack_1 : boolean;
  signal array_obj_ref_55_load_0_req_0 : boolean;
  signal array_obj_ref_55_load_0_ack_0 : boolean;
  signal array_obj_ref_55_load_0_req_1 : boolean;
  signal array_obj_ref_55_load_0_ack_1 : boolean;
  signal W_val_even_58_delayed_4_0_57_inst_req_0 : boolean;
  signal W_val_even_58_delayed_4_0_57_inst_ack_0 : boolean;
  signal W_val_even_58_delayed_4_0_57_inst_req_1 : boolean;
  signal W_val_even_58_delayed_4_0_57_inst_ack_1 : boolean;
  signal W_val_odd_70_delayed_4_0_72_inst_req_0 : boolean;
  signal W_val_odd_70_delayed_4_0_72_inst_ack_0 : boolean;
  signal W_val_odd_70_delayed_4_0_72_inst_req_1 : boolean;
  signal W_val_odd_70_delayed_4_0_72_inst_ack_1 : boolean;
  signal ADD_u8_u8_90_inst_req_0 : boolean;
  signal ADD_u8_u8_90_inst_ack_0 : boolean;
  signal ADD_u8_u8_90_inst_req_1 : boolean;
  signal ADD_u8_u8_90_inst_ack_1 : boolean;
  signal do_while_stmt_16_branch_ack_0 : boolean;
  signal do_while_stmt_16_branch_ack_1 : boolean;
  signal ADD_u32_u32_101_inst_req_0 : boolean;
  signal ADD_u32_u32_101_inst_ack_0 : boolean;
  signal ADD_u32_u32_101_inst_req_1 : boolean;
  signal ADD_u32_u32_101_inst_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "dotP_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 8) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(7 downto 0) <= R;
  R_buffer <= in_buffer_data_out(7 downto 0);
  in_buffer_data_in(tag_length + 7 downto 8) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length + 7 downto 8);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  dotP_CP_0_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "dotP_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 32) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(31 downto 0) <= result_buffer;
  result <= out_buffer_data_out(31 downto 0);
  out_buffer_data_in(tag_length + 31 downto 32) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length + 31 downto 32);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dotP_CP_0_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= dotP_CP_0_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= dotP_CP_0_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  dotP_CP_0: Block -- control-path 
    signal dotP_CP_0_elements: BooleanArray(122 downto 0);
    -- 
  begin -- 
    dotP_CP_0_elements(0) <= dotP_CP_0_start;
    dotP_CP_0_symbol <= dotP_CP_0_elements(122);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_15/do_while_stmt_16__entry__
      -- CP-element group 0: 	 branch_block_stmt_15/$entry
      -- CP-element group 0: 	 branch_block_stmt_15/branch_block_stmt_15__entry__
      -- 
    -- CP-element group 1:  fork  transition  place  output  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	120 
    -- CP-element group 1: successors 
    -- CP-element group 1: 	121 
    -- CP-element group 1: 	122 
    -- CP-element group 1:  members (10) 
      -- CP-element group 1: 	 branch_block_stmt_15/$exit
      -- CP-element group 1: 	 branch_block_stmt_15/branch_block_stmt_15__exit__
      -- CP-element group 1: 	 branch_block_stmt_15/do_while_stmt_16__exit__
      -- CP-element group 1: 	 assign_stmt_102/$entry
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_sample_start_
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_update_start_
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_Sample/$entry
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_Sample/rr
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_Update/$entry
      -- CP-element group 1: 	 assign_stmt_102/ADD_u32_u32_101_Update/cr
      -- 
    rr_548_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_548_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(1), ack => ADD_u32_u32_101_inst_req_0); -- 
    cr_553_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_553_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(1), ack => ADD_u32_u32_101_inst_req_1); -- 
    dotP_CP_0_elements(1) <= dotP_CP_0_elements(120);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_15/do_while_stmt_16/$entry
      -- CP-element group 2: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16__entry__
      -- 
    dotP_CP_0_elements(2) <= dotP_CP_0_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	120 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16__exit__
      -- 
    -- Element group dotP_CP_0_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_15/do_while_stmt_16/loop_back
      -- 
    -- Element group dotP_CP_0_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	118 
    -- CP-element group 5: 	119 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_15/do_while_stmt_16/condition_done
      -- CP-element group 5: 	 branch_block_stmt_15/do_while_stmt_16/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_15/do_while_stmt_16/loop_taken/$entry
      -- 
    dotP_CP_0_elements(5) <= dotP_CP_0_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	117 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_15/do_while_stmt_16/loop_body_done
      -- 
    dotP_CP_0_elements(6) <= dotP_CP_0_elements(117);
    -- CP-element group 7:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	19 
    -- CP-element group 7: 	38 
    -- CP-element group 7: 	57 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/back_edge_to_loop_body
      -- 
    dotP_CP_0_elements(7) <= dotP_CP_0_elements(4);
    -- CP-element group 8:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	21 
    -- CP-element group 8: 	40 
    -- CP-element group 8: 	59 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/first_time_through_loop_body
      -- 
    dotP_CP_0_elements(8) <= dotP_CP_0_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	15 
    -- CP-element group 9: 	16 
    -- CP-element group 9: 	116 
    -- CP-element group 9: 	91 
    -- CP-element group 9: 	86 
    -- CP-element group 9: 	87 
    -- CP-element group 9: 	32 
    -- CP-element group 9: 	33 
    -- CP-element group 9: 	51 
    -- CP-element group 9: 	52 
    -- CP-element group 9: 	73 
    -- CP-element group 9: 	74 
    -- CP-element group 9: 	78 
    -- CP-element group 9:  members (14) 
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/loop_body_start
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resized_0
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_computed_0
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_0/$entry
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_0/$exit
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_0/index_resize_req
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_0/index_resize_ack
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resized_0
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_computed_0
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_0/$entry
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_0/$exit
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_0/index_resize_req
      -- CP-element group 9: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_0/index_resize_ack
      -- 
    -- Element group dotP_CP_0_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	14 
    -- CP-element group 10: 	115 
    -- CP-element group 10: 	116 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/condition_evaluated
      -- 
    condition_evaluated_24_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_24_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(10), ack => do_while_stmt_16_branch_req_0); -- 
    dotP_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(14) & dotP_CP_0_elements(115) & dotP_CP_0_elements(116);
      gj_dotP_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: 	32 
    -- CP-element group 11: 	51 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	14 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	34 
    -- CP-element group 11: 	53 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_sample_start__ps
      -- CP-element group 11: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/aggregated_phi_sample_req
      -- 
    dotP_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 3) := (0 => 15,1 => 15,2 => 15,3 => 1);
      constant place_markings: IntegerArray(0 to 3)  := (0 => 0,1 => 0,2 => 0,3 => 1);
      constant place_delays: IntegerArray(0 to 3) := (0 => 0,1 => 0,2 => 0,3 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 4); -- 
    begin -- 
      preds <= dotP_CP_0_elements(15) & dotP_CP_0_elements(32) & dotP_CP_0_elements(51) & dotP_CP_0_elements(14);
      gj_dotP_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 4, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	17 
    -- CP-element group 12: 	35 
    -- CP-element group 12: 	54 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	113 
    -- CP-element group 12: 	101 
    -- CP-element group 12: 	97 
    -- CP-element group 12: 	109 
    -- CP-element group 12: 	105 
    -- CP-element group 12: 	84 
    -- CP-element group 12: 	71 
    -- CP-element group 12: marked-successors 
    -- CP-element group 12: 	15 
    -- CP-element group 12: 	32 
    -- CP-element group 12: 	51 
    -- CP-element group 12:  members (4) 
      -- CP-element group 12: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/aggregated_phi_sample_ack
      -- CP-element group 12: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_sample_completed_
      -- CP-element group 12: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_sample_completed_
      -- 
    dotP_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(17) & dotP_CP_0_elements(35) & dotP_CP_0_elements(54);
      gj_dotP_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	16 
    -- CP-element group 13: 	33 
    -- CP-element group 13: 	52 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	36 
    -- CP-element group 13: 	55 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_update_start__ps
      -- CP-element group 13: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/aggregated_phi_update_req
      -- 
    dotP_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(16) & dotP_CP_0_elements(33) & dotP_CP_0_elements(52);
      gj_dotP_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	18 
    -- CP-element group 14: 	37 
    -- CP-element group 14: 	56 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	10 
    -- CP-element group 14: marked-successors 
    -- CP-element group 14: 	11 
    -- CP-element group 14:  members (1) 
      -- CP-element group 14: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/aggregated_phi_update_ack
      -- 
    dotP_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 15,2 => 15);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(37) & dotP_CP_0_elements(56);
      gj_dotP_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  join  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	9 
    -- CP-element group 15: marked-predecessors 
    -- CP-element group 15: 	12 
    -- CP-element group 15: 	115 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (1) 
      -- CP-element group 15: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_sample_start_
      -- 
    dotP_cp_element_group_15: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_15"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(12) & dotP_CP_0_elements(115);
      gj_dotP_cp_element_group_15 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(15), clk => clk, reset => reset); --
    end block;
    -- CP-element group 16:  join  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	9 
    -- CP-element group 16: marked-predecessors 
    -- CP-element group 16: 	114 
    -- CP-element group 16: 	98 
    -- CP-element group 16: 	92 
    -- CP-element group 16: 	102 
    -- CP-element group 16: 	79 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	13 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_update_start_
      -- 
    dotP_cp_element_group_16: block -- 
      constant place_capacities: IntegerArray(0 to 5) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_markings: IntegerArray(0 to 5)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1);
      constant place_delays: IntegerArray(0 to 5) := (0 => 0,1 => 0,2 => 0,3 => 1,4 => 0,5 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_16"; 
      signal preds: BooleanArray(1 to 6); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(114) & dotP_CP_0_elements(98) & dotP_CP_0_elements(92) & dotP_CP_0_elements(102) & dotP_CP_0_elements(79);
      gj_dotP_cp_element_group_16 : generic_join generic map(name => joinName, number_of_predecessors => 6, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(16), clk => clk, reset => reset); --
    end block;
    -- CP-element group 17:  join  transition  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	12 
    -- CP-element group 17:  members (1) 
      -- CP-element group 17: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_sample_completed__ps
      -- 
    -- Element group dotP_CP_0_elements(17) is bound as output of CP function.
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	112 
    -- CP-element group 18: 	90 
    -- CP-element group 18: 	14 
    -- CP-element group 18: 	96 
    -- CP-element group 18: 	100 
    -- CP-element group 18: 	77 
    -- CP-element group 18:  members (76) 
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_update_completed_
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_update_completed__ps
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resized_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scaled_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_computed_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_1/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_1/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_1/index_resize_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_resize_1/index_resize_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_1/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_1/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_1/scale_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_1/scale_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resized_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scaled_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_computed_1
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_1/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_1/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_1/index_resize_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_resize_1/index_resize_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_1/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_1/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_1/scale_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_1/scale_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_word_address_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_root_address_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_offset_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_resized_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_scaled_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_computed_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_resize_0/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_resize_0/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_resize_0/index_resize_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_resize_0/index_resize_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_scale_0/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_scale_0/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_scale_0/scale_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_index_scale_0/scale_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_final_index_sum_regn/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_final_index_sum_regn/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_final_index_sum_regn/req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_final_index_sum_regn/ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_base_plus_offset/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_base_plus_offset/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_base_plus_offset/sum_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_base_plus_offset/sum_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_word_addrgen/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_word_addrgen/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_word_addrgen/root_register_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_word_addrgen/root_register_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_word_address_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_root_address_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_offset_calculated
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_resized_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_scaled_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_computed_0
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_resize_0/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_resize_0/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_resize_0/index_resize_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_resize_0/index_resize_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_scale_0/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_scale_0/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_scale_0/scale_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_index_scale_0/scale_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_final_index_sum_regn/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_final_index_sum_regn/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_final_index_sum_regn/req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_final_index_sum_regn/ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_base_plus_offset/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_base_plus_offset/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_base_plus_offset/sum_rename_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_base_plus_offset/sum_rename_ack
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_word_addrgen/$entry
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_word_addrgen/$exit
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_word_addrgen/root_register_req
      -- CP-element group 18: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_word_addrgen/root_register_ack
      -- 
    -- Element group dotP_CP_0_elements(18) is bound as output of CP function.
    -- CP-element group 19:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	7 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (1) 
      -- CP-element group 19: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_loopback_trigger
      -- 
    dotP_CP_0_elements(19) <= dotP_CP_0_elements(7);
    -- CP-element group 20:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_loopback_sample_req
      -- CP-element group 20: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_loopback_sample_req_ps
      -- 
    phi_stmt_18_loopback_sample_req_39_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_18_loopback_sample_req_39_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(20), ack => phi_stmt_18_req_1); -- 
    -- Element group dotP_CP_0_elements(20) is bound as output of CP function.
    -- CP-element group 21:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	8 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (1) 
      -- CP-element group 21: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_entry_trigger
      -- 
    dotP_CP_0_elements(21) <= dotP_CP_0_elements(8);
    -- CP-element group 22:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_entry_sample_req
      -- CP-element group 22: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_entry_sample_req_ps
      -- 
    phi_stmt_18_entry_sample_req_42_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_18_entry_sample_req_42_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(22), ack => phi_stmt_18_req_0); -- 
    -- Element group dotP_CP_0_elements(22) is bound as output of CP function.
    -- CP-element group 23:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (2) 
      -- CP-element group 23: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_phi_mux_ack
      -- CP-element group 23: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_18_phi_mux_ack_ps
      -- 
    phi_stmt_18_phi_mux_ack_45_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_18_ack_0, ack => dotP_CP_0_elements(23)); -- 
    -- CP-element group 24:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (4) 
      -- CP-element group 24: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_sample_start__ps
      -- CP-element group 24: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_sample_completed__ps
      -- CP-element group 24: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_sample_start_
      -- CP-element group 24: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_sample_completed_
      -- 
    -- Element group dotP_CP_0_elements(24) is bound as output of CP function.
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (2) 
      -- CP-element group 25: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_update_start__ps
      -- CP-element group 25: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_update_start_
      -- 
    -- Element group dotP_CP_0_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	27 
    -- CP-element group 26: successors 
    -- CP-element group 26:  members (1) 
      -- CP-element group 26: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_update_completed__ps
      -- 
    dotP_CP_0_elements(26) <= dotP_CP_0_elements(27);
    -- CP-element group 27:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	26 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_21_update_completed_
      -- 
    -- Element group dotP_CP_0_elements(27) is a control-delay.
    cp_element_27_delay: control_delay_element  generic map(name => " 27_delay", delay_value => 1)  port map(req => dotP_CP_0_elements(25), ack => dotP_CP_0_elements(27), clk => clk, reset =>reset);
    -- CP-element group 28:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	30 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_sample_start__ps
      -- CP-element group 28: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_sample_start_
      -- CP-element group 28: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Sample/req
      -- 
    req_66_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_66_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(28), ack => nC_91_22_buf_req_0); -- 
    -- Element group dotP_CP_0_elements(28) is bound as output of CP function.
    -- CP-element group 29:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (4) 
      -- CP-element group 29: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_update_start__ps
      -- CP-element group 29: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_update_start_
      -- CP-element group 29: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Update/$entry
      -- CP-element group 29: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Update/req
      -- 
    req_71_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_71_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(29), ack => nC_91_22_buf_req_1); -- 
    -- Element group dotP_CP_0_elements(29) is bound as output of CP function.
    -- CP-element group 30:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	28 
    -- CP-element group 30: successors 
    -- CP-element group 30:  members (4) 
      -- CP-element group 30: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_sample_completed__ps
      -- CP-element group 30: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_sample_completed_
      -- CP-element group 30: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Sample/$exit
      -- CP-element group 30: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Sample/ack
      -- 
    ack_67_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 30_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nC_91_22_buf_ack_0, ack => dotP_CP_0_elements(30)); -- 
    -- CP-element group 31:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31:  members (4) 
      -- CP-element group 31: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_update_completed__ps
      -- CP-element group 31: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_update_completed_
      -- CP-element group 31: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Update/$exit
      -- CP-element group 31: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nC_22_Update/ack
      -- 
    ack_72_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nC_91_22_buf_ack_1, ack => dotP_CP_0_elements(31)); -- 
    -- CP-element group 32:  join  transition  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	9 
    -- CP-element group 32: marked-predecessors 
    -- CP-element group 32: 	12 
    -- CP-element group 32: 	99 
    -- CP-element group 32: 	107 
    -- CP-element group 32: 	82 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	11 
    -- CP-element group 32:  members (1) 
      -- CP-element group 32: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_sample_start_
      -- 
    dotP_cp_element_group_32: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 1,2 => 0,3 => 0,4 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_32"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(12) & dotP_CP_0_elements(99) & dotP_CP_0_elements(107) & dotP_CP_0_elements(82);
      gj_dotP_cp_element_group_32 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(32), clk => clk, reset => reset); --
    end block;
    -- CP-element group 33:  join  transition  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	9 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	106 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	13 
    -- CP-element group 33:  members (1) 
      -- CP-element group 33: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_update_start_
      -- 
    dotP_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(106);
      gj_dotP_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	11 
    -- CP-element group 34: successors 
    -- CP-element group 34:  members (1) 
      -- CP-element group 34: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_sample_start__ps
      -- 
    dotP_CP_0_elements(34) <= dotP_CP_0_elements(11);
    -- CP-element group 35:  join  transition  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	12 
    -- CP-element group 35:  members (1) 
      -- CP-element group 35: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_sample_completed__ps
      -- 
    -- Element group dotP_CP_0_elements(35) is bound as output of CP function.
    -- CP-element group 36:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	13 
    -- CP-element group 36: successors 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_update_start__ps
      -- 
    dotP_CP_0_elements(36) <= dotP_CP_0_elements(13);
    -- CP-element group 37:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	14 
    -- CP-element group 37: 	104 
    -- CP-element group 37:  members (2) 
      -- CP-element group 37: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_update_completed_
      -- CP-element group 37: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_update_completed__ps
      -- 
    -- Element group dotP_CP_0_elements(37) is bound as output of CP function.
    -- CP-element group 38:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	7 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (1) 
      -- CP-element group 38: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_loopback_trigger
      -- 
    dotP_CP_0_elements(38) <= dotP_CP_0_elements(7);
    -- CP-element group 39:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (2) 
      -- CP-element group 39: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_loopback_sample_req
      -- CP-element group 39: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_loopback_sample_req_ps
      -- 
    phi_stmt_23_loopback_sample_req_83_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_23_loopback_sample_req_83_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(39), ack => phi_stmt_23_req_0); -- 
    -- Element group dotP_CP_0_elements(39) is bound as output of CP function.
    -- CP-element group 40:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	8 
    -- CP-element group 40: successors 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_entry_trigger
      -- 
    dotP_CP_0_elements(40) <= dotP_CP_0_elements(8);
    -- CP-element group 41:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: successors 
    -- CP-element group 41:  members (2) 
      -- CP-element group 41: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_entry_sample_req
      -- CP-element group 41: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_entry_sample_req_ps
      -- 
    phi_stmt_23_entry_sample_req_86_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_23_entry_sample_req_86_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(41), ack => phi_stmt_23_req_1); -- 
    -- Element group dotP_CP_0_elements(41) is bound as output of CP function.
    -- CP-element group 42:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: successors 
    -- CP-element group 42:  members (2) 
      -- CP-element group 42: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_phi_mux_ack
      -- CP-element group 42: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_23_phi_mux_ack_ps
      -- 
    phi_stmt_23_phi_mux_ack_89_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 42_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_23_ack_0, ack => dotP_CP_0_elements(42)); -- 
    -- CP-element group 43:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: successors 
    -- CP-element group 43: 	45 
    -- CP-element group 43:  members (4) 
      -- CP-element group 43: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_sample_start__ps
      -- CP-element group 43: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_sample_start_
      -- CP-element group 43: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Sample/$entry
      -- CP-element group 43: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Sample/req
      -- 
    req_102_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_102_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(43), ack => nval_even_66_25_buf_req_0); -- 
    -- Element group dotP_CP_0_elements(43) is bound as output of CP function.
    -- CP-element group 44:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: successors 
    -- CP-element group 44: 	46 
    -- CP-element group 44:  members (4) 
      -- CP-element group 44: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_update_start__ps
      -- CP-element group 44: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_update_start_
      -- CP-element group 44: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Update/$entry
      -- CP-element group 44: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Update/req
      -- 
    req_107_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_107_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(44), ack => nval_even_66_25_buf_req_1); -- 
    -- Element group dotP_CP_0_elements(44) is bound as output of CP function.
    -- CP-element group 45:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	43 
    -- CP-element group 45: successors 
    -- CP-element group 45:  members (4) 
      -- CP-element group 45: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_sample_completed__ps
      -- CP-element group 45: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_sample_completed_
      -- CP-element group 45: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Sample/$exit
      -- CP-element group 45: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Sample/ack
      -- 
    ack_103_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 45_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nval_even_66_25_buf_ack_0, ack => dotP_CP_0_elements(45)); -- 
    -- CP-element group 46:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 46: predecessors 
    -- CP-element group 46: 	44 
    -- CP-element group 46: successors 
    -- CP-element group 46:  members (4) 
      -- CP-element group 46: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_update_completed__ps
      -- CP-element group 46: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_update_completed_
      -- CP-element group 46: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Update/$exit
      -- CP-element group 46: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_even_25_Update/ack
      -- 
    ack_108_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 46_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nval_even_66_25_buf_ack_1, ack => dotP_CP_0_elements(46)); -- 
    -- CP-element group 47:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 47: predecessors 
    -- CP-element group 47: successors 
    -- CP-element group 47:  members (4) 
      -- CP-element group 47: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_sample_start__ps
      -- CP-element group 47: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_sample_completed__ps
      -- CP-element group 47: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_sample_start_
      -- CP-element group 47: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_sample_completed_
      -- 
    -- Element group dotP_CP_0_elements(47) is bound as output of CP function.
    -- CP-element group 48:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 48: predecessors 
    -- CP-element group 48: successors 
    -- CP-element group 48: 	50 
    -- CP-element group 48:  members (2) 
      -- CP-element group 48: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_update_start__ps
      -- CP-element group 48: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_update_start_
      -- 
    -- Element group dotP_CP_0_elements(48) is bound as output of CP function.
    -- CP-element group 49:  join  transition  bypass  pipeline-parent 
    -- CP-element group 49: predecessors 
    -- CP-element group 49: 	50 
    -- CP-element group 49: successors 
    -- CP-element group 49:  members (1) 
      -- CP-element group 49: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_update_completed__ps
      -- 
    dotP_CP_0_elements(49) <= dotP_CP_0_elements(50);
    -- CP-element group 50:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 50: predecessors 
    -- CP-element group 50: 	48 
    -- CP-element group 50: successors 
    -- CP-element group 50: 	49 
    -- CP-element group 50:  members (1) 
      -- CP-element group 50: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_27_update_completed_
      -- 
    -- Element group dotP_CP_0_elements(50) is a control-delay.
    cp_element_50_delay: control_delay_element  generic map(name => " 50_delay", delay_value => 1)  port map(req => dotP_CP_0_elements(48), ack => dotP_CP_0_elements(50), clk => clk, reset =>reset);
    -- CP-element group 51:  join  transition  bypass  pipeline-parent 
    -- CP-element group 51: predecessors 
    -- CP-element group 51: 	9 
    -- CP-element group 51: marked-predecessors 
    -- CP-element group 51: 	111 
    -- CP-element group 51: 	12 
    -- CP-element group 51: 	103 
    -- CP-element group 51: 	95 
    -- CP-element group 51: successors 
    -- CP-element group 51: 	11 
    -- CP-element group 51:  members (1) 
      -- CP-element group 51: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_sample_start_
      -- 
    dotP_cp_element_group_51: block -- 
      constant place_capacities: IntegerArray(0 to 4) := (0 => 15,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_markings: IntegerArray(0 to 4)  := (0 => 0,1 => 1,2 => 1,3 => 1,4 => 1);
      constant place_delays: IntegerArray(0 to 4) := (0 => 0,1 => 0,2 => 1,3 => 0,4 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_51"; 
      signal preds: BooleanArray(1 to 5); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(111) & dotP_CP_0_elements(12) & dotP_CP_0_elements(103) & dotP_CP_0_elements(95);
      gj_dotP_cp_element_group_51 : generic_join generic map(name => joinName, number_of_predecessors => 5, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(51), clk => clk, reset => reset); --
    end block;
    -- CP-element group 52:  join  transition  bypass  pipeline-parent 
    -- CP-element group 52: predecessors 
    -- CP-element group 52: 	9 
    -- CP-element group 52: marked-predecessors 
    -- CP-element group 52: 	110 
    -- CP-element group 52: successors 
    -- CP-element group 52: 	13 
    -- CP-element group 52:  members (1) 
      -- CP-element group 52: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_update_start_
      -- 
    dotP_cp_element_group_52: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_52"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(110);
      gj_dotP_cp_element_group_52 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(52), clk => clk, reset => reset); --
    end block;
    -- CP-element group 53:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 53: predecessors 
    -- CP-element group 53: 	11 
    -- CP-element group 53: successors 
    -- CP-element group 53:  members (1) 
      -- CP-element group 53: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_sample_start__ps
      -- 
    dotP_CP_0_elements(53) <= dotP_CP_0_elements(11);
    -- CP-element group 54:  join  transition  bypass  pipeline-parent 
    -- CP-element group 54: predecessors 
    -- CP-element group 54: successors 
    -- CP-element group 54: 	12 
    -- CP-element group 54:  members (1) 
      -- CP-element group 54: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_sample_completed__ps
      -- 
    -- Element group dotP_CP_0_elements(54) is bound as output of CP function.
    -- CP-element group 55:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 55: predecessors 
    -- CP-element group 55: 	13 
    -- CP-element group 55: successors 
    -- CP-element group 55:  members (1) 
      -- CP-element group 55: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_update_start__ps
      -- 
    dotP_CP_0_elements(55) <= dotP_CP_0_elements(13);
    -- CP-element group 56:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 56: predecessors 
    -- CP-element group 56: successors 
    -- CP-element group 56: 	14 
    -- CP-element group 56: 	108 
    -- CP-element group 56:  members (2) 
      -- CP-element group 56: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_update_completed_
      -- CP-element group 56: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_update_completed__ps
      -- 
    -- Element group dotP_CP_0_elements(56) is bound as output of CP function.
    -- CP-element group 57:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 57: predecessors 
    -- CP-element group 57: 	7 
    -- CP-element group 57: successors 
    -- CP-element group 57:  members (1) 
      -- CP-element group 57: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_loopback_trigger
      -- 
    dotP_CP_0_elements(57) <= dotP_CP_0_elements(7);
    -- CP-element group 58:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 58: predecessors 
    -- CP-element group 58: successors 
    -- CP-element group 58:  members (2) 
      -- CP-element group 58: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_loopback_sample_req
      -- CP-element group 58: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_loopback_sample_req_ps
      -- 
    phi_stmt_28_loopback_sample_req_127_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_28_loopback_sample_req_127_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(58), ack => phi_stmt_28_req_1); -- 
    -- Element group dotP_CP_0_elements(58) is bound as output of CP function.
    -- CP-element group 59:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 59: predecessors 
    -- CP-element group 59: 	8 
    -- CP-element group 59: successors 
    -- CP-element group 59:  members (1) 
      -- CP-element group 59: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_entry_trigger
      -- 
    dotP_CP_0_elements(59) <= dotP_CP_0_elements(8);
    -- CP-element group 60:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 60: predecessors 
    -- CP-element group 60: successors 
    -- CP-element group 60:  members (2) 
      -- CP-element group 60: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_entry_sample_req
      -- CP-element group 60: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_entry_sample_req_ps
      -- 
    phi_stmt_28_entry_sample_req_130_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_28_entry_sample_req_130_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(60), ack => phi_stmt_28_req_0); -- 
    -- Element group dotP_CP_0_elements(60) is bound as output of CP function.
    -- CP-element group 61:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 61: predecessors 
    -- CP-element group 61: successors 
    -- CP-element group 61:  members (2) 
      -- CP-element group 61: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_phi_mux_ack
      -- CP-element group 61: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/phi_stmt_28_phi_mux_ack_ps
      -- 
    phi_stmt_28_phi_mux_ack_133_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 61_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_28_ack_0, ack => dotP_CP_0_elements(61)); -- 
    -- CP-element group 62:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 62: predecessors 
    -- CP-element group 62: successors 
    -- CP-element group 62:  members (4) 
      -- CP-element group 62: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_sample_start__ps
      -- CP-element group 62: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_sample_completed__ps
      -- CP-element group 62: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_sample_start_
      -- CP-element group 62: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_sample_completed_
      -- 
    -- Element group dotP_CP_0_elements(62) is bound as output of CP function.
    -- CP-element group 63:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 63: predecessors 
    -- CP-element group 63: successors 
    -- CP-element group 63: 	65 
    -- CP-element group 63:  members (2) 
      -- CP-element group 63: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_update_start__ps
      -- CP-element group 63: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_update_start_
      -- 
    -- Element group dotP_CP_0_elements(63) is bound as output of CP function.
    -- CP-element group 64:  join  transition  bypass  pipeline-parent 
    -- CP-element group 64: predecessors 
    -- CP-element group 64: 	65 
    -- CP-element group 64: successors 
    -- CP-element group 64:  members (1) 
      -- CP-element group 64: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_update_completed__ps
      -- 
    dotP_CP_0_elements(64) <= dotP_CP_0_elements(65);
    -- CP-element group 65:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 65: predecessors 
    -- CP-element group 65: 	63 
    -- CP-element group 65: successors 
    -- CP-element group 65: 	64 
    -- CP-element group 65:  members (1) 
      -- CP-element group 65: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/type_cast_31_update_completed_
      -- 
    -- Element group dotP_CP_0_elements(65) is a control-delay.
    cp_element_65_delay: control_delay_element  generic map(name => " 65_delay", delay_value => 1)  port map(req => dotP_CP_0_elements(63), ack => dotP_CP_0_elements(65), clk => clk, reset =>reset);
    -- CP-element group 66:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 66: predecessors 
    -- CP-element group 66: successors 
    -- CP-element group 66: 	68 
    -- CP-element group 66:  members (4) 
      -- CP-element group 66: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_sample_start__ps
      -- CP-element group 66: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_sample_start_
      -- CP-element group 66: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Sample/$entry
      -- CP-element group 66: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Sample/req
      -- 
    req_154_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_154_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(66), ack => nval_odd_81_32_buf_req_0); -- 
    -- Element group dotP_CP_0_elements(66) is bound as output of CP function.
    -- CP-element group 67:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 67: predecessors 
    -- CP-element group 67: successors 
    -- CP-element group 67: 	69 
    -- CP-element group 67:  members (4) 
      -- CP-element group 67: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_update_start__ps
      -- CP-element group 67: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_update_start_
      -- CP-element group 67: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Update/$entry
      -- CP-element group 67: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Update/req
      -- 
    req_159_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_159_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(67), ack => nval_odd_81_32_buf_req_1); -- 
    -- Element group dotP_CP_0_elements(67) is bound as output of CP function.
    -- CP-element group 68:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 68: predecessors 
    -- CP-element group 68: 	66 
    -- CP-element group 68: successors 
    -- CP-element group 68:  members (4) 
      -- CP-element group 68: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_sample_completed__ps
      -- CP-element group 68: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_sample_completed_
      -- CP-element group 68: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Sample/$exit
      -- CP-element group 68: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Sample/ack
      -- 
    ack_155_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 68_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nval_odd_81_32_buf_ack_0, ack => dotP_CP_0_elements(68)); -- 
    -- CP-element group 69:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 69: predecessors 
    -- CP-element group 69: 	67 
    -- CP-element group 69: successors 
    -- CP-element group 69:  members (4) 
      -- CP-element group 69: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_update_completed__ps
      -- CP-element group 69: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_update_completed_
      -- CP-element group 69: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Update/$exit
      -- CP-element group 69: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/R_nval_odd_32_Update/ack
      -- 
    ack_160_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 69_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nval_odd_81_32_buf_ack_1, ack => dotP_CP_0_elements(69)); -- 
    -- CP-element group 70:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 70: predecessors 
    -- CP-element group 70: 	80 
    -- CP-element group 70: marked-predecessors 
    -- CP-element group 70: 	81 
    -- CP-element group 70: successors 
    -- CP-element group 70: 	81 
    -- CP-element group 70:  members (5) 
      -- CP-element group 70: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_sample_start_
      -- CP-element group 70: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/$entry
      -- CP-element group 70: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/$entry
      -- CP-element group 70: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/word_0/$entry
      -- CP-element group 70: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/word_0/rr
      -- 
    rr_243_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_243_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(70), ack => array_obj_ref_42_load_0_req_0); -- 
    dotP_cp_element_group_70: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_70"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(80) & dotP_CP_0_elements(81);
      gj_dotP_cp_element_group_70 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(70), clk => clk, reset => reset); --
    end block;
    -- CP-element group 71:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 71: predecessors 
    -- CP-element group 71: 	12 
    -- CP-element group 71: marked-predecessors 
    -- CP-element group 71: 	82 
    -- CP-element group 71: successors 
    -- CP-element group 71: 	82 
    -- CP-element group 71:  members (5) 
      -- CP-element group 71: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_update_start_
      -- CP-element group 71: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/$entry
      -- CP-element group 71: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/$entry
      -- CP-element group 71: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/word_0/$entry
      -- CP-element group 71: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/word_0/cr
      -- 
    cr_254_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_254_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(71), ack => array_obj_ref_42_load_0_req_1); -- 
    dotP_cp_element_group_71: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_71"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(82);
      gj_dotP_cp_element_group_71 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(71), clk => clk, reset => reset); --
    end block;
    -- CP-element group 72:  join  transition  bypass  pipeline-parent 
    -- CP-element group 72: predecessors 
    -- CP-element group 72: 	76 
    -- CP-element group 72: marked-predecessors 
    -- CP-element group 72: 	79 
    -- CP-element group 72: successors 
    -- CP-element group 72: 	77 
    -- CP-element group 72:  members (1) 
      -- CP-element group 72: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scaled_0
      -- 
    dotP_cp_element_group_72: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_72"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(76) & dotP_CP_0_elements(79);
      gj_dotP_cp_element_group_72 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(72), clk => clk, reset => reset); --
    end block;
    -- CP-element group 73:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 73: predecessors 
    -- CP-element group 73: 	9 
    -- CP-element group 73: marked-predecessors 
    -- CP-element group 73: 	75 
    -- CP-element group 73: successors 
    -- CP-element group 73: 	75 
    -- CP-element group 73:  members (3) 
      -- CP-element group 73: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_sample_start
      -- CP-element group 73: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Sample/$entry
      -- CP-element group 73: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Sample/rr
      -- 
    rr_185_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_185_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(73), ack => array_obj_ref_42_index_0_scale_req_0); -- 
    dotP_cp_element_group_73: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_73"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(75);
      gj_dotP_cp_element_group_73 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(73), clk => clk, reset => reset); --
    end block;
    -- CP-element group 74:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 74: predecessors 
    -- CP-element group 74: 	9 
    -- CP-element group 74: marked-predecessors 
    -- CP-element group 74: 	76 
    -- CP-element group 74: successors 
    -- CP-element group 74: 	76 
    -- CP-element group 74:  members (3) 
      -- CP-element group 74: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_update_start
      -- CP-element group 74: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Update/$entry
      -- CP-element group 74: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Update/cr
      -- 
    cr_190_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_190_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(74), ack => array_obj_ref_42_index_0_scale_req_1); -- 
    dotP_cp_element_group_74: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_74"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(76);
      gj_dotP_cp_element_group_74 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(74), clk => clk, reset => reset); --
    end block;
    -- CP-element group 75:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 75: predecessors 
    -- CP-element group 75: 	73 
    -- CP-element group 75: successors 
    -- CP-element group 75: 	117 
    -- CP-element group 75: marked-successors 
    -- CP-element group 75: 	73 
    -- CP-element group 75:  members (3) 
      -- CP-element group 75: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_sample_complete
      -- CP-element group 75: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Sample/$exit
      -- CP-element group 75: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Sample/ra
      -- 
    ra_186_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 75_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_index_0_scale_ack_0, ack => dotP_CP_0_elements(75)); -- 
    -- CP-element group 76:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 76: predecessors 
    -- CP-element group 76: 	74 
    -- CP-element group 76: successors 
    -- CP-element group 76: 	72 
    -- CP-element group 76: marked-successors 
    -- CP-element group 76: 	74 
    -- CP-element group 76:  members (3) 
      -- CP-element group 76: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_update_complete
      -- CP-element group 76: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Update/$exit
      -- CP-element group 76: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_index_scale_0_Update/ca
      -- 
    ca_191_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 76_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_index_0_scale_ack_1, ack => dotP_CP_0_elements(76)); -- 
    -- CP-element group 77:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 77: predecessors 
    -- CP-element group 77: 	18 
    -- CP-element group 77: 	72 
    -- CP-element group 77: marked-predecessors 
    -- CP-element group 77: 	79 
    -- CP-element group 77: successors 
    -- CP-element group 77: 	79 
    -- CP-element group 77:  members (3) 
      -- CP-element group 77: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_sample_start
      -- CP-element group 77: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Sample/$entry
      -- CP-element group 77: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Sample/rr
      -- 
    rr_212_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_212_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(77), ack => array_obj_ref_42_index_sum_1_req_0); -- 
    dotP_cp_element_group_77: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_77"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(72) & dotP_CP_0_elements(79);
      gj_dotP_cp_element_group_77 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(77), clk => clk, reset => reset); --
    end block;
    -- CP-element group 78:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 78: predecessors 
    -- CP-element group 78: 	9 
    -- CP-element group 78: marked-predecessors 
    -- CP-element group 78: 	81 
    -- CP-element group 78: successors 
    -- CP-element group 78: 	80 
    -- CP-element group 78:  members (3) 
      -- CP-element group 78: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_update_start
      -- CP-element group 78: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Update/$entry
      -- CP-element group 78: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Update/cr
      -- 
    cr_217_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_217_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(78), ack => array_obj_ref_42_index_sum_1_req_1); -- 
    dotP_cp_element_group_78: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_78"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(81);
      gj_dotP_cp_element_group_78 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(78), clk => clk, reset => reset); --
    end block;
    -- CP-element group 79:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 79: predecessors 
    -- CP-element group 79: 	77 
    -- CP-element group 79: successors 
    -- CP-element group 79: 	117 
    -- CP-element group 79: marked-successors 
    -- CP-element group 79: 	16 
    -- CP-element group 79: 	72 
    -- CP-element group 79: 	77 
    -- CP-element group 79:  members (3) 
      -- CP-element group 79: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_sample_complete
      -- CP-element group 79: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Sample/$exit
      -- CP-element group 79: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Sample/ra
      -- 
    ra_213_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 79_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_index_sum_1_ack_0, ack => dotP_CP_0_elements(79)); -- 
    -- CP-element group 80:  transition  input  bypass  pipeline-parent 
    -- CP-element group 80: predecessors 
    -- CP-element group 80: 	78 
    -- CP-element group 80: successors 
    -- CP-element group 80: 	70 
    -- CP-element group 80:  members (18) 
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_word_address_calculated
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_root_address_calculated
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_offset_calculated
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_update_complete
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Update/$exit
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_partial_sum_1_Update/ca
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_final_index_sum_regn/$entry
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_final_index_sum_regn/$exit
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_final_index_sum_regn/req
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_final_index_sum_regn/ack
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_base_plus_offset/$entry
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_base_plus_offset/$exit
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_base_plus_offset/sum_rename_req
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_base_plus_offset/sum_rename_ack
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_word_addrgen/$entry
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_word_addrgen/$exit
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_word_addrgen/root_register_req
      -- CP-element group 80: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_word_addrgen/root_register_ack
      -- 
    ca_218_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 80_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_index_sum_1_ack_1, ack => dotP_CP_0_elements(80)); -- 
    -- CP-element group 81:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 81: predecessors 
    -- CP-element group 81: 	70 
    -- CP-element group 81: successors 
    -- CP-element group 81: marked-successors 
    -- CP-element group 81: 	70 
    -- CP-element group 81: 	78 
    -- CP-element group 81:  members (5) 
      -- CP-element group 81: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_sample_completed_
      -- CP-element group 81: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/$exit
      -- CP-element group 81: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/$exit
      -- CP-element group 81: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/word_0/$exit
      -- CP-element group 81: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Sample/word_access_start/word_0/ra
      -- 
    ra_244_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 81_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_load_0_ack_0, ack => dotP_CP_0_elements(81)); -- 
    -- CP-element group 82:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 82: predecessors 
    -- CP-element group 82: 	71 
    -- CP-element group 82: successors 
    -- CP-element group 82: 	117 
    -- CP-element group 82: marked-successors 
    -- CP-element group 82: 	32 
    -- CP-element group 82: 	71 
    -- CP-element group 82:  members (9) 
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_update_completed_
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/$exit
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/$exit
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/word_0/$exit
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/word_access_complete/word_0/ca
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/array_obj_ref_42_Merge/$entry
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/array_obj_ref_42_Merge/$exit
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/array_obj_ref_42_Merge/merge_req
      -- CP-element group 82: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_42_Update/array_obj_ref_42_Merge/merge_ack
      -- 
    ca_255_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 82_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_42_load_0_ack_1, ack => dotP_CP_0_elements(82)); -- 
    -- CP-element group 83:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 83: predecessors 
    -- CP-element group 83: 	93 
    -- CP-element group 83: marked-predecessors 
    -- CP-element group 83: 	94 
    -- CP-element group 83: successors 
    -- CP-element group 83: 	94 
    -- CP-element group 83:  members (5) 
      -- CP-element group 83: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_sample_start_
      -- CP-element group 83: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/$entry
      -- CP-element group 83: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/$entry
      -- CP-element group 83: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/word_0/$entry
      -- CP-element group 83: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/word_0/rr
      -- 
    rr_342_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_342_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(83), ack => array_obj_ref_47_load_0_req_0); -- 
    dotP_cp_element_group_83: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_83"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(93) & dotP_CP_0_elements(94);
      gj_dotP_cp_element_group_83 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(83), clk => clk, reset => reset); --
    end block;
    -- CP-element group 84:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 84: predecessors 
    -- CP-element group 84: 	12 
    -- CP-element group 84: marked-predecessors 
    -- CP-element group 84: 	95 
    -- CP-element group 84: successors 
    -- CP-element group 84: 	95 
    -- CP-element group 84:  members (5) 
      -- CP-element group 84: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_update_start_
      -- CP-element group 84: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/$entry
      -- CP-element group 84: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/$entry
      -- CP-element group 84: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/word_0/$entry
      -- CP-element group 84: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/word_0/cr
      -- 
    cr_353_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_353_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(84), ack => array_obj_ref_47_load_0_req_1); -- 
    dotP_cp_element_group_84: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_84"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(95);
      gj_dotP_cp_element_group_84 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(84), clk => clk, reset => reset); --
    end block;
    -- CP-element group 85:  join  transition  bypass  pipeline-parent 
    -- CP-element group 85: predecessors 
    -- CP-element group 85: 	89 
    -- CP-element group 85: marked-predecessors 
    -- CP-element group 85: 	92 
    -- CP-element group 85: successors 
    -- CP-element group 85: 	90 
    -- CP-element group 85:  members (1) 
      -- CP-element group 85: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scaled_0
      -- 
    dotP_cp_element_group_85: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_85"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(89) & dotP_CP_0_elements(92);
      gj_dotP_cp_element_group_85 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(85), clk => clk, reset => reset); --
    end block;
    -- CP-element group 86:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 86: predecessors 
    -- CP-element group 86: 	9 
    -- CP-element group 86: marked-predecessors 
    -- CP-element group 86: 	88 
    -- CP-element group 86: successors 
    -- CP-element group 86: 	88 
    -- CP-element group 86:  members (3) 
      -- CP-element group 86: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_sample_start
      -- CP-element group 86: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Sample/$entry
      -- CP-element group 86: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Sample/rr
      -- 
    rr_284_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_284_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(86), ack => array_obj_ref_47_index_0_scale_req_0); -- 
    dotP_cp_element_group_86: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_86"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(88);
      gj_dotP_cp_element_group_86 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(86), clk => clk, reset => reset); --
    end block;
    -- CP-element group 87:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 87: predecessors 
    -- CP-element group 87: 	9 
    -- CP-element group 87: marked-predecessors 
    -- CP-element group 87: 	89 
    -- CP-element group 87: successors 
    -- CP-element group 87: 	89 
    -- CP-element group 87:  members (3) 
      -- CP-element group 87: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_update_start
      -- CP-element group 87: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Update/$entry
      -- CP-element group 87: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Update/cr
      -- 
    cr_289_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_289_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(87), ack => array_obj_ref_47_index_0_scale_req_1); -- 
    dotP_cp_element_group_87: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_87"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(89);
      gj_dotP_cp_element_group_87 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(87), clk => clk, reset => reset); --
    end block;
    -- CP-element group 88:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 88: predecessors 
    -- CP-element group 88: 	86 
    -- CP-element group 88: successors 
    -- CP-element group 88: 	117 
    -- CP-element group 88: marked-successors 
    -- CP-element group 88: 	86 
    -- CP-element group 88:  members (3) 
      -- CP-element group 88: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_sample_complete
      -- CP-element group 88: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Sample/$exit
      -- CP-element group 88: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Sample/ra
      -- 
    ra_285_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 88_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_index_0_scale_ack_0, ack => dotP_CP_0_elements(88)); -- 
    -- CP-element group 89:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 89: predecessors 
    -- CP-element group 89: 	87 
    -- CP-element group 89: successors 
    -- CP-element group 89: 	85 
    -- CP-element group 89: marked-successors 
    -- CP-element group 89: 	87 
    -- CP-element group 89:  members (3) 
      -- CP-element group 89: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_update_complete
      -- CP-element group 89: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Update/$exit
      -- CP-element group 89: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_index_scale_0_Update/ca
      -- 
    ca_290_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 89_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_index_0_scale_ack_1, ack => dotP_CP_0_elements(89)); -- 
    -- CP-element group 90:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 90: predecessors 
    -- CP-element group 90: 	18 
    -- CP-element group 90: 	85 
    -- CP-element group 90: marked-predecessors 
    -- CP-element group 90: 	92 
    -- CP-element group 90: successors 
    -- CP-element group 90: 	92 
    -- CP-element group 90:  members (3) 
      -- CP-element group 90: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_sample_start
      -- CP-element group 90: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Sample/$entry
      -- CP-element group 90: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Sample/rr
      -- 
    rr_311_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_311_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(90), ack => array_obj_ref_47_index_sum_1_req_0); -- 
    dotP_cp_element_group_90: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 15,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_90"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(85) & dotP_CP_0_elements(92);
      gj_dotP_cp_element_group_90 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(90), clk => clk, reset => reset); --
    end block;
    -- CP-element group 91:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 91: predecessors 
    -- CP-element group 91: 	9 
    -- CP-element group 91: marked-predecessors 
    -- CP-element group 91: 	94 
    -- CP-element group 91: successors 
    -- CP-element group 91: 	93 
    -- CP-element group 91:  members (3) 
      -- CP-element group 91: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_update_start
      -- CP-element group 91: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Update/$entry
      -- CP-element group 91: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Update/cr
      -- 
    cr_316_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_316_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(91), ack => array_obj_ref_47_index_sum_1_req_1); -- 
    dotP_cp_element_group_91: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_91"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(9) & dotP_CP_0_elements(94);
      gj_dotP_cp_element_group_91 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(91), clk => clk, reset => reset); --
    end block;
    -- CP-element group 92:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 92: predecessors 
    -- CP-element group 92: 	90 
    -- CP-element group 92: successors 
    -- CP-element group 92: 	117 
    -- CP-element group 92: marked-successors 
    -- CP-element group 92: 	90 
    -- CP-element group 92: 	16 
    -- CP-element group 92: 	85 
    -- CP-element group 92:  members (3) 
      -- CP-element group 92: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_sample_complete
      -- CP-element group 92: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Sample/$exit
      -- CP-element group 92: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Sample/ra
      -- 
    ra_312_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 92_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_index_sum_1_ack_0, ack => dotP_CP_0_elements(92)); -- 
    -- CP-element group 93:  transition  input  bypass  pipeline-parent 
    -- CP-element group 93: predecessors 
    -- CP-element group 93: 	91 
    -- CP-element group 93: successors 
    -- CP-element group 93: 	83 
    -- CP-element group 93:  members (18) 
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_word_address_calculated
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_root_address_calculated
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_offset_calculated
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_update_complete
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Update/$exit
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_partial_sum_1_Update/ca
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_final_index_sum_regn/$entry
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_final_index_sum_regn/$exit
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_final_index_sum_regn/req
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_final_index_sum_regn/ack
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_base_plus_offset/$entry
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_base_plus_offset/$exit
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_base_plus_offset/sum_rename_req
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_base_plus_offset/sum_rename_ack
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_word_addrgen/$entry
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_word_addrgen/$exit
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_word_addrgen/root_register_req
      -- CP-element group 93: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_word_addrgen/root_register_ack
      -- 
    ca_317_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 93_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_index_sum_1_ack_1, ack => dotP_CP_0_elements(93)); -- 
    -- CP-element group 94:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 94: predecessors 
    -- CP-element group 94: 	83 
    -- CP-element group 94: successors 
    -- CP-element group 94: marked-successors 
    -- CP-element group 94: 	91 
    -- CP-element group 94: 	83 
    -- CP-element group 94:  members (5) 
      -- CP-element group 94: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_sample_completed_
      -- CP-element group 94: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/$exit
      -- CP-element group 94: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/$exit
      -- CP-element group 94: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/word_0/$exit
      -- CP-element group 94: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Sample/word_access_start/word_0/ra
      -- 
    ra_343_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 94_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_load_0_ack_0, ack => dotP_CP_0_elements(94)); -- 
    -- CP-element group 95:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 95: predecessors 
    -- CP-element group 95: 	84 
    -- CP-element group 95: successors 
    -- CP-element group 95: 	117 
    -- CP-element group 95: marked-successors 
    -- CP-element group 95: 	84 
    -- CP-element group 95: 	51 
    -- CP-element group 95:  members (9) 
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_update_completed_
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/$exit
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/$exit
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/word_0/$exit
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/word_access_complete/word_0/ca
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/array_obj_ref_47_Merge/$entry
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/array_obj_ref_47_Merge/$exit
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/array_obj_ref_47_Merge/merge_req
      -- CP-element group 95: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_47_Update/array_obj_ref_47_Merge/merge_ack
      -- 
    ca_354_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 95_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_47_load_0_ack_1, ack => dotP_CP_0_elements(95)); -- 
    -- CP-element group 96:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 96: predecessors 
    -- CP-element group 96: 	18 
    -- CP-element group 96: marked-predecessors 
    -- CP-element group 96: 	98 
    -- CP-element group 96: successors 
    -- CP-element group 96: 	98 
    -- CP-element group 96:  members (5) 
      -- CP-element group 96: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_sample_start_
      -- CP-element group 96: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/$entry
      -- CP-element group 96: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/$entry
      -- CP-element group 96: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/word_0/$entry
      -- CP-element group 96: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/word_0/rr
      -- 
    rr_405_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_405_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(96), ack => array_obj_ref_51_load_0_req_0); -- 
    dotP_cp_element_group_96: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_96"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(98);
      gj_dotP_cp_element_group_96 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(96), clk => clk, reset => reset); --
    end block;
    -- CP-element group 97:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 97: predecessors 
    -- CP-element group 97: 	12 
    -- CP-element group 97: marked-predecessors 
    -- CP-element group 97: 	99 
    -- CP-element group 97: successors 
    -- CP-element group 97: 	99 
    -- CP-element group 97:  members (5) 
      -- CP-element group 97: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_update_start_
      -- CP-element group 97: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/$entry
      -- CP-element group 97: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/$entry
      -- CP-element group 97: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/word_0/$entry
      -- CP-element group 97: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/word_0/cr
      -- 
    cr_416_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_416_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(97), ack => array_obj_ref_51_load_0_req_1); -- 
    dotP_cp_element_group_97: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 24) := "dotP_cp_element_group_97"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(99);
      gj_dotP_cp_element_group_97 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(97), clk => clk, reset => reset); --
    end block;
    -- CP-element group 98:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 98: predecessors 
    -- CP-element group 98: 	96 
    -- CP-element group 98: successors 
    -- CP-element group 98: marked-successors 
    -- CP-element group 98: 	16 
    -- CP-element group 98: 	96 
    -- CP-element group 98:  members (5) 
      -- CP-element group 98: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_sample_completed_
      -- CP-element group 98: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/$exit
      -- CP-element group 98: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/$exit
      -- CP-element group 98: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/word_0/$exit
      -- CP-element group 98: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Sample/word_access_start/word_0/ra
      -- 
    ra_406_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 98_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_51_load_0_ack_0, ack => dotP_CP_0_elements(98)); -- 
    -- CP-element group 99:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 99: predecessors 
    -- CP-element group 99: 	97 
    -- CP-element group 99: successors 
    -- CP-element group 99: 	117 
    -- CP-element group 99: marked-successors 
    -- CP-element group 99: 	97 
    -- CP-element group 99: 	32 
    -- CP-element group 99:  members (9) 
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_update_completed_
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/$exit
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/$exit
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/word_0/$exit
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/word_access_complete/word_0/ca
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/array_obj_ref_51_Merge/$entry
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/array_obj_ref_51_Merge/$exit
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/array_obj_ref_51_Merge/merge_req
      -- CP-element group 99: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_51_Update/array_obj_ref_51_Merge/merge_ack
      -- 
    ca_417_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 99_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_51_load_0_ack_1, ack => dotP_CP_0_elements(99)); -- 
    -- CP-element group 100:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 100: predecessors 
    -- CP-element group 100: 	18 
    -- CP-element group 100: marked-predecessors 
    -- CP-element group 100: 	102 
    -- CP-element group 100: successors 
    -- CP-element group 100: 	102 
    -- CP-element group 100:  members (5) 
      -- CP-element group 100: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_sample_start_
      -- CP-element group 100: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/$entry
      -- CP-element group 100: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/$entry
      -- CP-element group 100: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/word_0/$entry
      -- CP-element group 100: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/word_0/rr
      -- 
    rr_468_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_468_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(100), ack => array_obj_ref_55_load_0_req_0); -- 
    dotP_cp_element_group_100: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_100"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(102);
      gj_dotP_cp_element_group_100 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(100), clk => clk, reset => reset); --
    end block;
    -- CP-element group 101:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 101: predecessors 
    -- CP-element group 101: 	12 
    -- CP-element group 101: marked-predecessors 
    -- CP-element group 101: 	103 
    -- CP-element group 101: successors 
    -- CP-element group 101: 	103 
    -- CP-element group 101:  members (5) 
      -- CP-element group 101: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_update_start_
      -- CP-element group 101: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/$entry
      -- CP-element group 101: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/$entry
      -- CP-element group 101: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/word_0/$entry
      -- CP-element group 101: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/word_0/cr
      -- 
    cr_479_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_479_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(101), ack => array_obj_ref_55_load_0_req_1); -- 
    dotP_cp_element_group_101: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_101"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(103);
      gj_dotP_cp_element_group_101 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(101), clk => clk, reset => reset); --
    end block;
    -- CP-element group 102:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 102: predecessors 
    -- CP-element group 102: 	100 
    -- CP-element group 102: successors 
    -- CP-element group 102: marked-successors 
    -- CP-element group 102: 	16 
    -- CP-element group 102: 	100 
    -- CP-element group 102:  members (5) 
      -- CP-element group 102: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_sample_completed_
      -- CP-element group 102: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/$exit
      -- CP-element group 102: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/$exit
      -- CP-element group 102: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/word_0/$exit
      -- CP-element group 102: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Sample/word_access_start/word_0/ra
      -- 
    ra_469_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 102_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_55_load_0_ack_0, ack => dotP_CP_0_elements(102)); -- 
    -- CP-element group 103:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 103: predecessors 
    -- CP-element group 103: 	101 
    -- CP-element group 103: successors 
    -- CP-element group 103: 	117 
    -- CP-element group 103: marked-successors 
    -- CP-element group 103: 	101 
    -- CP-element group 103: 	51 
    -- CP-element group 103:  members (9) 
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_update_completed_
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/$exit
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/$exit
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/word_0/$exit
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/word_access_complete/word_0/ca
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/array_obj_ref_55_Merge/$entry
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/array_obj_ref_55_Merge/$exit
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/array_obj_ref_55_Merge/merge_req
      -- CP-element group 103: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/array_obj_ref_55_Update/array_obj_ref_55_Merge/merge_ack
      -- 
    ca_480_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 103_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_55_load_0_ack_1, ack => dotP_CP_0_elements(103)); -- 
    -- CP-element group 104:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 104: predecessors 
    -- CP-element group 104: 	37 
    -- CP-element group 104: marked-predecessors 
    -- CP-element group 104: 	106 
    -- CP-element group 104: successors 
    -- CP-element group 104: 	106 
    -- CP-element group 104:  members (3) 
      -- CP-element group 104: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_sample_start_
      -- CP-element group 104: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Sample/$entry
      -- CP-element group 104: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Sample/req
      -- 
    req_493_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_493_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(104), ack => W_val_even_58_delayed_4_0_57_inst_req_0); -- 
    dotP_cp_element_group_104: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_104"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(37) & dotP_CP_0_elements(106);
      gj_dotP_cp_element_group_104 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(104), clk => clk, reset => reset); --
    end block;
    -- CP-element group 105:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 105: predecessors 
    -- CP-element group 105: 	12 
    -- CP-element group 105: marked-predecessors 
    -- CP-element group 105: 	107 
    -- CP-element group 105: successors 
    -- CP-element group 105: 	107 
    -- CP-element group 105:  members (3) 
      -- CP-element group 105: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_update_start_
      -- CP-element group 105: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Update/$entry
      -- CP-element group 105: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Update/req
      -- 
    req_498_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_498_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(105), ack => W_val_even_58_delayed_4_0_57_inst_req_1); -- 
    dotP_cp_element_group_105: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_105"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(107);
      gj_dotP_cp_element_group_105 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(105), clk => clk, reset => reset); --
    end block;
    -- CP-element group 106:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 106: predecessors 
    -- CP-element group 106: 	104 
    -- CP-element group 106: successors 
    -- CP-element group 106: marked-successors 
    -- CP-element group 106: 	104 
    -- CP-element group 106: 	33 
    -- CP-element group 106:  members (3) 
      -- CP-element group 106: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_sample_completed_
      -- CP-element group 106: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Sample/$exit
      -- CP-element group 106: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Sample/ack
      -- 
    ack_494_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 106_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_val_even_58_delayed_4_0_57_inst_ack_0, ack => dotP_CP_0_elements(106)); -- 
    -- CP-element group 107:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 107: predecessors 
    -- CP-element group 107: 	105 
    -- CP-element group 107: successors 
    -- CP-element group 107: 	117 
    -- CP-element group 107: marked-successors 
    -- CP-element group 107: 	105 
    -- CP-element group 107: 	32 
    -- CP-element group 107:  members (3) 
      -- CP-element group 107: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_update_completed_
      -- CP-element group 107: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Update/$exit
      -- CP-element group 107: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_59_Update/ack
      -- 
    ack_499_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 107_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_val_even_58_delayed_4_0_57_inst_ack_1, ack => dotP_CP_0_elements(107)); -- 
    -- CP-element group 108:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 108: predecessors 
    -- CP-element group 108: 	56 
    -- CP-element group 108: marked-predecessors 
    -- CP-element group 108: 	110 
    -- CP-element group 108: successors 
    -- CP-element group 108: 	110 
    -- CP-element group 108:  members (3) 
      -- CP-element group 108: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_sample_start_
      -- CP-element group 108: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Sample/$entry
      -- CP-element group 108: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Sample/req
      -- 
    req_507_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_507_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(108), ack => W_val_odd_70_delayed_4_0_72_inst_req_0); -- 
    dotP_cp_element_group_108: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_108"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(56) & dotP_CP_0_elements(110);
      gj_dotP_cp_element_group_108 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(108), clk => clk, reset => reset); --
    end block;
    -- CP-element group 109:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 109: predecessors 
    -- CP-element group 109: 	12 
    -- CP-element group 109: marked-predecessors 
    -- CP-element group 109: 	111 
    -- CP-element group 109: successors 
    -- CP-element group 109: 	111 
    -- CP-element group 109:  members (3) 
      -- CP-element group 109: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_update_start_
      -- CP-element group 109: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Update/$entry
      -- CP-element group 109: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Update/req
      -- 
    req_512_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_512_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(109), ack => W_val_odd_70_delayed_4_0_72_inst_req_1); -- 
    dotP_cp_element_group_109: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_109"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(111);
      gj_dotP_cp_element_group_109 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(109), clk => clk, reset => reset); --
    end block;
    -- CP-element group 110:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 110: predecessors 
    -- CP-element group 110: 	108 
    -- CP-element group 110: successors 
    -- CP-element group 110: marked-successors 
    -- CP-element group 110: 	108 
    -- CP-element group 110: 	52 
    -- CP-element group 110:  members (3) 
      -- CP-element group 110: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_sample_completed_
      -- CP-element group 110: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Sample/$exit
      -- CP-element group 110: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Sample/ack
      -- 
    ack_508_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 110_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_val_odd_70_delayed_4_0_72_inst_ack_0, ack => dotP_CP_0_elements(110)); -- 
    -- CP-element group 111:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 111: predecessors 
    -- CP-element group 111: 	109 
    -- CP-element group 111: successors 
    -- CP-element group 111: 	117 
    -- CP-element group 111: marked-successors 
    -- CP-element group 111: 	109 
    -- CP-element group 111: 	51 
    -- CP-element group 111:  members (3) 
      -- CP-element group 111: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_update_completed_
      -- CP-element group 111: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Update/$exit
      -- CP-element group 111: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/assign_stmt_74_Update/ack
      -- 
    ack_513_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 111_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => W_val_odd_70_delayed_4_0_72_inst_ack_1, ack => dotP_CP_0_elements(111)); -- 
    -- CP-element group 112:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 112: predecessors 
    -- CP-element group 112: 	18 
    -- CP-element group 112: marked-predecessors 
    -- CP-element group 112: 	114 
    -- CP-element group 112: successors 
    -- CP-element group 112: 	114 
    -- CP-element group 112:  members (3) 
      -- CP-element group 112: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_sample_start_
      -- CP-element group 112: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Sample/$entry
      -- CP-element group 112: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Sample/rr
      -- 
    rr_521_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_521_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(112), ack => ADD_u8_u8_90_inst_req_0); -- 
    dotP_cp_element_group_112: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_112"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(18) & dotP_CP_0_elements(114);
      gj_dotP_cp_element_group_112 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(112), clk => clk, reset => reset); --
    end block;
    -- CP-element group 113:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 113: predecessors 
    -- CP-element group 113: 	12 
    -- CP-element group 113: marked-predecessors 
    -- CP-element group 113: 	115 
    -- CP-element group 113: successors 
    -- CP-element group 113: 	115 
    -- CP-element group 113:  members (3) 
      -- CP-element group 113: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_update_start_
      -- CP-element group 113: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Update/$entry
      -- CP-element group 113: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Update/cr
      -- 
    cr_526_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_526_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => dotP_CP_0_elements(113), ack => ADD_u8_u8_90_inst_req_1); -- 
    dotP_cp_element_group_113: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 15,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_113"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= dotP_CP_0_elements(12) & dotP_CP_0_elements(115);
      gj_dotP_cp_element_group_113 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(113), clk => clk, reset => reset); --
    end block;
    -- CP-element group 114:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 114: predecessors 
    -- CP-element group 114: 	112 
    -- CP-element group 114: successors 
    -- CP-element group 114: marked-successors 
    -- CP-element group 114: 	112 
    -- CP-element group 114: 	16 
    -- CP-element group 114:  members (3) 
      -- CP-element group 114: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_sample_completed_
      -- CP-element group 114: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Sample/$exit
      -- CP-element group 114: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Sample/ra
      -- 
    ra_522_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 114_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_90_inst_ack_0, ack => dotP_CP_0_elements(114)); -- 
    -- CP-element group 115:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 115: predecessors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: successors 
    -- CP-element group 115: 	10 
    -- CP-element group 115: marked-successors 
    -- CP-element group 115: 	113 
    -- CP-element group 115: 	15 
    -- CP-element group 115:  members (3) 
      -- CP-element group 115: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_update_completed_
      -- CP-element group 115: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Update/$exit
      -- CP-element group 115: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/ADD_u8_u8_90_Update/ca
      -- 
    ca_527_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 115_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_90_inst_ack_1, ack => dotP_CP_0_elements(115)); -- 
    -- CP-element group 116:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 116: predecessors 
    -- CP-element group 116: 	9 
    -- CP-element group 116: successors 
    -- CP-element group 116: 	10 
    -- CP-element group 116:  members (1) 
      -- CP-element group 116: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group dotP_CP_0_elements(116) is a control-delay.
    cp_element_116_delay: control_delay_element  generic map(name => " 116_delay", delay_value => 1)  port map(req => dotP_CP_0_elements(9), ack => dotP_CP_0_elements(116), clk => clk, reset =>reset);
    -- CP-element group 117:  join  transition  bypass  pipeline-parent 
    -- CP-element group 117: predecessors 
    -- CP-element group 117: 	111 
    -- CP-element group 117: 	99 
    -- CP-element group 117: 	92 
    -- CP-element group 117: 	107 
    -- CP-element group 117: 	103 
    -- CP-element group 117: 	82 
    -- CP-element group 117: 	88 
    -- CP-element group 117: 	95 
    -- CP-element group 117: 	75 
    -- CP-element group 117: 	79 
    -- CP-element group 117: successors 
    -- CP-element group 117: 	6 
    -- CP-element group 117:  members (1) 
      -- CP-element group 117: 	 branch_block_stmt_15/do_while_stmt_16/do_while_stmt_16_loop_body/$exit
      -- 
    dotP_cp_element_group_117: block -- 
      constant place_capacities: IntegerArray(0 to 9) := (0 => 15,1 => 15,2 => 15,3 => 15,4 => 15,5 => 15,6 => 15,7 => 15,8 => 15,9 => 15);
      constant place_markings: IntegerArray(0 to 9)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant place_delays: IntegerArray(0 to 9) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0,7 => 0,8 => 0,9 => 0);
      constant joinName: string(1 to 25) := "dotP_cp_element_group_117"; 
      signal preds: BooleanArray(1 to 10); -- 
    begin -- 
      preds <= dotP_CP_0_elements(111) & dotP_CP_0_elements(99) & dotP_CP_0_elements(92) & dotP_CP_0_elements(107) & dotP_CP_0_elements(103) & dotP_CP_0_elements(82) & dotP_CP_0_elements(88) & dotP_CP_0_elements(95) & dotP_CP_0_elements(75) & dotP_CP_0_elements(79);
      gj_dotP_cp_element_group_117 : generic_join generic map(name => joinName, number_of_predecessors => 10, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => dotP_CP_0_elements(117), clk => clk, reset => reset); --
    end block;
    -- CP-element group 118:  transition  input  bypass  pipeline-parent 
    -- CP-element group 118: predecessors 
    -- CP-element group 118: 	5 
    -- CP-element group 118: successors 
    -- CP-element group 118:  members (2) 
      -- CP-element group 118: 	 branch_block_stmt_15/do_while_stmt_16/loop_exit/$exit
      -- CP-element group 118: 	 branch_block_stmt_15/do_while_stmt_16/loop_exit/ack
      -- 
    ack_532_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 118_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_16_branch_ack_0, ack => dotP_CP_0_elements(118)); -- 
    -- CP-element group 119:  transition  input  bypass  pipeline-parent 
    -- CP-element group 119: predecessors 
    -- CP-element group 119: 	5 
    -- CP-element group 119: successors 
    -- CP-element group 119:  members (2) 
      -- CP-element group 119: 	 branch_block_stmt_15/do_while_stmt_16/loop_taken/$exit
      -- CP-element group 119: 	 branch_block_stmt_15/do_while_stmt_16/loop_taken/ack
      -- 
    ack_536_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 119_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_16_branch_ack_1, ack => dotP_CP_0_elements(119)); -- 
    -- CP-element group 120:  transition  bypass  pipeline-parent 
    -- CP-element group 120: predecessors 
    -- CP-element group 120: 	3 
    -- CP-element group 120: successors 
    -- CP-element group 120: 	1 
    -- CP-element group 120:  members (1) 
      -- CP-element group 120: 	 branch_block_stmt_15/do_while_stmt_16/$exit
      -- 
    dotP_CP_0_elements(120) <= dotP_CP_0_elements(3);
    -- CP-element group 121:  transition  input  bypass 
    -- CP-element group 121: predecessors 
    -- CP-element group 121: 	1 
    -- CP-element group 121: successors 
    -- CP-element group 121:  members (3) 
      -- CP-element group 121: 	 assign_stmt_102/ADD_u32_u32_101_sample_completed_
      -- CP-element group 121: 	 assign_stmt_102/ADD_u32_u32_101_Sample/$exit
      -- CP-element group 121: 	 assign_stmt_102/ADD_u32_u32_101_Sample/ra
      -- 
    ra_549_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 121_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u32_u32_101_inst_ack_0, ack => dotP_CP_0_elements(121)); -- 
    -- CP-element group 122:  transition  input  bypass 
    -- CP-element group 122: predecessors 
    -- CP-element group 122: 	1 
    -- CP-element group 122: successors 
    -- CP-element group 122:  members (5) 
      -- CP-element group 122: 	 $exit
      -- CP-element group 122: 	 assign_stmt_102/$exit
      -- CP-element group 122: 	 assign_stmt_102/ADD_u32_u32_101_update_completed_
      -- CP-element group 122: 	 assign_stmt_102/ADD_u32_u32_101_Update/$exit
      -- CP-element group 122: 	 assign_stmt_102/ADD_u32_u32_101_Update/ca
      -- 
    ca_554_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 122_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u32_u32_101_inst_ack_1, ack => dotP_CP_0_elements(122)); -- 
    dotP_do_while_stmt_16_terminator_537: loop_terminator -- 
      generic map (name => " dotP_do_while_stmt_16_terminator_537", max_iterations_in_flight =>15) 
      port map(loop_body_exit => dotP_CP_0_elements(6),loop_continue => dotP_CP_0_elements(119),loop_terminate => dotP_CP_0_elements(118),loop_back => dotP_CP_0_elements(4),loop_exit => dotP_CP_0_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_18_phi_seq_73_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dotP_CP_0_elements(21);
      dotP_CP_0_elements(24)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dotP_CP_0_elements(24);
      dotP_CP_0_elements(25)<= src_update_reqs(0);
      src_update_acks(0)  <= dotP_CP_0_elements(26);
      dotP_CP_0_elements(22) <= phi_mux_reqs(0);
      triggers(1)  <= dotP_CP_0_elements(19);
      dotP_CP_0_elements(28)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dotP_CP_0_elements(30);
      dotP_CP_0_elements(29)<= src_update_reqs(1);
      src_update_acks(1)  <= dotP_CP_0_elements(31);
      dotP_CP_0_elements(20) <= phi_mux_reqs(1);
      phi_stmt_18_phi_seq_73 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_18_phi_seq_73") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dotP_CP_0_elements(11), 
          phi_sample_ack => dotP_CP_0_elements(17), 
          phi_update_req => dotP_CP_0_elements(13), 
          phi_update_ack => dotP_CP_0_elements(18), 
          phi_mux_ack => dotP_CP_0_elements(23), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_23_phi_seq_117_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dotP_CP_0_elements(38);
      dotP_CP_0_elements(43)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dotP_CP_0_elements(45);
      dotP_CP_0_elements(44)<= src_update_reqs(0);
      src_update_acks(0)  <= dotP_CP_0_elements(46);
      dotP_CP_0_elements(39) <= phi_mux_reqs(0);
      triggers(1)  <= dotP_CP_0_elements(40);
      dotP_CP_0_elements(47)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dotP_CP_0_elements(47);
      dotP_CP_0_elements(48)<= src_update_reqs(1);
      src_update_acks(1)  <= dotP_CP_0_elements(49);
      dotP_CP_0_elements(41) <= phi_mux_reqs(1);
      phi_stmt_23_phi_seq_117 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_23_phi_seq_117") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dotP_CP_0_elements(34), 
          phi_sample_ack => dotP_CP_0_elements(35), 
          phi_update_req => dotP_CP_0_elements(36), 
          phi_update_ack => dotP_CP_0_elements(37), 
          phi_mux_ack => dotP_CP_0_elements(42), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    phi_stmt_28_phi_seq_161_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= dotP_CP_0_elements(59);
      dotP_CP_0_elements(62)<= src_sample_reqs(0);
      src_sample_acks(0)  <= dotP_CP_0_elements(62);
      dotP_CP_0_elements(63)<= src_update_reqs(0);
      src_update_acks(0)  <= dotP_CP_0_elements(64);
      dotP_CP_0_elements(60) <= phi_mux_reqs(0);
      triggers(1)  <= dotP_CP_0_elements(57);
      dotP_CP_0_elements(66)<= src_sample_reqs(1);
      src_sample_acks(1)  <= dotP_CP_0_elements(68);
      dotP_CP_0_elements(67)<= src_update_reqs(1);
      src_update_acks(1)  <= dotP_CP_0_elements(69);
      dotP_CP_0_elements(58) <= phi_mux_reqs(1);
      phi_stmt_28_phi_seq_161 : phi_sequencer_v2-- 
        generic map (place_capacity => 15, ntriggers => 2, name => "phi_stmt_28_phi_seq_161") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => dotP_CP_0_elements(53), 
          phi_sample_ack => dotP_CP_0_elements(54), 
          phi_update_req => dotP_CP_0_elements(55), 
          phi_update_ack => dotP_CP_0_elements(56), 
          phi_mux_ack => dotP_CP_0_elements(61), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_25_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= dotP_CP_0_elements(7);
        preds(1)  <= dotP_CP_0_elements(8);
        entry_tmerge_25 : transition_merge -- 
          generic map(name => " entry_tmerge_25")
          port map (preds => preds, symbol_out => dotP_CP_0_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal C_18 : std_logic_vector(7 downto 0);
    signal Cr_38 : std_logic_vector(6 downto 0);
    signal MUL_u32_u32_64_wire : std_logic_vector(31 downto 0);
    signal MUL_u32_u32_79_wire : std_logic_vector(31 downto 0);
    signal R_Cr_41_resized : std_logic_vector(8 downto 0);
    signal R_Cr_41_scaled : std_logic_vector(8 downto 0);
    signal R_Cr_46_resized : std_logic_vector(8 downto 0);
    signal R_Cr_46_scaled : std_logic_vector(8 downto 0);
    signal R_Cr_50_resized : std_logic_vector(3 downto 0);
    signal R_Cr_50_scaled : std_logic_vector(3 downto 0);
    signal R_Cr_54_resized : std_logic_vector(3 downto 0);
    signal R_Cr_54_scaled : std_logic_vector(3 downto 0);
    signal R_R_40_resized : std_logic_vector(8 downto 0);
    signal R_R_40_scaled : std_logic_vector(8 downto 0);
    signal R_R_45_resized : std_logic_vector(8 downto 0);
    signal R_R_45_scaled : std_logic_vector(8 downto 0);
    signal ULT_u8_u1_95_wire : std_logic_vector(0 downto 0);
    signal a_rc_even_43 : std_logic_vector(31 downto 0);
    signal a_rc_odd_48 : std_logic_vector(31 downto 0);
    signal array_obj_ref_42_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_42_final_offset : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_index_partial_sum_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_offset_scale_factor_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_offset_scale_factor_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_resized_base_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_root_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_word_address_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_42_word_offset_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_47_final_offset : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_index_partial_sum_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_offset_scale_factor_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_offset_scale_factor_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_resized_base_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_root_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_word_address_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_47_word_offset_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_51_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_51_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_51_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_51_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_51_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_51_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_51_word_offset_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_55_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_55_word_offset_0 : std_logic_vector(3 downto 0);
    signal konst_89_wire_constant : std_logic_vector(7 downto 0);
    signal konst_94_wire_constant : std_logic_vector(7 downto 0);
    signal nC_91 : std_logic_vector(7 downto 0);
    signal nC_91_22_buffered : std_logic_vector(7 downto 0);
    signal nval_even_66 : std_logic_vector(31 downto 0);
    signal nval_even_66_25_buffered : std_logic_vector(31 downto 0);
    signal nval_odd_81 : std_logic_vector(31 downto 0);
    signal nval_odd_81_32_buffered : std_logic_vector(31 downto 0);
    signal type_cast_21_wire_constant : std_logic_vector(7 downto 0);
    signal type_cast_27_wire_constant : std_logic_vector(31 downto 0);
    signal type_cast_31_wire_constant : std_logic_vector(31 downto 0);
    signal val_even_23 : std_logic_vector(31 downto 0);
    signal val_even_58_delayed_4_0_59 : std_logic_vector(31 downto 0);
    signal val_odd_28 : std_logic_vector(31 downto 0);
    signal val_odd_70_delayed_4_0_74 : std_logic_vector(31 downto 0);
    signal xval_even_52 : std_logic_vector(31 downto 0);
    signal xval_odd_56 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    array_obj_ref_42_offset_scale_factor_0 <= "000010000";
    array_obj_ref_42_offset_scale_factor_1 <= "000000001";
    array_obj_ref_42_resized_base_address <= "000000000";
    array_obj_ref_42_word_offset_0 <= "000000000";
    array_obj_ref_47_offset_scale_factor_0 <= "000010000";
    array_obj_ref_47_offset_scale_factor_1 <= "000000001";
    array_obj_ref_47_resized_base_address <= "000000000";
    array_obj_ref_47_word_offset_0 <= "000000000";
    array_obj_ref_51_offset_scale_factor_0 <= "0001";
    array_obj_ref_51_resized_base_address <= "0000";
    array_obj_ref_51_word_offset_0 <= "0000";
    array_obj_ref_55_offset_scale_factor_0 <= "0001";
    array_obj_ref_55_resized_base_address <= "0000";
    array_obj_ref_55_word_offset_0 <= "0000";
    konst_89_wire_constant <= "00000010";
    konst_94_wire_constant <= "00100000";
    type_cast_21_wire_constant <= "00000000";
    type_cast_27_wire_constant <= "00000000000000000000000000000000";
    type_cast_31_wire_constant <= "00000000000000000000000000000000";
    phi_stmt_18: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_21_wire_constant & nC_91_22_buffered;
      req <= phi_stmt_18_req_0 & phi_stmt_18_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_18",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_18_ack_0,
          idata => idata,
          odata => C_18,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_18
    phi_stmt_23: Block -- phi operator 
      signal idata: std_logic_vector(63 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= nval_even_66_25_buffered & type_cast_27_wire_constant;
      req <= phi_stmt_23_req_0 & phi_stmt_23_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_23",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 32) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_23_ack_0,
          idata => idata,
          odata => val_even_23,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_23
    phi_stmt_28: Block -- phi operator 
      signal idata: std_logic_vector(63 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_31_wire_constant & nval_odd_81_32_buffered;
      req <= phi_stmt_28_req_0 & phi_stmt_28_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_28",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 32) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_28_ack_0,
          idata => idata,
          odata => val_odd_28,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_28
    -- flow-through slice operator slice_37_inst
    Cr_38 <= C_18(7 downto 1);
    W_val_even_58_delayed_4_0_57_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_val_even_58_delayed_4_0_57_inst_req_0;
      W_val_even_58_delayed_4_0_57_inst_ack_0<= wack(0);
      rreq(0) <= W_val_even_58_delayed_4_0_57_inst_req_1;
      W_val_even_58_delayed_4_0_57_inst_ack_1<= rack(0);
      W_val_even_58_delayed_4_0_57_inst : InterlockBuffer generic map ( -- 
        name => "W_val_even_58_delayed_4_0_57_inst",
        buffer_size => 4,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => val_even_23,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => val_even_58_delayed_4_0_59,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    W_val_odd_70_delayed_4_0_72_inst_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= W_val_odd_70_delayed_4_0_72_inst_req_0;
      W_val_odd_70_delayed_4_0_72_inst_ack_0<= wack(0);
      rreq(0) <= W_val_odd_70_delayed_4_0_72_inst_req_1;
      W_val_odd_70_delayed_4_0_72_inst_ack_1<= rack(0);
      W_val_odd_70_delayed_4_0_72_inst : InterlockBuffer generic map ( -- 
        name => "W_val_odd_70_delayed_4_0_72_inst",
        buffer_size => 4,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => val_odd_28,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => val_odd_70_delayed_4_0_74,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    nC_91_22_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nC_91_22_buf_req_0;
      nC_91_22_buf_ack_0<= wack(0);
      rreq(0) <= nC_91_22_buf_req_1;
      nC_91_22_buf_ack_1<= rack(0);
      nC_91_22_buf : InterlockBuffer generic map ( -- 
        name => "nC_91_22_buf",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nC_91,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nC_91_22_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    nval_even_66_25_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nval_even_66_25_buf_req_0;
      nval_even_66_25_buf_ack_0<= wack(0);
      rreq(0) <= nval_even_66_25_buf_req_1;
      nval_even_66_25_buf_ack_1<= rack(0);
      nval_even_66_25_buf : InterlockBuffer generic map ( -- 
        name => "nval_even_66_25_buf",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nval_even_66,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nval_even_66_25_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    nval_odd_81_32_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nval_odd_81_32_buf_req_0;
      nval_odd_81_32_buf_ack_0<= wack(0);
      rreq(0) <= nval_odd_81_32_buf_req_1;
      nval_odd_81_32_buf_ack_1<= rack(0);
      nval_odd_81_32_buf : InterlockBuffer generic map ( -- 
        name => "nval_odd_81_32_buf",
        buffer_size => 2,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 32,
        out_data_width => 32,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nval_odd_81,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nval_odd_81_32_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_42_addr_0
    process(array_obj_ref_42_root_address) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_42_root_address;
      ov(8 downto 0) := iv;
      array_obj_ref_42_word_address_0 <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_gather_scatter
    process(array_obj_ref_42_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_42_data_0;
      ov(31 downto 0) := iv;
      a_rc_even_43 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_index_0_resize
    process(R_buffer) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_buffer;
      ov(7 downto 0) := iv;
      R_R_40_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_index_1_rename
    process(R_Cr_41_resized) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_41_resized;
      ov(8 downto 0) := iv;
      R_Cr_41_scaled <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_index_1_resize
    process(Cr_38) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Cr_38;
      ov(6 downto 0) := iv;
      R_Cr_41_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_index_offset
    process(array_obj_ref_42_index_partial_sum_1) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_42_index_partial_sum_1;
      ov(8 downto 0) := iv;
      array_obj_ref_42_final_offset <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_42_root_address_inst
    process(array_obj_ref_42_final_offset) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_42_final_offset;
      ov(8 downto 0) := iv;
      array_obj_ref_42_root_address <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_addr_0
    process(array_obj_ref_47_root_address) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_47_root_address;
      ov(8 downto 0) := iv;
      array_obj_ref_47_word_address_0 <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_gather_scatter
    process(array_obj_ref_47_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_47_data_0;
      ov(31 downto 0) := iv;
      a_rc_odd_48 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_index_0_resize
    process(R_buffer) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_buffer;
      ov(7 downto 0) := iv;
      R_R_45_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_index_1_rename
    process(R_Cr_46_resized) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_46_resized;
      ov(8 downto 0) := iv;
      R_Cr_46_scaled <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_index_1_resize
    process(Cr_38) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Cr_38;
      ov(6 downto 0) := iv;
      R_Cr_46_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_index_offset
    process(array_obj_ref_47_index_partial_sum_1) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_47_index_partial_sum_1;
      ov(8 downto 0) := iv;
      array_obj_ref_47_final_offset <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_47_root_address_inst
    process(array_obj_ref_47_final_offset) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_47_final_offset;
      ov(8 downto 0) := iv;
      array_obj_ref_47_root_address <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_addr_0
    process(array_obj_ref_51_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_51_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_51_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_gather_scatter
    process(array_obj_ref_51_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_51_data_0;
      ov(31 downto 0) := iv;
      xval_even_52 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_index_0_rename
    process(R_Cr_50_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_50_resized;
      ov(3 downto 0) := iv;
      R_Cr_50_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_index_0_resize
    process(Cr_38) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Cr_38;
      ov := iv(3 downto 0);
      R_Cr_50_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_index_offset
    process(R_Cr_50_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_50_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_51_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_51_root_address_inst
    process(array_obj_ref_51_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_51_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_51_root_address <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_addr_0
    process(array_obj_ref_55_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_55_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_55_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_gather_scatter
    process(array_obj_ref_55_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_55_data_0;
      ov(31 downto 0) := iv;
      xval_odd_56 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_index_0_rename
    process(R_Cr_54_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_54_resized;
      ov(3 downto 0) := iv;
      R_Cr_54_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_index_0_resize
    process(Cr_38) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Cr_38;
      ov := iv(3 downto 0);
      R_Cr_54_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_index_offset
    process(R_Cr_54_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Cr_54_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_55_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_55_root_address_inst
    process(array_obj_ref_55_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_55_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_55_root_address <= ov(3 downto 0);
      --
    end process;
    do_while_stmt_16_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_95_wire;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_16_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_16_branch_req_0,
          ack0 => do_while_stmt_16_branch_ack_0,
          ack1 => do_while_stmt_16_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- shared split operator group (0) : ADD_u32_u32_101_inst 
    ApIntAdd_group_0: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= nval_even_66 & nval_odd_81;
      result_buffer <= data_out(31 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= ADD_u32_u32_101_inst_req_0;
      ADD_u32_u32_101_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= ADD_u32_u32_101_inst_req_1;
      ADD_u32_u32_101_inst_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_0_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_0",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 32,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 32, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- binary operator ADD_u32_u32_65_inst
    process(val_even_58_delayed_4_0_59, MUL_u32_u32_64_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntAdd_proc(val_even_58_delayed_4_0_59, MUL_u32_u32_64_wire, tmp_var);
      nval_even_66 <= tmp_var; --
    end process;
    -- binary operator ADD_u32_u32_80_inst
    process(val_odd_70_delayed_4_0_74, MUL_u32_u32_79_wire) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntAdd_proc(val_odd_70_delayed_4_0_74, MUL_u32_u32_79_wire, tmp_var);
      nval_odd_81 <= tmp_var; --
    end process;
    -- shared split operator group (3) : ADD_u8_u8_90_inst 
    ApIntAdd_group_3: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(7 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= C_18;
      nC_91 <= data_out(7 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= ADD_u8_u8_90_inst_req_0;
      ADD_u8_u8_90_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= ADD_u8_u8_90_inst_req_1;
      ADD_u8_u8_90_inst_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_3_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_3",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 8,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 8,
          constant_operand => "00000010",
          constant_width => 8,
          buffering  => 2,
          flow_through => false,
          full_rate  => true,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 3
    -- binary operator MUL_u32_u32_64_inst
    process(a_rc_even_43, xval_even_52) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntMul_proc(a_rc_even_43, xval_even_52, tmp_var);
      MUL_u32_u32_64_wire <= tmp_var; --
    end process;
    -- binary operator MUL_u32_u32_79_inst
    process(a_rc_odd_48, xval_odd_56) -- 
      variable tmp_var : std_logic_vector(31 downto 0); -- 
    begin -- 
      ApIntMul_proc(a_rc_odd_48, xval_odd_56, tmp_var);
      MUL_u32_u32_79_wire <= tmp_var; --
    end process;
    -- binary operator ULT_u8_u1_95_inst
    process(nC_91) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nC_91, konst_94_wire_constant, tmp_var);
      ULT_u8_u1_95_wire <= tmp_var; --
    end process;
    -- shared split operator group (7) : array_obj_ref_42_index_0_scale array_obj_ref_47_index_0_scale 
    ApIntMul_group_7: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(17 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 2, 0 => 2);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 2, 0 => 2);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => false, 1 => false);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      data_in <= R_R_40_resized & R_R_45_resized;
      R_R_40_scaled <= data_out(17 downto 9);
      R_R_45_scaled <= data_out(8 downto 0);
      guard_vector(0)  <=  '1';
      guard_vector(1)  <=  '1';
      reqL_unguarded(1) <= array_obj_ref_42_index_0_scale_req_0;
      reqL_unguarded(0) <= array_obj_ref_47_index_0_scale_req_0;
      array_obj_ref_42_index_0_scale_ack_0 <= ackL_unguarded(1);
      array_obj_ref_47_index_0_scale_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= array_obj_ref_42_index_0_scale_req_1;
      reqR_unguarded(0) <= array_obj_ref_47_index_0_scale_req_1;
      array_obj_ref_42_index_0_scale_ack_1 <= ackR_unguarded(1);
      array_obj_ref_47_index_0_scale_ack_1 <= ackR_unguarded(0);
      ApIntMul_group_7_accessRegulator_0: access_regulator_base generic map (name => "ApIntMul_group_7_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      ApIntMul_group_7_accessRegulator_1: access_regulator_base generic map (name => "ApIntMul_group_7_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      ApIntMul_group_7_gI: SplitGuardInterface generic map(name => "ApIntMul_group_7_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      SplitOperator: SplitOperatorShared -- 
        generic map ( -- 
          name => "ApIntMul_group_7",
          operator_id => "ApIntMul",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "000010000",
          constant_width => 9,
          use_constant  => true,
          full_rate  => true,
          no_arbitration => false,
          min_clock_period => false,
          num_reqs => 2,
          use_input_buffering => true,
          detailed_buffering_per_input => inBUFs,
          detailed_buffering_per_output => outBUFs --
        )
        port map ( reqL => reqL , ackL => ackL, reqR => reqR, ackR => ackR, dataL => data_in, dataR => data_out, clk => clk, reset => reset); -- 
      -- 
    end Block; -- split operator group 7
    -- shared split operator group (8) : array_obj_ref_42_index_sum_1 
    ApIntAdd_group_8: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(8 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= R_Cr_41_scaled & R_R_40_scaled;
      array_obj_ref_42_index_partial_sum_1 <= data_out(8 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= array_obj_ref_42_index_sum_1_req_0;
      array_obj_ref_42_index_sum_1_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_42_index_sum_1_req_1;
      array_obj_ref_42_index_sum_1_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_8_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_8_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_8",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 9, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 2,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 8
    -- shared split operator group (9) : array_obj_ref_47_index_sum_1 
    ApIntAdd_group_9: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(8 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= R_Cr_46_scaled & R_R_45_scaled;
      array_obj_ref_47_index_partial_sum_1 <= data_out(8 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= array_obj_ref_47_index_sum_1_req_0;
      array_obj_ref_47_index_sum_1_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_47_index_sum_1_req_1;
      array_obj_ref_47_index_sum_1_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_9_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_9_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_9",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 9, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 2,
          flow_through => false,
          full_rate  => true,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 9
    -- shared load operator group (0) : array_obj_ref_42_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(8 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_42_load_0_req_0;
      array_obj_ref_42_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_42_load_0_req_1;
      array_obj_ref_42_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_42_word_address_0;
      array_obj_ref_42_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 9,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_0_lr_req(0),
          mack => memory_space_0_lr_ack(0),
          maddr => memory_space_0_lr_addr(8 downto 0),
          mtag => memory_space_0_lr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_0_lc_req(0),
          mack => memory_space_0_lc_ack(0),
          mdata => memory_space_0_lc_data(31 downto 0),
          mtag => memory_space_0_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared load operator group (1) : array_obj_ref_47_load_0 
    LoadGroup1: Block -- 
      signal data_in: std_logic_vector(8 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_47_load_0_req_0;
      array_obj_ref_47_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_47_load_0_req_1;
      array_obj_ref_47_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup1_gI: SplitGuardInterface generic map(name => "LoadGroup1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_47_word_address_0;
      array_obj_ref_47_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup1", addr_width => 9,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_1_lr_req(0),
          mack => memory_space_1_lr_ack(0),
          maddr => memory_space_1_lr_addr(8 downto 0),
          mtag => memory_space_1_lr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup1 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_1_lc_req(0),
          mack => memory_space_1_lc_ack(0),
          mdata => memory_space_1_lc_data(31 downto 0),
          mtag => memory_space_1_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 1
    -- shared load operator group (2) : array_obj_ref_51_load_0 
    LoadGroup2: Block -- 
      signal data_in: std_logic_vector(3 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_51_load_0_req_0;
      array_obj_ref_51_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_51_load_0_req_1;
      array_obj_ref_51_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup2_gI: SplitGuardInterface generic map(name => "LoadGroup2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_51_word_address_0;
      array_obj_ref_51_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup2", addr_width => 4,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_2_lr_req(0),
          mack => memory_space_2_lr_ack(0),
          maddr => memory_space_2_lr_addr(3 downto 0),
          mtag => memory_space_2_lr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup2 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_2_lc_req(0),
          mack => memory_space_2_lc_ack(0),
          mdata => memory_space_2_lc_data(31 downto 0),
          mtag => memory_space_2_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 2
    -- shared load operator group (3) : array_obj_ref_55_load_0 
    LoadGroup3: Block -- 
      signal data_in: std_logic_vector(3 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_55_load_0_req_0;
      array_obj_ref_55_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_55_load_0_req_1;
      array_obj_ref_55_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup3_gI: SplitGuardInterface generic map(name => "LoadGroup3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_55_word_address_0;
      array_obj_ref_55_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup3", addr_width => 4,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_3_lr_req(0),
          mack => memory_space_3_lr_ack(0),
          maddr => memory_space_3_lr_addr(3 downto 0),
          mtag => memory_space_3_lr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup3 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_3_lc_req(0),
          mack => memory_space_3_lc_ack(0),
          mdata => memory_space_3_lc_data(31 downto 0),
          mtag => memory_space_3_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 3
    -- 
  end Block; -- data_path
  -- 
end dotP_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity multiplyMatrixVector is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_4_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_4_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_4_sr_addr : out  std_logic_vector(4 downto 0);
    memory_space_4_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_4_sr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_4_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_4_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_4_sc_tag :  in  std_logic_vector(0 downto 0);
    dotP_call_reqs : out  std_logic_vector(0 downto 0);
    dotP_call_acks : in   std_logic_vector(0 downto 0);
    dotP_call_data : out  std_logic_vector(7 downto 0);
    dotP_call_tag  :  out  std_logic_vector(0 downto 0);
    dotP_return_reqs : out  std_logic_vector(0 downto 0);
    dotP_return_acks : in   std_logic_vector(0 downto 0);
    dotP_return_data : in   std_logic_vector(31 downto 0);
    dotP_return_tag :  in   std_logic_vector(0 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity multiplyMatrixVector;
architecture multiplyMatrixVector_arch of multiplyMatrixVector is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal multiplyMatrixVector_CP_558_start: Boolean;
  signal multiplyMatrixVector_CP_558_symbol: Boolean;
  -- volatile/operator module components. 
  component dotP is -- 
    generic (tag_length : integer); 
    port ( -- 
      R : in  std_logic_vector(7 downto 0);
      result : out  std_logic_vector(31 downto 0);
      memory_space_1_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_1_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_lr_addr : out  std_logic_vector(8 downto 0);
      memory_space_1_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_1_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_1_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_1_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(8 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_2_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_2_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_2_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_2_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_2_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_2_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_3_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_3_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_3_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_3_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_3_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_3_lc_tag :  in  std_logic_vector(0 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- links between control-path and data-path
  signal ADD_u8_u8_126_inst_ack_1 : boolean;
  signal phi_stmt_110_req_0 : boolean;
  signal array_obj_ref_120_store_0_ack_1 : boolean;
  signal array_obj_ref_120_store_0_req_1 : boolean;
  signal call_stmt_118_call_ack_1 : boolean;
  signal phi_stmt_110_ack_0 : boolean;
  signal array_obj_ref_120_store_0_ack_0 : boolean;
  signal array_obj_ref_120_store_0_req_0 : boolean;
  signal if_stmt_128_branch_ack_0 : boolean;
  signal if_stmt_128_branch_ack_1 : boolean;
  signal phi_stmt_110_req_1 : boolean;
  signal if_stmt_128_branch_req_0 : boolean;
  signal call_stmt_118_call_req_1 : boolean;
  signal ADD_u8_u8_126_inst_req_1 : boolean;
  signal call_stmt_118_call_ack_0 : boolean;
  signal call_stmt_118_call_req_0 : boolean;
  signal nR_127_114_buf_ack_1 : boolean;
  signal nR_127_114_buf_req_1 : boolean;
  signal ADD_u8_u8_126_inst_ack_0 : boolean;
  signal ADD_u8_u8_126_inst_req_0 : boolean;
  signal nR_127_114_buf_ack_0 : boolean;
  signal nR_127_114_buf_req_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "multiplyMatrixVector_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  multiplyMatrixVector_CP_558_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "multiplyMatrixVector_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= multiplyMatrixVector_CP_558_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= multiplyMatrixVector_CP_558_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= multiplyMatrixVector_CP_558_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  multiplyMatrixVector_CP_558: Block -- control-path 
    signal multiplyMatrixVector_CP_558_elements: BooleanArray(16 downto 0);
    -- 
  begin -- 
    multiplyMatrixVector_CP_558_elements(0) <= multiplyMatrixVector_CP_558_start;
    multiplyMatrixVector_CP_558_symbol <= multiplyMatrixVector_CP_558_elements(10);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	11 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/phi_stmt_110_sources/$entry
      -- CP-element group 0: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/$entry
      -- CP-element group 0: 	 branch_block_stmt_108/merge_stmt_109__entry__
      -- CP-element group 0: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_108/merge_stmt_109_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_108/$entry
      -- CP-element group 0: 	 branch_block_stmt_108/branch_block_stmt_108__entry__
      -- CP-element group 0: 	 $entry
      -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	16 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Sample/cra
      -- CP-element group 1: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Sample/$exit
      -- CP-element group 1: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_sample_completed_
      -- 
    cra_583_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_118_call_ack_0, ack => multiplyMatrixVector_CP_558_elements(1)); -- 
    -- CP-element group 2:  transition  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	16 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	3 
    -- CP-element group 2:  members (3) 
      -- CP-element group 2: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Update/cca
      -- CP-element group 2: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Update/$exit
      -- CP-element group 2: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_update_completed_
      -- 
    cca_588_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_118_call_ack_1, ack => multiplyMatrixVector_CP_558_elements(2)); -- 
    -- CP-element group 3:  join  transition  output  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	16 
    -- CP-element group 3: 	2 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	4 
    -- CP-element group 3:  members (9) 
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/array_obj_ref_120_Split/split_req
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/word_0/rr
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/word_0/$entry
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/$entry
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_sample_start_
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/array_obj_ref_120_Split/split_ack
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/array_obj_ref_120_Split/$exit
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/array_obj_ref_120_Split/$entry
      -- CP-element group 3: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/$entry
      -- 
    rr_638_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_638_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(3), ack => array_obj_ref_120_store_0_req_0); -- 
    multiplyMatrixVector_cp_element_group_3: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "multiplyMatrixVector_cp_element_group_3"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= multiplyMatrixVector_CP_558_elements(16) & multiplyMatrixVector_CP_558_elements(2);
      gj_multiplyMatrixVector_cp_element_group_3 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => multiplyMatrixVector_CP_558_elements(3), clk => clk, reset => reset); --
    end block;
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	3 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (5) 
      -- CP-element group 4: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/word_0/ra
      -- CP-element group 4: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/word_0/$exit
      -- CP-element group 4: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/word_access_start/$exit
      -- CP-element group 4: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Sample/$exit
      -- 
    ra_639_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_120_store_0_ack_0, ack => multiplyMatrixVector_CP_558_elements(4)); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	16 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	8 
    -- CP-element group 5:  members (5) 
      -- CP-element group 5: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/word_0/ca
      -- CP-element group 5: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/word_0/$exit
      -- CP-element group 5: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/$exit
      -- CP-element group 5: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_update_completed_
      -- 
    ca_650_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_120_store_0_ack_1, ack => multiplyMatrixVector_CP_558_elements(5)); -- 
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	16 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Sample/$exit
      -- CP-element group 6: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_sample_completed_
      -- CP-element group 6: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Sample/ra
      -- 
    ra_659_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_126_inst_ack_0, ack => multiplyMatrixVector_CP_558_elements(6)); -- 
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	16 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_update_completed_
      -- CP-element group 7: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Update/ca
      -- CP-element group 7: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Update/$exit
      -- 
    ca_664_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_126_inst_ack_1, ack => multiplyMatrixVector_CP_558_elements(7)); -- 
    -- CP-element group 8:  branch  join  transition  place  output  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: 	5 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	9 
    -- CP-element group 8: 	10 
    -- CP-element group 8:  members (24) 
      -- CP-element group 8: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127__exit__
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128__entry__
      -- CP-element group 8: 	 branch_block_stmt_108/ULT_u8_u1_131_place
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_else_link/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_if_link/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/branch_req
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Update/ca
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Update/cr
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Update/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Update/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Sample/ra
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Sample/rr
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Sample/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/Sample/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/SplitProtocol/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/ULT_u8_u1_131_inputs/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/ULT_u8_u1_131_inputs/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/ULT_u8_u1_131/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/$exit
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_eval_test/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/if_stmt_128_dead_link/$entry
      -- CP-element group 8: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/$exit
      -- 
    branch_req_691_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " branch_req_691_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(8), ack => if_stmt_128_branch_req_0); -- 
    multiplyMatrixVector_cp_element_group_8: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 39) := "multiplyMatrixVector_cp_element_group_8"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= multiplyMatrixVector_CP_558_elements(7) & multiplyMatrixVector_CP_558_elements(5);
      gj_multiplyMatrixVector_cp_element_group_8 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => multiplyMatrixVector_CP_558_elements(8), clk => clk, reset => reset); --
    end block;
    -- CP-element group 9:  fork  transition  place  input  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	8 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	12 
    -- CP-element group 9:  members (11) 
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/$entry
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/$entry
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/$entry
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/$entry
      -- CP-element group 9: 	 branch_block_stmt_108/loopback
      -- CP-element group 9: 	 branch_block_stmt_108/if_stmt_128_if_link/if_choice_transition
      -- CP-element group 9: 	 branch_block_stmt_108/if_stmt_128_if_link/$exit
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Update/req
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Update/$entry
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Sample/req
      -- CP-element group 9: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Sample/$entry
      -- 
    if_choice_transition_696_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_128_branch_ack_1, ack => multiplyMatrixVector_CP_558_elements(9)); -- 
    req_737_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_737_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(9), ack => nR_127_114_buf_req_1); -- 
    req_732_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_732_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(9), ack => nR_127_114_buf_req_0); -- 
    -- CP-element group 10:  merge  transition  place  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	8 
    -- CP-element group 10: successors 
    -- CP-element group 10:  members (6) 
      -- CP-element group 10: 	 branch_block_stmt_108/if_stmt_128__exit__
      -- CP-element group 10: 	 branch_block_stmt_108/if_stmt_128_else_link/else_choice_transition
      -- CP-element group 10: 	 branch_block_stmt_108/if_stmt_128_else_link/$exit
      -- CP-element group 10: 	 branch_block_stmt_108/$exit
      -- CP-element group 10: 	 branch_block_stmt_108/branch_block_stmt_108__exit__
      -- CP-element group 10: 	 $exit
      -- 
    else_choice_transition_700_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_128_branch_ack_0, ack => multiplyMatrixVector_CP_558_elements(10)); -- 
    -- CP-element group 11:  transition  output  delay-element  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	0 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	15 
    -- CP-element group 11:  members (5) 
      -- CP-element group 11: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/phi_stmt_110_sources/type_cast_113_konst_delay_trans
      -- CP-element group 11: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/phi_stmt_110_req
      -- CP-element group 11: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/phi_stmt_110_sources/$exit
      -- CP-element group 11: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/phi_stmt_110/$exit
      -- CP-element group 11: 	 branch_block_stmt_108/merge_stmt_109__entry___PhiReq/$exit
      -- 
    phi_stmt_110_req_716_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_110_req_716_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(11), ack => phi_stmt_110_req_0); -- 
    -- Element group multiplyMatrixVector_CP_558_elements(11) is a control-delay.
    cp_element_11_delay: control_delay_element  generic map(name => " 11_delay", delay_value => 1)  port map(req => multiplyMatrixVector_CP_558_elements(0), ack => multiplyMatrixVector_CP_558_elements(11), clk => clk, reset =>reset);
    -- CP-element group 12:  transition  input  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	9 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	14 
    -- CP-element group 12:  members (2) 
      -- CP-element group 12: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Sample/ack
      -- CP-element group 12: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Sample/$exit
      -- 
    ack_733_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 12_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nR_127_114_buf_ack_0, ack => multiplyMatrixVector_CP_558_elements(12)); -- 
    -- CP-element group 13:  transition  input  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	14 
    -- CP-element group 13:  members (2) 
      -- CP-element group 13: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Update/ack
      -- CP-element group 13: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/Update/$exit
      -- 
    ack_738_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nR_127_114_buf_ack_1, ack => multiplyMatrixVector_CP_558_elements(13)); -- 
    -- CP-element group 14:  join  transition  output  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	13 
    -- CP-element group 14: 	12 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	15 
    -- CP-element group 14:  members (5) 
      -- CP-element group 14: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/$exit
      -- CP-element group 14: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/$exit
      -- CP-element group 14: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_sources/Interlock/$exit
      -- CP-element group 14: 	 branch_block_stmt_108/loopback_PhiReq/$exit
      -- CP-element group 14: 	 branch_block_stmt_108/loopback_PhiReq/phi_stmt_110/phi_stmt_110_req
      -- 
    phi_stmt_110_req_739_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_110_req_739_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(14), ack => phi_stmt_110_req_1); -- 
    multiplyMatrixVector_cp_element_group_14: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 40) := "multiplyMatrixVector_cp_element_group_14"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= multiplyMatrixVector_CP_558_elements(13) & multiplyMatrixVector_CP_558_elements(12);
      gj_multiplyMatrixVector_cp_element_group_14 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => multiplyMatrixVector_CP_558_elements(14), clk => clk, reset => reset); --
    end block;
    -- CP-element group 15:  merge  transition  place  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	14 
    -- CP-element group 15: 	11 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	16 
    -- CP-element group 15:  members (2) 
      -- CP-element group 15: 	 branch_block_stmt_108/merge_stmt_109_PhiAck/$entry
      -- CP-element group 15: 	 branch_block_stmt_108/merge_stmt_109_PhiReqMerge
      -- 
    multiplyMatrixVector_CP_558_elements(15) <= OrReduce(multiplyMatrixVector_CP_558_elements(14) & multiplyMatrixVector_CP_558_elements(11));
    -- CP-element group 16:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	15 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	6 
    -- CP-element group 16: 	7 
    -- CP-element group 16: 	3 
    -- CP-element group 16: 	5 
    -- CP-element group 16: 	1 
    -- CP-element group 16: 	2 
    -- CP-element group 16:  members (48) 
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Sample/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_scaled_0
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_update_start_
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127__entry__
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_resize_0/index_resize_req
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_sample_start_
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/word_0/cr
      -- CP-element group 16: 	 branch_block_stmt_108/merge_stmt_109__exit__
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/word_0/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/merge_stmt_109_PhiAck/phi_stmt_110_ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/word_access_complete/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_resized_0
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_offset_calculated
      -- CP-element group 16: 	 branch_block_stmt_108/merge_stmt_109_PhiAck/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_Update/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_root_address_calculated
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_word_address_calculated
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_update_start_
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Update/ccr
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Update/cr
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_word_addrgen/root_register_ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Update/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Sample/crr
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_word_addrgen/root_register_req
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_word_addrgen/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_Sample/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Update/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_word_addrgen/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_base_plus_offset/sum_rename_ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_update_start_
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_base_plus_offset/sum_rename_req
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/call_stmt_118_sample_start_
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_base_plus_offset/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_base_plus_offset/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/ADD_u8_u8_126_Sample/rr
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_final_index_sum_regn/ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_final_index_sum_regn/req
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_final_index_sum_regn/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_final_index_sum_regn/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_scale_0/scale_rename_ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_scale_0/scale_rename_req
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_scale_0/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_scale_0/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_resize_0/index_resize_ack
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_resize_0/$exit
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_resize_0/$entry
      -- CP-element group 16: 	 branch_block_stmt_108/call_stmt_118_to_assign_stmt_127/array_obj_ref_120_index_computed_0
      -- 
    phi_stmt_110_ack_744_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_110_ack_0, ack => multiplyMatrixVector_CP_558_elements(16)); -- 
    cr_649_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_649_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(16), ack => array_obj_ref_120_store_0_req_1); -- 
    ccr_587_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_587_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(16), ack => call_stmt_118_call_req_1); -- 
    cr_663_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_663_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(16), ack => ADD_u8_u8_126_inst_req_1); -- 
    crr_582_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_582_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(16), ack => call_stmt_118_call_req_0); -- 
    rr_658_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_658_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => multiplyMatrixVector_CP_558_elements(16), ack => ADD_u8_u8_126_inst_req_0); -- 
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal R_110 : std_logic_vector(7 downto 0);
    signal R_R_119_resized : std_logic_vector(4 downto 0);
    signal R_R_119_scaled : std_logic_vector(4 downto 0);
    signal ULT_u8_u1_131_wire : std_logic_vector(0 downto 0);
    signal array_obj_ref_120_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_120_final_offset : std_logic_vector(4 downto 0);
    signal array_obj_ref_120_offset_scale_factor_0 : std_logic_vector(4 downto 0);
    signal array_obj_ref_120_resized_base_address : std_logic_vector(4 downto 0);
    signal array_obj_ref_120_root_address : std_logic_vector(4 downto 0);
    signal array_obj_ref_120_word_address_0 : std_logic_vector(4 downto 0);
    signal array_obj_ref_120_word_offset_0 : std_logic_vector(4 downto 0);
    signal konst_125_wire_constant : std_logic_vector(7 downto 0);
    signal konst_130_wire_constant : std_logic_vector(7 downto 0);
    signal nR_127 : std_logic_vector(7 downto 0);
    signal nR_127_114_buffered : std_logic_vector(7 downto 0);
    signal type_cast_113_wire_constant : std_logic_vector(7 downto 0);
    signal val_118 : std_logic_vector(31 downto 0);
    -- 
  begin -- 
    array_obj_ref_120_offset_scale_factor_0 <= "00001";
    array_obj_ref_120_resized_base_address <= "00000";
    array_obj_ref_120_word_offset_0 <= "00000";
    konst_125_wire_constant <= "00000001";
    konst_130_wire_constant <= "00100000";
    type_cast_113_wire_constant <= "00000000";
    phi_stmt_110: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_113_wire_constant & nR_127_114_buffered;
      req <= phi_stmt_110_req_0 & phi_stmt_110_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_110",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_110_ack_0,
          idata => idata,
          odata => R_110,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_110
    nR_127_114_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nR_127_114_buf_req_0;
      nR_127_114_buf_ack_0<= wack(0);
      rreq(0) <= nR_127_114_buf_req_1;
      nR_127_114_buf_ack_1<= rack(0);
      nR_127_114_buf : InterlockBuffer generic map ( -- 
        name => "nR_127_114_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nR_127,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nR_127_114_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_120_addr_0
    process(array_obj_ref_120_root_address) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_120_root_address;
      ov(4 downto 0) := iv;
      array_obj_ref_120_word_address_0 <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_120_gather_scatter
    process(val_118) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := val_118;
      ov(31 downto 0) := iv;
      array_obj_ref_120_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_120_index_0_rename
    process(R_R_119_resized) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_R_119_resized;
      ov(4 downto 0) := iv;
      R_R_119_scaled <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_120_index_0_resize
    process(R_110) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_110;
      ov := iv(4 downto 0);
      R_R_119_resized <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_120_index_offset
    process(R_R_119_scaled) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_R_119_scaled;
      ov(4 downto 0) := iv;
      array_obj_ref_120_final_offset <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_120_root_address_inst
    process(array_obj_ref_120_final_offset) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_120_final_offset;
      ov(4 downto 0) := iv;
      array_obj_ref_120_root_address <= ov(4 downto 0);
      --
    end process;
    if_stmt_128_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_131_wire;
      branch_instance: BranchBase -- 
        generic map( name => "if_stmt_128_branch", condition_width => 1,  bypass_flag => false)
        port map( -- 
          condition => condition_sig,
          req => if_stmt_128_branch_req_0,
          ack0 => if_stmt_128_branch_ack_0,
          ack1 => if_stmt_128_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- shared split operator group (0) : ADD_u8_u8_126_inst 
    ApIntAdd_group_0: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(7 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= R_110;
      nR_127 <= data_out(7 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= ADD_u8_u8_126_inst_req_0;
      ADD_u8_u8_126_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= ADD_u8_u8_126_inst_req_1;
      ADD_u8_u8_126_inst_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_0_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_0",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 8,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 8,
          constant_operand => "00000001",
          constant_width => 8,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- binary operator ULT_u8_u1_131_inst
    process(nR_127) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nR_127, konst_130_wire_constant, tmp_var);
      ULT_u8_u1_131_wire <= tmp_var; --
    end process;
    -- shared store operator group (0) : array_obj_ref_120_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(4 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_120_store_0_req_0;
      array_obj_ref_120_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_120_store_0_req_1;
      array_obj_ref_120_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      StoreGroup0_gI: SplitGuardInterface generic map(name => "StoreGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_120_word_address_0;
      data_in <= array_obj_ref_120_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup0 Req ", addr_width => 5,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_4_sr_req(0),
          mack => memory_space_4_sr_ack(0),
          maddr => memory_space_4_sr_addr(4 downto 0),
          mdata => memory_space_4_sr_data(31 downto 0),
          mtag => memory_space_4_sr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup0 Complete ",
          num_reqs => 1,
          detailed_buffering_per_output => outBUFs,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_4_sc_req(0),
          mack => memory_space_4_sc_ack(0),
          mtag => memory_space_4_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared call operator group (0) : call_stmt_118_call 
    dotP_call_group_0: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_118_call_req_0;
      call_stmt_118_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_118_call_req_1;
      call_stmt_118_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      dotP_call_group_0_gI: SplitGuardInterface generic map(name => "dotP_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= R_110;
      val_118 <= data_out(31 downto 0);
      CallReq: InputMuxWithBuffering -- 
        generic map (name => "InputMuxWithBuffering",
        iwidth => 8,
        owidth => 8,
        buffering => inBUFs,
        full_rate =>  false,
        twidth => 1,
        nreqs => 1,
        registered_output => false,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          reqR => dotP_call_reqs(0),
          ackR => dotP_call_acks(0),
          dataR => dotP_call_data(7 downto 0),
          tagR => dotP_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseWithBuffering -- 
        generic map ( -- 
          iwidth => 32,
          owidth => 32,
          detailed_buffering_per_output => outBUFs, 
          full_rate => false, 
          twidth => 1,
          name => "OutputDemuxBaseWithBuffering",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          reqL => dotP_return_acks(0), -- cross-over
          ackL => dotP_return_reqs(0), -- cross-over
          dataL => dotP_return_data(31 downto 0),
          tagL => dotP_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- 
  end Block; -- data_path
  -- 
end multiplyMatrixVector_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity mvp_daemon is -- 
  generic (tag_length : integer); 
  port ( -- 
    multiplyMatrixVector_call_reqs : out  std_logic_vector(0 downto 0);
    multiplyMatrixVector_call_acks : in   std_logic_vector(0 downto 0);
    multiplyMatrixVector_call_tag  :  out  std_logic_vector(0 downto 0);
    multiplyMatrixVector_return_reqs : out  std_logic_vector(0 downto 0);
    multiplyMatrixVector_return_acks : in   std_logic_vector(0 downto 0);
    multiplyMatrixVector_return_tag :  in   std_logic_vector(0 downto 0);
    readMatrix_call_reqs : out  std_logic_vector(0 downto 0);
    readMatrix_call_acks : in   std_logic_vector(0 downto 0);
    readMatrix_call_tag  :  out  std_logic_vector(0 downto 0);
    readMatrix_return_reqs : out  std_logic_vector(0 downto 0);
    readMatrix_return_acks : in   std_logic_vector(0 downto 0);
    readMatrix_return_tag :  in   std_logic_vector(0 downto 0);
    readVector_call_reqs : out  std_logic_vector(0 downto 0);
    readVector_call_acks : in   std_logic_vector(0 downto 0);
    readVector_call_tag  :  out  std_logic_vector(0 downto 0);
    readVector_return_reqs : out  std_logic_vector(0 downto 0);
    readVector_return_acks : in   std_logic_vector(0 downto 0);
    readVector_return_tag :  in   std_logic_vector(0 downto 0);
    sendVector_call_reqs : out  std_logic_vector(0 downto 0);
    sendVector_call_acks : in   std_logic_vector(0 downto 0);
    sendVector_call_tag  :  out  std_logic_vector(0 downto 0);
    sendVector_return_reqs : out  std_logic_vector(0 downto 0);
    sendVector_return_acks : in   std_logic_vector(0 downto 0);
    sendVector_return_tag :  in   std_logic_vector(0 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity mvp_daemon;
architecture mvp_daemon_arch of mvp_daemon is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal mvp_daemon_CP_1566_start: Boolean;
  signal mvp_daemon_CP_1566_symbol: Boolean;
  -- volatile/operator module components. 
  component multiplyMatrixVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_4_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_4_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_sr_addr : out  std_logic_vector(4 downto 0);
      memory_space_4_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_4_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_4_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_4_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_sc_tag :  in  std_logic_vector(0 downto 0);
      dotP_call_reqs : out  std_logic_vector(0 downto 0);
      dotP_call_acks : in   std_logic_vector(0 downto 0);
      dotP_call_data : out  std_logic_vector(7 downto 0);
      dotP_call_tag  :  out  std_logic_vector(0 downto 0);
      dotP_return_reqs : out  std_logic_vector(0 downto 0);
      dotP_return_acks : in   std_logic_vector(0 downto 0);
      dotP_return_data : in   std_logic_vector(31 downto 0);
      dotP_return_tag :  in   std_logic_vector(0 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  component readMatrix is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_1_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_1_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_sr_addr : out  std_logic_vector(8 downto 0);
      memory_space_1_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_1_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_1_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_1_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_sc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sr_addr : out  std_logic_vector(8 downto 0);
      memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_0_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sc_tag :  in  std_logic_vector(0 downto 0);
      in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
      in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
      in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  component readVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_2_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_2_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_2_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_2_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_2_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_2_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_sc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_3_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_3_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_3_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_3_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_3_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_3_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_sc_tag :  in  std_logic_vector(0 downto 0);
      in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
      in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
      in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  component sendVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_4_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_4_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_lr_addr : out  std_logic_vector(4 downto 0);
      memory_space_4_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_4_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_4_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_4_lc_tag :  in  std_logic_vector(0 downto 0);
      out_data_pipe_write_req : out  std_logic_vector(0 downto 0);
      out_data_pipe_write_ack : in   std_logic_vector(0 downto 0);
      out_data_pipe_write_data : out  std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- links between control-path and data-path
  signal call_stmt_286_call_ack_0 : boolean;
  signal call_stmt_286_call_ack_1 : boolean;
  signal call_stmt_286_call_req_1 : boolean;
  signal call_stmt_286_call_req_0 : boolean;
  signal call_stmt_284_call_req_0 : boolean;
  signal call_stmt_284_call_ack_0 : boolean;
  signal call_stmt_284_call_req_1 : boolean;
  signal call_stmt_284_call_ack_1 : boolean;
  signal call_stmt_281_call_req_0 : boolean;
  signal call_stmt_285_call_req_0 : boolean;
  signal call_stmt_285_call_ack_0 : boolean;
  signal call_stmt_281_call_ack_0 : boolean;
  signal call_stmt_281_call_req_1 : boolean;
  signal call_stmt_285_call_req_1 : boolean;
  signal call_stmt_281_call_ack_1 : boolean;
  signal call_stmt_285_call_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "mvp_daemon_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  mvp_daemon_CP_1566_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "mvp_daemon_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= mvp_daemon_CP_1566_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= mvp_daemon_CP_1566_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= mvp_daemon_CP_1566_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  mvp_daemon_CP_1566: Block -- control-path 
    signal mvp_daemon_CP_1566_elements: BooleanArray(12 downto 0);
    -- 
  begin -- 
    mvp_daemon_CP_1566_elements(0) <= mvp_daemon_CP_1566_start;
    mvp_daemon_CP_1566_symbol <= mvp_daemon_CP_1566_elements(3);
    -- CP-element group 0:  fork  transition  output  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	1 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_Sample/$entry
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_update_start_
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_sample_start_
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_Sample/crr
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_Update/$entry
      -- CP-element group 0: 	 call_stmt_281/call_stmt_281_Update/ccr
      -- CP-element group 0: 	 call_stmt_281/$entry
      -- CP-element group 0: 	 $entry
      -- 
    crr_1579_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_1579_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(0), ack => call_stmt_281_call_req_0); -- 
    ccr_1584_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_1584_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(0), ack => call_stmt_281_call_req_1); -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	0 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 call_stmt_281/call_stmt_281_sample_completed_
      -- CP-element group 1: 	 call_stmt_281/call_stmt_281_Sample/$exit
      -- CP-element group 1: 	 call_stmt_281/call_stmt_281_Sample/cra
      -- 
    cra_1580_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_281_call_ack_0, ack => mvp_daemon_CP_1566_elements(1)); -- 
    -- CP-element group 2:  branch  transition  place  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	12 
    -- CP-element group 2:  members (10) 
      -- CP-element group 2: 	 call_stmt_281/call_stmt_281_update_completed_
      -- CP-element group 2: 	 call_stmt_281/$exit
      -- CP-element group 2: 	 branch_block_stmt_282/merge_stmt_283_dead_link/$entry
      -- CP-element group 2: 	 call_stmt_281/call_stmt_281_Update/$exit
      -- CP-element group 2: 	 branch_block_stmt_282/merge_stmt_283__entry___PhiReq/$entry
      -- CP-element group 2: 	 branch_block_stmt_282/merge_stmt_283__entry___PhiReq/$exit
      -- CP-element group 2: 	 branch_block_stmt_282/$entry
      -- CP-element group 2: 	 call_stmt_281/call_stmt_281_Update/cca
      -- CP-element group 2: 	 branch_block_stmt_282/merge_stmt_283__entry__
      -- CP-element group 2: 	 branch_block_stmt_282/branch_block_stmt_282__entry__
      -- 
    cca_1585_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_281_call_ack_1, ack => mvp_daemon_CP_1566_elements(2)); -- 
    -- CP-element group 3:  transition  place  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 branch_block_stmt_282/$exit
      -- CP-element group 3: 	 branch_block_stmt_282/branch_block_stmt_282__exit__
      -- CP-element group 3: 	 $exit
      -- 
    mvp_daemon_CP_1566_elements(3) <= false; 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	12 
    -- CP-element group 4: successors 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Sample/$exit
      -- CP-element group 4: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_sample_completed_
      -- CP-element group 4: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Sample/cra
      -- 
    cra_1607_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_284_call_ack_0, ack => mvp_daemon_CP_1566_elements(4)); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	12 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	11 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_update_completed_
      -- CP-element group 5: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Update/$exit
      -- CP-element group 5: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Update/cca
      -- 
    cca_1612_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_284_call_ack_1, ack => mvp_daemon_CP_1566_elements(5)); -- 
    -- CP-element group 6:  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	11 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (3) 
      -- CP-element group 6: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_sample_completed_
      -- CP-element group 6: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Sample/$exit
      -- CP-element group 6: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Sample/cra
      -- 
    cra_1621_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_285_call_ack_0, ack => mvp_daemon_CP_1566_elements(6)); -- 
    -- CP-element group 7:  transition  input  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	12 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	10 
    -- CP-element group 7:  members (3) 
      -- CP-element group 7: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_update_completed_
      -- CP-element group 7: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Update/$exit
      -- CP-element group 7: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Update/cca
      -- 
    cca_1626_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_285_call_ack_1, ack => mvp_daemon_CP_1566_elements(7)); -- 
    -- CP-element group 8:  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	10 
    -- CP-element group 8: successors 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Sample/cra
      -- CP-element group 8: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Sample/$exit
      -- CP-element group 8: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_sample_completed_
      -- 
    cra_1635_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_286_call_ack_0, ack => mvp_daemon_CP_1566_elements(8)); -- 
    -- CP-element group 9:  transition  place  input  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	12 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	12 
    -- CP-element group 9:  members (8) 
      -- CP-element group 9: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Update/$exit
      -- CP-element group 9: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_update_completed_
      -- CP-element group 9: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Update/cca
      -- CP-element group 9: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286__exit__
      -- CP-element group 9: 	 branch_block_stmt_282/loopback
      -- CP-element group 9: 	 branch_block_stmt_282/loopback_PhiReq/$entry
      -- CP-element group 9: 	 branch_block_stmt_282/loopback_PhiReq/$exit
      -- CP-element group 9: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/$exit
      -- 
    cca_1640_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 9_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => call_stmt_286_call_ack_1, ack => mvp_daemon_CP_1566_elements(9)); -- 
    -- CP-element group 10:  transition  output  delay-element  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	7 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	8 
    -- CP-element group 10:  members (4) 
      -- CP-element group 10: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Sample/$entry
      -- CP-element group 10: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Sample/crr
      -- CP-element group 10: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_call_stmt_286_delay
      -- CP-element group 10: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_sample_start_
      -- 
    crr_1634_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_1634_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(10), ack => call_stmt_286_call_req_0); -- 
    -- Element group mvp_daemon_CP_1566_elements(10) is a control-delay.
    cp_element_10_delay: control_delay_element  generic map(name => " 10_delay", delay_value => 1)  port map(req => mvp_daemon_CP_1566_elements(7), ack => mvp_daemon_CP_1566_elements(10), clk => clk, reset =>reset);
    -- CP-element group 11:  transition  output  delay-element  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	5 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	6 
    -- CP-element group 11:  members (4) 
      -- CP-element group 11: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_call_stmt_285_delay
      -- CP-element group 11: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_sample_start_
      -- CP-element group 11: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Sample/$entry
      -- CP-element group 11: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Sample/crr
      -- 
    crr_1620_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_1620_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(11), ack => call_stmt_285_call_req_0); -- 
    -- Element group mvp_daemon_CP_1566_elements(11) is a control-delay.
    cp_element_11_delay: control_delay_element  generic map(name => " 11_delay", delay_value => 1)  port map(req => mvp_daemon_CP_1566_elements(5), ack => mvp_daemon_CP_1566_elements(11), clk => clk, reset =>reset);
    -- CP-element group 12:  merge  fork  transition  place  output  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	2 
    -- CP-element group 12: 	9 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	4 
    -- CP-element group 12: 	5 
    -- CP-element group 12: 	7 
    -- CP-element group 12: 	9 
    -- CP-element group 12:  members (19) 
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_update_start_
      -- CP-element group 12: 	 branch_block_stmt_282/merge_stmt_283_PhiReqMerge
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Update/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Sample/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_Update/ccr
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286__entry__
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_286_update_start_
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_sample_start_
      -- CP-element group 12: 	 branch_block_stmt_282/merge_stmt_283__exit__
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Sample/crr
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Update/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_284_Update/ccr
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_update_start_
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Update/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/merge_stmt_283_PhiAck/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/call_stmt_285_Update/ccr
      -- CP-element group 12: 	 branch_block_stmt_282/call_stmt_284_to_call_stmt_286/$entry
      -- CP-element group 12: 	 branch_block_stmt_282/merge_stmt_283_PhiAck/dummy
      -- CP-element group 12: 	 branch_block_stmt_282/merge_stmt_283_PhiAck/$exit
      -- 
    ccr_1639_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_1639_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(12), ack => call_stmt_286_call_req_1); -- 
    crr_1606_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " crr_1606_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(12), ack => call_stmt_284_call_req_0); -- 
    ccr_1611_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_1611_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(12), ack => call_stmt_284_call_req_1); -- 
    ccr_1625_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " ccr_1625_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => mvp_daemon_CP_1566_elements(12), ack => call_stmt_285_call_req_1); -- 
    mvp_daemon_CP_1566_elements(12) <= OrReduce(mvp_daemon_CP_1566_elements(2) & mvp_daemon_CP_1566_elements(9));
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    -- 
  begin -- 
    -- shared call operator group (0) : call_stmt_281_call 
    readMatrix_call_group_0: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_281_call_req_0;
      call_stmt_281_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_281_call_req_1;
      call_stmt_281_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      readMatrix_call_group_0_gI: SplitGuardInterface generic map(name => "readMatrix_call_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => readMatrix_call_reqs(0),
          ackR => readMatrix_call_acks(0),
          tagR => readMatrix_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => readMatrix_return_acks(0), -- cross-over
          ackL => readMatrix_return_reqs(0), -- cross-over
          tagL => readMatrix_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 0
    -- shared call operator group (1) : call_stmt_284_call 
    readVector_call_group_1: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_284_call_req_0;
      call_stmt_284_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_284_call_req_1;
      call_stmt_284_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      readVector_call_group_1_gI: SplitGuardInterface generic map(name => "readVector_call_group_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => readVector_call_reqs(0),
          ackR => readVector_call_acks(0),
          tagR => readVector_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => readVector_return_acks(0), -- cross-over
          ackL => readVector_return_reqs(0), -- cross-over
          tagL => readVector_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 1
    -- shared call operator group (2) : call_stmt_285_call 
    multiplyMatrixVector_call_group_2: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_285_call_req_0;
      call_stmt_285_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_285_call_req_1;
      call_stmt_285_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      multiplyMatrixVector_call_group_2_gI: SplitGuardInterface generic map(name => "multiplyMatrixVector_call_group_2_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => multiplyMatrixVector_call_reqs(0),
          ackR => multiplyMatrixVector_call_acks(0),
          tagR => multiplyMatrixVector_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => multiplyMatrixVector_return_acks(0), -- cross-over
          ackL => multiplyMatrixVector_return_reqs(0), -- cross-over
          tagL => multiplyMatrixVector_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 2
    -- shared call operator group (3) : call_stmt_286_call 
    sendVector_call_group_3: Block -- 
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs: IntegerArray(0 downto 0) := (others => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= call_stmt_286_call_req_0;
      call_stmt_286_call_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= call_stmt_286_call_req_1;
      call_stmt_286_call_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      sendVector_call_group_3_gI: SplitGuardInterface generic map(name => "sendVector_call_group_3_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      CallReq: InputMuxBaseNoData -- 
        generic map (name => "InputMuxBaseNoData",
        twidth => 1,
        nreqs => 1,
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          reqR => sendVector_call_reqs(0),
          ackR => sendVector_call_acks(0),
          tagR => sendVector_call_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      CallComplete: OutputDemuxBaseNoData -- 
        generic map ( -- 
          detailed_buffering_per_output => outBUFs, 
          twidth => 1,
          name => "OutputDemuxBaseNoData",
          nreqs => 1) -- 
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          reqL => sendVector_return_acks(0), -- cross-over
          ackL => sendVector_return_reqs(0), -- cross-over
          tagL => sendVector_return_tag(0 downto 0),
          clk => clk,
          reset => reset -- 
        ); -- 
      -- 
    end Block; -- call group 3
    -- 
  end Block; -- data_path
  -- 
end mvp_daemon_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity readMatrix is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_1_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_1_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_1_sr_addr : out  std_logic_vector(8 downto 0);
    memory_space_1_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_1_sr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_1_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_1_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_1_sc_tag :  in  std_logic_vector(0 downto 0);
    memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sr_addr : out  std_logic_vector(8 downto 0);
    memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_0_sr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_0_sc_tag :  in  std_logic_vector(0 downto 0);
    in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
    in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
    in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity readMatrix;
architecture readMatrix_arch of readMatrix is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal readMatrix_CP_745_start: Boolean;
  signal readMatrix_CP_745_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal RPIPE_in_data_172_inst_req_1 : boolean;
  signal RPIPE_in_data_172_inst_ack_1 : boolean;
  signal slice_169_inst_ack_1 : boolean;
  signal RPIPE_in_data_172_inst_req_0 : boolean;
  signal RPIPE_in_data_172_inst_ack_0 : boolean;
  signal slice_169_inst_req_0 : boolean;
  signal ADD_u8_u8_148_inst_ack_1 : boolean;
  signal slice_169_inst_req_1 : boolean;
  signal ADD_u8_u8_148_inst_req_1 : boolean;
  signal ADD_u8_u8_160_inst_ack_1 : boolean;
  signal ADD_u8_u8_148_inst_ack_0 : boolean;
  signal ADD_u8_u8_160_inst_req_1 : boolean;
  signal ADD_u8_u8_148_inst_req_0 : boolean;
  signal ADD_u8_u8_160_inst_ack_0 : boolean;
  signal ADD_u8_u8_160_inst_req_0 : boolean;
  signal slice_169_inst_ack_0 : boolean;
  signal array_obj_ref_177_index_0_scale_req_0 : boolean;
  signal array_obj_ref_177_index_0_scale_ack_0 : boolean;
  signal array_obj_ref_177_index_0_scale_req_1 : boolean;
  signal array_obj_ref_177_index_0_scale_ack_1 : boolean;
  signal array_obj_ref_177_index_sum_1_req_0 : boolean;
  signal array_obj_ref_177_index_sum_1_ack_0 : boolean;
  signal array_obj_ref_177_index_sum_1_req_1 : boolean;
  signal array_obj_ref_177_index_sum_1_ack_1 : boolean;
  signal array_obj_ref_177_store_0_req_0 : boolean;
  signal array_obj_ref_177_store_0_ack_0 : boolean;
  signal array_obj_ref_177_store_0_req_1 : boolean;
  signal array_obj_ref_177_store_0_ack_1 : boolean;
  signal array_obj_ref_189_index_0_scale_req_0 : boolean;
  signal array_obj_ref_189_index_0_scale_ack_0 : boolean;
  signal array_obj_ref_189_index_0_scale_req_1 : boolean;
  signal array_obj_ref_189_index_0_scale_ack_1 : boolean;
  signal array_obj_ref_189_index_sum_1_req_0 : boolean;
  signal array_obj_ref_189_index_sum_1_ack_0 : boolean;
  signal array_obj_ref_189_index_sum_1_req_1 : boolean;
  signal array_obj_ref_189_index_sum_1_ack_1 : boolean;
  signal array_obj_ref_189_store_0_req_0 : boolean;
  signal array_obj_ref_189_store_0_ack_0 : boolean;
  signal array_obj_ref_189_store_0_req_1 : boolean;
  signal array_obj_ref_189_store_0_ack_1 : boolean;
  signal if_stmt_198_branch_req_0 : boolean;
  signal if_stmt_198_branch_ack_1 : boolean;
  signal if_stmt_198_branch_ack_0 : boolean;
  signal if_stmt_204_branch_req_0 : boolean;
  signal if_stmt_204_branch_ack_1 : boolean;
  signal if_stmt_204_branch_ack_0 : boolean;
  signal phi_stmt_139_req_0 : boolean;
  signal nI_149_143_buf_req_0 : boolean;
  signal nI_149_143_buf_ack_0 : boolean;
  signal nI_149_143_buf_req_1 : boolean;
  signal nI_149_143_buf_ack_1 : boolean;
  signal phi_stmt_139_req_1 : boolean;
  signal phi_stmt_139_ack_0 : boolean;
  signal phi_stmt_151_req_0 : boolean;
  signal nJ_161_155_buf_req_0 : boolean;
  signal nJ_161_155_buf_ack_0 : boolean;
  signal nJ_161_155_buf_req_1 : boolean;
  signal nJ_161_155_buf_ack_1 : boolean;
  signal phi_stmt_151_req_1 : boolean;
  signal phi_stmt_151_ack_0 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "readMatrix_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  readMatrix_CP_745_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "readMatrix_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= readMatrix_CP_745_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= readMatrix_CP_745_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= readMatrix_CP_745_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  readMatrix_CP_745: Block -- control-path 
    signal readMatrix_CP_745_elements: BooleanArray(41 downto 0);
    -- 
  begin -- 
    readMatrix_CP_745_elements(0) <= readMatrix_CP_745_start;
    readMatrix_CP_745_symbol <= readMatrix_CP_745_elements(29);
    -- CP-element group 0:  branch  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	30 
    -- CP-element group 0:  members (8) 
      -- CP-element group 0: 	 branch_block_stmt_137/merge_stmt_138__entry__
      -- CP-element group 0: 	 branch_block_stmt_137/branch_block_stmt_137__entry__
      -- CP-element group 0: 	 branch_block_stmt_137/$entry
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_137/merge_stmt_138_dead_link/$entry
      -- CP-element group 0: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/$entry
      -- CP-element group 0: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/$entry
      -- CP-element group 0: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/phi_stmt_139_sources/$entry
      -- 
    -- CP-element group 1:  transition  input  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	35 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (3) 
      -- CP-element group 1: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Sample/ra
      -- CP-element group 1: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Sample/$exit
      -- CP-element group 1: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_sample_completed_
      -- 
    ra_776_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 1_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_148_inst_ack_0, ack => readMatrix_CP_745_elements(1)); -- 
    -- CP-element group 2:  branch  transition  place  input  bypass 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	35 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	36 
    -- CP-element group 2:  members (10) 
      -- CP-element group 2: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Update/ca
      -- CP-element group 2: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Update/$exit
      -- CP-element group 2: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_update_completed_
      -- CP-element group 2: 	 branch_block_stmt_137/assign_stmt_149/$exit
      -- CP-element group 2: 	 branch_block_stmt_137/merge_stmt_150__entry__
      -- CP-element group 2: 	 branch_block_stmt_137/assign_stmt_149__exit__
      -- CP-element group 2: 	 branch_block_stmt_137/merge_stmt_150_dead_link/$entry
      -- CP-element group 2: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/$entry
      -- CP-element group 2: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/$entry
      -- CP-element group 2: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/phi_stmt_151_sources/$entry
      -- 
    ca_781_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 2_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_148_inst_ack_1, ack => readMatrix_CP_745_elements(2)); -- 
    -- CP-element group 3:  transition  input  bypass 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: 	41 
    -- CP-element group 3: successors 
    -- CP-element group 3:  members (3) 
      -- CP-element group 3: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Sample/ra
      -- CP-element group 3: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Sample/$exit
      -- CP-element group 3: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_sample_completed_
      -- 
    ra_793_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 3_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_160_inst_ack_0, ack => readMatrix_CP_745_elements(3)); -- 
    -- CP-element group 4:  transition  input  bypass 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: 	41 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	25 
    -- CP-element group 4:  members (3) 
      -- CP-element group 4: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Update/ca
      -- CP-element group 4: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Update/$exit
      -- CP-element group 4: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_update_completed_
      -- 
    ca_798_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 4_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => ADD_u8_u8_160_inst_ack_1, ack => readMatrix_CP_745_elements(4)); -- 
    -- CP-element group 5:  transition  input  bypass 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	41 
    -- CP-element group 5: successors 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_sample_completed_
      -- CP-element group 5: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Sample/$exit
      -- CP-element group 5: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Sample/ra
      -- 
    ra_807_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 5_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_169_inst_ack_0, ack => readMatrix_CP_745_elements(5)); -- 
    -- CP-element group 6:  fork  transition  input  bypass 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	41 
    -- CP-element group 6: successors 
    -- CP-element group 6: 	12 
    -- CP-element group 6: 	20 
    -- CP-element group 6:  members (25) 
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Update/$exit
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Update/ca
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_update_completed_
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resized_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scaled_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_computed_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_1/$entry
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_1/$exit
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_1/index_resize_req
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_1/index_resize_ack
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_1/$entry
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_1/$exit
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_1/scale_rename_req
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_1/scale_rename_ack
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resized_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scaled_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_computed_1
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_1/$entry
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_1/$exit
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_1/index_resize_req
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_1/index_resize_ack
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_1/$entry
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_1/$exit
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_1/scale_rename_req
      -- CP-element group 6: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_1/scale_rename_ack
      -- 
    ca_812_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 6_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => slice_169_inst_ack_1, ack => readMatrix_CP_745_elements(6)); -- 
    -- CP-element group 7:  transition  input  output  bypass 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	41 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	8 
    -- CP-element group 7:  members (6) 
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Update/cr
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_sample_completed_
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_update_start_
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Sample/$exit
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Sample/ra
      -- CP-element group 7: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Update/$entry
      -- 
    ra_821_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 7_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_in_data_172_inst_ack_0, ack => readMatrix_CP_745_elements(7)); -- 
    cr_825_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_825_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(7), ack => RPIPE_in_data_172_inst_req_1); -- 
    -- CP-element group 8:  fork  transition  input  bypass 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	7 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	9 
    -- CP-element group 8: 	17 
    -- CP-element group 8:  members (3) 
      -- CP-element group 8: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_update_completed_
      -- CP-element group 8: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Update/$exit
      -- CP-element group 8: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Update/ca
      -- 
    ca_826_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 8_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_in_data_172_inst_ack_1, ack => readMatrix_CP_745_elements(8)); -- 
    -- CP-element group 9:  join  transition  output  bypass 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: 	8 
    -- CP-element group 9: 	14 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	15 
    -- CP-element group 9:  members (9) 
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_sample_start_
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/$entry
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/array_obj_ref_177_Split/$entry
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/array_obj_ref_177_Split/$exit
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/array_obj_ref_177_Split/split_req
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/array_obj_ref_177_Split/split_ack
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/$entry
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/word_0/$entry
      -- CP-element group 9: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/word_0/rr
      -- 
    rr_912_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_912_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(9), ack => array_obj_ref_177_store_0_req_0); -- 
    readMatrix_cp_element_group_9: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 29) := "readMatrix_cp_element_group_9"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(8) & readMatrix_CP_745_elements(14);
      gj_readMatrix_cp_element_group_9 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(9), clk => clk, reset => reset); --
    end block;
    -- CP-element group 10:  transition  input  bypass 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	41 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	25 
    -- CP-element group 10:  members (3) 
      -- CP-element group 10: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_sample_complete
      -- CP-element group 10: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Sample/$exit
      -- CP-element group 10: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Sample/ra
      -- 
    ra_850_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 10_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_index_0_scale_ack_0, ack => readMatrix_CP_745_elements(10)); -- 
    -- CP-element group 11:  transition  input  bypass 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	41 
    -- CP-element group 11: successors 
    -- CP-element group 11: 	12 
    -- CP-element group 11:  members (4) 
      -- CP-element group 11: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scaled_0
      -- CP-element group 11: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_update_complete
      -- CP-element group 11: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Update/$exit
      -- CP-element group 11: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Update/ca
      -- 
    ca_855_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 11_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_index_0_scale_ack_1, ack => readMatrix_CP_745_elements(11)); -- 
    -- CP-element group 12:  join  transition  output  bypass 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	6 
    -- CP-element group 12: 	11 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	13 
    -- CP-element group 12:  members (3) 
      -- CP-element group 12: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_sample_start
      -- CP-element group 12: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Sample/$entry
      -- CP-element group 12: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Sample/rr
      -- 
    rr_876_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_876_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(12), ack => array_obj_ref_177_index_sum_1_req_0); -- 
    readMatrix_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(6) & readMatrix_CP_745_elements(11);
      gj_readMatrix_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  transition  input  bypass 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	12 
    -- CP-element group 13: successors 
    -- CP-element group 13: 	25 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_sample_complete
      -- CP-element group 13: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Sample/$exit
      -- CP-element group 13: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Sample/ra
      -- 
    ra_877_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 13_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_index_sum_1_ack_0, ack => readMatrix_CP_745_elements(13)); -- 
    -- CP-element group 14:  join  fork  transition  input  bypass 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: 	41 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	9 
    -- CP-element group 14:  members (18) 
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_word_address_calculated
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_root_address_calculated
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_offset_calculated
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_update_complete
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Update/$exit
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Update/ca
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_final_index_sum_regn/$entry
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_final_index_sum_regn/$exit
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_final_index_sum_regn/req
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_final_index_sum_regn/ack
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_base_plus_offset/$entry
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_base_plus_offset/$exit
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_base_plus_offset/sum_rename_req
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_base_plus_offset/sum_rename_ack
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_word_addrgen/$entry
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_word_addrgen/$exit
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_word_addrgen/root_register_req
      -- CP-element group 14: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_word_addrgen/root_register_ack
      -- 
    ca_882_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 14_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_index_sum_1_ack_1, ack => readMatrix_CP_745_elements(14)); -- 
    -- CP-element group 15:  transition  input  bypass 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: 	9 
    -- CP-element group 15: successors 
    -- CP-element group 15:  members (5) 
      -- CP-element group 15: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_sample_completed_
      -- CP-element group 15: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/$exit
      -- CP-element group 15: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/$exit
      -- CP-element group 15: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/word_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Sample/word_access_start/word_0/ra
      -- 
    ra_913_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 15_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_store_0_ack_0, ack => readMatrix_CP_745_elements(15)); -- 
    -- CP-element group 16:  transition  input  bypass 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	41 
    -- CP-element group 16: successors 
    -- CP-element group 16: 	25 
    -- CP-element group 16:  members (5) 
      -- CP-element group 16: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_update_completed_
      -- CP-element group 16: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/$exit
      -- CP-element group 16: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/$exit
      -- CP-element group 16: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/word_0/$exit
      -- CP-element group 16: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/word_0/ca
      -- 
    ca_924_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 16_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_177_store_0_ack_1, ack => readMatrix_CP_745_elements(16)); -- 
    -- CP-element group 17:  join  transition  output  bypass 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: 	8 
    -- CP-element group 17: 	22 
    -- CP-element group 17: successors 
    -- CP-element group 17: 	23 
    -- CP-element group 17:  members (9) 
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_sample_start_
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/$entry
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/array_obj_ref_189_Split/$entry
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/array_obj_ref_189_Split/$exit
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/array_obj_ref_189_Split/split_req
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/array_obj_ref_189_Split/split_ack
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/$entry
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/word_0/$entry
      -- CP-element group 17: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/word_0/rr
      -- 
    rr_1010_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1010_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(17), ack => array_obj_ref_189_store_0_req_0); -- 
    readMatrix_cp_element_group_17: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_17"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(8) & readMatrix_CP_745_elements(22);
      gj_readMatrix_cp_element_group_17 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(17), clk => clk, reset => reset); --
    end block;
    -- CP-element group 18:  transition  input  bypass 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	41 
    -- CP-element group 18: successors 
    -- CP-element group 18: 	25 
    -- CP-element group 18:  members (3) 
      -- CP-element group 18: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_sample_complete
      -- CP-element group 18: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Sample/$exit
      -- CP-element group 18: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Sample/ra
      -- 
    ra_948_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 18_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_index_0_scale_ack_0, ack => readMatrix_CP_745_elements(18)); -- 
    -- CP-element group 19:  transition  input  bypass 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: 	41 
    -- CP-element group 19: successors 
    -- CP-element group 19: 	20 
    -- CP-element group 19:  members (4) 
      -- CP-element group 19: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scaled_0
      -- CP-element group 19: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_update_complete
      -- CP-element group 19: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Update/$exit
      -- CP-element group 19: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Update/ca
      -- 
    ca_953_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 19_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_index_0_scale_ack_1, ack => readMatrix_CP_745_elements(19)); -- 
    -- CP-element group 20:  join  transition  output  bypass 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: 	6 
    -- CP-element group 20: 	19 
    -- CP-element group 20: successors 
    -- CP-element group 20: 	21 
    -- CP-element group 20:  members (3) 
      -- CP-element group 20: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_sample_start
      -- CP-element group 20: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Sample/$entry
      -- CP-element group 20: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Sample/rr
      -- 
    rr_974_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_974_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(20), ack => array_obj_ref_189_index_sum_1_req_0); -- 
    readMatrix_cp_element_group_20: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_20"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(6) & readMatrix_CP_745_elements(19);
      gj_readMatrix_cp_element_group_20 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(20), clk => clk, reset => reset); --
    end block;
    -- CP-element group 21:  transition  input  bypass 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: 	20 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	25 
    -- CP-element group 21:  members (3) 
      -- CP-element group 21: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_sample_complete
      -- CP-element group 21: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Sample/$exit
      -- CP-element group 21: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Sample/ra
      -- 
    ra_975_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 21_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_index_sum_1_ack_0, ack => readMatrix_CP_745_elements(21)); -- 
    -- CP-element group 22:  join  fork  transition  input  bypass 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: 	41 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	17 
    -- CP-element group 22:  members (18) 
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_word_address_calculated
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_root_address_calculated
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_offset_calculated
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_update_complete
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Update/$exit
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Update/ca
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_final_index_sum_regn/$entry
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_final_index_sum_regn/$exit
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_final_index_sum_regn/req
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_final_index_sum_regn/ack
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_base_plus_offset/$entry
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_base_plus_offset/$exit
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_base_plus_offset/sum_rename_req
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_base_plus_offset/sum_rename_ack
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_word_addrgen/$entry
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_word_addrgen/$exit
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_word_addrgen/root_register_req
      -- CP-element group 22: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_word_addrgen/root_register_ack
      -- 
    ca_980_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 22_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_index_sum_1_ack_1, ack => readMatrix_CP_745_elements(22)); -- 
    -- CP-element group 23:  transition  input  bypass 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	17 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (5) 
      -- CP-element group 23: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_sample_completed_
      -- CP-element group 23: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/$exit
      -- CP-element group 23: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/$exit
      -- CP-element group 23: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/word_0/$exit
      -- CP-element group 23: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Sample/word_access_start/word_0/ra
      -- 
    ra_1011_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_store_0_ack_0, ack => readMatrix_CP_745_elements(23)); -- 
    -- CP-element group 24:  transition  input  bypass 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	41 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	25 
    -- CP-element group 24:  members (5) 
      -- CP-element group 24: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_update_completed_
      -- CP-element group 24: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/$exit
      -- CP-element group 24: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/$exit
      -- CP-element group 24: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/word_0/$exit
      -- CP-element group 24: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/word_0/ca
      -- 
    ca_1022_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_189_store_0_ack_1, ack => readMatrix_CP_745_elements(24)); -- 
    -- CP-element group 25:  branch  join  transition  place  output  bypass 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: 	4 
    -- CP-element group 25: 	10 
    -- CP-element group 25: 	13 
    -- CP-element group 25: 	16 
    -- CP-element group 25: 	18 
    -- CP-element group 25: 	21 
    -- CP-element group 25: 	24 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	26 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (24) 
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198__entry__
      -- CP-element group 25: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191__exit__
      -- CP-element group 25: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_dead_link/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/ULT_u8_u1_201_inputs/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/ULT_u8_u1_201_inputs/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Sample/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Sample/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Sample/rr
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Sample/ra
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Update/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Update/$exit
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Update/cr
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/ULT_u8_u1_201/SplitProtocol/Update/ca
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_eval_test/branch_req
      -- CP-element group 25: 	 branch_block_stmt_137/ULT_u8_u1_201_place
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_if_link/$entry
      -- CP-element group 25: 	 branch_block_stmt_137/if_stmt_198_else_link/$entry
      -- 
    branch_req_1049_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " branch_req_1049_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(25), ack => if_stmt_198_branch_req_0); -- 
    readMatrix_cp_element_group_25: block -- 
      constant place_capacities: IntegerArray(0 to 6) := (0 => 1,1 => 1,2 => 1,3 => 1,4 => 1,5 => 1,6 => 1);
      constant place_markings: IntegerArray(0 to 6)  := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant place_delays: IntegerArray(0 to 6) := (0 => 0,1 => 0,2 => 0,3 => 0,4 => 0,5 => 0,6 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_25"; 
      signal preds: BooleanArray(1 to 7); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(4) & readMatrix_CP_745_elements(10) & readMatrix_CP_745_elements(13) & readMatrix_CP_745_elements(16) & readMatrix_CP_745_elements(18) & readMatrix_CP_745_elements(21) & readMatrix_CP_745_elements(24);
      gj_readMatrix_cp_element_group_25 : generic_join generic map(name => joinName, number_of_predecessors => 7, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(25), clk => clk, reset => reset); --
    end block;
    -- CP-element group 26:  fork  transition  place  input  output  bypass 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: 	25 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	37 
    -- CP-element group 26: 	38 
    -- CP-element group 26:  members (11) 
      -- CP-element group 26: 	 branch_block_stmt_137/if_stmt_198_if_link/$exit
      -- CP-element group 26: 	 branch_block_stmt_137/if_stmt_198_if_link/if_choice_transition
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Sample/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Sample/req
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Update/req
      -- 
    if_choice_transition_1054_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 26_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_198_branch_ack_1, ack => readMatrix_CP_745_elements(26)); -- 
    req_1170_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1170_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(26), ack => nJ_161_155_buf_req_0); -- 
    req_1175_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1175_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(26), ack => nJ_161_155_buf_req_1); -- 
    -- CP-element group 27:  merge  branch  transition  place  input  output  bypass 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: 	29 
    -- CP-element group 27:  members (25) 
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204__entry__
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_198__exit__
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_198_else_link/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_198_else_link/else_choice_transition
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_dead_link/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/ULT_u8_u1_207_inputs/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/ULT_u8_u1_207_inputs/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Sample/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Sample/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Sample/rr
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Sample/ra
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Update/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Update/$exit
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Update/cr
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/ULT_u8_u1_207/SplitProtocol/Update/ca
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_eval_test/branch_req
      -- CP-element group 27: 	 branch_block_stmt_137/ULT_u8_u1_207_place
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_if_link/$entry
      -- CP-element group 27: 	 branch_block_stmt_137/if_stmt_204_else_link/$entry
      -- 
    else_choice_transition_1058_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_198_branch_ack_0, ack => readMatrix_CP_745_elements(27)); -- 
    branch_req_1086_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " branch_req_1086_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(27), ack => if_stmt_204_branch_req_0); -- 
    -- CP-element group 28:  fork  transition  place  input  output  bypass 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	27 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	31 
    -- CP-element group 28: 	32 
    -- CP-element group 28:  members (11) 
      -- CP-element group 28: 	 branch_block_stmt_137/if_stmt_204_if_link/$exit
      -- CP-element group 28: 	 branch_block_stmt_137/if_stmt_204_if_link/if_choice_transition
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Sample/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Sample/req
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Update/$entry
      -- CP-element group 28: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Update/req
      -- 
    if_choice_transition_1091_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_204_branch_ack_1, ack => readMatrix_CP_745_elements(28)); -- 
    req_1127_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1127_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(28), ack => nI_149_143_buf_req_0); -- 
    req_1132_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1132_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(28), ack => nI_149_143_buf_req_1); -- 
    -- CP-element group 29:  merge  transition  place  input  bypass 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	27 
    -- CP-element group 29: successors 
    -- CP-element group 29:  members (6) 
      -- CP-element group 29: 	 branch_block_stmt_137/branch_block_stmt_137__exit__
      -- CP-element group 29: 	 branch_block_stmt_137/$exit
      -- CP-element group 29: 	 $exit
      -- CP-element group 29: 	 branch_block_stmt_137/if_stmt_204__exit__
      -- CP-element group 29: 	 branch_block_stmt_137/if_stmt_204_else_link/$exit
      -- CP-element group 29: 	 branch_block_stmt_137/if_stmt_204_else_link/else_choice_transition
      -- 
    else_choice_transition_1095_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 29_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => if_stmt_204_branch_ack_0, ack => readMatrix_CP_745_elements(29)); -- 
    -- CP-element group 30:  transition  output  delay-element  bypass 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	0 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	34 
    -- CP-element group 30:  members (5) 
      -- CP-element group 30: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/$exit
      -- CP-element group 30: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/$exit
      -- CP-element group 30: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/phi_stmt_139_sources/$exit
      -- CP-element group 30: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/phi_stmt_139_sources/type_cast_142_konst_delay_trans
      -- CP-element group 30: 	 branch_block_stmt_137/merge_stmt_138__entry___PhiReq/phi_stmt_139/phi_stmt_139_req
      -- 
    phi_stmt_139_req_1111_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_139_req_1111_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(30), ack => phi_stmt_139_req_0); -- 
    -- Element group readMatrix_CP_745_elements(30) is a control-delay.
    cp_element_30_delay: control_delay_element  generic map(name => " 30_delay", delay_value => 1)  port map(req => readMatrix_CP_745_elements(0), ack => readMatrix_CP_745_elements(30), clk => clk, reset =>reset);
    -- CP-element group 31:  transition  input  bypass 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	28 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	33 
    -- CP-element group 31:  members (2) 
      -- CP-element group 31: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Sample/ack
      -- 
    ack_1128_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_149_143_buf_ack_0, ack => readMatrix_CP_745_elements(31)); -- 
    -- CP-element group 32:  transition  input  bypass 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	28 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32:  members (2) 
      -- CP-element group 32: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/Update/ack
      -- 
    ack_1133_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_149_143_buf_ack_1, ack => readMatrix_CP_745_elements(32)); -- 
    -- CP-element group 33:  join  transition  output  bypass 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	31 
    -- CP-element group 33: 	32 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	34 
    -- CP-element group 33:  members (5) 
      -- CP-element group 33: 	 branch_block_stmt_137/outer_loopback_PhiReq/$exit
      -- CP-element group 33: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/$exit
      -- CP-element group 33: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/$exit
      -- CP-element group 33: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_sources/Interlock/$exit
      -- CP-element group 33: 	 branch_block_stmt_137/outer_loopback_PhiReq/phi_stmt_139/phi_stmt_139_req
      -- 
    phi_stmt_139_req_1134_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_139_req_1134_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(33), ack => phi_stmt_139_req_1); -- 
    readMatrix_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(31) & readMatrix_CP_745_elements(32);
      gj_readMatrix_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  merge  transition  place  bypass 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	30 
    -- CP-element group 34: 	33 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	35 
    -- CP-element group 34:  members (2) 
      -- CP-element group 34: 	 branch_block_stmt_137/merge_stmt_138_PhiReqMerge
      -- CP-element group 34: 	 branch_block_stmt_137/merge_stmt_138_PhiAck/$entry
      -- 
    readMatrix_CP_745_elements(34) <= OrReduce(readMatrix_CP_745_elements(30) & readMatrix_CP_745_elements(33));
    -- CP-element group 35:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	34 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	1 
    -- CP-element group 35: 	2 
    -- CP-element group 35:  members (11) 
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149__entry__
      -- CP-element group 35: 	 branch_block_stmt_137/merge_stmt_138__exit__
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Update/cr
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Update/$entry
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Sample/rr
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_Sample/$entry
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_update_start_
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/ADD_u8_u8_148_sample_start_
      -- CP-element group 35: 	 branch_block_stmt_137/assign_stmt_149/$entry
      -- CP-element group 35: 	 branch_block_stmt_137/merge_stmt_138_PhiAck/$exit
      -- CP-element group 35: 	 branch_block_stmt_137/merge_stmt_138_PhiAck/phi_stmt_139_ack
      -- 
    phi_stmt_139_ack_1139_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_139_ack_0, ack => readMatrix_CP_745_elements(35)); -- 
    cr_780_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_780_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(35), ack => ADD_u8_u8_148_inst_req_1); -- 
    rr_775_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_775_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(35), ack => ADD_u8_u8_148_inst_req_0); -- 
    -- CP-element group 36:  transition  output  delay-element  bypass 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	2 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	40 
    -- CP-element group 36:  members (5) 
      -- CP-element group 36: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/$exit
      -- CP-element group 36: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/$exit
      -- CP-element group 36: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/phi_stmt_151_sources/$exit
      -- CP-element group 36: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/phi_stmt_151_sources/type_cast_154_konst_delay_trans
      -- CP-element group 36: 	 branch_block_stmt_137/merge_stmt_150__entry___PhiReq/phi_stmt_151/phi_stmt_151_req
      -- 
    phi_stmt_151_req_1154_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_151_req_1154_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(36), ack => phi_stmt_151_req_0); -- 
    -- Element group readMatrix_CP_745_elements(36) is a control-delay.
    cp_element_36_delay: control_delay_element  generic map(name => " 36_delay", delay_value => 1)  port map(req => readMatrix_CP_745_elements(2), ack => readMatrix_CP_745_elements(36), clk => clk, reset =>reset);
    -- CP-element group 37:  transition  input  bypass 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	26 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (2) 
      -- CP-element group 37: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Sample/$exit
      -- CP-element group 37: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Sample/ack
      -- 
    ack_1171_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 37_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nJ_161_155_buf_ack_0, ack => readMatrix_CP_745_elements(37)); -- 
    -- CP-element group 38:  transition  input  bypass 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	26 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	39 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Update/$exit
      -- CP-element group 38: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/Update/ack
      -- 
    ack_1176_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nJ_161_155_buf_ack_1, ack => readMatrix_CP_745_elements(38)); -- 
    -- CP-element group 39:  join  transition  output  bypass 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: 	38 
    -- CP-element group 39: successors 
    -- CP-element group 39: 	40 
    -- CP-element group 39:  members (5) 
      -- CP-element group 39: 	 branch_block_stmt_137/inner_loopback_PhiReq/$exit
      -- CP-element group 39: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/$exit
      -- CP-element group 39: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/$exit
      -- CP-element group 39: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_sources/Interlock/$exit
      -- CP-element group 39: 	 branch_block_stmt_137/inner_loopback_PhiReq/phi_stmt_151/phi_stmt_151_req
      -- 
    phi_stmt_151_req_1177_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_151_req_1177_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(39), ack => phi_stmt_151_req_1); -- 
    readMatrix_cp_element_group_39: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readMatrix_cp_element_group_39"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readMatrix_CP_745_elements(37) & readMatrix_CP_745_elements(38);
      gj_readMatrix_cp_element_group_39 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readMatrix_CP_745_elements(39), clk => clk, reset => reset); --
    end block;
    -- CP-element group 40:  merge  transition  place  bypass 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	36 
    -- CP-element group 40: 	39 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	41 
    -- CP-element group 40:  members (2) 
      -- CP-element group 40: 	 branch_block_stmt_137/merge_stmt_150_PhiReqMerge
      -- CP-element group 40: 	 branch_block_stmt_137/merge_stmt_150_PhiAck/$entry
      -- 
    readMatrix_CP_745_elements(40) <= OrReduce(readMatrix_CP_745_elements(36) & readMatrix_CP_745_elements(39));
    -- CP-element group 41:  merge  fork  transition  place  input  output  bypass 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	40 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	3 
    -- CP-element group 41: 	4 
    -- CP-element group 41: 	5 
    -- CP-element group 41: 	6 
    -- CP-element group 41: 	7 
    -- CP-element group 41: 	10 
    -- CP-element group 41: 	11 
    -- CP-element group 41: 	14 
    -- CP-element group 41: 	16 
    -- CP-element group 41: 	18 
    -- CP-element group 41: 	19 
    -- CP-element group 41: 	22 
    -- CP-element group 41: 	24 
    -- CP-element group 41:  members (60) 
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Sample/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_Sample/rr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Sample/rr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_update_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_sample_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Sample/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/RPIPE_in_data_172_sample_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/slice_169_Sample/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_Sample/rr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_update_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/ADD_u8_u8_160_sample_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191__entry__
      -- CP-element group 41: 	 branch_block_stmt_137/merge_stmt_150__exit__
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_update_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resized_0
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_computed_0
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_0/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_0/$exit
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_0/index_resize_req
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_resize_0/index_resize_ack
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_sample_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_update_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Sample/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Sample/rr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_index_scale_0_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_update_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_partial_sum_1_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/word_0/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_177_Update/word_access_complete/word_0/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_update_start_
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resized_0
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_computed_0
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_0/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_0/$exit
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_0/index_resize_req
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_resize_0/index_resize_ack
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_sample_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_update_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Sample/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Sample/rr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_index_scale_0_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_update_start
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_partial_sum_1_Update/cr
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/word_0/$entry
      -- CP-element group 41: 	 branch_block_stmt_137/assign_stmt_161_to_assign_stmt_191/array_obj_ref_189_Update/word_access_complete/word_0/cr
      -- CP-element group 41: 	 branch_block_stmt_137/merge_stmt_150_PhiAck/$exit
      -- CP-element group 41: 	 branch_block_stmt_137/merge_stmt_150_PhiAck/phi_stmt_151_ack
      -- 
    phi_stmt_151_ack_1182_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 41_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_151_ack_0, ack => readMatrix_CP_745_elements(41)); -- 
    rr_820_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_820_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => RPIPE_in_data_172_inst_req_0); -- 
    rr_806_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_806_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => slice_169_inst_req_0); -- 
    cr_811_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_811_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => slice_169_inst_req_1); -- 
    cr_797_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_797_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => ADD_u8_u8_160_inst_req_1); -- 
    rr_792_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_792_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => ADD_u8_u8_160_inst_req_0); -- 
    rr_849_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_849_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_177_index_0_scale_req_0); -- 
    cr_854_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_854_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_177_index_0_scale_req_1); -- 
    cr_881_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_881_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_177_index_sum_1_req_1); -- 
    cr_923_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_923_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_177_store_0_req_1); -- 
    rr_947_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_947_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_189_index_0_scale_req_0); -- 
    cr_952_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_952_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_189_index_0_scale_req_1); -- 
    cr_979_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_979_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_189_index_sum_1_req_1); -- 
    cr_1021_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1021_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readMatrix_CP_745_elements(41), ack => array_obj_ref_189_store_0_req_1); -- 
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal I_139 : std_logic_vector(7 downto 0);
    signal J_151 : std_logic_vector(7 downto 0);
    signal Jr_170 : std_logic_vector(6 downto 0);
    signal R_I_175_resized : std_logic_vector(8 downto 0);
    signal R_I_175_scaled : std_logic_vector(8 downto 0);
    signal R_I_187_resized : std_logic_vector(8 downto 0);
    signal R_I_187_scaled : std_logic_vector(8 downto 0);
    signal R_Jr_176_resized : std_logic_vector(8 downto 0);
    signal R_Jr_176_scaled : std_logic_vector(8 downto 0);
    signal R_Jr_188_resized : std_logic_vector(8 downto 0);
    signal R_Jr_188_scaled : std_logic_vector(8 downto 0);
    signal ULT_u8_u1_201_wire : std_logic_vector(0 downto 0);
    signal ULT_u8_u1_207_wire : std_logic_vector(0 downto 0);
    signal array_obj_ref_177_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_177_final_offset : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_index_partial_sum_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_offset_scale_factor_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_offset_scale_factor_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_resized_base_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_root_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_word_address_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_177_word_offset_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_189_final_offset : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_index_partial_sum_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_offset_scale_factor_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_offset_scale_factor_1 : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_resized_base_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_root_address : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_word_address_0 : std_logic_vector(8 downto 0);
    signal array_obj_ref_189_word_offset_0 : std_logic_vector(8 downto 0);
    signal aval_173 : std_logic_vector(31 downto 0);
    signal konst_147_wire_constant : std_logic_vector(7 downto 0);
    signal konst_159_wire_constant : std_logic_vector(7 downto 0);
    signal konst_164_wire_constant : std_logic_vector(7 downto 0);
    signal konst_200_wire_constant : std_logic_vector(7 downto 0);
    signal konst_206_wire_constant : std_logic_vector(7 downto 0);
    signal nI_149 : std_logic_vector(7 downto 0);
    signal nI_149_143_buffered : std_logic_vector(7 downto 0);
    signal nJ_161 : std_logic_vector(7 downto 0);
    signal nJ_161_155_buffered : std_logic_vector(7 downto 0);
    signal odd_idx_166 : std_logic_vector(0 downto 0);
    signal type_cast_142_wire_constant : std_logic_vector(7 downto 0);
    signal type_cast_154_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    array_obj_ref_177_offset_scale_factor_0 <= "000010000";
    array_obj_ref_177_offset_scale_factor_1 <= "000000001";
    array_obj_ref_177_resized_base_address <= "000000000";
    array_obj_ref_177_word_offset_0 <= "000000000";
    array_obj_ref_189_offset_scale_factor_0 <= "000010000";
    array_obj_ref_189_offset_scale_factor_1 <= "000000001";
    array_obj_ref_189_resized_base_address <= "000000000";
    array_obj_ref_189_word_offset_0 <= "000000000";
    konst_147_wire_constant <= "00000001";
    konst_159_wire_constant <= "00000001";
    konst_164_wire_constant <= "00000000";
    konst_200_wire_constant <= "00100000";
    konst_206_wire_constant <= "00100000";
    type_cast_142_wire_constant <= "00000000";
    type_cast_154_wire_constant <= "00000000";
    phi_stmt_139: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_142_wire_constant & nI_149_143_buffered;
      req <= phi_stmt_139_req_0 & phi_stmt_139_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_139",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_139_ack_0,
          idata => idata,
          odata => I_139,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_139
    phi_stmt_151: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_154_wire_constant & nJ_161_155_buffered;
      req <= phi_stmt_151_req_0 & phi_stmt_151_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_151",
          num_reqs => 2,
          bypass_flag => false,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_151_ack_0,
          idata => idata,
          odata => J_151,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_151
    slice_169_inst_block : block -- 
      signal sample_req, sample_ack, update_req, update_ack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      sample_req(0) <= slice_169_inst_req_0;
      slice_169_inst_ack_0<= sample_ack(0);
      update_req(0) <= slice_169_inst_req_1;
      slice_169_inst_ack_1<= update_ack(0);
      slice_169_inst: SliceSplitProtocol generic map(name => "slice_169_inst", in_data_width => 8, high_index => 7, low_index => 1, buffering => 1, flow_through => false,  full_rate => false) -- 
        port map( din => J_151, dout => Jr_170, sample_req => sample_req(0) , sample_ack => sample_ack(0) , update_req => update_req(0) , update_ack => update_ack(0) , clk => clk, reset => reset); -- 
      -- 
    end block;
    nI_149_143_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nI_149_143_buf_req_0;
      nI_149_143_buf_ack_0<= wack(0);
      rreq(0) <= nI_149_143_buf_req_1;
      nI_149_143_buf_ack_1<= rack(0);
      nI_149_143_buf : InterlockBuffer generic map ( -- 
        name => "nI_149_143_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nI_149,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nI_149_143_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    nJ_161_155_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nJ_161_155_buf_req_0;
      nJ_161_155_buf_ack_0<= wack(0);
      rreq(0) <= nJ_161_155_buf_req_1;
      nJ_161_155_buf_ack_1<= rack(0);
      nJ_161_155_buf : InterlockBuffer generic map ( -- 
        name => "nJ_161_155_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nJ_161,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nJ_161_155_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_177_addr_0
    process(array_obj_ref_177_root_address) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_177_root_address;
      ov(8 downto 0) := iv;
      array_obj_ref_177_word_address_0 <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_gather_scatter
    process(aval_173) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := aval_173;
      ov(31 downto 0) := iv;
      array_obj_ref_177_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_index_0_resize
    process(I_139) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_139;
      ov(7 downto 0) := iv;
      R_I_175_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_index_1_rename
    process(R_Jr_176_resized) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Jr_176_resized;
      ov(8 downto 0) := iv;
      R_Jr_176_scaled <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_index_1_resize
    process(Jr_170) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Jr_170;
      ov(6 downto 0) := iv;
      R_Jr_176_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_index_offset
    process(array_obj_ref_177_index_partial_sum_1) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_177_index_partial_sum_1;
      ov(8 downto 0) := iv;
      array_obj_ref_177_final_offset <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_177_root_address_inst
    process(array_obj_ref_177_final_offset) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_177_final_offset;
      ov(8 downto 0) := iv;
      array_obj_ref_177_root_address <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_addr_0
    process(array_obj_ref_189_root_address) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_189_root_address;
      ov(8 downto 0) := iv;
      array_obj_ref_189_word_address_0 <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_gather_scatter
    process(aval_173) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := aval_173;
      ov(31 downto 0) := iv;
      array_obj_ref_189_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_index_0_resize
    process(I_139) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_139;
      ov(7 downto 0) := iv;
      R_I_187_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_index_1_rename
    process(R_Jr_188_resized) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_Jr_188_resized;
      ov(8 downto 0) := iv;
      R_Jr_188_scaled <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_index_1_resize
    process(Jr_170) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := Jr_170;
      ov(6 downto 0) := iv;
      R_Jr_188_resized <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_index_offset
    process(array_obj_ref_189_index_partial_sum_1) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_189_index_partial_sum_1;
      ov(8 downto 0) := iv;
      array_obj_ref_189_final_offset <= ov(8 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_189_root_address_inst
    process(array_obj_ref_189_final_offset) --
      variable iv : std_logic_vector(8 downto 0);
      variable ov : std_logic_vector(8 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_189_final_offset;
      ov(8 downto 0) := iv;
      array_obj_ref_189_root_address <= ov(8 downto 0);
      --
    end process;
    if_stmt_198_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_201_wire;
      branch_instance: BranchBase -- 
        generic map( name => "if_stmt_198_branch", condition_width => 1,  bypass_flag => false)
        port map( -- 
          condition => condition_sig,
          req => if_stmt_198_branch_req_0,
          ack0 => if_stmt_198_branch_ack_0,
          ack1 => if_stmt_198_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    if_stmt_204_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_207_wire;
      branch_instance: BranchBase -- 
        generic map( name => "if_stmt_204_branch", condition_width => 1,  bypass_flag => false)
        port map( -- 
          condition => condition_sig,
          req => if_stmt_204_branch_req_0,
          ack0 => if_stmt_204_branch_ack_0,
          ack1 => if_stmt_204_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- shared split operator group (0) : ADD_u8_u8_148_inst 
    ApIntAdd_group_0: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(7 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= I_139;
      nI_149 <= data_out(7 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= ADD_u8_u8_148_inst_req_0;
      ADD_u8_u8_148_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= ADD_u8_u8_148_inst_req_1;
      ADD_u8_u8_148_inst_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_0_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_0",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 8,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 8,
          constant_operand => "00000001",
          constant_width => 8,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- shared split operator group (1) : ADD_u8_u8_160_inst 
    ApIntAdd_group_1: Block -- 
      signal data_in: std_logic_vector(7 downto 0);
      signal data_out: std_logic_vector(7 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= J_151;
      nJ_161 <= data_out(7 downto 0);
      guard_vector(0)  <=  '1';
      reqL_unguarded(0) <= ADD_u8_u8_160_inst_req_0;
      ADD_u8_u8_160_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= ADD_u8_u8_160_inst_req_1;
      ADD_u8_u8_160_inst_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_1_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_1",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 8,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 8,
          constant_operand => "00000001",
          constant_width => 8,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => true
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 1
    -- binary operator BITSEL_u8_u1_165_inst
    process(J_151) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(J_151, konst_164_wire_constant, tmp_var);
      odd_idx_166 <= tmp_var; --
    end process;
    -- binary operator ULT_u8_u1_201_inst
    process(nJ_161) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nJ_161, konst_200_wire_constant, tmp_var);
      ULT_u8_u1_201_wire <= tmp_var; --
    end process;
    -- binary operator ULT_u8_u1_207_inst
    process(nI_149) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nI_149, konst_206_wire_constant, tmp_var);
      ULT_u8_u1_207_wire <= tmp_var; --
    end process;
    -- shared split operator group (5) : array_obj_ref_177_index_0_scale array_obj_ref_189_index_0_scale 
    ApIntMul_group_5: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(17 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 1 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 1 downto 0);
      signal guard_vector : std_logic_vector( 1 downto 0);
      constant inBUFs : IntegerArray(1 downto 0) := (1 => 0, 0 => 0);
      constant outBUFs : IntegerArray(1 downto 0) := (1 => 1, 0 => 1);
      constant guardFlags : BooleanArray(1 downto 0) := (0 => true, 1 => true);
      constant guardBuffering: IntegerArray(1 downto 0)  := (0 => 2, 1 => 2);
      -- 
    begin -- 
      data_in <= R_I_175_resized & R_I_187_resized;
      R_I_175_scaled <= data_out(17 downto 9);
      R_I_187_scaled <= data_out(8 downto 0);
      guard_vector(0)  <=  not odd_idx_166(0);
      guard_vector(1)  <= odd_idx_166(0);
      reqL_unguarded(1) <= array_obj_ref_177_index_0_scale_req_0;
      reqL_unguarded(0) <= array_obj_ref_189_index_0_scale_req_0;
      array_obj_ref_177_index_0_scale_ack_0 <= ackL_unguarded(1);
      array_obj_ref_189_index_0_scale_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(1) <= array_obj_ref_177_index_0_scale_req_1;
      reqR_unguarded(0) <= array_obj_ref_189_index_0_scale_req_1;
      array_obj_ref_177_index_0_scale_ack_1 <= ackR_unguarded(1);
      array_obj_ref_189_index_0_scale_ack_1 <= ackR_unguarded(0);
      ApIntMul_group_5_accessRegulator_0: access_regulator_base generic map (name => "ApIntMul_group_5_accessRegulator_0", num_slots => 1) -- 
        port map (req => reqL_unregulated(0), -- 
          ack => ackL_unregulated(0),
          regulated_req => reqL(0),
          regulated_ack => ackL(0),
          release_req => reqR(0),
          release_ack => ackR(0),
          clk => clk, reset => reset); -- 
      ApIntMul_group_5_accessRegulator_1: access_regulator_base generic map (name => "ApIntMul_group_5_accessRegulator_1", num_slots => 1) -- 
        port map (req => reqL_unregulated(1), -- 
          ack => ackL_unregulated(1),
          regulated_req => reqL(1),
          regulated_ack => ackL(1),
          release_req => reqR(1),
          release_ack => ackR(1),
          clk => clk, reset => reset); -- 
      ApIntMul_group_5_gI: SplitGuardInterface generic map(name => "ApIntMul_group_5_gI", nreqs => 2, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      SplitOperator: SplitOperatorShared -- 
        generic map ( -- 
          name => "ApIntMul_group_5",
          operator_id => "ApIntMul",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 0, 
          num_inputs    => 1,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "000010000",
          constant_width => 9,
          use_constant  => true,
          full_rate  => false,
          no_arbitration => false,
          min_clock_period => false,
          num_reqs => 2,
          use_input_buffering => true,
          detailed_buffering_per_input => inBUFs,
          detailed_buffering_per_output => outBUFs --
        )
        port map ( reqL => reqL , ackL => ackL, reqR => reqR, ackR => ackR, dataL => data_in, dataR => data_out, clk => clk, reset => reset); -- 
      -- 
    end Block; -- split operator group 5
    -- shared split operator group (6) : array_obj_ref_177_index_sum_1 
    ApIntAdd_group_6: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(8 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= R_Jr_176_scaled & R_I_175_scaled;
      array_obj_ref_177_index_partial_sum_1 <= data_out(8 downto 0);
      guard_vector(0)  <= odd_idx_166(0);
      reqL_unguarded(0) <= array_obj_ref_177_index_sum_1_req_0;
      array_obj_ref_177_index_sum_1_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_177_index_sum_1_req_1;
      array_obj_ref_177_index_sum_1_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_6_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_6_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_6",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 9, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 6
    -- shared split operator group (7) : array_obj_ref_189_index_sum_1 
    ApIntAdd_group_7: Block -- 
      signal data_in: std_logic_vector(17 downto 0);
      signal data_out: std_logic_vector(8 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      data_in <= R_Jr_188_scaled & R_I_187_scaled;
      array_obj_ref_189_index_partial_sum_1 <= data_out(8 downto 0);
      guard_vector(0)  <=  not odd_idx_166(0);
      reqL_unguarded(0) <= array_obj_ref_189_index_sum_1_req_0;
      array_obj_ref_189_index_sum_1_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_189_index_sum_1_req_1;
      array_obj_ref_189_index_sum_1_ack_1 <= ackR_unguarded(0);
      ApIntAdd_group_7_gI: SplitGuardInterface generic map(name => "ApIntAdd_group_7_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      UnsharedOperator: UnsharedOperatorWithBuffering -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          name => "ApIntAdd_group_7",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 9,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 9, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 9,
          constant_operand => "0",
          constant_width => 1,
          buffering  => 1,
          flow_through => false,
          full_rate  => false,
          use_constant  => false
          --
        ) 
        port map ( -- 
          reqL => reqL(0),
          ackL => ackL(0),
          reqR => reqR(0),
          ackR => ackR(0),
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 7
    -- shared store operator group (0) : array_obj_ref_177_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(8 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_177_store_0_req_0;
      array_obj_ref_177_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_177_store_0_req_1;
      array_obj_ref_177_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= odd_idx_166(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      StoreGroup0_gI: SplitGuardInterface generic map(name => "StoreGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_177_word_address_0;
      data_in <= array_obj_ref_177_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup0 Req ", addr_width => 9,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_1_sr_req(0),
          mack => memory_space_1_sr_ack(0),
          maddr => memory_space_1_sr_addr(8 downto 0),
          mdata => memory_space_1_sr_data(31 downto 0),
          mtag => memory_space_1_sr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup0 Complete ",
          num_reqs => 1,
          detailed_buffering_per_output => outBUFs,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_1_sc_req(0),
          mack => memory_space_1_sc_ack(0),
          mtag => memory_space_1_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared store operator group (1) : array_obj_ref_189_store_0 
    StoreGroup1: Block -- 
      signal addr_in: std_logic_vector(8 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_189_store_0_req_0;
      array_obj_ref_189_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_189_store_0_req_1;
      array_obj_ref_189_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  not odd_idx_166(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      StoreGroup1_gI: SplitGuardInterface generic map(name => "StoreGroup1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_189_word_address_0;
      data_in <= array_obj_ref_189_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup1 Req ", addr_width => 9,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_0_sr_req(0),
          mack => memory_space_0_sr_ack(0),
          maddr => memory_space_0_sr_addr(8 downto 0),
          mdata => memory_space_0_sr_data(31 downto 0),
          mtag => memory_space_0_sr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup1 Complete ",
          num_reqs => 1,
          detailed_buffering_per_output => outBUFs,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_0_sc_req(0),
          mack => memory_space_0_sc_ack(0),
          mtag => memory_space_0_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 1
    -- shared inport operator group (0) : RPIPE_in_data_172_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_in_data_172_inst_req_0;
      RPIPE_in_data_172_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_in_data_172_inst_req_1;
      RPIPE_in_data_172_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      aval_173 <= data_out(31 downto 0);
      in_data_read_0_gI: SplitGuardInterface generic map(name => "in_data_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      in_data_read_0: InputPortRevised -- 
        generic map ( name => "in_data_read_0", data_width => 32,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => in_data_pipe_read_req(0),
          oack => in_data_pipe_read_ack(0),
          odata => in_data_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- 
  end Block; -- data_path
  -- 
end readMatrix_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity readVector is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_2_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_2_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_2_sr_addr : out  std_logic_vector(3 downto 0);
    memory_space_2_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_2_sr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_2_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_2_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_2_sc_tag :  in  std_logic_vector(0 downto 0);
    memory_space_3_sr_req : out  std_logic_vector(0 downto 0);
    memory_space_3_sr_ack : in   std_logic_vector(0 downto 0);
    memory_space_3_sr_addr : out  std_logic_vector(3 downto 0);
    memory_space_3_sr_data : out  std_logic_vector(31 downto 0);
    memory_space_3_sr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_3_sc_req : out  std_logic_vector(0 downto 0);
    memory_space_3_sc_ack : in   std_logic_vector(0 downto 0);
    memory_space_3_sc_tag :  in  std_logic_vector(0 downto 0);
    in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
    in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
    in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity readVector;
architecture readVector_arch of readVector is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal readVector_CP_1183_start: Boolean;
  signal readVector_CP_1183_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal array_obj_ref_236_store_0_req_1 : boolean;
  signal array_obj_ref_236_store_0_req_0 : boolean;
  signal array_obj_ref_236_store_0_ack_0 : boolean;
  signal array_obj_ref_236_store_0_ack_1 : boolean;
  signal RPIPE_in_data_232_inst_req_1 : boolean;
  signal array_obj_ref_241_store_0_req_0 : boolean;
  signal RPIPE_in_data_232_inst_ack_1 : boolean;
  signal array_obj_ref_241_store_0_ack_0 : boolean;
  signal array_obj_ref_241_store_0_req_1 : boolean;
  signal do_while_stmt_214_branch_ack_1 : boolean;
  signal array_obj_ref_241_store_0_ack_1 : boolean;
  signal RPIPE_in_data_232_inst_req_0 : boolean;
  signal do_while_stmt_214_branch_ack_0 : boolean;
  signal RPIPE_in_data_232_inst_ack_0 : boolean;
  signal do_while_stmt_214_branch_req_0 : boolean;
  signal phi_stmt_216_req_0 : boolean;
  signal phi_stmt_216_req_1 : boolean;
  signal phi_stmt_216_ack_0 : boolean;
  signal nI_248_218_buf_req_0 : boolean;
  signal nI_248_218_buf_ack_0 : boolean;
  signal nI_248_218_buf_req_1 : boolean;
  signal nI_248_218_buf_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "readVector_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  readVector_CP_1183_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "readVector_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= readVector_CP_1183_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= readVector_CP_1183_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= readVector_CP_1183_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  readVector_CP_1183: Block -- control-path 
    signal readVector_CP_1183_elements: BooleanArray(45 downto 0);
    -- 
  begin -- 
    readVector_CP_1183_elements(0) <= readVector_CP_1183_start;
    readVector_CP_1183_symbol <= readVector_CP_1183_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_213/$entry
      -- CP-element group 0: 	 branch_block_stmt_213/branch_block_stmt_213__entry__
      -- CP-element group 0: 	 branch_block_stmt_213/do_while_stmt_214__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	45 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_213/$exit
      -- CP-element group 1: 	 branch_block_stmt_213/branch_block_stmt_213__exit__
      -- CP-element group 1: 	 branch_block_stmt_213/do_while_stmt_214__exit__
      -- 
    readVector_CP_1183_elements(1) <= readVector_CP_1183_elements(45);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_213/do_while_stmt_214/$entry
      -- CP-element group 2: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214__entry__
      -- 
    readVector_CP_1183_elements(2) <= readVector_CP_1183_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	45 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214__exit__
      -- 
    -- Element group readVector_CP_1183_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_213/do_while_stmt_214/loop_back
      -- 
    -- Element group readVector_CP_1183_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	43 
    -- CP-element group 5: 	44 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_213/do_while_stmt_214/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_213/do_while_stmt_214/condition_done
      -- CP-element group 5: 	 branch_block_stmt_213/do_while_stmt_214/loop_taken/$entry
      -- 
    readVector_CP_1183_elements(5) <= readVector_CP_1183_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	42 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_213/do_while_stmt_214/loop_body_done
      -- 
    readVector_CP_1183_elements(6) <= readVector_CP_1183_elements(42);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	16 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/back_edge_to_loop_body
      -- 
    readVector_CP_1183_elements(7) <= readVector_CP_1183_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	18 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/first_time_through_loop_body
      -- 
    readVector_CP_1183_elements(8) <= readVector_CP_1183_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	12 
    -- CP-element group 9: 	13 
    -- CP-element group 9: 	29 
    -- CP-element group 9: 	41 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/loop_body_start
      -- 
    -- Element group readVector_CP_1183_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	15 
    -- CP-element group 10: 	41 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/condition_evaluated
      -- 
    condition_evaluated_1207_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1207_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(10), ack => do_while_stmt_214_branch_req_0); -- 
    readVector_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(15) & readVector_CP_1183_elements(41);
      gj_readVector_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_sample_start__ps
      -- 
    readVector_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(12) & readVector_CP_1183_elements(15);
      gj_readVector_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	9 
    -- CP-element group 12: marked-predecessors 
    -- CP-element group 12: 	14 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_sample_start_
      -- 
    readVector_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(9) & readVector_CP_1183_elements(14);
      gj_readVector_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	35 
    -- CP-element group 13: 	39 
    -- CP-element group 13: successors 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_update_start_
      -- CP-element group 13: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_update_start__ps
      -- 
    readVector_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(9) & readVector_CP_1183_elements(35) & readVector_CP_1183_elements(39);
      gj_readVector_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	42 
    -- CP-element group 14: marked-successors 
    -- CP-element group 14: 	12 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/aggregated_phi_sample_ack
      -- CP-element group 14: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_sample_completed_
      -- CP-element group 14: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_sample_completed__ps
      -- 
    -- Element group readVector_CP_1183_elements(14) is bound as output of CP function.
    -- CP-element group 15:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: 	33 
    -- CP-element group 15: 	37 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (55) 
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_final_index_sum_regn/req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_word_addrgen/root_register_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_base_plus_offset/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_final_index_sum_regn/ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_base_plus_offset/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_base_plus_offset/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_scale_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_base_plus_offset/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_scale_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_base_plus_offset/sum_rename_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_base_plus_offset/sum_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_scale_0/scale_rename_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_resized_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_scaled_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_final_index_sum_regn/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_final_index_sum_regn/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_word_addrgen/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_word_addrgen/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_scale_0/scale_rename_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_word_addrgen/root_register_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_word_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_base_plus_offset/sum_rename_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_root_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_base_plus_offset/sum_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_offset_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_resized_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_final_index_sum_regn/ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_word_addrgen/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_word_addrgen/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_final_index_sum_regn/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_word_addrgen/root_register_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_word_addrgen/root_register_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_resize_0/index_resize_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_word_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_scale_0/scale_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_root_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_offset_calculated
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_scaled_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_scale_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_scale_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_computed_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_scale_0/scale_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_resize_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_resize_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_index_resize_0/index_resize_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_final_index_sum_regn/req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_computed_0
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_final_index_sum_regn/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_resize_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_resize_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_resize_0/index_resize_req
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_index_resize_0/index_resize_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/aggregated_phi_update_ack
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_update_completed_
      -- CP-element group 15: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_update_completed__ps
      -- 
    -- Element group readVector_CP_1183_elements(15) is bound as output of CP function.
    -- CP-element group 16:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	7 
    -- CP-element group 16: successors 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_loopback_trigger
      -- 
    readVector_CP_1183_elements(16) <= readVector_CP_1183_elements(7);
    -- CP-element group 17:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (2) 
      -- CP-element group 17: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_loopback_sample_req
      -- CP-element group 17: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_loopback_sample_req_ps
      -- 
    phi_stmt_216_loopback_sample_req_1222_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_216_loopback_sample_req_1222_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(17), ack => phi_stmt_216_req_0); -- 
    -- Element group readVector_CP_1183_elements(17) is bound as output of CP function.
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	8 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_entry_trigger
      -- 
    readVector_CP_1183_elements(18) <= readVector_CP_1183_elements(8);
    -- CP-element group 19:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_entry_sample_req
      -- CP-element group 19: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_entry_sample_req_ps
      -- 
    phi_stmt_216_entry_sample_req_1225_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_216_entry_sample_req_1225_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(19), ack => phi_stmt_216_req_1); -- 
    -- Element group readVector_CP_1183_elements(19) is bound as output of CP function.
    -- CP-element group 20:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_phi_mux_ack
      -- CP-element group 20: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/phi_stmt_216_phi_mux_ack_ps
      -- 
    phi_stmt_216_phi_mux_ack_1228_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_216_ack_0, ack => readVector_CP_1183_elements(20)); -- 
    -- CP-element group 21:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21: 	23 
    -- CP-element group 21:  members (4) 
      -- CP-element group 21: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_sample_start__ps
      -- CP-element group 21: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_sample_start_
      -- CP-element group 21: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Sample/$entry
      -- CP-element group 21: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Sample/req
      -- 
    req_1241_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1241_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(21), ack => nI_248_218_buf_req_0); -- 
    -- Element group readVector_CP_1183_elements(21) is bound as output of CP function.
    -- CP-element group 22:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (4) 
      -- CP-element group 22: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_update_start__ps
      -- CP-element group 22: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_update_start_
      -- CP-element group 22: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Update/$entry
      -- CP-element group 22: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Update/req
      -- 
    req_1246_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1246_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(22), ack => nI_248_218_buf_req_1); -- 
    -- Element group readVector_CP_1183_elements(22) is bound as output of CP function.
    -- CP-element group 23:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	21 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (4) 
      -- CP-element group 23: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_sample_completed__ps
      -- CP-element group 23: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_sample_completed_
      -- CP-element group 23: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Sample/$exit
      -- CP-element group 23: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Sample/ack
      -- 
    ack_1242_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 23_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_248_218_buf_ack_0, ack => readVector_CP_1183_elements(23)); -- 
    -- CP-element group 24:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	22 
    -- CP-element group 24: successors 
    -- CP-element group 24:  members (4) 
      -- CP-element group 24: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_update_completed__ps
      -- CP-element group 24: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_update_completed_
      -- CP-element group 24: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Update/$exit
      -- CP-element group 24: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/R_nI_218_Update/ack
      -- 
    ack_1247_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 24_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_248_218_buf_ack_1, ack => readVector_CP_1183_elements(24)); -- 
    -- CP-element group 25:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_sample_completed__ps
      -- CP-element group 25: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_sample_completed_
      -- CP-element group 25: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_sample_start__ps
      -- 
    -- Element group readVector_CP_1183_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (2) 
      -- CP-element group 26: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_update_start_
      -- 
    -- Element group readVector_CP_1183_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	28 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (1) 
      -- CP-element group 27: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_update_completed__ps
      -- 
    readVector_CP_1183_elements(27) <= readVector_CP_1183_elements(28);
    -- CP-element group 28:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28: 	27 
    -- CP-element group 28:  members (1) 
      -- CP-element group 28: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/type_cast_220_update_completed_
      -- 
    -- Element group readVector_CP_1183_elements(28) is a control-delay.
    cp_element_28_delay: control_delay_element  generic map(name => " 28_delay", delay_value => 1)  port map(req => readVector_CP_1183_elements(26), ack => readVector_CP_1183_elements(28), clk => clk, reset =>reset);
    -- CP-element group 29:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	9 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	32 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (3) 
      -- CP-element group 29: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Sample/$entry
      -- CP-element group 29: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Sample/rr
      -- 
    rr_1264_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1264_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(29), ack => RPIPE_in_data_232_inst_req_0); -- 
    readVector_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(9) & readVector_CP_1183_elements(32);
      gj_readVector_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: 	31 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	35 
    -- CP-element group 30: 	39 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (3) 
      -- CP-element group 30: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_update_start_
      -- CP-element group 30: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Update/cr
      -- CP-element group 30: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Update/$entry
      -- 
    cr_1269_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1269_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(30), ack => RPIPE_in_data_232_inst_req_1); -- 
    readVector_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(31) & readVector_CP_1183_elements(35) & readVector_CP_1183_elements(39);
      gj_readVector_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31: 	30 
    -- CP-element group 31:  members (3) 
      -- CP-element group 31: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Sample/ra
      -- 
    ra_1265_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_in_data_232_inst_ack_0, ack => readVector_CP_1183_elements(31)); -- 
    -- CP-element group 32:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32: 	37 
    -- CP-element group 32: marked-successors 
    -- CP-element group 32: 	29 
    -- CP-element group 32:  members (3) 
      -- CP-element group 32: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/RPIPE_in_data_232_Update/ca
      -- 
    ca_1270_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => RPIPE_in_data_232_inst_ack_1, ack => readVector_CP_1183_elements(32)); -- 
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	15 
    -- CP-element group 33: 	32 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	35 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	35 
    -- CP-element group 33:  members (9) 
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_sample_start_
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/$entry
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/array_obj_ref_236_Split/$entry
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/array_obj_ref_236_Split/$exit
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/array_obj_ref_236_Split/split_req
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/array_obj_ref_236_Split/split_ack
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/$entry
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/word_0/$entry
      -- CP-element group 33: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/word_0/rr
      -- 
    rr_1320_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1320_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(33), ack => array_obj_ref_236_store_0_req_0); -- 
    readVector_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(15) & readVector_CP_1183_elements(32) & readVector_CP_1183_elements(35);
      gj_readVector_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: marked-predecessors 
    -- CP-element group 34: 	36 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	36 
    -- CP-element group 34:  members (5) 
      -- CP-element group 34: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/word_0/cr
      -- CP-element group 34: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/$entry
      -- CP-element group 34: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/$entry
      -- CP-element group 34: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_update_start_
      -- CP-element group 34: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/word_0/$entry
      -- 
    cr_1331_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1331_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(34), ack => array_obj_ref_236_store_0_req_1); -- 
    readVector_cp_element_group_34: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_34"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= readVector_CP_1183_elements(36);
      gj_readVector_cp_element_group_34 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(34), clk => clk, reset => reset); --
    end block;
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	33 
    -- CP-element group 35: successors 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	13 
    -- CP-element group 35: 	30 
    -- CP-element group 35: 	33 
    -- CP-element group 35:  members (5) 
      -- CP-element group 35: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/$exit
      -- CP-element group 35: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/$exit
      -- CP-element group 35: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/word_0/$exit
      -- CP-element group 35: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Sample/word_access_start/word_0/ra
      -- CP-element group 35: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_sample_completed_
      -- 
    ra_1321_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_236_store_0_ack_0, ack => readVector_CP_1183_elements(35)); -- 
    -- CP-element group 36:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	34 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	42 
    -- CP-element group 36: marked-successors 
    -- CP-element group 36: 	34 
    -- CP-element group 36:  members (5) 
      -- CP-element group 36: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/word_0/$exit
      -- CP-element group 36: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/word_0/ca
      -- CP-element group 36: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/$exit
      -- CP-element group 36: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_update_completed_
      -- CP-element group 36: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_236_Update/word_access_complete/$exit
      -- 
    ca_1332_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 36_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_236_store_0_ack_1, ack => readVector_CP_1183_elements(36)); -- 
    -- CP-element group 37:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	15 
    -- CP-element group 37: 	32 
    -- CP-element group 37: marked-predecessors 
    -- CP-element group 37: 	39 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	39 
    -- CP-element group 37:  members (9) 
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/array_obj_ref_241_Split/split_req
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/array_obj_ref_241_Split/split_ack
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/$entry
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_sample_start_
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/word_0/rr
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/word_0/$entry
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/$entry
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/array_obj_ref_241_Split/$entry
      -- CP-element group 37: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/array_obj_ref_241_Split/$exit
      -- 
    rr_1382_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1382_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(37), ack => array_obj_ref_241_store_0_req_0); -- 
    readVector_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 1,2 => 1);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 1);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 1);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(15) & readVector_CP_1183_elements(32) & readVector_CP_1183_elements(39);
      gj_readVector_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: marked-predecessors 
    -- CP-element group 38: 	40 
    -- CP-element group 38: successors 
    -- CP-element group 38: 	40 
    -- CP-element group 38:  members (5) 
      -- CP-element group 38: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/word_0/$entry
      -- CP-element group 38: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_update_start_
      -- CP-element group 38: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/word_0/cr
      -- CP-element group 38: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/$entry
      -- CP-element group 38: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/$entry
      -- 
    cr_1393_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1393_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => readVector_CP_1183_elements(38), ack => array_obj_ref_241_store_0_req_1); -- 
    readVector_cp_element_group_38: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_38"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= readVector_CP_1183_elements(40);
      gj_readVector_cp_element_group_38 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(38), clk => clk, reset => reset); --
    end block;
    -- CP-element group 39:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	37 
    -- CP-element group 39: successors 
    -- CP-element group 39: marked-successors 
    -- CP-element group 39: 	13 
    -- CP-element group 39: 	30 
    -- CP-element group 39: 	37 
    -- CP-element group 39:  members (5) 
      -- CP-element group 39: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_sample_completed_
      -- CP-element group 39: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/$exit
      -- CP-element group 39: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/word_0/ra
      -- CP-element group 39: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/$exit
      -- CP-element group 39: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Sample/word_access_start/word_0/$exit
      -- 
    ra_1383_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_241_store_0_ack_0, ack => readVector_CP_1183_elements(39)); -- 
    -- CP-element group 40:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	38 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	42 
    -- CP-element group 40: marked-successors 
    -- CP-element group 40: 	38 
    -- CP-element group 40:  members (5) 
      -- CP-element group 40: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/word_0/$exit
      -- CP-element group 40: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_update_completed_
      -- CP-element group 40: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/$exit
      -- CP-element group 40: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/$exit
      -- CP-element group 40: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/array_obj_ref_241_Update/word_access_complete/word_0/ca
      -- 
    ca_1394_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 40_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_241_store_0_ack_1, ack => readVector_CP_1183_elements(40)); -- 
    -- CP-element group 41:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 41: predecessors 
    -- CP-element group 41: 	9 
    -- CP-element group 41: successors 
    -- CP-element group 41: 	10 
    -- CP-element group 41:  members (1) 
      -- CP-element group 41: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group readVector_CP_1183_elements(41) is a control-delay.
    cp_element_41_delay: control_delay_element  generic map(name => " 41_delay", delay_value => 1)  port map(req => readVector_CP_1183_elements(9), ack => readVector_CP_1183_elements(41), clk => clk, reset =>reset);
    -- CP-element group 42:  join  transition  bypass  pipeline-parent 
    -- CP-element group 42: predecessors 
    -- CP-element group 42: 	14 
    -- CP-element group 42: 	36 
    -- CP-element group 42: 	40 
    -- CP-element group 42: successors 
    -- CP-element group 42: 	6 
    -- CP-element group 42:  members (1) 
      -- CP-element group 42: 	 branch_block_stmt_213/do_while_stmt_214/do_while_stmt_214_loop_body/$exit
      -- 
    readVector_cp_element_group_42: block -- 
      constant place_capacities: IntegerArray(0 to 2) := (0 => 7,1 => 7,2 => 7);
      constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 0,2 => 0);
      constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
      constant joinName: string(1 to 30) := "readVector_cp_element_group_42"; 
      signal preds: BooleanArray(1 to 3); -- 
    begin -- 
      preds <= readVector_CP_1183_elements(14) & readVector_CP_1183_elements(36) & readVector_CP_1183_elements(40);
      gj_readVector_cp_element_group_42 : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => readVector_CP_1183_elements(42), clk => clk, reset => reset); --
    end block;
    -- CP-element group 43:  transition  input  bypass  pipeline-parent 
    -- CP-element group 43: predecessors 
    -- CP-element group 43: 	5 
    -- CP-element group 43: successors 
    -- CP-element group 43:  members (2) 
      -- CP-element group 43: 	 branch_block_stmt_213/do_while_stmt_214/loop_exit/$exit
      -- CP-element group 43: 	 branch_block_stmt_213/do_while_stmt_214/loop_exit/ack
      -- 
    ack_1399_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 43_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_214_branch_ack_0, ack => readVector_CP_1183_elements(43)); -- 
    -- CP-element group 44:  transition  input  bypass  pipeline-parent 
    -- CP-element group 44: predecessors 
    -- CP-element group 44: 	5 
    -- CP-element group 44: successors 
    -- CP-element group 44:  members (2) 
      -- CP-element group 44: 	 branch_block_stmt_213/do_while_stmt_214/loop_taken/$exit
      -- CP-element group 44: 	 branch_block_stmt_213/do_while_stmt_214/loop_taken/ack
      -- 
    ack_1403_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 44_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_214_branch_ack_1, ack => readVector_CP_1183_elements(44)); -- 
    -- CP-element group 45:  transition  bypass  pipeline-parent 
    -- CP-element group 45: predecessors 
    -- CP-element group 45: 	3 
    -- CP-element group 45: successors 
    -- CP-element group 45: 	1 
    -- CP-element group 45:  members (1) 
      -- CP-element group 45: 	 branch_block_stmt_213/do_while_stmt_214/$exit
      -- 
    readVector_CP_1183_elements(45) <= readVector_CP_1183_elements(3);
    readVector_do_while_stmt_214_terminator_1404: loop_terminator -- 
      generic map (name => " readVector_do_while_stmt_214_terminator_1404", max_iterations_in_flight =>7) 
      port map(loop_body_exit => readVector_CP_1183_elements(6),loop_continue => readVector_CP_1183_elements(44),loop_terminate => readVector_CP_1183_elements(43),loop_back => readVector_CP_1183_elements(4),loop_exit => readVector_CP_1183_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_216_phi_seq_1256_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= readVector_CP_1183_elements(16);
      readVector_CP_1183_elements(21)<= src_sample_reqs(0);
      src_sample_acks(0)  <= readVector_CP_1183_elements(23);
      readVector_CP_1183_elements(22)<= src_update_reqs(0);
      src_update_acks(0)  <= readVector_CP_1183_elements(24);
      readVector_CP_1183_elements(17) <= phi_mux_reqs(0);
      triggers(1)  <= readVector_CP_1183_elements(18);
      readVector_CP_1183_elements(25)<= src_sample_reqs(1);
      src_sample_acks(1)  <= readVector_CP_1183_elements(25);
      readVector_CP_1183_elements(26)<= src_update_reqs(1);
      src_update_acks(1)  <= readVector_CP_1183_elements(27);
      readVector_CP_1183_elements(19) <= phi_mux_reqs(1);
      phi_stmt_216_phi_seq_1256 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_216_phi_seq_1256") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => readVector_CP_1183_elements(11), 
          phi_sample_ack => readVector_CP_1183_elements(14), 
          phi_update_req => readVector_CP_1183_elements(13), 
          phi_update_ack => readVector_CP_1183_elements(15), 
          phi_mux_ack => readVector_CP_1183_elements(20), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1208_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= readVector_CP_1183_elements(7);
        preds(1)  <= readVector_CP_1183_elements(8);
        entry_tmerge_1208 : transition_merge -- 
          generic map(name => " entry_tmerge_1208")
          port map (preds => preds, symbol_out => readVector_CP_1183_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal I_216 : std_logic_vector(7 downto 0);
    signal I_idx_230 : std_logic_vector(6 downto 0);
    signal R_I_idx_235_resized : std_logic_vector(3 downto 0);
    signal R_I_idx_235_scaled : std_logic_vector(3 downto 0);
    signal R_I_idx_240_resized : std_logic_vector(3 downto 0);
    signal R_I_idx_240_scaled : std_logic_vector(3 downto 0);
    signal ULT_u8_u1_252_wire : std_logic_vector(0 downto 0);
    signal array_obj_ref_236_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_236_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_236_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_236_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_236_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_236_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_236_word_offset_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_241_final_offset : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_offset_scale_factor_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_resized_base_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_root_address : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_word_address_0 : std_logic_vector(3 downto 0);
    signal array_obj_ref_241_word_offset_0 : std_logic_vector(3 downto 0);
    signal konst_224_wire_constant : std_logic_vector(7 downto 0);
    signal konst_246_wire_constant : std_logic_vector(7 downto 0);
    signal konst_251_wire_constant : std_logic_vector(7 downto 0);
    signal nI_248 : std_logic_vector(7 downto 0);
    signal nI_248_218_buffered : std_logic_vector(7 downto 0);
    signal odd_idx_226 : std_logic_vector(0 downto 0);
    signal temp_val_233 : std_logic_vector(31 downto 0);
    signal type_cast_220_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    array_obj_ref_236_offset_scale_factor_0 <= "0001";
    array_obj_ref_236_resized_base_address <= "0000";
    array_obj_ref_236_word_offset_0 <= "0000";
    array_obj_ref_241_offset_scale_factor_0 <= "0001";
    array_obj_ref_241_resized_base_address <= "0000";
    array_obj_ref_241_word_offset_0 <= "0000";
    konst_224_wire_constant <= "00000000";
    konst_246_wire_constant <= "00000001";
    konst_251_wire_constant <= "00100000";
    type_cast_220_wire_constant <= "00000000";
    phi_stmt_216: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= nI_248_218_buffered & type_cast_220_wire_constant;
      req <= phi_stmt_216_req_0 & phi_stmt_216_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_216",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_216_ack_0,
          idata => idata,
          odata => I_216,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_216
    -- flow-through slice operator slice_229_inst
    I_idx_230 <= I_216(7 downto 1);
    nI_248_218_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nI_248_218_buf_req_0;
      nI_248_218_buf_ack_0<= wack(0);
      rreq(0) <= nI_248_218_buf_req_1;
      nI_248_218_buf_ack_1<= rack(0);
      nI_248_218_buf : InterlockBuffer generic map ( -- 
        name => "nI_248_218_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nI_248,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nI_248_218_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_236_addr_0
    process(array_obj_ref_236_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_236_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_236_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_236_gather_scatter
    process(temp_val_233) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := temp_val_233;
      ov(31 downto 0) := iv;
      array_obj_ref_236_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_236_index_0_rename
    process(R_I_idx_235_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_idx_235_resized;
      ov(3 downto 0) := iv;
      R_I_idx_235_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_236_index_0_resize
    process(I_idx_230) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_idx_230;
      ov := iv(3 downto 0);
      R_I_idx_235_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_236_index_offset
    process(R_I_idx_235_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_idx_235_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_236_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_236_root_address_inst
    process(array_obj_ref_236_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_236_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_236_root_address <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_addr_0
    process(array_obj_ref_241_root_address) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_241_root_address;
      ov(3 downto 0) := iv;
      array_obj_ref_241_word_address_0 <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_gather_scatter
    process(temp_val_233) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := temp_val_233;
      ov(31 downto 0) := iv;
      array_obj_ref_241_data_0 <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_index_0_rename
    process(R_I_idx_240_resized) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_idx_240_resized;
      ov(3 downto 0) := iv;
      R_I_idx_240_scaled <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_index_0_resize
    process(I_idx_230) --
      variable iv : std_logic_vector(6 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_idx_230;
      ov := iv(3 downto 0);
      R_I_idx_240_resized <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_index_offset
    process(R_I_idx_240_scaled) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_idx_240_scaled;
      ov(3 downto 0) := iv;
      array_obj_ref_241_final_offset <= ov(3 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_241_root_address_inst
    process(array_obj_ref_241_final_offset) --
      variable iv : std_logic_vector(3 downto 0);
      variable ov : std_logic_vector(3 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_241_final_offset;
      ov(3 downto 0) := iv;
      array_obj_ref_241_root_address <= ov(3 downto 0);
      --
    end process;
    do_while_stmt_214_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_252_wire;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_214_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_214_branch_req_0,
          ack0 => do_while_stmt_214_branch_ack_0,
          ack1 => do_while_stmt_214_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- binary operator ADD_u8_u8_247_inst
    process(I_216) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApIntAdd_proc(I_216, konst_246_wire_constant, tmp_var);
      nI_248 <= tmp_var; --
    end process;
    -- binary operator BITSEL_u8_u1_225_inst
    process(I_216) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApBitsel_proc(I_216, konst_224_wire_constant, tmp_var);
      odd_idx_226 <= tmp_var; --
    end process;
    -- binary operator ULT_u8_u1_252_inst
    process(nI_248) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nI_248, konst_251_wire_constant, tmp_var);
      ULT_u8_u1_252_wire <= tmp_var; --
    end process;
    -- shared store operator group (0) : array_obj_ref_236_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(3 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 7);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_236_store_0_req_0;
      array_obj_ref_236_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_236_store_0_req_1;
      array_obj_ref_236_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <= odd_idx_226(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      StoreGroup0_gI: SplitGuardInterface generic map(name => "StoreGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_236_word_address_0;
      data_in <= array_obj_ref_236_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup0 Req ", addr_width => 4,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_3_sr_req(0),
          mack => memory_space_3_sr_ack(0),
          maddr => memory_space_3_sr_addr(3 downto 0),
          mdata => memory_space_3_sr_data(31 downto 0),
          mtag => memory_space_3_sr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup0 Complete ",
          num_reqs => 1,
          detailed_buffering_per_output => outBUFs,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_3_sc_req(0),
          mack => memory_space_3_sc_ack(0),
          mtag => memory_space_3_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared store operator group (1) : array_obj_ref_241_store_0 
    StoreGroup1: Block -- 
      signal addr_in: std_logic_vector(3 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 7);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => true);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_241_store_0_req_0;
      array_obj_ref_241_store_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_241_store_0_req_1;
      array_obj_ref_241_store_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  not odd_idx_226(0);
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      StoreGroup1_gI: SplitGuardInterface generic map(name => "StoreGroup1_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      addr_in <= array_obj_ref_241_word_address_0;
      data_in <= array_obj_ref_241_data_0;
      StoreReq: StoreReqSharedWithInputBuffers -- 
        generic map ( name => "StoreGroup1 Req ", addr_width => 4,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_2_sr_req(0),
          mack => memory_space_2_sr_ack(0),
          maddr => memory_space_2_sr_addr(3 downto 0),
          mdata => memory_space_2_sr_data(31 downto 0),
          mtag => memory_space_2_sr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          name => "StoreGroup1 Complete ",
          num_reqs => 1,
          detailed_buffering_per_output => outBUFs,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_2_sc_req(0),
          mack => memory_space_2_sc_ack(0),
          mtag => memory_space_2_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 1
    -- shared inport operator group (0) : RPIPE_in_data_232_inst 
    InportGroup_0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal reqL, ackL, reqR, ackR : BooleanArray( 0 downto 0);
      signal reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 1);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      reqL_unguarded(0) <= RPIPE_in_data_232_inst_req_0;
      RPIPE_in_data_232_inst_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= RPIPE_in_data_232_inst_req_1;
      RPIPE_in_data_232_inst_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      temp_val_233 <= data_out(31 downto 0);
      in_data_read_0_gI: SplitGuardInterface generic map(name => "in_data_read_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => true) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL,
        sa_in => ackL,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      in_data_read_0: InputPortRevised -- 
        generic map ( name => "in_data_read_0", data_width => 32,  num_reqs => 1,  output_buffering => outBUFs,   nonblocking_read_flag => False,  no_arbitration => false)
        port map (-- 
          sample_req => reqL , 
          sample_ack => ackL, 
          update_req => reqR, 
          update_ack => ackR, 
          data => data_out, 
          oreq => in_data_pipe_read_req(0),
          oack => in_data_pipe_read_ack(0),
          odata => in_data_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- 
  end Block; -- data_path
  -- 
end readVector_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity sendVector is -- 
  generic (tag_length : integer); 
  port ( -- 
    memory_space_4_lr_req : out  std_logic_vector(0 downto 0);
    memory_space_4_lr_ack : in   std_logic_vector(0 downto 0);
    memory_space_4_lr_addr : out  std_logic_vector(4 downto 0);
    memory_space_4_lr_tag :  out  std_logic_vector(17 downto 0);
    memory_space_4_lc_req : out  std_logic_vector(0 downto 0);
    memory_space_4_lc_ack : in   std_logic_vector(0 downto 0);
    memory_space_4_lc_data : in   std_logic_vector(31 downto 0);
    memory_space_4_lc_tag :  in  std_logic_vector(0 downto 0);
    out_data_pipe_write_req : out  std_logic_vector(0 downto 0);
    out_data_pipe_write_ack : in   std_logic_vector(0 downto 0);
    out_data_pipe_write_data : out  std_logic_vector(31 downto 0);
    tag_in: in std_logic_vector(tag_length-1 downto 0);
    tag_out: out std_logic_vector(tag_length-1 downto 0) ;
    clk : in std_logic;
    reset : in std_logic;
    start_req : in std_logic;
    start_ack : out std_logic;
    fin_req : in std_logic;
    fin_ack   : out std_logic-- 
  );
  -- 
end entity sendVector;
architecture sendVector_arch of sendVector is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  signal in_buffer_data_in, in_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal default_zero_sig: std_logic;
  signal in_buffer_write_req: std_logic;
  signal in_buffer_write_ack: std_logic;
  signal in_buffer_unload_req_symbol: Boolean;
  signal in_buffer_unload_ack_symbol: Boolean;
  signal out_buffer_data_in, out_buffer_data_out: std_logic_vector((tag_length + 0)-1 downto 0);
  signal out_buffer_read_req: std_logic;
  signal out_buffer_read_ack: std_logic;
  signal out_buffer_write_req_symbol: Boolean;
  signal out_buffer_write_ack_symbol: Boolean;
  signal tag_ub_out, tag_ilock_out: std_logic_vector(tag_length-1 downto 0);
  signal tag_push_req, tag_push_ack, tag_pop_req, tag_pop_ack: std_logic;
  signal tag_unload_req_symbol, tag_unload_ack_symbol, tag_write_req_symbol, tag_write_ack_symbol: Boolean;
  signal tag_ilock_write_req_symbol, tag_ilock_write_ack_symbol, tag_ilock_read_req_symbol, tag_ilock_read_ack_symbol: Boolean;
  signal start_req_sig, fin_req_sig, start_ack_sig, fin_ack_sig: std_logic; 
  signal input_sample_reenable_symbol: Boolean;
  -- input port buffer signals
  -- output port buffer signals
  signal sendVector_CP_1405_start: Boolean;
  signal sendVector_CP_1405_symbol: Boolean;
  -- volatile/operator module components. 
  -- links between control-path and data-path
  signal do_while_stmt_257_branch_req_0 : boolean;
  signal phi_stmt_259_req_1 : boolean;
  signal phi_stmt_259_req_0 : boolean;
  signal phi_stmt_259_ack_0 : boolean;
  signal nI_273_263_buf_req_0 : boolean;
  signal nI_273_263_buf_ack_0 : boolean;
  signal nI_273_263_buf_req_1 : boolean;
  signal nI_273_263_buf_ack_1 : boolean;
  signal array_obj_ref_267_load_0_req_0 : boolean;
  signal array_obj_ref_267_load_0_ack_0 : boolean;
  signal array_obj_ref_267_load_0_req_1 : boolean;
  signal array_obj_ref_267_load_0_ack_1 : boolean;
  signal WPIPE_out_data_265_inst_req_0 : boolean;
  signal WPIPE_out_data_265_inst_ack_0 : boolean;
  signal WPIPE_out_data_265_inst_req_1 : boolean;
  signal WPIPE_out_data_265_inst_ack_1 : boolean;
  signal do_while_stmt_257_branch_ack_0 : boolean;
  signal do_while_stmt_257_branch_ack_1 : boolean;
  -- 
begin --  
  -- input handling ------------------------------------------------
  in_buffer: UnloadBuffer -- 
    generic map(name => "sendVector_input_buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      data_width => tag_length + 0) -- 
    port map(write_req => in_buffer_write_req, -- 
      write_ack => in_buffer_write_ack, 
      write_data => in_buffer_data_in,
      unload_req => in_buffer_unload_req_symbol, 
      unload_ack => in_buffer_unload_ack_symbol, 
      read_data => in_buffer_data_out,
      clk => clk, reset => reset); -- 
  in_buffer_data_in(tag_length-1 downto 0) <= tag_in;
  tag_ub_out <= in_buffer_data_out(tag_length-1 downto 0);
  in_buffer_write_req <= start_req;
  start_ack <= in_buffer_write_ack;
  in_buffer_unload_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 1,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 32) := "in_buffer_unload_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= in_buffer_unload_ack_symbol & input_sample_reenable_symbol;
    gj_in_buffer_unload_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => in_buffer_unload_req_symbol, clk => clk, reset => reset); --
  end block;
  -- join of all unload_ack_symbols.. used to trigger CP.
  sendVector_CP_1405_start <= in_buffer_unload_ack_symbol;
  -- output handling  -------------------------------------------------------
  out_buffer: ReceiveBuffer -- 
    generic map(name => "sendVector_out_buffer", -- 
      buffer_size => 1,
      full_rate => false,
      data_width => tag_length + 0) --
    port map(write_req => out_buffer_write_req_symbol, -- 
      write_ack => out_buffer_write_ack_symbol, 
      write_data => out_buffer_data_in,
      read_req => out_buffer_read_req, 
      read_ack => out_buffer_read_ack, 
      read_data => out_buffer_data_out,
      clk => clk, reset => reset); -- 
  out_buffer_data_in(tag_length-1 downto 0) <= tag_ilock_out;
  tag_out <= out_buffer_data_out(tag_length-1 downto 0);
  out_buffer_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 0);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 1,2 => 0);
    constant joinName: string(1 to 32) := "out_buffer_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= sendVector_CP_1405_symbol & out_buffer_write_ack_symbol & tag_ilock_read_ack_symbol;
    gj_out_buffer_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => out_buffer_write_req_symbol, clk => clk, reset => reset); --
  end block;
  -- write-to output-buffer produces  reenable input sampling
  input_sample_reenable_symbol <= out_buffer_write_ack_symbol;
  -- fin-req/ack level protocol..
  out_buffer_read_req <= fin_req;
  fin_ack <= out_buffer_read_ack;
  ----- tag-queue --------------------------------------------------
  -- interlock buffer for TAG.. to provide required buffering.
  tagIlock: InterlockBuffer -- 
    generic map(name => "tag-interlock-buffer", -- 
      buffer_size => 1,
      bypass_flag => false,
      in_data_width => tag_length,
      out_data_width => tag_length) -- 
    port map(write_req => tag_ilock_write_req_symbol, -- 
      write_ack => tag_ilock_write_ack_symbol, 
      write_data => tag_ub_out,
      read_req => tag_ilock_read_req_symbol, 
      read_ack => tag_ilock_read_ack_symbol, 
      read_data => tag_ilock_out, 
      clk => clk, reset => reset); -- 
  -- tag ilock-buffer control logic. 
  tag_ilock_write_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
    constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
    constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
    constant joinName: string(1 to 31) := "tag_ilock_write_req_symbol_join"; 
    signal preds: BooleanArray(1 to 2); -- 
  begin -- 
    preds <= sendVector_CP_1405_start & tag_ilock_write_ack_symbol;
    gj_tag_ilock_write_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_write_req_symbol, clk => clk, reset => reset); --
  end block;
  tag_ilock_read_req_symbol_join: block -- 
    constant place_capacities: IntegerArray(0 to 2) := (0 => 1,1 => 1,2 => 1);
    constant place_markings: IntegerArray(0 to 2)  := (0 => 0,1 => 1,2 => 1);
    constant place_delays: IntegerArray(0 to 2) := (0 => 0,1 => 0,2 => 0);
    constant joinName: string(1 to 30) := "tag_ilock_read_req_symbol_join"; 
    signal preds: BooleanArray(1 to 3); -- 
  begin -- 
    preds <= sendVector_CP_1405_start & tag_ilock_read_ack_symbol & out_buffer_write_ack_symbol;
    gj_tag_ilock_read_req_symbol_join : generic_join generic map(name => joinName, number_of_predecessors => 3, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
      port map(preds => preds, symbol_out => tag_ilock_read_req_symbol, clk => clk, reset => reset); --
  end block;
  -- the control path --------------------------------------------------
  always_true_symbol <= true; 
  default_zero_sig <= '0';
  sendVector_CP_1405: Block -- control-path 
    signal sendVector_CP_1405_elements: BooleanArray(40 downto 0);
    -- 
  begin -- 
    sendVector_CP_1405_elements(0) <= sendVector_CP_1405_start;
    sendVector_CP_1405_symbol <= sendVector_CP_1405_elements(1);
    -- CP-element group 0:  transition  place  bypass 
    -- CP-element group 0: predecessors 
    -- CP-element group 0: successors 
    -- CP-element group 0: 	2 
    -- CP-element group 0:  members (4) 
      -- CP-element group 0: 	 $entry
      -- CP-element group 0: 	 branch_block_stmt_256/$entry
      -- CP-element group 0: 	 branch_block_stmt_256/branch_block_stmt_256__entry__
      -- CP-element group 0: 	 branch_block_stmt_256/do_while_stmt_257__entry__
      -- 
    -- CP-element group 1:  transition  place  bypass 
    -- CP-element group 1: predecessors 
    -- CP-element group 1: 	40 
    -- CP-element group 1: successors 
    -- CP-element group 1:  members (4) 
      -- CP-element group 1: 	 $exit
      -- CP-element group 1: 	 branch_block_stmt_256/$exit
      -- CP-element group 1: 	 branch_block_stmt_256/branch_block_stmt_256__exit__
      -- CP-element group 1: 	 branch_block_stmt_256/do_while_stmt_257__exit__
      -- 
    sendVector_CP_1405_elements(1) <= sendVector_CP_1405_elements(40);
    -- CP-element group 2:  transition  place  bypass  pipeline-parent 
    -- CP-element group 2: predecessors 
    -- CP-element group 2: 	0 
    -- CP-element group 2: successors 
    -- CP-element group 2: 	8 
    -- CP-element group 2:  members (2) 
      -- CP-element group 2: 	 branch_block_stmt_256/do_while_stmt_257/$entry
      -- CP-element group 2: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257__entry__
      -- 
    sendVector_CP_1405_elements(2) <= sendVector_CP_1405_elements(0);
    -- CP-element group 3:  merge  place  bypass  pipeline-parent 
    -- CP-element group 3: predecessors 
    -- CP-element group 3: successors 
    -- CP-element group 3: 	40 
    -- CP-element group 3:  members (1) 
      -- CP-element group 3: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257__exit__
      -- 
    -- Element group sendVector_CP_1405_elements(3) is bound as output of CP function.
    -- CP-element group 4:  merge  place  bypass  pipeline-parent 
    -- CP-element group 4: predecessors 
    -- CP-element group 4: successors 
    -- CP-element group 4: 	7 
    -- CP-element group 4:  members (1) 
      -- CP-element group 4: 	 branch_block_stmt_256/do_while_stmt_257/loop_back
      -- 
    -- Element group sendVector_CP_1405_elements(4) is bound as output of CP function.
    -- CP-element group 5:  branch  transition  place  bypass  pipeline-parent 
    -- CP-element group 5: predecessors 
    -- CP-element group 5: 	10 
    -- CP-element group 5: successors 
    -- CP-element group 5: 	38 
    -- CP-element group 5: 	39 
    -- CP-element group 5:  members (3) 
      -- CP-element group 5: 	 branch_block_stmt_256/do_while_stmt_257/condition_done
      -- CP-element group 5: 	 branch_block_stmt_256/do_while_stmt_257/loop_exit/$entry
      -- CP-element group 5: 	 branch_block_stmt_256/do_while_stmt_257/loop_taken/$entry
      -- 
    sendVector_CP_1405_elements(5) <= sendVector_CP_1405_elements(10);
    -- CP-element group 6:  branch  place  bypass  pipeline-parent 
    -- CP-element group 6: predecessors 
    -- CP-element group 6: 	37 
    -- CP-element group 6: successors 
    -- CP-element group 6:  members (1) 
      -- CP-element group 6: 	 branch_block_stmt_256/do_while_stmt_257/loop_body_done
      -- 
    sendVector_CP_1405_elements(6) <= sendVector_CP_1405_elements(37);
    -- CP-element group 7:  transition  bypass  pipeline-parent 
    -- CP-element group 7: predecessors 
    -- CP-element group 7: 	4 
    -- CP-element group 7: successors 
    -- CP-element group 7: 	16 
    -- CP-element group 7:  members (1) 
      -- CP-element group 7: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/back_edge_to_loop_body
      -- 
    sendVector_CP_1405_elements(7) <= sendVector_CP_1405_elements(4);
    -- CP-element group 8:  transition  bypass  pipeline-parent 
    -- CP-element group 8: predecessors 
    -- CP-element group 8: 	2 
    -- CP-element group 8: successors 
    -- CP-element group 8: 	18 
    -- CP-element group 8:  members (1) 
      -- CP-element group 8: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/first_time_through_loop_body
      -- 
    sendVector_CP_1405_elements(8) <= sendVector_CP_1405_elements(2);
    -- CP-element group 9:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 9: predecessors 
    -- CP-element group 9: successors 
    -- CP-element group 9: 	36 
    -- CP-element group 9: 	12 
    -- CP-element group 9: 	13 
    -- CP-element group 9:  members (2) 
      -- CP-element group 9: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/$entry
      -- CP-element group 9: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/loop_body_start
      -- 
    -- Element group sendVector_CP_1405_elements(9) is bound as output of CP function.
    -- CP-element group 10:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 10: predecessors 
    -- CP-element group 10: 	36 
    -- CP-element group 10: 	15 
    -- CP-element group 10: successors 
    -- CP-element group 10: 	5 
    -- CP-element group 10:  members (1) 
      -- CP-element group 10: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/condition_evaluated
      -- 
    condition_evaluated_1429_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " condition_evaluated_1429_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(10), ack => do_while_stmt_257_branch_req_0); -- 
    sendVector_cp_element_group_10: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_10"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(36) & sendVector_CP_1405_elements(15);
      gj_sendVector_cp_element_group_10 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(10), clk => clk, reset => reset); --
    end block;
    -- CP-element group 11:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 11: predecessors 
    -- CP-element group 11: 	12 
    -- CP-element group 11: marked-predecessors 
    -- CP-element group 11: 	15 
    -- CP-element group 11: successors 
    -- CP-element group 11:  members (2) 
      -- CP-element group 11: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/aggregated_phi_sample_req
      -- CP-element group 11: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_sample_start__ps
      -- 
    sendVector_cp_element_group_11: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_11"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(12) & sendVector_CP_1405_elements(15);
      gj_sendVector_cp_element_group_11 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(11), clk => clk, reset => reset); --
    end block;
    -- CP-element group 12:  join  transition  bypass  pipeline-parent 
    -- CP-element group 12: predecessors 
    -- CP-element group 12: 	9 
    -- CP-element group 12: marked-predecessors 
    -- CP-element group 12: 	14 
    -- CP-element group 12: successors 
    -- CP-element group 12: 	11 
    -- CP-element group 12:  members (1) 
      -- CP-element group 12: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_sample_start_
      -- 
    sendVector_cp_element_group_12: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_12"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(9) & sendVector_CP_1405_elements(14);
      gj_sendVector_cp_element_group_12 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(12), clk => clk, reset => reset); --
    end block;
    -- CP-element group 13:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 13: predecessors 
    -- CP-element group 13: 	9 
    -- CP-element group 13: marked-predecessors 
    -- CP-element group 13: 	31 
    -- CP-element group 13: successors 
    -- CP-element group 13:  members (3) 
      -- CP-element group 13: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/aggregated_phi_update_req
      -- CP-element group 13: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_update_start_
      -- CP-element group 13: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_update_start__ps
      -- 
    sendVector_cp_element_group_13: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_13"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(9) & sendVector_CP_1405_elements(31);
      gj_sendVector_cp_element_group_13 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(13), clk => clk, reset => reset); --
    end block;
    -- CP-element group 14:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 14: predecessors 
    -- CP-element group 14: successors 
    -- CP-element group 14: 	37 
    -- CP-element group 14: marked-successors 
    -- CP-element group 14: 	12 
    -- CP-element group 14:  members (3) 
      -- CP-element group 14: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/aggregated_phi_sample_ack
      -- CP-element group 14: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_sample_completed_
      -- CP-element group 14: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_sample_completed__ps
      -- 
    -- Element group sendVector_CP_1405_elements(14) is bound as output of CP function.
    -- CP-element group 15:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 15: predecessors 
    -- CP-element group 15: successors 
    -- CP-element group 15: 	10 
    -- CP-element group 15: 	29 
    -- CP-element group 15: marked-successors 
    -- CP-element group 15: 	11 
    -- CP-element group 15:  members (29) 
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/aggregated_phi_update_ack
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_update_completed_
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_update_completed__ps
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_word_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_root_address_calculated
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_offset_calculated
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_resized_0
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_scaled_0
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_computed_0
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_resize_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_resize_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_resize_0/index_resize_req
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_resize_0/index_resize_ack
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_scale_0/$entry
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_scale_0/$exit
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_scale_0/scale_rename_req
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_index_scale_0/scale_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_final_index_sum_regn/$entry
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_final_index_sum_regn/$exit
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_final_index_sum_regn/req
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_final_index_sum_regn/ack
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_base_plus_offset/$entry
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_base_plus_offset/$exit
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_base_plus_offset/sum_rename_req
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_base_plus_offset/sum_rename_ack
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_word_addrgen/$entry
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_word_addrgen/$exit
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_word_addrgen/root_register_req
      -- CP-element group 15: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_word_addrgen/root_register_ack
      -- 
    -- Element group sendVector_CP_1405_elements(15) is bound as output of CP function.
    -- CP-element group 16:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 16: predecessors 
    -- CP-element group 16: 	7 
    -- CP-element group 16: successors 
    -- CP-element group 16:  members (1) 
      -- CP-element group 16: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_loopback_trigger
      -- 
    sendVector_CP_1405_elements(16) <= sendVector_CP_1405_elements(7);
    -- CP-element group 17:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 17: predecessors 
    -- CP-element group 17: successors 
    -- CP-element group 17:  members (2) 
      -- CP-element group 17: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_loopback_sample_req
      -- CP-element group 17: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_loopback_sample_req_ps
      -- 
    phi_stmt_259_loopback_sample_req_1444_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_259_loopback_sample_req_1444_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(17), ack => phi_stmt_259_req_1); -- 
    -- Element group sendVector_CP_1405_elements(17) is bound as output of CP function.
    -- CP-element group 18:  fork  transition  bypass  pipeline-parent 
    -- CP-element group 18: predecessors 
    -- CP-element group 18: 	8 
    -- CP-element group 18: successors 
    -- CP-element group 18:  members (1) 
      -- CP-element group 18: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_entry_trigger
      -- 
    sendVector_CP_1405_elements(18) <= sendVector_CP_1405_elements(8);
    -- CP-element group 19:  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 19: predecessors 
    -- CP-element group 19: successors 
    -- CP-element group 19:  members (2) 
      -- CP-element group 19: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_entry_sample_req
      -- CP-element group 19: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_entry_sample_req_ps
      -- 
    phi_stmt_259_entry_sample_req_1447_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " phi_stmt_259_entry_sample_req_1447_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(19), ack => phi_stmt_259_req_0); -- 
    -- Element group sendVector_CP_1405_elements(19) is bound as output of CP function.
    -- CP-element group 20:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 20: predecessors 
    -- CP-element group 20: successors 
    -- CP-element group 20:  members (2) 
      -- CP-element group 20: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_phi_mux_ack
      -- CP-element group 20: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/phi_stmt_259_phi_mux_ack_ps
      -- 
    phi_stmt_259_phi_mux_ack_1450_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 20_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => phi_stmt_259_ack_0, ack => sendVector_CP_1405_elements(20)); -- 
    -- CP-element group 21:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 21: predecessors 
    -- CP-element group 21: successors 
    -- CP-element group 21:  members (4) 
      -- CP-element group 21: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_sample_start__ps
      -- CP-element group 21: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_sample_completed__ps
      -- CP-element group 21: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_sample_start_
      -- CP-element group 21: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_sample_completed_
      -- 
    -- Element group sendVector_CP_1405_elements(21) is bound as output of CP function.
    -- CP-element group 22:  join  fork  transition  bypass  pipeline-parent 
    -- CP-element group 22: predecessors 
    -- CP-element group 22: successors 
    -- CP-element group 22: 	24 
    -- CP-element group 22:  members (2) 
      -- CP-element group 22: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_update_start__ps
      -- CP-element group 22: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_update_start_
      -- 
    -- Element group sendVector_CP_1405_elements(22) is bound as output of CP function.
    -- CP-element group 23:  join  transition  bypass  pipeline-parent 
    -- CP-element group 23: predecessors 
    -- CP-element group 23: 	24 
    -- CP-element group 23: successors 
    -- CP-element group 23:  members (1) 
      -- CP-element group 23: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_update_completed__ps
      -- 
    sendVector_CP_1405_elements(23) <= sendVector_CP_1405_elements(24);
    -- CP-element group 24:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 24: predecessors 
    -- CP-element group 24: 	22 
    -- CP-element group 24: successors 
    -- CP-element group 24: 	23 
    -- CP-element group 24:  members (1) 
      -- CP-element group 24: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/type_cast_262_update_completed_
      -- 
    -- Element group sendVector_CP_1405_elements(24) is a control-delay.
    cp_element_24_delay: control_delay_element  generic map(name => " 24_delay", delay_value => 1)  port map(req => sendVector_CP_1405_elements(22), ack => sendVector_CP_1405_elements(24), clk => clk, reset =>reset);
    -- CP-element group 25:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 25: predecessors 
    -- CP-element group 25: successors 
    -- CP-element group 25: 	27 
    -- CP-element group 25:  members (4) 
      -- CP-element group 25: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_sample_start__ps
      -- CP-element group 25: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_sample_start_
      -- CP-element group 25: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Sample/$entry
      -- CP-element group 25: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Sample/req
      -- 
    req_1471_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1471_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(25), ack => nI_273_263_buf_req_0); -- 
    -- Element group sendVector_CP_1405_elements(25) is bound as output of CP function.
    -- CP-element group 26:  join  fork  transition  output  bypass  pipeline-parent 
    -- CP-element group 26: predecessors 
    -- CP-element group 26: successors 
    -- CP-element group 26: 	28 
    -- CP-element group 26:  members (4) 
      -- CP-element group 26: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_update_start__ps
      -- CP-element group 26: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_update_start_
      -- CP-element group 26: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Update/$entry
      -- CP-element group 26: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Update/req
      -- 
    req_1476_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1476_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(26), ack => nI_273_263_buf_req_1); -- 
    -- Element group sendVector_CP_1405_elements(26) is bound as output of CP function.
    -- CP-element group 27:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 27: predecessors 
    -- CP-element group 27: 	25 
    -- CP-element group 27: successors 
    -- CP-element group 27:  members (4) 
      -- CP-element group 27: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_sample_completed__ps
      -- CP-element group 27: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_sample_completed_
      -- CP-element group 27: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Sample/$exit
      -- CP-element group 27: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Sample/ack
      -- 
    ack_1472_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 27_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_273_263_buf_ack_0, ack => sendVector_CP_1405_elements(27)); -- 
    -- CP-element group 28:  join  transition  input  bypass  pipeline-parent 
    -- CP-element group 28: predecessors 
    -- CP-element group 28: 	26 
    -- CP-element group 28: successors 
    -- CP-element group 28:  members (4) 
      -- CP-element group 28: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_update_completed__ps
      -- CP-element group 28: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_update_completed_
      -- CP-element group 28: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Update/$exit
      -- CP-element group 28: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/R_nI_263_Update/ack
      -- 
    ack_1477_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 28_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => nI_273_263_buf_ack_1, ack => sendVector_CP_1405_elements(28)); -- 
    -- CP-element group 29:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 29: predecessors 
    -- CP-element group 29: 	15 
    -- CP-element group 29: marked-predecessors 
    -- CP-element group 29: 	31 
    -- CP-element group 29: successors 
    -- CP-element group 29: 	31 
    -- CP-element group 29:  members (5) 
      -- CP-element group 29: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_sample_start_
      -- CP-element group 29: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/$entry
      -- CP-element group 29: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/$entry
      -- CP-element group 29: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/word_0/$entry
      -- CP-element group 29: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/word_0/rr
      -- 
    rr_1524_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " rr_1524_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(29), ack => array_obj_ref_267_load_0_req_0); -- 
    sendVector_cp_element_group_29: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 1);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_29"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(15) & sendVector_CP_1405_elements(31);
      gj_sendVector_cp_element_group_29 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(29), clk => clk, reset => reset); --
    end block;
    -- CP-element group 30:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 30: predecessors 
    -- CP-element group 30: marked-predecessors 
    -- CP-element group 30: 	34 
    -- CP-element group 30: successors 
    -- CP-element group 30: 	32 
    -- CP-element group 30:  members (5) 
      -- CP-element group 30: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_update_start_
      -- CP-element group 30: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/$entry
      -- CP-element group 30: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/$entry
      -- CP-element group 30: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/word_0/$entry
      -- CP-element group 30: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/word_0/cr
      -- 
    cr_1535_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " cr_1535_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(30), ack => array_obj_ref_267_load_0_req_1); -- 
    sendVector_cp_element_group_30: block -- 
      constant place_capacities: IntegerArray(0 to 0) := (0 => 1);
      constant place_markings: IntegerArray(0 to 0)  := (0 => 1);
      constant place_delays: IntegerArray(0 to 0) := (0 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_30"; 
      signal preds: BooleanArray(1 to 1); -- 
    begin -- 
      preds(1) <= sendVector_CP_1405_elements(34);
      gj_sendVector_cp_element_group_30 : generic_join generic map(name => joinName, number_of_predecessors => 1, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(30), clk => clk, reset => reset); --
    end block;
    -- CP-element group 31:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 31: predecessors 
    -- CP-element group 31: 	29 
    -- CP-element group 31: successors 
    -- CP-element group 31: marked-successors 
    -- CP-element group 31: 	13 
    -- CP-element group 31: 	29 
    -- CP-element group 31:  members (5) 
      -- CP-element group 31: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_sample_completed_
      -- CP-element group 31: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/$exit
      -- CP-element group 31: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/$exit
      -- CP-element group 31: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/word_0/$exit
      -- CP-element group 31: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Sample/word_access_start/word_0/ra
      -- 
    ra_1525_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 31_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_267_load_0_ack_0, ack => sendVector_CP_1405_elements(31)); -- 
    -- CP-element group 32:  transition  input  bypass  pipeline-parent 
    -- CP-element group 32: predecessors 
    -- CP-element group 32: 	30 
    -- CP-element group 32: successors 
    -- CP-element group 32: 	33 
    -- CP-element group 32:  members (9) 
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_update_completed_
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/$exit
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/$exit
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/word_0/$exit
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/word_access_complete/word_0/ca
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/array_obj_ref_267_Merge/$entry
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/array_obj_ref_267_Merge/$exit
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/array_obj_ref_267_Merge/merge_req
      -- CP-element group 32: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/array_obj_ref_267_Update/array_obj_ref_267_Merge/merge_ack
      -- 
    ca_1536_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 32_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => array_obj_ref_267_load_0_ack_1, ack => sendVector_CP_1405_elements(32)); -- 
    -- CP-element group 33:  join  transition  output  bypass  pipeline-parent 
    -- CP-element group 33: predecessors 
    -- CP-element group 33: 	32 
    -- CP-element group 33: marked-predecessors 
    -- CP-element group 33: 	35 
    -- CP-element group 33: successors 
    -- CP-element group 33: 	34 
    -- CP-element group 33:  members (3) 
      -- CP-element group 33: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_sample_start_
      -- CP-element group 33: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Sample/$entry
      -- CP-element group 33: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Sample/req
      -- 
    req_1549_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1549_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(33), ack => WPIPE_out_data_265_inst_req_0); -- 
    sendVector_cp_element_group_33: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 1,1 => 1);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 1);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_33"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(32) & sendVector_CP_1405_elements(35);
      gj_sendVector_cp_element_group_33 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(33), clk => clk, reset => reset); --
    end block;
    -- CP-element group 34:  fork  transition  input  output  bypass  pipeline-parent 
    -- CP-element group 34: predecessors 
    -- CP-element group 34: 	33 
    -- CP-element group 34: successors 
    -- CP-element group 34: 	35 
    -- CP-element group 34: marked-successors 
    -- CP-element group 34: 	30 
    -- CP-element group 34:  members (6) 
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_sample_completed_
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_update_start_
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Sample/$exit
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Sample/ack
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Update/$entry
      -- CP-element group 34: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Update/req
      -- 
    ack_1550_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 34_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_out_data_265_inst_ack_0, ack => sendVector_CP_1405_elements(34)); -- 
    req_1554_symbol_link_to_dp: control_delay_element -- 
      generic map(name => " req_1554_symbol_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => sendVector_CP_1405_elements(34), ack => WPIPE_out_data_265_inst_req_1); -- 
    -- CP-element group 35:  fork  transition  input  bypass  pipeline-parent 
    -- CP-element group 35: predecessors 
    -- CP-element group 35: 	34 
    -- CP-element group 35: successors 
    -- CP-element group 35: 	37 
    -- CP-element group 35: marked-successors 
    -- CP-element group 35: 	33 
    -- CP-element group 35:  members (3) 
      -- CP-element group 35: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_update_completed_
      -- CP-element group 35: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Update/$exit
      -- CP-element group 35: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/WPIPE_out_data_265_Update/ack
      -- 
    ack_1555_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 35_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => WPIPE_out_data_265_inst_ack_1, ack => sendVector_CP_1405_elements(35)); -- 
    -- CP-element group 36:  transition  delay-element  bypass  pipeline-parent 
    -- CP-element group 36: predecessors 
    -- CP-element group 36: 	9 
    -- CP-element group 36: successors 
    -- CP-element group 36: 	10 
    -- CP-element group 36:  members (1) 
      -- CP-element group 36: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/loop_body_delay_to_condition_start
      -- 
    -- Element group sendVector_CP_1405_elements(36) is a control-delay.
    cp_element_36_delay: control_delay_element  generic map(name => " 36_delay", delay_value => 1)  port map(req => sendVector_CP_1405_elements(9), ack => sendVector_CP_1405_elements(36), clk => clk, reset =>reset);
    -- CP-element group 37:  join  transition  bypass  pipeline-parent 
    -- CP-element group 37: predecessors 
    -- CP-element group 37: 	35 
    -- CP-element group 37: 	14 
    -- CP-element group 37: successors 
    -- CP-element group 37: 	6 
    -- CP-element group 37:  members (1) 
      -- CP-element group 37: 	 branch_block_stmt_256/do_while_stmt_257/do_while_stmt_257_loop_body/$exit
      -- 
    sendVector_cp_element_group_37: block -- 
      constant place_capacities: IntegerArray(0 to 1) := (0 => 7,1 => 7);
      constant place_markings: IntegerArray(0 to 1)  := (0 => 0,1 => 0);
      constant place_delays: IntegerArray(0 to 1) := (0 => 0,1 => 0);
      constant joinName: string(1 to 30) := "sendVector_cp_element_group_37"; 
      signal preds: BooleanArray(1 to 2); -- 
    begin -- 
      preds <= sendVector_CP_1405_elements(35) & sendVector_CP_1405_elements(14);
      gj_sendVector_cp_element_group_37 : generic_join generic map(name => joinName, number_of_predecessors => 2, place_capacities => place_capacities, place_markings => place_markings, place_delays => place_delays) -- 
        port map(preds => preds, symbol_out => sendVector_CP_1405_elements(37), clk => clk, reset => reset); --
    end block;
    -- CP-element group 38:  transition  input  bypass  pipeline-parent 
    -- CP-element group 38: predecessors 
    -- CP-element group 38: 	5 
    -- CP-element group 38: successors 
    -- CP-element group 38:  members (2) 
      -- CP-element group 38: 	 branch_block_stmt_256/do_while_stmt_257/loop_exit/$exit
      -- CP-element group 38: 	 branch_block_stmt_256/do_while_stmt_257/loop_exit/ack
      -- 
    ack_1560_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 38_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_257_branch_ack_0, ack => sendVector_CP_1405_elements(38)); -- 
    -- CP-element group 39:  transition  input  bypass  pipeline-parent 
    -- CP-element group 39: predecessors 
    -- CP-element group 39: 	5 
    -- CP-element group 39: successors 
    -- CP-element group 39:  members (2) 
      -- CP-element group 39: 	 branch_block_stmt_256/do_while_stmt_257/loop_taken/$exit
      -- CP-element group 39: 	 branch_block_stmt_256/do_while_stmt_257/loop_taken/ack
      -- 
    ack_1564_symbol_link_from_dp: control_delay_element -- 
      generic map(name => " 39_delay",delay_value => 0)
      port map(clk => clk, reset => reset, req => do_while_stmt_257_branch_ack_1, ack => sendVector_CP_1405_elements(39)); -- 
    -- CP-element group 40:  transition  bypass  pipeline-parent 
    -- CP-element group 40: predecessors 
    -- CP-element group 40: 	3 
    -- CP-element group 40: successors 
    -- CP-element group 40: 	1 
    -- CP-element group 40:  members (1) 
      -- CP-element group 40: 	 branch_block_stmt_256/do_while_stmt_257/$exit
      -- 
    sendVector_CP_1405_elements(40) <= sendVector_CP_1405_elements(3);
    sendVector_do_while_stmt_257_terminator_1565: loop_terminator -- 
      generic map (name => " sendVector_do_while_stmt_257_terminator_1565", max_iterations_in_flight =>7) 
      port map(loop_body_exit => sendVector_CP_1405_elements(6),loop_continue => sendVector_CP_1405_elements(39),loop_terminate => sendVector_CP_1405_elements(38),loop_back => sendVector_CP_1405_elements(4),loop_exit => sendVector_CP_1405_elements(3),clk => clk, reset => reset); -- 
    phi_stmt_259_phi_seq_1478_block : block -- 
      signal triggers, src_sample_reqs, src_sample_acks, src_update_reqs, src_update_acks : BooleanArray(0 to 1);
      signal phi_mux_reqs : BooleanArray(0 to 1); -- 
    begin -- 
      triggers(0)  <= sendVector_CP_1405_elements(18);
      sendVector_CP_1405_elements(21)<= src_sample_reqs(0);
      src_sample_acks(0)  <= sendVector_CP_1405_elements(21);
      sendVector_CP_1405_elements(22)<= src_update_reqs(0);
      src_update_acks(0)  <= sendVector_CP_1405_elements(23);
      sendVector_CP_1405_elements(19) <= phi_mux_reqs(0);
      triggers(1)  <= sendVector_CP_1405_elements(16);
      sendVector_CP_1405_elements(25)<= src_sample_reqs(1);
      src_sample_acks(1)  <= sendVector_CP_1405_elements(27);
      sendVector_CP_1405_elements(26)<= src_update_reqs(1);
      src_update_acks(1)  <= sendVector_CP_1405_elements(28);
      sendVector_CP_1405_elements(17) <= phi_mux_reqs(1);
      phi_stmt_259_phi_seq_1478 : phi_sequencer_v2-- 
        generic map (place_capacity => 7, ntriggers => 2, name => "phi_stmt_259_phi_seq_1478") 
        port map ( -- 
          triggers => triggers, src_sample_starts => src_sample_reqs, 
          src_sample_completes => src_sample_acks, src_update_starts => src_update_reqs, 
          src_update_completes => src_update_acks,
          phi_mux_select_reqs => phi_mux_reqs, 
          phi_sample_req => sendVector_CP_1405_elements(11), 
          phi_sample_ack => sendVector_CP_1405_elements(14), 
          phi_update_req => sendVector_CP_1405_elements(13), 
          phi_update_ack => sendVector_CP_1405_elements(15), 
          phi_mux_ack => sendVector_CP_1405_elements(20), 
          clk => clk, reset => reset -- 
        );
        -- 
    end block;
    entry_tmerge_1430_block : block -- 
      signal preds : BooleanArray(0 to 1);
      begin -- 
        preds(0)  <= sendVector_CP_1405_elements(7);
        preds(1)  <= sendVector_CP_1405_elements(8);
        entry_tmerge_1430 : transition_merge -- 
          generic map(name => " entry_tmerge_1430")
          port map (preds => preds, symbol_out => sendVector_CP_1405_elements(9));
          -- 
    end block;
    --  hookup: inputs to control-path 
    -- hookup: output from control-path 
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal I_259 : std_logic_vector(7 downto 0);
    signal R_I_266_resized : std_logic_vector(4 downto 0);
    signal R_I_266_scaled : std_logic_vector(4 downto 0);
    signal ULT_u8_u1_277_wire : std_logic_vector(0 downto 0);
    signal array_obj_ref_267_data_0 : std_logic_vector(31 downto 0);
    signal array_obj_ref_267_final_offset : std_logic_vector(4 downto 0);
    signal array_obj_ref_267_offset_scale_factor_0 : std_logic_vector(4 downto 0);
    signal array_obj_ref_267_resized_base_address : std_logic_vector(4 downto 0);
    signal array_obj_ref_267_root_address : std_logic_vector(4 downto 0);
    signal array_obj_ref_267_wire : std_logic_vector(31 downto 0);
    signal array_obj_ref_267_word_address_0 : std_logic_vector(4 downto 0);
    signal array_obj_ref_267_word_offset_0 : std_logic_vector(4 downto 0);
    signal konst_271_wire_constant : std_logic_vector(7 downto 0);
    signal konst_276_wire_constant : std_logic_vector(7 downto 0);
    signal nI_273 : std_logic_vector(7 downto 0);
    signal nI_273_263_buffered : std_logic_vector(7 downto 0);
    signal type_cast_262_wire_constant : std_logic_vector(7 downto 0);
    -- 
  begin -- 
    array_obj_ref_267_offset_scale_factor_0 <= "00001";
    array_obj_ref_267_resized_base_address <= "00000";
    array_obj_ref_267_word_offset_0 <= "00000";
    konst_271_wire_constant <= "00000001";
    konst_276_wire_constant <= "00100000";
    type_cast_262_wire_constant <= "00000000";
    phi_stmt_259: Block -- phi operator 
      signal idata: std_logic_vector(15 downto 0);
      signal req: BooleanArray(1 downto 0);
      --
    begin -- 
      idata <= type_cast_262_wire_constant & nI_273_263_buffered;
      req <= phi_stmt_259_req_0 & phi_stmt_259_req_1;
      phi: PhiBase -- 
        generic map( -- 
          name => "phi_stmt_259",
          num_reqs => 2,
          bypass_flag => true,
          data_width => 8) -- 
        port map( -- 
          req => req, 
          ack => phi_stmt_259_ack_0,
          idata => idata,
          odata => I_259,
          clk => clk,
          reset => reset ); -- 
      -- 
    end Block; -- phi operator phi_stmt_259
    nI_273_263_buf_block: block -- 
      signal wreq, wack, rreq, rack: BooleanArray(0 downto 0); 
      -- 
    begin -- 
      wreq(0) <= nI_273_263_buf_req_0;
      nI_273_263_buf_ack_0<= wack(0);
      rreq(0) <= nI_273_263_buf_req_1;
      nI_273_263_buf_ack_1<= rack(0);
      nI_273_263_buf : InterlockBuffer generic map ( -- 
        name => "nI_273_263_buf",
        buffer_size => 1,
        flow_through =>  false ,
        cut_through =>  false ,
        in_data_width => 8,
        out_data_width => 8,
        bypass_flag =>  false 
        -- 
      )port map ( -- 
        write_req => wreq(0), 
        write_ack => wack(0), 
        write_data => nI_273,
        read_req => rreq(0),  
        read_ack => rack(0), 
        read_data => nI_273_263_buffered,
        clk => clk, reset => reset
        -- 
      );
      end block; -- 
    -- equivalence array_obj_ref_267_addr_0
    process(array_obj_ref_267_root_address) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_267_root_address;
      ov(4 downto 0) := iv;
      array_obj_ref_267_word_address_0 <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_267_gather_scatter
    process(array_obj_ref_267_data_0) --
      variable iv : std_logic_vector(31 downto 0);
      variable ov : std_logic_vector(31 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_267_data_0;
      ov(31 downto 0) := iv;
      array_obj_ref_267_wire <= ov(31 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_267_index_0_rename
    process(R_I_266_resized) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_266_resized;
      ov(4 downto 0) := iv;
      R_I_266_scaled <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_267_index_0_resize
    process(I_259) --
      variable iv : std_logic_vector(7 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := I_259;
      ov := iv(4 downto 0);
      R_I_266_resized <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_267_index_offset
    process(R_I_266_scaled) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := R_I_266_scaled;
      ov(4 downto 0) := iv;
      array_obj_ref_267_final_offset <= ov(4 downto 0);
      --
    end process;
    -- equivalence array_obj_ref_267_root_address_inst
    process(array_obj_ref_267_final_offset) --
      variable iv : std_logic_vector(4 downto 0);
      variable ov : std_logic_vector(4 downto 0);
      -- 
    begin -- 
      ov := (others => '0');
      iv := array_obj_ref_267_final_offset;
      ov(4 downto 0) := iv;
      array_obj_ref_267_root_address <= ov(4 downto 0);
      --
    end process;
    do_while_stmt_257_branch: Block -- 
      -- branch-block
      signal condition_sig : std_logic_vector(0 downto 0);
      begin 
      condition_sig <= ULT_u8_u1_277_wire;
      branch_instance: BranchBase -- 
        generic map( name => "do_while_stmt_257_branch", condition_width => 1,  bypass_flag => true)
        port map( -- 
          condition => condition_sig,
          req => do_while_stmt_257_branch_req_0,
          ack0 => do_while_stmt_257_branch_ack_0,
          ack1 => do_while_stmt_257_branch_ack_1,
          clk => clk,
          reset => reset); -- 
      --
    end Block; -- branch-block
    -- binary operator ADD_u8_u8_272_inst
    process(I_259) -- 
      variable tmp_var : std_logic_vector(7 downto 0); -- 
    begin -- 
      ApIntAdd_proc(I_259, konst_271_wire_constant, tmp_var);
      nI_273 <= tmp_var; --
    end process;
    -- binary operator ULT_u8_u1_277_inst
    process(nI_273) -- 
      variable tmp_var : std_logic_vector(0 downto 0); -- 
    begin -- 
      ApIntUlt_proc(nI_273, konst_276_wire_constant, tmp_var);
      ULT_u8_u1_277_wire <= tmp_var; --
    end process;
    -- shared load operator group (0) : array_obj_ref_267_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(4 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      signal reqR_unguarded, ackR_unguarded, reqL_unguarded, ackL_unguarded : BooleanArray( 0 downto 0);
      signal reqL_unregulated, ackL_unregulated: BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant outBUFs : IntegerArray(0 downto 0) := (0 => 2);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 4);
      -- 
    begin -- 
      reqL_unguarded(0) <= array_obj_ref_267_load_0_req_0;
      array_obj_ref_267_load_0_ack_0 <= ackL_unguarded(0);
      reqR_unguarded(0) <= array_obj_ref_267_load_0_req_1;
      array_obj_ref_267_load_0_ack_1 <= ackR_unguarded(0);
      guard_vector(0)  <=  '1';
      reqL <= reqL_unregulated;
      ackL_unregulated <= ackL;
      LoadGroup0_gI: SplitGuardInterface generic map(name => "LoadGroup0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => false,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => reqL_unguarded,
        sr_out => reqL_unregulated,
        sa_in => ackL_unregulated,
        sa_out => ackL_unguarded,
        cr_in => reqR_unguarded,
        cr_out => reqR,
        ca_in => ackR,
        ca_out => ackR_unguarded,
        guards => guard_vector); -- 
      data_in <= array_obj_ref_267_word_address_0;
      array_obj_ref_267_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqSharedWithInputBuffers -- 
        generic map ( name => "LoadGroup0", addr_width => 5,
        num_reqs => 1,
        tag_length => 1,
        time_stamp_width => 17,
        min_clock_period => false,
        input_buffering => inBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_4_lr_req(0),
          mack => memory_space_4_lr_ack(0),
          maddr => memory_space_4_lr_addr(4 downto 0),
          mtag => memory_space_4_lr_tag(17 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( name => "LoadGroup0 load-complete ",
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        detailed_buffering_per_output => outBUFs, 
        no_arbitration => false)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_4_lc_req(0),
          mack => memory_space_4_lc_ack(0),
          mdata => memory_space_4_lc_data(31 downto 0),
          mtag => memory_space_4_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared outport operator group (0) : WPIPE_out_data_265_inst 
    OutportGroup_0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal sample_req, sample_ack : BooleanArray( 0 downto 0);
      signal update_req, update_ack : BooleanArray( 0 downto 0);
      signal sample_req_unguarded, sample_ack_unguarded : BooleanArray( 0 downto 0);
      signal update_req_unguarded, update_ack_unguarded : BooleanArray( 0 downto 0);
      signal guard_vector : std_logic_vector( 0 downto 0);
      constant inBUFs : IntegerArray(0 downto 0) := (0 => 0);
      constant guardFlags : BooleanArray(0 downto 0) := (0 => false);
      constant guardBuffering: IntegerArray(0 downto 0)  := (0 => 2);
      -- 
    begin -- 
      sample_req_unguarded(0) <= WPIPE_out_data_265_inst_req_0;
      WPIPE_out_data_265_inst_ack_0 <= sample_ack_unguarded(0);
      update_req_unguarded(0) <= WPIPE_out_data_265_inst_req_1;
      WPIPE_out_data_265_inst_ack_1 <= update_ack_unguarded(0);
      guard_vector(0)  <=  '1';
      data_in <= array_obj_ref_267_wire;
      out_data_write_0_gI: SplitGuardInterface generic map(name => "out_data_write_0_gI", nreqs => 1, buffering => guardBuffering, use_guards => guardFlags,  sample_only => true,  update_only => false) -- 
        port map(clk => clk, reset => reset,
        sr_in => sample_req_unguarded,
        sr_out => sample_req,
        sa_in => sample_ack,
        sa_out => sample_ack_unguarded,
        cr_in => update_req_unguarded,
        cr_out => update_req,
        ca_in => update_ack,
        ca_out => update_ack_unguarded,
        guards => guard_vector); -- 
      out_data_write_0: OutputPortRevised -- 
        generic map ( name => "out_data", data_width => 32, num_reqs => 1, input_buffering => inBUFs, full_rate => true,
        no_arbitration => false)
        port map (--
          sample_req => sample_req , 
          sample_ack => sample_ack , 
          update_req => update_req , 
          update_ack => update_ack , 
          data => data_in, 
          oreq => out_data_pipe_write_req(0),
          oack => out_data_pipe_write_ack(0),
          odata => out_data_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  -- 
end sendVector_arch;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
library aHiR_ieee_proposed;
use aHiR_ieee_proposed.math_utility_pkg.all;
use aHiR_ieee_proposed.fixed_pkg.all;
use aHiR_ieee_proposed.float_pkg.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
use ahir.floatoperatorpackage.all;
use ahir.utilities.all;
library work;
use work.ahir_system_global_package.all;
entity ahir_system is  -- system 
  port (-- 
    clk : in std_logic;
    reset : in std_logic;
    in_data_pipe_write_data: in std_logic_vector(31 downto 0);
    in_data_pipe_write_req : in std_logic_vector(0 downto 0);
    in_data_pipe_write_ack : out std_logic_vector(0 downto 0);
    out_data_pipe_read_data: out std_logic_vector(31 downto 0);
    out_data_pipe_read_req : in std_logic_vector(0 downto 0);
    out_data_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture ahir_system_arch  of ahir_system is -- system-architecture 
  -- interface signals to connect to memory space memory_space_0
  signal memory_space_0_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_0_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_0_lr_addr : std_logic_vector(8 downto 0);
  signal memory_space_0_lr_tag : std_logic_vector(17 downto 0);
  signal memory_space_0_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_0_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_0_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_0_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_0_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_0_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_0_sr_addr : std_logic_vector(8 downto 0);
  signal memory_space_0_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_0_sr_tag : std_logic_vector(17 downto 0);
  signal memory_space_0_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_0_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_0_sc_tag :  std_logic_vector(0 downto 0);
  -- interface signals to connect to memory space memory_space_1
  signal memory_space_1_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_1_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_1_lr_addr : std_logic_vector(8 downto 0);
  signal memory_space_1_lr_tag : std_logic_vector(17 downto 0);
  signal memory_space_1_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_1_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_1_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_1_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_1_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_1_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_1_sr_addr : std_logic_vector(8 downto 0);
  signal memory_space_1_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_1_sr_tag : std_logic_vector(17 downto 0);
  signal memory_space_1_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_1_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_1_sc_tag :  std_logic_vector(0 downto 0);
  -- interface signals to connect to memory space memory_space_2
  signal memory_space_2_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_2_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_2_lr_addr : std_logic_vector(3 downto 0);
  signal memory_space_2_lr_tag : std_logic_vector(17 downto 0);
  signal memory_space_2_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_2_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_2_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_2_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_2_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_2_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_2_sr_addr : std_logic_vector(3 downto 0);
  signal memory_space_2_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_2_sr_tag : std_logic_vector(17 downto 0);
  signal memory_space_2_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_2_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_2_sc_tag :  std_logic_vector(0 downto 0);
  -- interface signals to connect to memory space memory_space_3
  signal memory_space_3_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_3_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_3_lr_addr : std_logic_vector(3 downto 0);
  signal memory_space_3_lr_tag : std_logic_vector(17 downto 0);
  signal memory_space_3_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_3_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_3_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_3_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_3_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_3_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_3_sr_addr : std_logic_vector(3 downto 0);
  signal memory_space_3_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_3_sr_tag : std_logic_vector(17 downto 0);
  signal memory_space_3_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_3_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_3_sc_tag :  std_logic_vector(0 downto 0);
  -- interface signals to connect to memory space memory_space_4
  signal memory_space_4_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_4_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_4_lr_addr : std_logic_vector(4 downto 0);
  signal memory_space_4_lr_tag : std_logic_vector(17 downto 0);
  signal memory_space_4_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_4_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_4_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_4_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_4_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_4_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_4_sr_addr : std_logic_vector(4 downto 0);
  signal memory_space_4_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_4_sr_tag : std_logic_vector(17 downto 0);
  signal memory_space_4_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_4_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_4_sc_tag :  std_logic_vector(0 downto 0);
  -- declarations related to module dotP
  component dotP is -- 
    generic (tag_length : integer); 
    port ( -- 
      R : in  std_logic_vector(7 downto 0);
      result : out  std_logic_vector(31 downto 0);
      memory_space_1_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_1_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_lr_addr : out  std_logic_vector(8 downto 0);
      memory_space_1_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_1_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_1_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_1_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_0_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lr_addr : out  std_logic_vector(8 downto 0);
      memory_space_0_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_0_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_0_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_2_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_2_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_2_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_2_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_2_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_2_lc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_3_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_3_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_lr_addr : out  std_logic_vector(3 downto 0);
      memory_space_3_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_3_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_3_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_3_lc_tag :  in  std_logic_vector(0 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module dotP
  signal dotP_R :  std_logic_vector(7 downto 0);
  signal dotP_result :  std_logic_vector(31 downto 0);
  signal dotP_in_args    : std_logic_vector(7 downto 0);
  signal dotP_out_args   : std_logic_vector(31 downto 0);
  signal dotP_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal dotP_tag_out   : std_logic_vector(1 downto 0);
  signal dotP_start_req : std_logic;
  signal dotP_start_ack : std_logic;
  signal dotP_fin_req   : std_logic;
  signal dotP_fin_ack : std_logic;
  -- caller side aggregated signals for module dotP
  signal dotP_call_reqs: std_logic_vector(0 downto 0);
  signal dotP_call_acks: std_logic_vector(0 downto 0);
  signal dotP_return_reqs: std_logic_vector(0 downto 0);
  signal dotP_return_acks: std_logic_vector(0 downto 0);
  signal dotP_call_data: std_logic_vector(7 downto 0);
  signal dotP_call_tag: std_logic_vector(0 downto 0);
  signal dotP_return_data: std_logic_vector(31 downto 0);
  signal dotP_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module multiplyMatrixVector
  component multiplyMatrixVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_4_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_4_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_sr_addr : out  std_logic_vector(4 downto 0);
      memory_space_4_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_4_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_4_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_4_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_sc_tag :  in  std_logic_vector(0 downto 0);
      dotP_call_reqs : out  std_logic_vector(0 downto 0);
      dotP_call_acks : in   std_logic_vector(0 downto 0);
      dotP_call_data : out  std_logic_vector(7 downto 0);
      dotP_call_tag  :  out  std_logic_vector(0 downto 0);
      dotP_return_reqs : out  std_logic_vector(0 downto 0);
      dotP_return_acks : in   std_logic_vector(0 downto 0);
      dotP_return_data : in   std_logic_vector(31 downto 0);
      dotP_return_tag :  in   std_logic_vector(0 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module multiplyMatrixVector
  signal multiplyMatrixVector_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal multiplyMatrixVector_tag_out   : std_logic_vector(1 downto 0);
  signal multiplyMatrixVector_start_req : std_logic;
  signal multiplyMatrixVector_start_ack : std_logic;
  signal multiplyMatrixVector_fin_req   : std_logic;
  signal multiplyMatrixVector_fin_ack : std_logic;
  -- caller side aggregated signals for module multiplyMatrixVector
  signal multiplyMatrixVector_call_reqs: std_logic_vector(0 downto 0);
  signal multiplyMatrixVector_call_acks: std_logic_vector(0 downto 0);
  signal multiplyMatrixVector_return_reqs: std_logic_vector(0 downto 0);
  signal multiplyMatrixVector_return_acks: std_logic_vector(0 downto 0);
  signal multiplyMatrixVector_call_tag: std_logic_vector(0 downto 0);
  signal multiplyMatrixVector_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module mvp_daemon
  component mvp_daemon is -- 
    generic (tag_length : integer); 
    port ( -- 
      multiplyMatrixVector_call_reqs : out  std_logic_vector(0 downto 0);
      multiplyMatrixVector_call_acks : in   std_logic_vector(0 downto 0);
      multiplyMatrixVector_call_tag  :  out  std_logic_vector(0 downto 0);
      multiplyMatrixVector_return_reqs : out  std_logic_vector(0 downto 0);
      multiplyMatrixVector_return_acks : in   std_logic_vector(0 downto 0);
      multiplyMatrixVector_return_tag :  in   std_logic_vector(0 downto 0);
      readMatrix_call_reqs : out  std_logic_vector(0 downto 0);
      readMatrix_call_acks : in   std_logic_vector(0 downto 0);
      readMatrix_call_tag  :  out  std_logic_vector(0 downto 0);
      readMatrix_return_reqs : out  std_logic_vector(0 downto 0);
      readMatrix_return_acks : in   std_logic_vector(0 downto 0);
      readMatrix_return_tag :  in   std_logic_vector(0 downto 0);
      readVector_call_reqs : out  std_logic_vector(0 downto 0);
      readVector_call_acks : in   std_logic_vector(0 downto 0);
      readVector_call_tag  :  out  std_logic_vector(0 downto 0);
      readVector_return_reqs : out  std_logic_vector(0 downto 0);
      readVector_return_acks : in   std_logic_vector(0 downto 0);
      readVector_return_tag :  in   std_logic_vector(0 downto 0);
      sendVector_call_reqs : out  std_logic_vector(0 downto 0);
      sendVector_call_acks : in   std_logic_vector(0 downto 0);
      sendVector_call_tag  :  out  std_logic_vector(0 downto 0);
      sendVector_return_reqs : out  std_logic_vector(0 downto 0);
      sendVector_return_acks : in   std_logic_vector(0 downto 0);
      sendVector_return_tag :  in   std_logic_vector(0 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module mvp_daemon
  signal mvp_daemon_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal mvp_daemon_tag_out   : std_logic_vector(1 downto 0);
  signal mvp_daemon_start_req : std_logic;
  signal mvp_daemon_start_ack : std_logic;
  signal mvp_daemon_fin_req   : std_logic;
  signal mvp_daemon_fin_ack : std_logic;
  -- declarations related to module readMatrix
  component readMatrix is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_1_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_1_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_sr_addr : out  std_logic_vector(8 downto 0);
      memory_space_1_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_1_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_1_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_1_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_1_sc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_0_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sr_addr : out  std_logic_vector(8 downto 0);
      memory_space_0_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_0_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_0_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_0_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_0_sc_tag :  in  std_logic_vector(0 downto 0);
      in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
      in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
      in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module readMatrix
  signal readMatrix_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal readMatrix_tag_out   : std_logic_vector(1 downto 0);
  signal readMatrix_start_req : std_logic;
  signal readMatrix_start_ack : std_logic;
  signal readMatrix_fin_req   : std_logic;
  signal readMatrix_fin_ack : std_logic;
  -- caller side aggregated signals for module readMatrix
  signal readMatrix_call_reqs: std_logic_vector(0 downto 0);
  signal readMatrix_call_acks: std_logic_vector(0 downto 0);
  signal readMatrix_return_reqs: std_logic_vector(0 downto 0);
  signal readMatrix_return_acks: std_logic_vector(0 downto 0);
  signal readMatrix_call_tag: std_logic_vector(0 downto 0);
  signal readMatrix_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module readVector
  component readVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_2_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_2_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_2_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_2_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_2_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_2_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_2_sc_tag :  in  std_logic_vector(0 downto 0);
      memory_space_3_sr_req : out  std_logic_vector(0 downto 0);
      memory_space_3_sr_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_sr_addr : out  std_logic_vector(3 downto 0);
      memory_space_3_sr_data : out  std_logic_vector(31 downto 0);
      memory_space_3_sr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_3_sc_req : out  std_logic_vector(0 downto 0);
      memory_space_3_sc_ack : in   std_logic_vector(0 downto 0);
      memory_space_3_sc_tag :  in  std_logic_vector(0 downto 0);
      in_data_pipe_read_req : out  std_logic_vector(0 downto 0);
      in_data_pipe_read_ack : in   std_logic_vector(0 downto 0);
      in_data_pipe_read_data : in   std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module readVector
  signal readVector_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal readVector_tag_out   : std_logic_vector(1 downto 0);
  signal readVector_start_req : std_logic;
  signal readVector_start_ack : std_logic;
  signal readVector_fin_req   : std_logic;
  signal readVector_fin_ack : std_logic;
  -- caller side aggregated signals for module readVector
  signal readVector_call_reqs: std_logic_vector(0 downto 0);
  signal readVector_call_acks: std_logic_vector(0 downto 0);
  signal readVector_return_reqs: std_logic_vector(0 downto 0);
  signal readVector_return_acks: std_logic_vector(0 downto 0);
  signal readVector_call_tag: std_logic_vector(0 downto 0);
  signal readVector_return_tag: std_logic_vector(0 downto 0);
  -- declarations related to module sendVector
  component sendVector is -- 
    generic (tag_length : integer); 
    port ( -- 
      memory_space_4_lr_req : out  std_logic_vector(0 downto 0);
      memory_space_4_lr_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_lr_addr : out  std_logic_vector(4 downto 0);
      memory_space_4_lr_tag :  out  std_logic_vector(17 downto 0);
      memory_space_4_lc_req : out  std_logic_vector(0 downto 0);
      memory_space_4_lc_ack : in   std_logic_vector(0 downto 0);
      memory_space_4_lc_data : in   std_logic_vector(31 downto 0);
      memory_space_4_lc_tag :  in  std_logic_vector(0 downto 0);
      out_data_pipe_write_req : out  std_logic_vector(0 downto 0);
      out_data_pipe_write_ack : in   std_logic_vector(0 downto 0);
      out_data_pipe_write_data : out  std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(tag_length-1 downto 0);
      tag_out: out std_logic_vector(tag_length-1 downto 0) ;
      clk : in std_logic;
      reset : in std_logic;
      start_req : in std_logic;
      start_ack : out std_logic;
      fin_req : in std_logic;
      fin_ack   : out std_logic-- 
    );
    -- 
  end component;
  -- argument signals for module sendVector
  signal sendVector_tag_in    : std_logic_vector(1 downto 0) := (others => '0');
  signal sendVector_tag_out   : std_logic_vector(1 downto 0);
  signal sendVector_start_req : std_logic;
  signal sendVector_start_ack : std_logic;
  signal sendVector_fin_req   : std_logic;
  signal sendVector_fin_ack : std_logic;
  -- caller side aggregated signals for module sendVector
  signal sendVector_call_reqs: std_logic_vector(0 downto 0);
  signal sendVector_call_acks: std_logic_vector(0 downto 0);
  signal sendVector_return_reqs: std_logic_vector(0 downto 0);
  signal sendVector_return_acks: std_logic_vector(0 downto 0);
  signal sendVector_call_tag: std_logic_vector(0 downto 0);
  signal sendVector_return_tag: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe in_data
  signal in_data_pipe_read_data: std_logic_vector(63 downto 0);
  signal in_data_pipe_read_req: std_logic_vector(1 downto 0);
  signal in_data_pipe_read_ack: std_logic_vector(1 downto 0);
  -- aggregate signals for write to pipe out_data
  signal out_data_pipe_write_data: std_logic_vector(31 downto 0);
  signal out_data_pipe_write_req: std_logic_vector(0 downto 0);
  signal out_data_pipe_write_ack: std_logic_vector(0 downto 0);
  -- 
begin -- 
  -- module dotP
  dotP_R <= dotP_in_args(7 downto 0);
  dotP_out_args <= dotP_result ;
  -- call arbiter for module dotP
  dotP_arbiter: SplitCallArbiter -- 
    generic map( --
      name => "SplitCallArbiter", num_reqs => 1,
      call_data_width => 8,
      return_data_width => 32,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => dotP_call_reqs,
      call_acks => dotP_call_acks,
      return_reqs => dotP_return_reqs,
      return_acks => dotP_return_acks,
      call_data  => dotP_call_data,
      call_tag  => dotP_call_tag,
      return_tag  => dotP_return_tag,
      call_mtag => dotP_tag_in,
      return_mtag => dotP_tag_out,
      return_data =>dotP_return_data,
      call_mreq => dotP_start_req,
      call_mack => dotP_start_ack,
      return_mreq => dotP_fin_req,
      return_mack => dotP_fin_ack,
      call_mdata => dotP_in_args,
      return_mdata => dotP_out_args,
      clk => clk, 
      reset => reset --
    ); --
  dotP_instance:dotP-- 
    generic map(tag_length => 2)
    port map(-- 
      R => dotP_R,
      result => dotP_result,
      start_req => dotP_start_req,
      start_ack => dotP_start_ack,
      fin_req => dotP_fin_req,
      fin_ack => dotP_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_lr_req => memory_space_0_lr_req(0 downto 0),
      memory_space_0_lr_ack => memory_space_0_lr_ack(0 downto 0),
      memory_space_0_lr_addr => memory_space_0_lr_addr(8 downto 0),
      memory_space_0_lr_tag => memory_space_0_lr_tag(17 downto 0),
      memory_space_0_lc_req => memory_space_0_lc_req(0 downto 0),
      memory_space_0_lc_ack => memory_space_0_lc_ack(0 downto 0),
      memory_space_0_lc_data => memory_space_0_lc_data(31 downto 0),
      memory_space_0_lc_tag => memory_space_0_lc_tag(0 downto 0),
      memory_space_1_lr_req => memory_space_1_lr_req(0 downto 0),
      memory_space_1_lr_ack => memory_space_1_lr_ack(0 downto 0),
      memory_space_1_lr_addr => memory_space_1_lr_addr(8 downto 0),
      memory_space_1_lr_tag => memory_space_1_lr_tag(17 downto 0),
      memory_space_1_lc_req => memory_space_1_lc_req(0 downto 0),
      memory_space_1_lc_ack => memory_space_1_lc_ack(0 downto 0),
      memory_space_1_lc_data => memory_space_1_lc_data(31 downto 0),
      memory_space_1_lc_tag => memory_space_1_lc_tag(0 downto 0),
      memory_space_2_lr_req => memory_space_2_lr_req(0 downto 0),
      memory_space_2_lr_ack => memory_space_2_lr_ack(0 downto 0),
      memory_space_2_lr_addr => memory_space_2_lr_addr(3 downto 0),
      memory_space_2_lr_tag => memory_space_2_lr_tag(17 downto 0),
      memory_space_2_lc_req => memory_space_2_lc_req(0 downto 0),
      memory_space_2_lc_ack => memory_space_2_lc_ack(0 downto 0),
      memory_space_2_lc_data => memory_space_2_lc_data(31 downto 0),
      memory_space_2_lc_tag => memory_space_2_lc_tag(0 downto 0),
      memory_space_3_lr_req => memory_space_3_lr_req(0 downto 0),
      memory_space_3_lr_ack => memory_space_3_lr_ack(0 downto 0),
      memory_space_3_lr_addr => memory_space_3_lr_addr(3 downto 0),
      memory_space_3_lr_tag => memory_space_3_lr_tag(17 downto 0),
      memory_space_3_lc_req => memory_space_3_lc_req(0 downto 0),
      memory_space_3_lc_ack => memory_space_3_lc_ack(0 downto 0),
      memory_space_3_lc_data => memory_space_3_lc_data(31 downto 0),
      memory_space_3_lc_tag => memory_space_3_lc_tag(0 downto 0),
      tag_in => dotP_tag_in,
      tag_out => dotP_tag_out-- 
    ); -- 
  -- module multiplyMatrixVector
  -- call arbiter for module multiplyMatrixVector
  multiplyMatrixVector_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => multiplyMatrixVector_call_reqs,
      call_acks => multiplyMatrixVector_call_acks,
      return_reqs => multiplyMatrixVector_return_reqs,
      return_acks => multiplyMatrixVector_return_acks,
      call_tag  => multiplyMatrixVector_call_tag,
      return_tag  => multiplyMatrixVector_return_tag,
      call_mtag => multiplyMatrixVector_tag_in,
      return_mtag => multiplyMatrixVector_tag_out,
      call_mreq => multiplyMatrixVector_start_req,
      call_mack => multiplyMatrixVector_start_ack,
      return_mreq => multiplyMatrixVector_fin_req,
      return_mack => multiplyMatrixVector_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  multiplyMatrixVector_instance:multiplyMatrixVector-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => multiplyMatrixVector_start_req,
      start_ack => multiplyMatrixVector_start_ack,
      fin_req => multiplyMatrixVector_fin_req,
      fin_ack => multiplyMatrixVector_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_4_sr_req => memory_space_4_sr_req(0 downto 0),
      memory_space_4_sr_ack => memory_space_4_sr_ack(0 downto 0),
      memory_space_4_sr_addr => memory_space_4_sr_addr(4 downto 0),
      memory_space_4_sr_data => memory_space_4_sr_data(31 downto 0),
      memory_space_4_sr_tag => memory_space_4_sr_tag(17 downto 0),
      memory_space_4_sc_req => memory_space_4_sc_req(0 downto 0),
      memory_space_4_sc_ack => memory_space_4_sc_ack(0 downto 0),
      memory_space_4_sc_tag => memory_space_4_sc_tag(0 downto 0),
      dotP_call_reqs => dotP_call_reqs(0 downto 0),
      dotP_call_acks => dotP_call_acks(0 downto 0),
      dotP_call_data => dotP_call_data(7 downto 0),
      dotP_call_tag => dotP_call_tag(0 downto 0),
      dotP_return_reqs => dotP_return_reqs(0 downto 0),
      dotP_return_acks => dotP_return_acks(0 downto 0),
      dotP_return_data => dotP_return_data(31 downto 0),
      dotP_return_tag => dotP_return_tag(0 downto 0),
      tag_in => multiplyMatrixVector_tag_in,
      tag_out => multiplyMatrixVector_tag_out-- 
    ); -- 
  -- module mvp_daemon
  mvp_daemon_instance:mvp_daemon-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => mvp_daemon_start_req,
      start_ack => mvp_daemon_start_ack,
      fin_req => mvp_daemon_fin_req,
      fin_ack => mvp_daemon_fin_ack,
      clk => clk,
      reset => reset,
      multiplyMatrixVector_call_reqs => multiplyMatrixVector_call_reqs(0 downto 0),
      multiplyMatrixVector_call_acks => multiplyMatrixVector_call_acks(0 downto 0),
      multiplyMatrixVector_call_tag => multiplyMatrixVector_call_tag(0 downto 0),
      multiplyMatrixVector_return_reqs => multiplyMatrixVector_return_reqs(0 downto 0),
      multiplyMatrixVector_return_acks => multiplyMatrixVector_return_acks(0 downto 0),
      multiplyMatrixVector_return_tag => multiplyMatrixVector_return_tag(0 downto 0),
      readMatrix_call_reqs => readMatrix_call_reqs(0 downto 0),
      readMatrix_call_acks => readMatrix_call_acks(0 downto 0),
      readMatrix_call_tag => readMatrix_call_tag(0 downto 0),
      readMatrix_return_reqs => readMatrix_return_reqs(0 downto 0),
      readMatrix_return_acks => readMatrix_return_acks(0 downto 0),
      readMatrix_return_tag => readMatrix_return_tag(0 downto 0),
      readVector_call_reqs => readVector_call_reqs(0 downto 0),
      readVector_call_acks => readVector_call_acks(0 downto 0),
      readVector_call_tag => readVector_call_tag(0 downto 0),
      readVector_return_reqs => readVector_return_reqs(0 downto 0),
      readVector_return_acks => readVector_return_acks(0 downto 0),
      readVector_return_tag => readVector_return_tag(0 downto 0),
      sendVector_call_reqs => sendVector_call_reqs(0 downto 0),
      sendVector_call_acks => sendVector_call_acks(0 downto 0),
      sendVector_call_tag => sendVector_call_tag(0 downto 0),
      sendVector_return_reqs => sendVector_return_reqs(0 downto 0),
      sendVector_return_acks => sendVector_return_acks(0 downto 0),
      sendVector_return_tag => sendVector_return_tag(0 downto 0),
      tag_in => mvp_daemon_tag_in,
      tag_out => mvp_daemon_tag_out-- 
    ); -- 
  -- module will be run forever 
  mvp_daemon_tag_in <= (others => '0');
  mvp_daemon_auto_run: auto_run generic map(use_delay => true)  port map(clk => clk, reset => reset, start_req => mvp_daemon_start_req, start_ack => mvp_daemon_start_ack,  fin_req => mvp_daemon_fin_req,  fin_ack => mvp_daemon_fin_ack);
  -- module readMatrix
  -- call arbiter for module readMatrix
  readMatrix_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => readMatrix_call_reqs,
      call_acks => readMatrix_call_acks,
      return_reqs => readMatrix_return_reqs,
      return_acks => readMatrix_return_acks,
      call_tag  => readMatrix_call_tag,
      return_tag  => readMatrix_return_tag,
      call_mtag => readMatrix_tag_in,
      return_mtag => readMatrix_tag_out,
      call_mreq => readMatrix_start_req,
      call_mack => readMatrix_start_ack,
      return_mreq => readMatrix_fin_req,
      return_mack => readMatrix_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  readMatrix_instance:readMatrix-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => readMatrix_start_req,
      start_ack => readMatrix_start_ack,
      fin_req => readMatrix_fin_req,
      fin_ack => readMatrix_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_0_sr_req => memory_space_0_sr_req(0 downto 0),
      memory_space_0_sr_ack => memory_space_0_sr_ack(0 downto 0),
      memory_space_0_sr_addr => memory_space_0_sr_addr(8 downto 0),
      memory_space_0_sr_data => memory_space_0_sr_data(31 downto 0),
      memory_space_0_sr_tag => memory_space_0_sr_tag(17 downto 0),
      memory_space_0_sc_req => memory_space_0_sc_req(0 downto 0),
      memory_space_0_sc_ack => memory_space_0_sc_ack(0 downto 0),
      memory_space_0_sc_tag => memory_space_0_sc_tag(0 downto 0),
      memory_space_1_sr_req => memory_space_1_sr_req(0 downto 0),
      memory_space_1_sr_ack => memory_space_1_sr_ack(0 downto 0),
      memory_space_1_sr_addr => memory_space_1_sr_addr(8 downto 0),
      memory_space_1_sr_data => memory_space_1_sr_data(31 downto 0),
      memory_space_1_sr_tag => memory_space_1_sr_tag(17 downto 0),
      memory_space_1_sc_req => memory_space_1_sc_req(0 downto 0),
      memory_space_1_sc_ack => memory_space_1_sc_ack(0 downto 0),
      memory_space_1_sc_tag => memory_space_1_sc_tag(0 downto 0),
      in_data_pipe_read_req => in_data_pipe_read_req(1 downto 1),
      in_data_pipe_read_ack => in_data_pipe_read_ack(1 downto 1),
      in_data_pipe_read_data => in_data_pipe_read_data(63 downto 32),
      tag_in => readMatrix_tag_in,
      tag_out => readMatrix_tag_out-- 
    ); -- 
  -- module readVector
  -- call arbiter for module readVector
  readVector_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => readVector_call_reqs,
      call_acks => readVector_call_acks,
      return_reqs => readVector_return_reqs,
      return_acks => readVector_return_acks,
      call_tag  => readVector_call_tag,
      return_tag  => readVector_return_tag,
      call_mtag => readVector_tag_in,
      return_mtag => readVector_tag_out,
      call_mreq => readVector_start_req,
      call_mack => readVector_start_ack,
      return_mreq => readVector_fin_req,
      return_mack => readVector_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  readVector_instance:readVector-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => readVector_start_req,
      start_ack => readVector_start_ack,
      fin_req => readVector_fin_req,
      fin_ack => readVector_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_2_sr_req => memory_space_2_sr_req(0 downto 0),
      memory_space_2_sr_ack => memory_space_2_sr_ack(0 downto 0),
      memory_space_2_sr_addr => memory_space_2_sr_addr(3 downto 0),
      memory_space_2_sr_data => memory_space_2_sr_data(31 downto 0),
      memory_space_2_sr_tag => memory_space_2_sr_tag(17 downto 0),
      memory_space_2_sc_req => memory_space_2_sc_req(0 downto 0),
      memory_space_2_sc_ack => memory_space_2_sc_ack(0 downto 0),
      memory_space_2_sc_tag => memory_space_2_sc_tag(0 downto 0),
      memory_space_3_sr_req => memory_space_3_sr_req(0 downto 0),
      memory_space_3_sr_ack => memory_space_3_sr_ack(0 downto 0),
      memory_space_3_sr_addr => memory_space_3_sr_addr(3 downto 0),
      memory_space_3_sr_data => memory_space_3_sr_data(31 downto 0),
      memory_space_3_sr_tag => memory_space_3_sr_tag(17 downto 0),
      memory_space_3_sc_req => memory_space_3_sc_req(0 downto 0),
      memory_space_3_sc_ack => memory_space_3_sc_ack(0 downto 0),
      memory_space_3_sc_tag => memory_space_3_sc_tag(0 downto 0),
      in_data_pipe_read_req => in_data_pipe_read_req(0 downto 0),
      in_data_pipe_read_ack => in_data_pipe_read_ack(0 downto 0),
      in_data_pipe_read_data => in_data_pipe_read_data(31 downto 0),
      tag_in => readVector_tag_in,
      tag_out => readVector_tag_out-- 
    ); -- 
  -- module sendVector
  -- call arbiter for module sendVector
  sendVector_arbiter: SplitCallArbiterNoInargsNoOutargs -- 
    generic map( --
      name => "SplitCallArbiterNoInargsNoOutargs", num_reqs => 1,
      callee_tag_length => 1,
      caller_tag_length => 1--
    )
    port map(-- 
      call_reqs => sendVector_call_reqs,
      call_acks => sendVector_call_acks,
      return_reqs => sendVector_return_reqs,
      return_acks => sendVector_return_acks,
      call_tag  => sendVector_call_tag,
      return_tag  => sendVector_return_tag,
      call_mtag => sendVector_tag_in,
      return_mtag => sendVector_tag_out,
      call_mreq => sendVector_start_req,
      call_mack => sendVector_start_ack,
      return_mreq => sendVector_fin_req,
      return_mack => sendVector_fin_ack,
      clk => clk, 
      reset => reset --
    ); --
  sendVector_instance:sendVector-- 
    generic map(tag_length => 2)
    port map(-- 
      start_req => sendVector_start_req,
      start_ack => sendVector_start_ack,
      fin_req => sendVector_fin_req,
      fin_ack => sendVector_fin_ack,
      clk => clk,
      reset => reset,
      memory_space_4_lr_req => memory_space_4_lr_req(0 downto 0),
      memory_space_4_lr_ack => memory_space_4_lr_ack(0 downto 0),
      memory_space_4_lr_addr => memory_space_4_lr_addr(4 downto 0),
      memory_space_4_lr_tag => memory_space_4_lr_tag(17 downto 0),
      memory_space_4_lc_req => memory_space_4_lc_req(0 downto 0),
      memory_space_4_lc_ack => memory_space_4_lc_ack(0 downto 0),
      memory_space_4_lc_data => memory_space_4_lc_data(31 downto 0),
      memory_space_4_lc_tag => memory_space_4_lc_tag(0 downto 0),
      out_data_pipe_write_req => out_data_pipe_write_req(0 downto 0),
      out_data_pipe_write_ack => out_data_pipe_write_ack(0 downto 0),
      out_data_pipe_write_data => out_data_pipe_write_data(31 downto 0),
      tag_in => sendVector_tag_in,
      tag_out => sendVector_tag_out-- 
    ); -- 
  in_data_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe in_data",
      num_reads => 2,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => in_data_pipe_read_req,
      read_ack => in_data_pipe_read_ack,
      read_data => in_data_pipe_read_data,
      write_req => in_data_pipe_write_req,
      write_ack => in_data_pipe_write_ack,
      write_data => in_data_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  out_data_Pipe: PipeBase -- 
    generic map( -- 
      name => "pipe out_data",
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      lifo_mode => false,
      full_rate => false,
      shift_register_mode => false,
      bypass => false,
      depth => 0 --
    )
    port map( -- 
      read_req => out_data_pipe_read_req,
      read_ack => out_data_pipe_read_ack,
      read_data => out_data_pipe_read_data,
      write_req => out_data_pipe_write_req,
      write_ack => out_data_pipe_write_ack,
      write_data => out_data_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  MemorySpace_memory_space_0: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_0",
      num_loads => 1,
      num_stores => 1,
      addr_width => 9,
      data_width => 32,
      tag_width => 1,
      time_stamp_width => 17,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 9,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_0_lr_addr,
      lr_req_in => memory_space_0_lr_req,
      lr_ack_out => memory_space_0_lr_ack,
      lr_tag_in => memory_space_0_lr_tag,
      lc_req_in => memory_space_0_lc_req,
      lc_ack_out => memory_space_0_lc_ack,
      lc_data_out => memory_space_0_lc_data,
      lc_tag_out => memory_space_0_lc_tag,
      sr_addr_in => memory_space_0_sr_addr,
      sr_data_in => memory_space_0_sr_data,
      sr_req_in => memory_space_0_sr_req,
      sr_ack_out => memory_space_0_sr_ack,
      sr_tag_in => memory_space_0_sr_tag,
      sc_req_in=> memory_space_0_sc_req,
      sc_ack_out => memory_space_0_sc_ack,
      sc_tag_out => memory_space_0_sc_tag,
      clock => clk,
      reset => reset); -- 
  MemorySpace_memory_space_1: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_1",
      num_loads => 1,
      num_stores => 1,
      addr_width => 9,
      data_width => 32,
      tag_width => 1,
      time_stamp_width => 17,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 9,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_1_lr_addr,
      lr_req_in => memory_space_1_lr_req,
      lr_ack_out => memory_space_1_lr_ack,
      lr_tag_in => memory_space_1_lr_tag,
      lc_req_in => memory_space_1_lc_req,
      lc_ack_out => memory_space_1_lc_ack,
      lc_data_out => memory_space_1_lc_data,
      lc_tag_out => memory_space_1_lc_tag,
      sr_addr_in => memory_space_1_sr_addr,
      sr_data_in => memory_space_1_sr_data,
      sr_req_in => memory_space_1_sr_req,
      sr_ack_out => memory_space_1_sr_ack,
      sr_tag_in => memory_space_1_sr_tag,
      sc_req_in=> memory_space_1_sc_req,
      sc_ack_out => memory_space_1_sc_ack,
      sc_tag_out => memory_space_1_sc_tag,
      clock => clk,
      reset => reset); -- 
  MemorySpace_memory_space_2: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_2",
      num_loads => 1,
      num_stores => 1,
      addr_width => 4,
      data_width => 32,
      tag_width => 1,
      time_stamp_width => 17,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 4,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_2_lr_addr,
      lr_req_in => memory_space_2_lr_req,
      lr_ack_out => memory_space_2_lr_ack,
      lr_tag_in => memory_space_2_lr_tag,
      lc_req_in => memory_space_2_lc_req,
      lc_ack_out => memory_space_2_lc_ack,
      lc_data_out => memory_space_2_lc_data,
      lc_tag_out => memory_space_2_lc_tag,
      sr_addr_in => memory_space_2_sr_addr,
      sr_data_in => memory_space_2_sr_data,
      sr_req_in => memory_space_2_sr_req,
      sr_ack_out => memory_space_2_sr_ack,
      sr_tag_in => memory_space_2_sr_tag,
      sc_req_in=> memory_space_2_sc_req,
      sc_ack_out => memory_space_2_sc_ack,
      sc_tag_out => memory_space_2_sc_tag,
      clock => clk,
      reset => reset); -- 
  MemorySpace_memory_space_3: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_3",
      num_loads => 1,
      num_stores => 1,
      addr_width => 4,
      data_width => 32,
      tag_width => 1,
      time_stamp_width => 17,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 4,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_3_lr_addr,
      lr_req_in => memory_space_3_lr_req,
      lr_ack_out => memory_space_3_lr_ack,
      lr_tag_in => memory_space_3_lr_tag,
      lc_req_in => memory_space_3_lc_req,
      lc_ack_out => memory_space_3_lc_ack,
      lc_data_out => memory_space_3_lc_data,
      lc_tag_out => memory_space_3_lc_tag,
      sr_addr_in => memory_space_3_sr_addr,
      sr_data_in => memory_space_3_sr_data,
      sr_req_in => memory_space_3_sr_req,
      sr_ack_out => memory_space_3_sr_ack,
      sr_tag_in => memory_space_3_sr_tag,
      sc_req_in=> memory_space_3_sc_req,
      sc_ack_out => memory_space_3_sc_ack,
      sc_tag_out => memory_space_3_sc_tag,
      clock => clk,
      reset => reset); -- 
  MemorySpace_memory_space_4: ordered_memory_subsystem -- 
    generic map(-- 
      name => "memory_space_4",
      num_loads => 1,
      num_stores => 1,
      addr_width => 5,
      data_width => 32,
      tag_width => 1,
      time_stamp_width => 17,
      number_of_banks => 1,
      mux_degree => 2,
      demux_degree => 2,
      base_bank_addr_width => 5,
      base_bank_data_width => 32
      ) -- 
    port map(-- 
      lr_addr_in => memory_space_4_lr_addr,
      lr_req_in => memory_space_4_lr_req,
      lr_ack_out => memory_space_4_lr_ack,
      lr_tag_in => memory_space_4_lr_tag,
      lc_req_in => memory_space_4_lc_req,
      lc_ack_out => memory_space_4_lc_ack,
      lc_data_out => memory_space_4_lc_data,
      lc_tag_out => memory_space_4_lc_tag,
      sr_addr_in => memory_space_4_sr_addr,
      sr_data_in => memory_space_4_sr_data,
      sr_req_in => memory_space_4_sr_req,
      sr_ack_out => memory_space_4_sr_ack,
      sr_tag_in => memory_space_4_sr_tag,
      sc_req_in=> memory_space_4_sc_req,
      sc_ack_out => memory_space_4_sc_ack,
      sc_tag_out => memory_space_4_sc_tag,
      clock => clk,
      reset => reset); -- 
  -- 
end ahir_system_arch;
