#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>
#include <BitVectors.h>
#include <pipeHandler.h>
// object initialization 

#define _dotP_inner_inarg_prep_macro__ __declare_static_bit_vector(R,8);\
bit_vector_cast_to_bit_vector(0, &(R), &((*__pR)));\
__declare_static_bit_vector(result,32);\

#define _dotP_branch_block_stmt_15_c_export_decl_macro_ __declare_static_bit_vector(nval_even__nval_even,32);\
__declare_static_bit_vector(nval_odd__nval_odd,32);\
__declare_static_bit_vector(C,8);\
__declare_static_bit_vector(val_even,32);\
__declare_static_bit_vector(val_odd,32);\
__declare_static_bit_vector(Cr,7);\
__declare_static_bit_vector(a_rc_even,32);\
__declare_static_bit_vector(a_rc_odd,32);\
__declare_static_bit_vector(xval_even,32);\
__declare_static_bit_vector(xval_odd,32);\
__declare_static_bit_vector(nval_even,32);\
__declare_static_bit_vector(nval_odd,32);\
__declare_static_bit_vector(nC,8);\


#define _dotP_merge_stmt_17_c_preamble_macro_ uint8_t merge_stmt_17_entry_flag;\
merge_stmt_17_entry_flag = do_while_entry_flag;\
goto merge_stmt_17_run;\
merge_stmt_17_run: ;\

#define _dotP_phi_stmt_18_c_macro_ __declare_static_bit_vector(konst_20,8);\
bit_vector_clear(&konst_20);\
__declare_static_bit_vector(type_cast_21,8);\
bit_vector_clear(&type_cast_21);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(C), &(nC));\
}\
else {\
__declare_static_bit_vector(konst_20,8);\
bit_vector_clear(&konst_20);\
__declare_static_bit_vector(type_cast_21,8);\
bit_vector_clear(&type_cast_21);\
bit_vector_clear(&konst_20);\
bit_vector_bitcast_to_bit_vector( &(type_cast_21), &(konst_20));\
bit_vector_cast_to_bit_vector(0, &(C), &(type_cast_21));\
}\
;

#define _dotP_phi_stmt_23_c_macro_ __declare_static_bit_vector(konst_26,32);\
bit_vector_clear(&konst_26);\
__declare_static_bit_vector(type_cast_27,32);\
bit_vector_clear(&type_cast_27);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_even), &(nval_even));\
}\
else {\
__declare_static_bit_vector(konst_26,32);\
bit_vector_clear(&konst_26);\
__declare_static_bit_vector(type_cast_27,32);\
bit_vector_clear(&type_cast_27);\
bit_vector_clear(&konst_26);\
bit_vector_bitcast_to_bit_vector( &(type_cast_27), &(konst_26));\
bit_vector_cast_to_bit_vector(0, &(val_even), &(type_cast_27));\
}\
;

#define _dotP_phi_stmt_28_c_macro_ __declare_static_bit_vector(konst_30,32);\
bit_vector_clear(&konst_30);\
__declare_static_bit_vector(type_cast_31,32);\
bit_vector_clear(&type_cast_31);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_odd), &(nval_odd));\
}\
else {\
__declare_static_bit_vector(konst_30,32);\
bit_vector_clear(&konst_30);\
__declare_static_bit_vector(type_cast_31,32);\
bit_vector_clear(&type_cast_31);\
bit_vector_clear(&konst_30);\
bit_vector_bitcast_to_bit_vector( &(type_cast_31), &(konst_30));\
bit_vector_cast_to_bit_vector(0, &(val_odd), &(type_cast_31));\
}\
;
;

#define _dotP_merge_stmt_17_c_postamble_macro_ merge_stmt_17_entry_flag = 0;

#define _dotP_assign_stmt_38_c_macro_ __declare_static_bit_vector(slice_37,7);\
bit_vector_slice(&(C), &(slice_37), 1);\
bit_vector_cast_to_bit_vector(0, &(Cr), &(slice_37));\
;

#define _dotP_assign_stmt_43_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_even), &((A_0[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_assign_stmt_48_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_odd), &((A_1[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_assign_stmt_52_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_even), &((x_0[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_assign_stmt_56_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_odd), &((x_1[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_assign_stmt_63_c_macro_ __declare_static_bit_vector(MUL_u32_u32_61,32);\
__declare_static_bit_vector(ADD_u32_u32_62,32);\
bit_vector_mul( &(a_rc_even), &(xval_even), &(MUL_u32_u32_61));\
bit_vector_plus( &(val_even), &(MUL_u32_u32_61), &(ADD_u32_u32_62));\
bit_vector_cast_to_bit_vector(0, &(nval_even), &(ADD_u32_u32_62));\
;

