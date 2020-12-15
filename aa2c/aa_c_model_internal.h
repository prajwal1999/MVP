#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>
#include <BitVectors.h>
#include <pipeHandler.h>
// object initialization 

#define _dotP_even_inner_inarg_prep_macro__ __declare_static_bit_vector(R,8);\
bit_vector_cast_to_bit_vector(0, &(R), &((*__pR)));\
__declare_static_bit_vector(result,32);\

#define _dotP_even_branch_block_stmt_15_c_export_decl_macro_ __declare_static_bit_vector(nval_even__nval_even,32);\
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


#define _dotP_even_merge_stmt_17_c_preamble_macro_ uint8_t merge_stmt_17_entry_flag;\
merge_stmt_17_entry_flag = do_while_entry_flag;\
goto merge_stmt_17_run;\
merge_stmt_17_run: ;\

#define _dotP_even_phi_stmt_18_c_macro_ __declare_static_bit_vector(konst_20,8);\
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

#define _dotP_even_phi_stmt_23_c_macro_ __declare_static_bit_vector(konst_26,32);\
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

#define _dotP_even_phi_stmt_28_c_macro_ __declare_static_bit_vector(konst_30,32);\
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

#define _dotP_even_merge_stmt_17_c_postamble_macro_ merge_stmt_17_entry_flag = 0;

#define _dotP_even_assign_stmt_38_c_macro_ __declare_static_bit_vector(slice_37,7);\
bit_vector_slice(&(C), &(slice_37), 1);\
bit_vector_cast_to_bit_vector(0, &(Cr), &(slice_37));\
;

#define _dotP_even_assign_stmt_43_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_even), &((A_0[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_48_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_odd), &((A_1[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_52_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_even), &((x_0[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_56_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_odd), &((x_1[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_63_c_macro_ __declare_static_bit_vector(MUL_u32_u32_61,32);\
__declare_static_bit_vector(ADD_u32_u32_62,32);\
bit_vector_mul( &(a_rc_even), &(xval_even), &(MUL_u32_u32_61));\
bit_vector_plus( &(val_even), &(MUL_u32_u32_61), &(ADD_u32_u32_62));\
bit_vector_cast_to_bit_vector(0, &(nval_even), &(ADD_u32_u32_62));\
;

#define _dotP_even_stmt_68_c_macro_ uint32_t _dotP_even_stmt_68_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_even_stmt_68_c_macro___print_counter,"even");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_68_c_macro___print_counter,"val_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_68_c_macro___print_counter,"a_rc_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_68_c_macro___print_counter,"xval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_68_c_macro___print_counter,"nval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_even)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_75_c_macro_ __declare_static_bit_vector(MUL_u32_u32_73,32);\
__declare_static_bit_vector(ADD_u32_u32_74,32);\
bit_vector_mul( &(a_rc_odd), &(xval_odd), &(MUL_u32_u32_73));\
bit_vector_plus( &(val_odd), &(MUL_u32_u32_73), &(ADD_u32_u32_74));\
bit_vector_cast_to_bit_vector(0, &(nval_odd), &(ADD_u32_u32_74));\
;

#define _dotP_even_stmt_80_c_macro_ uint32_t _dotP_even_stmt_80_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_even_stmt_80_c_macro___print_counter,"odd");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_80_c_macro___print_counter,"val_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_80_c_macro___print_counter,"a_rc_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_80_c_macro___print_counter,"xval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_even_stmt_80_c_macro___print_counter,"nval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_odd)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_85_c_macro_ __declare_static_bit_vector(konst_83,8);\
bit_vector_clear(&konst_83);\
konst_83.val.byte_array[0] = 2;\
__declare_static_bit_vector(ADD_u8_u8_84,8);\
bit_vector_clear(&konst_83);\
konst_83.val.byte_array[0] = 2;\
bit_vector_plus( &(C), &(konst_83), &(ADD_u8_u8_84));\
bit_vector_cast_to_bit_vector(0, &(nC), &(ADD_u8_u8_84));\
;
;