#define _dotP_stmt_68_c_macro_ uint32_t _dotP_stmt_68_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_stmt_68_c_macro___print_counter,"even");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_68_c_macro___print_counter,"val_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_68_c_macro___print_counter,"a_rc_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_68_c_macro___print_counter,"xval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_68_c_macro___print_counter,"nval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_even)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_assign_stmt_75_c_macro_ __declare_static_bit_vector(MUL_u32_u32_73,32);\
__declare_static_bit_vector(ADD_u32_u32_74,32);\
bit_vector_mul( &(a_rc_odd), &(xval_odd), &(MUL_u32_u32_73));\
bit_vector_plus( &(val_odd), &(MUL_u32_u32_73), &(ADD_u32_u32_74));\
bit_vector_cast_to_bit_vector(0, &(nval_odd), &(ADD_u32_u32_74));\
;

#define _dotP_stmt_80_c_macro_ uint32_t _dotP_stmt_80_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_stmt_80_c_macro___print_counter,"odd");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_80_c_macro___print_counter,"val_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_80_c_macro___print_counter,"a_rc_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_80_c_macro___print_counter,"xval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_stmt_80_c_macro___print_counter,"nval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_odd)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_assign_stmt_85_c_macro_ __declare_static_bit_vector(konst_83,8);\
bit_vector_clear(&konst_83);\
konst_83.val.byte_array[0] = 2;\
__declare_static_bit_vector(ADD_u8_u8_84,8);\
bit_vector_clear(&konst_83);\
konst_83.val.byte_array[0] = 2;\
bit_vector_plus( &(C), &(konst_83), &(ADD_u8_u8_84));\
bit_vector_cast_to_bit_vector(0, &(nC), &(ADD_u8_u8_84));\
;
;

#define _dotP_branch_block_stmt_15_c_export_apply_macro_ bit_vector_cast_to_bit_vector(0, &(nval_even__nval_even), &(nval_even));\
bit_vector_cast_to_bit_vector(0, &(nval_odd__nval_odd), &(nval_odd));\
;

#define _dotP_assign_stmt_96_c_macro_ __declare_static_bit_vector(ADD_u32_u32_95,32);\
bit_vector_plus( &(nval_even__nval_even), &(nval_odd__nval_odd), &(ADD_u32_u32_95));\
bit_vector_cast_to_bit_vector(0, &(result), &(ADD_u32_u32_95));\
;

#define _dotP_inner_outarg_prep_macro__ bit_vector_cast_to_bit_vector(0, &((*__presult)), &(result));\
;

#define _dotP_outer_arg_decl_macro__ __declare_static_bit_vector(__R, 8);\
bit_vector_assign_uint64(0, &__R, R);\
__declare_static_bit_vector(__result, 32);\
;

#define _dotP_outer_op_xfer_macro__  *result =  bit_vector_to_uint64(0, &__result);\
;

#define _global_storage_initializer__inner_inarg_prep_macro__ 
#define _global_storage_initializer__inner_outarg_prep_macro__ ;

#define _global_storage_initializer__outer_arg_decl_macro__ ;

#define _global_storage_initializer__outer_op_xfer_macro__ ;

#define _multiplyMatrixVector_inner_inarg_prep_macro__ 
#define _multiplyMatrixVector_branch_block_stmt_102_c_export_decl_macro_ __declare_static_bit_vector(R,8);\
__declare_static_bit_vector(val,32);\
__declare_static_bit_vector(nR,8);\


#define _multiplyMatrixVector_merge_stmt_103_c_preamble_macro_ uint8_t merge_stmt_103_entry_flag;\
merge_stmt_103_entry_flag = 1;\
uint8_t loopback_102_flag = 0;\
goto merge_stmt_103_run;\
loopback_102: loopback_102_flag = 1;\
goto merge_stmt_103_run;\
merge_stmt_103_run: ;\

#define _multiplyMatrixVector_phi_stmt_104_c_macro_ __declare_static_bit_vector(konst_106,8);\
bit_vector_clear(&konst_106);\
__declare_static_bit_vector(type_cast_107,8);\
bit_vector_clear(&type_cast_107);\
if(loopback_102_flag) {\
bit_vector_cast_to_bit_vector(0, &(R), &(nR));\
}\
else {\
__declare_static_bit_vector(konst_106,8);\
bit_vector_clear(&konst_106);\
__declare_static_bit_vector(type_cast_107,8);\
bit_vector_clear(&type_cast_107);\
bit_vector_clear(&konst_106);\
bit_vector_bitcast_to_bit_vector( &(type_cast_107), &(konst_106));\
bit_vector_cast_to_bit_vector(0, &(R), &(type_cast_107));\
}\
;
;