#define _dotP_even_branch_block_stmt_15_c_export_apply_macro_ bit_vector_cast_to_bit_vector(0, &(nval_even__nval_even), &(nval_even));\
bit_vector_cast_to_bit_vector(0, &(nval_odd__nval_odd), &(nval_odd));\
;

#define _dotP_even_assign_stmt_96_c_macro_ __declare_static_bit_vector(ADD_u32_u32_95,32);\
bit_vector_plus( &(nval_even__nval_even), &(nval_odd__nval_odd), &(ADD_u32_u32_95));\
bit_vector_cast_to_bit_vector(0, &(result), &(ADD_u32_u32_95));\
;

#define _dotP_even_inner_outarg_prep_macro__ bit_vector_cast_to_bit_vector(0, &((*__presult)), &(result));\
;

#define _dotP_even_outer_arg_decl_macro__ __declare_static_bit_vector(__R, 8);\
bit_vector_assign_uint64(0, &__R, R);\
__declare_static_bit_vector(__result, 32);\
;

#define _dotP_even_outer_op_xfer_macro__  *result =  bit_vector_to_uint64(0, &__result);\
;

#define _dotP_odd_inner_inarg_prep_macro__ __declare_static_bit_vector(R,8);\
bit_vector_cast_to_bit_vector(0, &(R), &((*__pR)));\
__declare_static_bit_vector(result,32);\

#define _dotP_odd_branch_block_stmt_101_c_export_decl_macro_ __declare_static_bit_vector(nval_even__nval_even,32);\
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


#define _dotP_odd_merge_stmt_103_c_preamble_macro_ uint8_t merge_stmt_103_entry_flag;\
merge_stmt_103_entry_flag = do_while_entry_flag;\
goto merge_stmt_103_run;\
merge_stmt_103_run: ;\

#define _dotP_odd_phi_stmt_104_c_macro_ __declare_static_bit_vector(konst_106,8);\
bit_vector_clear(&konst_106);\
__declare_static_bit_vector(type_cast_107,8);\
bit_vector_clear(&type_cast_107);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(C), &(nC));\
}\
else {\
__declare_static_bit_vector(konst_106,8);\
bit_vector_clear(&konst_106);\
__declare_static_bit_vector(type_cast_107,8);\
bit_vector_clear(&type_cast_107);\
bit_vector_clear(&konst_106);\
bit_vector_bitcast_to_bit_vector( &(type_cast_107), &(konst_106));\
bit_vector_cast_to_bit_vector(0, &(C), &(type_cast_107));\
}\
;

#define _dotP_odd_phi_stmt_109_c_macro_ __declare_static_bit_vector(konst_111,32);\
bit_vector_clear(&konst_111);\
__declare_static_bit_vector(type_cast_112,32);\
bit_vector_clear(&type_cast_112);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_even), &(nval_even));\
}\
else {\
__declare_static_bit_vector(konst_111,32);\
bit_vector_clear(&konst_111);\
__declare_static_bit_vector(type_cast_112,32);\
bit_vector_clear(&type_cast_112);\
bit_vector_clear(&konst_111);\
bit_vector_bitcast_to_bit_vector( &(type_cast_112), &(konst_111));\
bit_vector_cast_to_bit_vector(0, &(val_even), &(type_cast_112));\
}\
;

#define _dotP_odd_phi_stmt_114_c_macro_ __declare_static_bit_vector(konst_116,32);\
bit_vector_clear(&konst_116);\
__declare_static_bit_vector(type_cast_117,32);\
bit_vector_clear(&type_cast_117);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_odd), &(nval_odd));\
}\
else {\
__declare_static_bit_vector(konst_116,32);\
bit_vector_clear(&konst_116);\
__declare_static_bit_vector(type_cast_117,32);\
bit_vector_clear(&type_cast_117);\
bit_vector_clear(&konst_116);\
bit_vector_bitcast_to_bit_vector( &(type_cast_117), &(konst_116));\
bit_vector_cast_to_bit_vector(0, &(val_odd), &(type_cast_117));\
}\
;
;

#define _dotP_odd_merge_stmt_103_c_postamble_macro_ merge_stmt_103_entry_flag = 0;