#define _multiplyMatrixVector_merge_stmt_103_c_postamble_macro_ loopback_102_flag = 0;\
merge_stmt_103_entry_flag = 0;

#define _multiplyMatrixVector_call_stmt_112_c_macro_ _dotP_( &(R), &(val));\
;

#define _multiplyMatrixVector_assign_stmt_116_c_macro_ bit_vector_cast_to_bit_vector(0, &((y[bit_vector_to_uint64(0, &R)])), &(val));\
;

#define _multiplyMatrixVector_assign_stmt_121_c_macro_ __declare_static_bit_vector(konst_119,8);\
bit_vector_clear(&konst_119);\
konst_119.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_120,8);\
bit_vector_clear(&konst_119);\
konst_119.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_119), &(ADD_u8_u8_120));\
bit_vector_cast_to_bit_vector(0, &(nR), &(ADD_u8_u8_120));\
;
;

#define _multiplyMatrixVector_branch_block_stmt_102_c_export_apply_macro_ ;

#define _multiplyMatrixVector_inner_outarg_prep_macro__ ;

#define _multiplyMatrixVector_outer_arg_decl_macro__ ;

#define _multiplyMatrixVector_outer_op_xfer_macro__ ;

#define _mvp_daemon_inner_inarg_prep_macro__ 
#define _mvp_daemon_call_stmt_275_c_macro_ _readMatrix_();\
;

#define _mvp_daemon_branch_block_stmt_276_c_export_decl_macro_ 

#define _mvp_daemon_merge_stmt_277_c_preamble_macro_ uint8_t merge_stmt_277_entry_flag;\
merge_stmt_277_entry_flag = 1;\
uint8_t loopback_276_flag = 0;\
goto merge_stmt_277_run;\
loopback_276: loopback_276_flag = 1;\
goto merge_stmt_277_run;\
merge_stmt_277_run: ;\
;

#define _mvp_daemon_merge_stmt_277_c_postamble_macro_ loopback_276_flag = 0;\
merge_stmt_277_entry_flag = 0;

#define _mvp_daemon_call_stmt_278_c_macro_ _readVector_();\
;

#define _mvp_daemon_call_stmt_279_c_macro_ _multiplyMatrixVector_();\
;

#define _mvp_daemon_call_stmt_280_c_macro_ _sendVector_();\
;
;

#define _mvp_daemon_branch_block_stmt_276_c_export_apply_macro_ ;

#define _mvp_daemon_inner_outarg_prep_macro__ ;

#define _mvp_daemon_outer_arg_decl_macro__ ;

#define _mvp_daemon_outer_op_xfer_macro__ ;

#define _readMatrix_inner_inarg_prep_macro__ 
#define _readMatrix_branch_block_stmt_131_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\
__declare_static_bit_vector(J,8);\
__declare_static_bit_vector(nJ,8);\
__declare_static_bit_vector(odd_idx,1);\
__declare_static_bit_vector(Jr,7);\
__declare_static_bit_vector(aval,32);\


#define _readMatrix_merge_stmt_132_c_preamble_macro_ uint8_t merge_stmt_132_entry_flag;\
merge_stmt_132_entry_flag = 1;\
uint8_t outer_loopback_131_flag = 0;\
goto merge_stmt_132_run;\
outer_loopback_131: outer_loopback_131_flag = 1;\
goto merge_stmt_132_run;\
merge_stmt_132_run: ;\

#define _readMatrix_phi_stmt_133_c_macro_ __declare_static_bit_vector(konst_135,8);\
bit_vector_clear(&konst_135);\
__declare_static_bit_vector(type_cast_136,8);\
bit_vector_clear(&type_cast_136);\
if(outer_loopback_131_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_135,8);\
bit_vector_clear(&konst_135);\
__declare_static_bit_vector(type_cast_136,8);\
bit_vector_clear(&type_cast_136);\
bit_vector_clear(&konst_135);\
bit_vector_bitcast_to_bit_vector( &(type_cast_136), &(konst_135));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_136));\
}\
;
;

#define _readMatrix_merge_stmt_132_c_postamble_macro_ outer_loopback_131_flag = 0;\
merge_stmt_132_entry_flag = 0;