#define _dotP_odd_assign_stmt_123_c_macro_ __declare_static_bit_vector(slice_122,7);\
bit_vector_slice(&(C), &(slice_122), 1);\
bit_vector_cast_to_bit_vector(0, &(Cr), &(slice_122));\
;

#define _dotP_odd_assign_stmt_128_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_even), &((A_0[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_133_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_odd), &((A_1[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_137_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_even), &((x_0[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_141_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_odd), &((x_1[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_148_c_macro_ __declare_static_bit_vector(MUL_u32_u32_146,32);\
__declare_static_bit_vector(ADD_u32_u32_147,32);\
bit_vector_mul( &(a_rc_even), &(xval_even), &(MUL_u32_u32_146));\
bit_vector_plus( &(val_even), &(MUL_u32_u32_146), &(ADD_u32_u32_147));\
bit_vector_cast_to_bit_vector(0, &(nval_even), &(ADD_u32_u32_147));\
;

#define _dotP_odd_stmt_153_c_macro_ uint32_t _dotP_odd_stmt_153_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_odd_stmt_153_c_macro___print_counter,"even");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_153_c_macro___print_counter,"val_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_153_c_macro___print_counter,"a_rc_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_153_c_macro___print_counter,"xval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_even)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_153_c_macro___print_counter,"nval_even");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_even)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_160_c_macro_ __declare_static_bit_vector(MUL_u32_u32_158,32);\
__declare_static_bit_vector(ADD_u32_u32_159,32);\
bit_vector_mul( &(a_rc_odd), &(xval_odd), &(MUL_u32_u32_158));\
bit_vector_plus( &(val_odd), &(MUL_u32_u32_158), &(ADD_u32_u32_159));\
bit_vector_cast_to_bit_vector(0, &(nval_odd), &(ADD_u32_u32_159));\
;

#define _dotP_odd_stmt_165_c_macro_ uint32_t _dotP_odd_stmt_165_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP>\t%s\n",_dotP_odd_stmt_165_c_macro___print_counter,"odd");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_165_c_macro___print_counter,"val_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_165_c_macro___print_counter,"a_rc_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_165_c_macro___print_counter,"xval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_odd)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP>\t\t%s\t\t",_dotP_odd_stmt_165_c_macro___print_counter,"nval_odd");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_odd)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_170_c_macro_ __declare_static_bit_vector(konst_168,8);\
bit_vector_clear(&konst_168);\
konst_168.val.byte_array[0] = 2;\
__declare_static_bit_vector(ADD_u8_u8_169,8);\
bit_vector_clear(&konst_168);\
konst_168.val.byte_array[0] = 2;\
bit_vector_plus( &(C), &(konst_168), &(ADD_u8_u8_169));\
bit_vector_cast_to_bit_vector(0, &(nC), &(ADD_u8_u8_169));\
;
;

#define _dotP_odd_branch_block_stmt_101_c_export_apply_macro_ bit_vector_cast_to_bit_vector(0, &(nval_even__nval_even), &(nval_even));\
bit_vector_cast_to_bit_vector(0, &(nval_odd__nval_odd), &(nval_odd));\
;

#define _dotP_odd_assign_stmt_180_c_macro_ __declare_static_bit_vector(ADD_u32_u32_179,32);\
bit_vector_plus( &(nval_even__nval_even), &(nval_odd__nval_odd), &(ADD_u32_u32_179));\
bit_vector_cast_to_bit_vector(0, &(result), &(ADD_u32_u32_179));\
;

#define _dotP_odd_inner_outarg_prep_macro__ bit_vector_cast_to_bit_vector(0, &((*__presult)), &(result));\
;

#define _dotP_odd_outer_arg_decl_macro__ __declare_static_bit_vector(__R, 8);\
bit_vector_assign_uint64(0, &__R, R);\
__declare_static_bit_vector(__result, 32);\
;

#define _dotP_odd_outer_op_xfer_macro__  *result =  bit_vector_to_uint64(0, &__result);\
;

#define _global_storage_initializer__inner_inarg_prep_macro__ 
#define _global_storage_initializer__inner_outarg_prep_macro__ ;

#define _global_storage_initializer__outer_arg_decl_macro__ ;

#define _global_storage_initializer__outer_op_xfer_macro__ ;

#define _multiplyMatrixVector_inner_inarg_prep_macro__ 
#define _multiplyMatrixVector_branch_block_stmt_186_c_export_decl_macro_ __declare_static_bit_vector(R,8);\
__declare_static_bit_vector(val_even,32);\
__declare_static_bit_vector(val_odd,32);\
__declare_static_bit_vector(nR,8);\


#define _multiplyMatrixVector_merge_stmt_187_c_preamble_macro_ uint8_t merge_stmt_187_entry_flag;\
merge_stmt_187_entry_flag = 1;\
uint8_t loopback_186_flag = 0;\
goto merge_stmt_187_run;\
loopback_186: loopback_186_flag = 1;\
goto merge_stmt_187_run;\
merge_stmt_187_run: ;\

#define _multiplyMatrixVector_phi_stmt_188_c_macro_ __declare_static_bit_vector(konst_190,8);\
bit_vector_clear(&konst_190);\
__declare_static_bit_vector(type_cast_191,8);\
bit_vector_clear(&type_cast_191);\
if(loopback_186_flag) {\
bit_vector_cast_to_bit_vector(0, &(R), &(nR));\
}\
else {\
__declare_static_bit_vector(konst_190,8);\
bit_vector_clear(&konst_190);\
__declare_static_bit_vector(type_cast_191,8);\
bit_vector_clear(&type_cast_191);\
bit_vector_clear(&konst_190);\
bit_vector_bitcast_to_bit_vector( &(type_cast_191), &(konst_190));\
bit_vector_cast_to_bit_vector(0, &(R), &(type_cast_191));\
}\
;
;

#define _multiplyMatrixVector_merge_stmt_187_c_postamble_macro_ loopback_186_flag = 0;\
merge_stmt_187_entry_flag = 0;

#define _multiplyMatrixVector_call_stmt_196_c_macro_ _dotP_even_( &(R), &(val_even));\
;

#define _multiplyMatrixVector_call_stmt_201_c_macro_ __declare_static_bit_vector(konst_198,8);\
bit_vector_clear(&konst_198);\
konst_198.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_199,8);\
bit_vector_clear(&konst_198);\
konst_198.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_198), &(ADD_u8_u8_199));\
_dotP_odd_( &(ADD_u8_u8_199), &(val_odd));\
;

#define _multiplyMatrixVector_assign_stmt_205_c_macro_ bit_vector_cast_to_bit_vector(0, &((y[bit_vector_to_uint64(0, &R)])), &(val_even));\
;

#define _multiplyMatrixVector_assign_stmt_211_c_macro_ __declare_static_bit_vector(konst_207,8);\
bit_vector_clear(&konst_207);\
konst_207.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_208,8);\
bit_vector_clear(&konst_207);\
konst_207.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_207), &(ADD_u8_u8_208));\
bit_vector_cast_to_bit_vector(0, &((y[bit_vector_to_uint64(0, &ADD_u8_u8_208)])), &(val_odd));\
;

#define _multiplyMatrixVector_assign_stmt_216_c_macro_ __declare_static_bit_vector(konst_214,8);\
bit_vector_clear(&konst_214);\
konst_214.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_215,8);\
bit_vector_clear(&konst_214);\
konst_214.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_214), &(ADD_u8_u8_215));\
bit_vector_cast_to_bit_vector(0, &(nR), &(ADD_u8_u8_215));\
;
;

#define _multiplyMatrixVector_branch_block_stmt_186_c_export_apply_macro_ ;

#define _multiplyMatrixVector_inner_outarg_prep_macro__ ;

#define _multiplyMatrixVector_outer_arg_decl_macro__ ;

#define _multiplyMatrixVector_outer_op_xfer_macro__ ;

#define _mvp_daemon_inner_inarg_prep_macro__ 
#define _mvp_daemon_call_stmt_370_c_macro_ _readMatrix_();\
;

#define _mvp_daemon_branch_block_stmt_371_c_export_decl_macro_ 