#define _readMatrix_assign_stmt_143_c_macro_ __declare_static_bit_vector(konst_141,8);\
bit_vector_clear(&konst_141);\
konst_141.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_142,8);\
bit_vector_clear(&konst_141);\
konst_141.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_141), &(ADD_u8_u8_142));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_142));\
;

#define _readMatrix_merge_stmt_144_c_preamble_macro_ uint8_t merge_stmt_144_entry_flag;\
merge_stmt_144_entry_flag = 1;\
uint8_t inner_loopback_131_flag = 0;\
goto merge_stmt_144_run;\
inner_loopback_131: inner_loopback_131_flag = 1;\
goto merge_stmt_144_run;\
merge_stmt_144_run: ;\

#define _readMatrix_phi_stmt_145_c_macro_ __declare_static_bit_vector(konst_147,8);\
bit_vector_clear(&konst_147);\
__declare_static_bit_vector(type_cast_148,8);\
bit_vector_clear(&type_cast_148);\
if(inner_loopback_131_flag) {\
bit_vector_cast_to_bit_vector(0, &(J), &(nJ));\
}\
else {\
__declare_static_bit_vector(konst_147,8);\
bit_vector_clear(&konst_147);\
__declare_static_bit_vector(type_cast_148,8);\
bit_vector_clear(&type_cast_148);\
bit_vector_clear(&konst_147);\
bit_vector_bitcast_to_bit_vector( &(type_cast_148), &(konst_147));\
bit_vector_cast_to_bit_vector(0, &(J), &(type_cast_148));\
}\
;
;

#define _readMatrix_merge_stmt_144_c_postamble_macro_ inner_loopback_131_flag = 0;\
merge_stmt_144_entry_flag = 0;

#define _readMatrix_assign_stmt_155_c_macro_ __declare_static_bit_vector(konst_153,8);\
bit_vector_clear(&konst_153);\
konst_153.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_154,8);\
bit_vector_clear(&konst_153);\
konst_153.val.byte_array[0] = 1;\
bit_vector_plus( &(J), &(konst_153), &(ADD_u8_u8_154));\
bit_vector_cast_to_bit_vector(0, &(nJ), &(ADD_u8_u8_154));\
;

#define _readMatrix_assign_stmt_160_c_macro_ __declare_static_bit_vector(konst_158,8);\
bit_vector_clear(&konst_158);\
__declare_static_bit_vector(BITSEL_u8_u1_159,1);\
bit_vector_clear(&konst_158);\
bit_vector_bitsel( &(J), &(konst_158), &(BITSEL_u8_u1_159));\
bit_vector_cast_to_bit_vector(0, &(odd_idx), &(BITSEL_u8_u1_159));\
;

#define _readMatrix_assign_stmt_164_c_macro_ __declare_static_bit_vector(slice_163,7);\
bit_vector_slice(&(J), &(slice_163), 1);\
bit_vector_cast_to_bit_vector(0, &(Jr), &(slice_163));\
;

#define _readMatrix_assign_stmt_167_c_macro_ __declare_static_bit_vector(RPIPE_in_data_166,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_166));\
bit_vector_cast_to_bit_vector(0, &(aval), &(RPIPE_in_data_166));\
;

#define _readMatrix_assign_stmt_173_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((A_1[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_179_c_macro_ if (bit_vector_to_uint64(0, &odd_idx)) {\
uint32_t _readMatrix_stmt_179_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_odd>\t%s\n",_readMatrix_stmt_179_c_macro___print_counter,"odd_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_179_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_179_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_179_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_179_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readMatrix_assign_stmt_185_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (!bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((A_0[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_191_c_macro_ if (!bit_vector_to_uint64(0, &odd_idx)) {\
uint32_t _readMatrix_stmt_191_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_even>\t%s\n",_readMatrix_stmt_191_c_macro___print_counter,"even_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_191_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_191_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_191_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_191_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};
;

#define _readMatrix_branch_block_stmt_131_c_export_apply_macro_ ;

#define _readMatrix_inner_outarg_prep_macro__ ;

#define _readMatrix_outer_arg_decl_macro__ ;

#define _readMatrix_outer_op_xfer_macro__ ;

#define _readVector_inner_inarg_prep_macro__ 
#define _readVector_branch_block_stmt_207_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(odd_idx,1);\
__declare_static_bit_vector(I_idx,7);\
__declare_static_bit_vector(temp_val,32);\
__declare_static_bit_vector(nI,8);\


#define _readVector_merge_stmt_209_c_preamble_macro_ uint8_t merge_stmt_209_entry_flag;\
merge_stmt_209_entry_flag = do_while_entry_flag;\
goto merge_stmt_209_run;\
merge_stmt_209_run: ;\

#define _readVector_phi_stmt_210_c_macro_ __declare_static_bit_vector(konst_212,8);\
bit_vector_clear(&konst_212);\
__declare_static_bit_vector(type_cast_213,8);\
bit_vector_clear(&type_cast_213);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_212,8);\
bit_vector_clear(&konst_212);\
__declare_static_bit_vector(type_cast_213,8);\
bit_vector_clear(&type_cast_213);\
bit_vector_clear(&konst_212);\
bit_vector_bitcast_to_bit_vector( &(type_cast_213), &(konst_212));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_213));\
}\
;
;