#define _mvp_daemon_merge_stmt_372_c_preamble_macro_ uint8_t merge_stmt_372_entry_flag;\
merge_stmt_372_entry_flag = 1;\
uint8_t loopback_371_flag = 0;\
goto merge_stmt_372_run;\
loopback_371: loopback_371_flag = 1;\
goto merge_stmt_372_run;\
merge_stmt_372_run: ;\
;

#define _mvp_daemon_merge_stmt_372_c_postamble_macro_ loopback_371_flag = 0;\
merge_stmt_372_entry_flag = 0;

#define _mvp_daemon_call_stmt_373_c_macro_ _readVector_();\
;

#define _mvp_daemon_call_stmt_374_c_macro_ _multiplyMatrixVector_();\
;

#define _mvp_daemon_call_stmt_375_c_macro_ _sendVector_();\
;
;

#define _mvp_daemon_branch_block_stmt_371_c_export_apply_macro_ ;

#define _mvp_daemon_inner_outarg_prep_macro__ ;

#define _mvp_daemon_outer_arg_decl_macro__ ;

#define _mvp_daemon_outer_op_xfer_macro__ ;

#define _readMatrix_inner_inarg_prep_macro__ 
#define _readMatrix_branch_block_stmt_226_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\
__declare_static_bit_vector(J,8);\
__declare_static_bit_vector(nJ,8);\
__declare_static_bit_vector(odd_idx,1);\
__declare_static_bit_vector(Jr,7);\
__declare_static_bit_vector(aval,32);\


#define _readMatrix_merge_stmt_227_c_preamble_macro_ uint8_t merge_stmt_227_entry_flag;\
merge_stmt_227_entry_flag = 1;\
uint8_t outer_loopback_226_flag = 0;\
goto merge_stmt_227_run;\
outer_loopback_226: outer_loopback_226_flag = 1;\
goto merge_stmt_227_run;\
merge_stmt_227_run: ;\

#define _readMatrix_phi_stmt_228_c_macro_ __declare_static_bit_vector(konst_230,8);\
bit_vector_clear(&konst_230);\
__declare_static_bit_vector(type_cast_231,8);\
bit_vector_clear(&type_cast_231);\
if(outer_loopback_226_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_230,8);\
bit_vector_clear(&konst_230);\
__declare_static_bit_vector(type_cast_231,8);\
bit_vector_clear(&type_cast_231);\
bit_vector_clear(&konst_230);\
bit_vector_bitcast_to_bit_vector( &(type_cast_231), &(konst_230));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_231));\
}\
;
;

#define _readMatrix_merge_stmt_227_c_postamble_macro_ outer_loopback_226_flag = 0;\
merge_stmt_227_entry_flag = 0;

#define _readMatrix_assign_stmt_238_c_macro_ __declare_static_bit_vector(konst_236,8);\
bit_vector_clear(&konst_236);\
konst_236.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_237,8);\
bit_vector_clear(&konst_236);\
konst_236.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_236), &(ADD_u8_u8_237));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_237));\
;

#define _readMatrix_merge_stmt_239_c_preamble_macro_ uint8_t merge_stmt_239_entry_flag;\
merge_stmt_239_entry_flag = 1;\
uint8_t inner_loopback_226_flag = 0;\
goto merge_stmt_239_run;\
inner_loopback_226: inner_loopback_226_flag = 1;\
goto merge_stmt_239_run;\
merge_stmt_239_run: ;\

#define _readMatrix_phi_stmt_240_c_macro_ __declare_static_bit_vector(konst_242,8);\
bit_vector_clear(&konst_242);\
__declare_static_bit_vector(type_cast_243,8);\
bit_vector_clear(&type_cast_243);\
if(inner_loopback_226_flag) {\
bit_vector_cast_to_bit_vector(0, &(J), &(nJ));\
}\
else {\
__declare_static_bit_vector(konst_242,8);\
bit_vector_clear(&konst_242);\
__declare_static_bit_vector(type_cast_243,8);\
bit_vector_clear(&type_cast_243);\
bit_vector_clear(&konst_242);\
bit_vector_bitcast_to_bit_vector( &(type_cast_243), &(konst_242));\
bit_vector_cast_to_bit_vector(0, &(J), &(type_cast_243));\
}\
;
;