#define _readVector_merge_stmt_209_c_postamble_macro_ merge_stmt_209_entry_flag = 0;

#define _readVector_assign_stmt_220_c_macro_ __declare_static_bit_vector(konst_218,8);\
bit_vector_clear(&konst_218);\
__declare_static_bit_vector(BITSEL_u8_u1_219,1);\
bit_vector_clear(&konst_218);\
bit_vector_bitsel( &(I), &(konst_218), &(BITSEL_u8_u1_219));\
bit_vector_cast_to_bit_vector(0, &(odd_idx), &(BITSEL_u8_u1_219));\
;

#define _readVector_assign_stmt_224_c_macro_ __declare_static_bit_vector(slice_223,7);\
bit_vector_slice(&(I), &(slice_223), 1);\
bit_vector_cast_to_bit_vector(0, &(I_idx), &(slice_223));\
;

#define _readVector_assign_stmt_227_c_macro_ __declare_static_bit_vector(RPIPE_in_data_226,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_226));\
bit_vector_cast_to_bit_vector(0, &(temp_val), &(RPIPE_in_data_226));\
;

#define _readVector_assign_stmt_232_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((x_1[bit_vector_to_uint64(0, &I_idx)])), &(temp_val));\
}
;

#define _readVector_assign_stmt_237_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (!bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((x_0[bit_vector_to_uint64(0, &I_idx)])), &(temp_val));\
}
;

#define _readVector_assign_stmt_242_c_macro_ __declare_static_bit_vector(konst_240,8);\
bit_vector_clear(&konst_240);\
konst_240.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_241,8);\
bit_vector_clear(&konst_240);\
konst_240.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_240), &(ADD_u8_u8_241));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_241));\
;
;

#define _readVector_branch_block_stmt_207_c_export_apply_macro_ ;

#define _readVector_inner_outarg_prep_macro__ ;

#define _readVector_outer_arg_decl_macro__ ;

#define _readVector_outer_op_xfer_macro__ ;

#define _sendVector_inner_inarg_prep_macro__ 
#define _sendVector_branch_block_stmt_250_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\


#define _sendVector_merge_stmt_252_c_preamble_macro_ uint8_t merge_stmt_252_entry_flag;\
merge_stmt_252_entry_flag = do_while_entry_flag;\
goto merge_stmt_252_run;\
merge_stmt_252_run: ;\

#define _sendVector_phi_stmt_253_c_macro_ __declare_static_bit_vector(konst_255,8);\
bit_vector_clear(&konst_255);\
__declare_static_bit_vector(type_cast_256,8);\
bit_vector_clear(&type_cast_256);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_255,8);\
bit_vector_clear(&konst_255);\
__declare_static_bit_vector(type_cast_256,8);\
bit_vector_clear(&type_cast_256);\
bit_vector_clear(&konst_255);\
bit_vector_bitcast_to_bit_vector( &(type_cast_256), &(konst_255));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_256));\
}\
;
;

#define _sendVector_merge_stmt_252_c_postamble_macro_ merge_stmt_252_entry_flag = 0;

#define _sendVector_assign_stmt_262_c_macro_ write_bit_vector_to_pipe("out_data",&((y[bit_vector_to_uint64(0, &I)])));\
;

#define _sendVector_assign_stmt_267_c_macro_ __declare_static_bit_vector(konst_265,8);\
bit_vector_clear(&konst_265);\
konst_265.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_266,8);\
bit_vector_clear(&konst_265);\
konst_265.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_265), &(ADD_u8_u8_266));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_266));\
;
;

#define _sendVector_branch_block_stmt_250_c_export_apply_macro_ ;

#define _sendVector_inner_outarg_prep_macro__ ;

#define _sendVector_outer_arg_decl_macro__ ;

#define _sendVector_outer_op_xfer_macro__ ;