#define _readMatrix_merge_stmt_239_c_postamble_macro_ inner_loopback_226_flag = 0;\
merge_stmt_239_entry_flag = 0;

#define _readMatrix_assign_stmt_250_c_macro_ __declare_static_bit_vector(konst_248,8);\
bit_vector_clear(&konst_248);\
konst_248.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_249,8);\
bit_vector_clear(&konst_248);\
konst_248.val.byte_array[0] = 1;\
bit_vector_plus( &(J), &(konst_248), &(ADD_u8_u8_249));\
bit_vector_cast_to_bit_vector(0, &(nJ), &(ADD_u8_u8_249));\
;

#define _readMatrix_assign_stmt_255_c_macro_ __declare_static_bit_vector(konst_253,8);\
bit_vector_clear(&konst_253);\
__declare_static_bit_vector(BITSEL_u8_u1_254,1);\
bit_vector_clear(&konst_253);\
bit_vector_bitsel( &(J), &(konst_253), &(BITSEL_u8_u1_254));\
bit_vector_cast_to_bit_vector(0, &(odd_idx), &(BITSEL_u8_u1_254));\
;

#define _readMatrix_assign_stmt_259_c_macro_ __declare_static_bit_vector(slice_258,7);\
bit_vector_slice(&(J), &(slice_258), 1);\
bit_vector_cast_to_bit_vector(0, &(Jr), &(slice_258));\
;

#define _readMatrix_assign_stmt_262_c_macro_ __declare_static_bit_vector(RPIPE_in_data_261,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_261));\
bit_vector_cast_to_bit_vector(0, &(aval), &(RPIPE_in_data_261));\
;

#define _readMatrix_assign_stmt_268_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((A_1[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_274_c_macro_ if (bit_vector_to_uint64(0, &odd_idx)) {\
uint32_t _readMatrix_stmt_274_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_odd>\t%s\n",_readMatrix_stmt_274_c_macro___print_counter,"odd_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_274_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_274_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_274_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_odd>\t\t%s\t\t",_readMatrix_stmt_274_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readMatrix_assign_stmt_280_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (!bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((A_0[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_286_c_macro_ if (!bit_vector_to_uint64(0, &odd_idx)) {\
uint32_t _readMatrix_stmt_286_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_even>\t%s\n",_readMatrix_stmt_286_c_macro___print_counter,"even_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_286_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_286_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_286_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_even>\t\t%s\t\t",_readMatrix_stmt_286_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};
;

#define _readMatrix_branch_block_stmt_226_c_export_apply_macro_ ;

#define _readMatrix_inner_outarg_prep_macro__ ;

#define _readMatrix_outer_arg_decl_macro__ ;

#define _readMatrix_outer_op_xfer_macro__ ;

#define _readVector_inner_inarg_prep_macro__ 
#define _readVector_branch_block_stmt_302_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(odd_idx,1);\
__declare_static_bit_vector(I_idx,7);\
__declare_static_bit_vector(temp_val,32);\
__declare_static_bit_vector(nI,8);\


#define _readVector_merge_stmt_304_c_preamble_macro_ uint8_t merge_stmt_304_entry_flag;\
merge_stmt_304_entry_flag = do_while_entry_flag;\
goto merge_stmt_304_run;\
merge_stmt_304_run: ;\

#define _readVector_phi_stmt_305_c_macro_ __declare_static_bit_vector(konst_307,8);\
bit_vector_clear(&konst_307);\
__declare_static_bit_vector(type_cast_308,8);\
bit_vector_clear(&type_cast_308);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_307,8);\
bit_vector_clear(&konst_307);\
__declare_static_bit_vector(type_cast_308,8);\
bit_vector_clear(&type_cast_308);\
bit_vector_clear(&konst_307);\
bit_vector_bitcast_to_bit_vector( &(type_cast_308), &(konst_307));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_308));\
}\
;
;

#define _readVector_merge_stmt_304_c_postamble_macro_ merge_stmt_304_entry_flag = 0;

#define _readVector_assign_stmt_315_c_macro_ __declare_static_bit_vector(konst_313,8);\
bit_vector_clear(&konst_313);\
__declare_static_bit_vector(BITSEL_u8_u1_314,1);\
bit_vector_clear(&konst_313);\
bit_vector_bitsel( &(I), &(konst_313), &(BITSEL_u8_u1_314));\
bit_vector_cast_to_bit_vector(0, &(odd_idx), &(BITSEL_u8_u1_314));\
;

#define _readVector_assign_stmt_319_c_macro_ __declare_static_bit_vector(slice_318,7);\
bit_vector_slice(&(I), &(slice_318), 1);\
bit_vector_cast_to_bit_vector(0, &(I_idx), &(slice_318));\
;

#define _readVector_assign_stmt_322_c_macro_ __declare_static_bit_vector(RPIPE_in_data_321,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_321));\
bit_vector_cast_to_bit_vector(0, &(temp_val), &(RPIPE_in_data_321));\
;

#define _readVector_assign_stmt_327_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((x_1[bit_vector_to_uint64(0, &I_idx)])), &(temp_val));\
}
;

#define _readVector_assign_stmt_332_c_macro_ if (has_undefined_bit(&odd_idx)) {fprintf(stderr, "Error: variable odd_idx has undefined value (%s) at test point.\n", to_string(&odd_idx));assert(0);} \
if (!bit_vector_to_uint64(0, &odd_idx)) {\
bit_vector_cast_to_bit_vector(0, &((x_0[bit_vector_to_uint64(0, &I_idx)])), &(temp_val));\
}
;

#define _readVector_assign_stmt_337_c_macro_ __declare_static_bit_vector(konst_335,8);\
bit_vector_clear(&konst_335);\
konst_335.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_336,8);\
bit_vector_clear(&konst_335);\
konst_335.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_335), &(ADD_u8_u8_336));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_336));\
;
;

#define _readVector_branch_block_stmt_302_c_export_apply_macro_ ;

#define _readVector_inner_outarg_prep_macro__ ;

#define _readVector_outer_arg_decl_macro__ ;

#define _readVector_outer_op_xfer_macro__ ;

#define _sendVector_inner_inarg_prep_macro__ 
#define _sendVector_branch_block_stmt_345_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\


#define _sendVector_merge_stmt_347_c_preamble_macro_ uint8_t merge_stmt_347_entry_flag;\
merge_stmt_347_entry_flag = do_while_entry_flag;\
goto merge_stmt_347_run;\
merge_stmt_347_run: ;\

#define _sendVector_phi_stmt_348_c_macro_ __declare_static_bit_vector(konst_350,8);\
bit_vector_clear(&konst_350);\
__declare_static_bit_vector(type_cast_351,8);\
bit_vector_clear(&type_cast_351);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_350,8);\
bit_vector_clear(&konst_350);\
__declare_static_bit_vector(type_cast_351,8);\
bit_vector_clear(&type_cast_351);\
bit_vector_clear(&konst_350);\
bit_vector_bitcast_to_bit_vector( &(type_cast_351), &(konst_350));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_351));\
}\
;
;

#define _sendVector_merge_stmt_347_c_postamble_macro_ merge_stmt_347_entry_flag = 0;

#define _sendVector_assign_stmt_357_c_macro_ write_bit_vector_to_pipe("out_data",&((y[bit_vector_to_uint64(0, &I)])));\
;

#define _sendVector_assign_stmt_362_c_macro_ __declare_static_bit_vector(konst_360,8);\
bit_vector_clear(&konst_360);\
konst_360.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_361,8);\
bit_vector_clear(&konst_360);\
konst_360.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_360), &(ADD_u8_u8_361));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_361));\
;
;

#define _sendVector_branch_block_stmt_345_c_export_apply_macro_ ;

#define _sendVector_inner_outarg_prep_macro__ ;

#define _sendVector_outer_arg_decl_macro__ ;

#define _sendVector_outer_op_xfer_macro__ ;
