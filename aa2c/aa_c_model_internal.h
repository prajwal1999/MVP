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

#define _dotP_even_branch_block_stmt_19_c_export_decl_macro_ __declare_static_bit_vector(nval_0__nval_0,32);\
__declare_static_bit_vector(nval_1__nval_1,32);\
__declare_static_bit_vector(nval_2__nval_2,32);\
__declare_static_bit_vector(nval_3__nval_3,32);\
__declare_static_bit_vector(C,8);\
__declare_static_bit_vector(val_0,32);\
__declare_static_bit_vector(val_1,32);\
__declare_static_bit_vector(val_2,32);\
__declare_static_bit_vector(val_3,32);\
__declare_static_bit_vector(Cr,6);\
__declare_static_bit_vector(a_rc_0,32);\
__declare_static_bit_vector(a_rc_1,32);\
__declare_static_bit_vector(a_rc_2,32);\
__declare_static_bit_vector(a_rc_3,32);\
__declare_static_bit_vector(xval_0,32);\
__declare_static_bit_vector(xval_1,32);\
__declare_static_bit_vector(xval_2,32);\
__declare_static_bit_vector(xval_3,32);\
__declare_static_bit_vector(nval_0,32);\
__declare_static_bit_vector(nval_1,32);\
__declare_static_bit_vector(nval_2,32);\
__declare_static_bit_vector(nval_3,32);\
__declare_static_bit_vector(nC,8);\


#define _dotP_even_merge_stmt_21_c_preamble_macro_ uint8_t merge_stmt_21_entry_flag;\
merge_stmt_21_entry_flag = do_while_entry_flag;\
goto merge_stmt_21_run;\
merge_stmt_21_run: ;\

#define _dotP_even_phi_stmt_22_c_macro_ __declare_static_bit_vector(konst_24,8);\
bit_vector_clear(&konst_24);\
__declare_static_bit_vector(type_cast_25,8);\
bit_vector_clear(&type_cast_25);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(C), &(nC));\
}\
else {\
__declare_static_bit_vector(konst_24,8);\
bit_vector_clear(&konst_24);\
__declare_static_bit_vector(type_cast_25,8);\
bit_vector_clear(&type_cast_25);\
bit_vector_clear(&konst_24);\
bit_vector_bitcast_to_bit_vector( &(type_cast_25), &(konst_24));\
bit_vector_cast_to_bit_vector(0, &(C), &(type_cast_25));\
}\
;

#define _dotP_even_phi_stmt_27_c_macro_ __declare_static_bit_vector(konst_29,32);\
bit_vector_clear(&konst_29);\
__declare_static_bit_vector(type_cast_30,32);\
bit_vector_clear(&type_cast_30);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_0), &(nval_0));\
}\
else {\
__declare_static_bit_vector(konst_29,32);\
bit_vector_clear(&konst_29);\
__declare_static_bit_vector(type_cast_30,32);\
bit_vector_clear(&type_cast_30);\
bit_vector_clear(&konst_29);\
bit_vector_bitcast_to_bit_vector( &(type_cast_30), &(konst_29));\
bit_vector_cast_to_bit_vector(0, &(val_0), &(type_cast_30));\
}\
;

#define _dotP_even_phi_stmt_32_c_macro_ __declare_static_bit_vector(konst_34,32);\
bit_vector_clear(&konst_34);\
__declare_static_bit_vector(type_cast_35,32);\
bit_vector_clear(&type_cast_35);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_1), &(nval_1));\
}\
else {\
__declare_static_bit_vector(konst_34,32);\
bit_vector_clear(&konst_34);\
__declare_static_bit_vector(type_cast_35,32);\
bit_vector_clear(&type_cast_35);\
bit_vector_clear(&konst_34);\
bit_vector_bitcast_to_bit_vector( &(type_cast_35), &(konst_34));\
bit_vector_cast_to_bit_vector(0, &(val_1), &(type_cast_35));\
}\
;

#define _dotP_even_phi_stmt_37_c_macro_ __declare_static_bit_vector(konst_39,32);\
bit_vector_clear(&konst_39);\
__declare_static_bit_vector(type_cast_40,32);\
bit_vector_clear(&type_cast_40);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_2), &(nval_2));\
}\
else {\
__declare_static_bit_vector(konst_39,32);\
bit_vector_clear(&konst_39);\
__declare_static_bit_vector(type_cast_40,32);\
bit_vector_clear(&type_cast_40);\
bit_vector_clear(&konst_39);\
bit_vector_bitcast_to_bit_vector( &(type_cast_40), &(konst_39));\
bit_vector_cast_to_bit_vector(0, &(val_2), &(type_cast_40));\
}\
;

#define _dotP_even_phi_stmt_42_c_macro_ __declare_static_bit_vector(konst_44,32);\
bit_vector_clear(&konst_44);\
__declare_static_bit_vector(type_cast_45,32);\
bit_vector_clear(&type_cast_45);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_3), &(nval_3));\
}\
else {\
__declare_static_bit_vector(konst_44,32);\
bit_vector_clear(&konst_44);\
__declare_static_bit_vector(type_cast_45,32);\
bit_vector_clear(&type_cast_45);\
bit_vector_clear(&konst_44);\
bit_vector_bitcast_to_bit_vector( &(type_cast_45), &(konst_44));\
bit_vector_cast_to_bit_vector(0, &(val_3), &(type_cast_45));\
}\
;
;

#define _dotP_even_merge_stmt_21_c_postamble_macro_ merge_stmt_21_entry_flag = 0;

#define _dotP_even_assign_stmt_52_c_macro_ __declare_static_bit_vector(slice_51,6);\
bit_vector_slice(&(C), &(slice_51), 2);\
bit_vector_cast_to_bit_vector(0, &(Cr), &(slice_51));\
;

#define _dotP_even_assign_stmt_57_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_0), &((A_0[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_62_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_1), &((A_1[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_67_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_2), &((A_2[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_72_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_3), &((A_3[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_76_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_0), &((x_0[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_80_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_1), &((x_1[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_84_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_2), &((x_2[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_88_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_3), &((x_3[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_even_assign_stmt_95_c_macro_ __declare_static_bit_vector(MUL_u32_u32_93,32);\
__declare_static_bit_vector(ADD_u32_u32_94,32);\
bit_vector_mul( &(a_rc_0), &(xval_0), &(MUL_u32_u32_93));\
bit_vector_plus( &(val_0), &(MUL_u32_u32_93), &(ADD_u32_u32_94));\
bit_vector_cast_to_bit_vector(0, &(nval_0), &(ADD_u32_u32_94));\
;

#define _dotP_even_stmt_100_c_macro_ uint32_t _dotP_even_stmt_100_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_even>\t%s\n",_dotP_even_stmt_100_c_macro___print_counter,"Cr_0");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_100_c_macro___print_counter,"val_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_100_c_macro___print_counter,"a_rc_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_100_c_macro___print_counter,"xval_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_100_c_macro___print_counter,"nval_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_0)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_107_c_macro_ __declare_static_bit_vector(MUL_u32_u32_105,32);\
__declare_static_bit_vector(ADD_u32_u32_106,32);\
bit_vector_mul( &(a_rc_1), &(xval_1), &(MUL_u32_u32_105));\
bit_vector_plus( &(val_1), &(MUL_u32_u32_105), &(ADD_u32_u32_106));\
bit_vector_cast_to_bit_vector(0, &(nval_1), &(ADD_u32_u32_106));\
;

#define _dotP_even_stmt_112_c_macro_ uint32_t _dotP_even_stmt_112_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_even>\t%s\n",_dotP_even_stmt_112_c_macro___print_counter,"Cr_1");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_112_c_macro___print_counter,"val_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_112_c_macro___print_counter,"a_rc_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_112_c_macro___print_counter,"xval_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_112_c_macro___print_counter,"nval_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_1)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_119_c_macro_ __declare_static_bit_vector(MUL_u32_u32_117,32);\
__declare_static_bit_vector(ADD_u32_u32_118,32);\
bit_vector_mul( &(a_rc_2), &(xval_2), &(MUL_u32_u32_117));\
bit_vector_plus( &(val_2), &(MUL_u32_u32_117), &(ADD_u32_u32_118));\
bit_vector_cast_to_bit_vector(0, &(nval_2), &(ADD_u32_u32_118));\
;

#define _dotP_even_stmt_124_c_macro_ uint32_t _dotP_even_stmt_124_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_even>\t%s\n",_dotP_even_stmt_124_c_macro___print_counter,"Cr_2");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_124_c_macro___print_counter,"val_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_124_c_macro___print_counter,"a_rc_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_124_c_macro___print_counter,"xval_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_124_c_macro___print_counter,"nval_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_2)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_131_c_macro_ __declare_static_bit_vector(MUL_u32_u32_129,32);\
__declare_static_bit_vector(ADD_u32_u32_130,32);\
bit_vector_mul( &(a_rc_3), &(xval_3), &(MUL_u32_u32_129));\
bit_vector_plus( &(val_3), &(MUL_u32_u32_129), &(ADD_u32_u32_130));\
bit_vector_cast_to_bit_vector(0, &(nval_3), &(ADD_u32_u32_130));\
;

#define _dotP_even_stmt_136_c_macro_ uint32_t _dotP_even_stmt_136_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_even>\t%s\n",_dotP_even_stmt_136_c_macro___print_counter,"Cr_3");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_136_c_macro___print_counter,"val_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_136_c_macro___print_counter,"a_rc_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_136_c_macro___print_counter,"xval_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_even>\t\t%s\t\t",_dotP_even_stmt_136_c_macro___print_counter,"nval_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_3)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_even_assign_stmt_141_c_macro_ __declare_static_bit_vector(konst_139,8);\
bit_vector_clear(&konst_139);\
konst_139.val.byte_array[0] = 4;\
__declare_static_bit_vector(ADD_u8_u8_140,8);\
bit_vector_clear(&konst_139);\
konst_139.val.byte_array[0] = 4;\
bit_vector_plus( &(C), &(konst_139), &(ADD_u8_u8_140));\
bit_vector_cast_to_bit_vector(0, &(nC), &(ADD_u8_u8_140));\
;
;

#define _dotP_even_branch_block_stmt_19_c_export_apply_macro_ bit_vector_cast_to_bit_vector(0, &(nval_0__nval_0), &(nval_0));\
bit_vector_cast_to_bit_vector(0, &(nval_1__nval_1), &(nval_1));\
bit_vector_cast_to_bit_vector(0, &(nval_2__nval_2), &(nval_2));\
bit_vector_cast_to_bit_vector(0, &(nval_3__nval_3), &(nval_3));\
;

#define _dotP_even_assign_stmt_156_c_macro_ __declare_static_bit_vector(ADD_u32_u32_153,32);\
__declare_static_bit_vector(ADD_u32_u32_154,32);\
__declare_static_bit_vector(ADD_u32_u32_155,32);\
bit_vector_plus( &(nval_2__nval_2), &(nval_3__nval_3), &(ADD_u32_u32_153));\
bit_vector_plus( &(nval_1__nval_1), &(ADD_u32_u32_153), &(ADD_u32_u32_154));\
bit_vector_plus( &(nval_0__nval_0), &(ADD_u32_u32_154), &(ADD_u32_u32_155));\
bit_vector_cast_to_bit_vector(0, &(result), &(ADD_u32_u32_155));\
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

#define _dotP_odd_branch_block_stmt_161_c_export_decl_macro_ __declare_static_bit_vector(nval_0__nval_0,32);\
__declare_static_bit_vector(nval_1__nval_1,32);\
__declare_static_bit_vector(nval_2__nval_2,32);\
__declare_static_bit_vector(nval_3__nval_3,32);\
__declare_static_bit_vector(C,8);\
__declare_static_bit_vector(val_0,32);\
__declare_static_bit_vector(val_1,32);\
__declare_static_bit_vector(val_2,32);\
__declare_static_bit_vector(val_3,32);\
__declare_static_bit_vector(Cr,6);\
__declare_static_bit_vector(a_rc_0,32);\
__declare_static_bit_vector(a_rc_1,32);\
__declare_static_bit_vector(a_rc_2,32);\
__declare_static_bit_vector(a_rc_3,32);\
__declare_static_bit_vector(xval_0,32);\
__declare_static_bit_vector(xval_1,32);\
__declare_static_bit_vector(xval_2,32);\
__declare_static_bit_vector(xval_3,32);\
__declare_static_bit_vector(nval_0,32);\
__declare_static_bit_vector(nval_1,32);\
__declare_static_bit_vector(nval_2,32);\
__declare_static_bit_vector(nval_3,32);\
__declare_static_bit_vector(nC,8);\


#define _dotP_odd_merge_stmt_163_c_preamble_macro_ uint8_t merge_stmt_163_entry_flag;\
merge_stmt_163_entry_flag = do_while_entry_flag;\
goto merge_stmt_163_run;\
merge_stmt_163_run: ;\

#define _dotP_odd_phi_stmt_164_c_macro_ __declare_static_bit_vector(konst_166,8);\
bit_vector_clear(&konst_166);\
__declare_static_bit_vector(type_cast_167,8);\
bit_vector_clear(&type_cast_167);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(C), &(nC));\
}\
else {\
__declare_static_bit_vector(konst_166,8);\
bit_vector_clear(&konst_166);\
__declare_static_bit_vector(type_cast_167,8);\
bit_vector_clear(&type_cast_167);\
bit_vector_clear(&konst_166);\
bit_vector_bitcast_to_bit_vector( &(type_cast_167), &(konst_166));\
bit_vector_cast_to_bit_vector(0, &(C), &(type_cast_167));\
}\
;

#define _dotP_odd_phi_stmt_169_c_macro_ __declare_static_bit_vector(konst_171,32);\
bit_vector_clear(&konst_171);\
__declare_static_bit_vector(type_cast_172,32);\
bit_vector_clear(&type_cast_172);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_0), &(nval_0));\
}\
else {\
__declare_static_bit_vector(konst_171,32);\
bit_vector_clear(&konst_171);\
__declare_static_bit_vector(type_cast_172,32);\
bit_vector_clear(&type_cast_172);\
bit_vector_clear(&konst_171);\
bit_vector_bitcast_to_bit_vector( &(type_cast_172), &(konst_171));\
bit_vector_cast_to_bit_vector(0, &(val_0), &(type_cast_172));\
}\
;

#define _dotP_odd_phi_stmt_174_c_macro_ __declare_static_bit_vector(konst_176,32);\
bit_vector_clear(&konst_176);\
__declare_static_bit_vector(type_cast_177,32);\
bit_vector_clear(&type_cast_177);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_1), &(nval_1));\
}\
else {\
__declare_static_bit_vector(konst_176,32);\
bit_vector_clear(&konst_176);\
__declare_static_bit_vector(type_cast_177,32);\
bit_vector_clear(&type_cast_177);\
bit_vector_clear(&konst_176);\
bit_vector_bitcast_to_bit_vector( &(type_cast_177), &(konst_176));\
bit_vector_cast_to_bit_vector(0, &(val_1), &(type_cast_177));\
}\
;

#define _dotP_odd_phi_stmt_179_c_macro_ __declare_static_bit_vector(konst_181,32);\
bit_vector_clear(&konst_181);\
__declare_static_bit_vector(type_cast_182,32);\
bit_vector_clear(&type_cast_182);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_2), &(nval_2));\
}\
else {\
__declare_static_bit_vector(konst_181,32);\
bit_vector_clear(&konst_181);\
__declare_static_bit_vector(type_cast_182,32);\
bit_vector_clear(&type_cast_182);\
bit_vector_clear(&konst_181);\
bit_vector_bitcast_to_bit_vector( &(type_cast_182), &(konst_181));\
bit_vector_cast_to_bit_vector(0, &(val_2), &(type_cast_182));\
}\
;

#define _dotP_odd_phi_stmt_184_c_macro_ __declare_static_bit_vector(konst_186,32);\
bit_vector_clear(&konst_186);\
__declare_static_bit_vector(type_cast_187,32);\
bit_vector_clear(&type_cast_187);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(val_3), &(nval_3));\
}\
else {\
__declare_static_bit_vector(konst_186,32);\
bit_vector_clear(&konst_186);\
__declare_static_bit_vector(type_cast_187,32);\
bit_vector_clear(&type_cast_187);\
bit_vector_clear(&konst_186);\
bit_vector_bitcast_to_bit_vector( &(type_cast_187), &(konst_186));\
bit_vector_cast_to_bit_vector(0, &(val_3), &(type_cast_187));\
}\
;
;

#define _dotP_odd_merge_stmt_163_c_postamble_macro_ merge_stmt_163_entry_flag = 0;

#define _dotP_odd_assign_stmt_193_c_macro_ __declare_static_bit_vector(slice_192,6);\
bit_vector_slice(&(C), &(slice_192), 2);\
bit_vector_cast_to_bit_vector(0, &(Cr), &(slice_192));\
;

#define _dotP_odd_assign_stmt_198_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_0), &((A_0[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_203_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_1), &((A_1[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_208_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_2), &((A_2[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_213_c_macro_ bit_vector_cast_to_bit_vector(0, &(a_rc_3), &((A_3[bit_vector_to_uint64(0, &R)][bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_217_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_0), &((x_0[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_221_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_1), &((x_1[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_225_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_2), &((x_2[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_229_c_macro_ bit_vector_cast_to_bit_vector(0, &(xval_3), &((x_3[bit_vector_to_uint64(0, &Cr)])));\
;

#define _dotP_odd_assign_stmt_236_c_macro_ __declare_static_bit_vector(MUL_u32_u32_234,32);\
__declare_static_bit_vector(ADD_u32_u32_235,32);\
bit_vector_mul( &(a_rc_0), &(xval_0), &(MUL_u32_u32_234));\
bit_vector_plus( &(val_0), &(MUL_u32_u32_234), &(ADD_u32_u32_235));\
bit_vector_cast_to_bit_vector(0, &(nval_0), &(ADD_u32_u32_235));\
;

#define _dotP_odd_stmt_241_c_macro_ uint32_t _dotP_odd_stmt_241_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_odd>\t%s\n",_dotP_odd_stmt_241_c_macro___print_counter,"Cr_0");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_241_c_macro___print_counter,"val_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_241_c_macro___print_counter,"a_rc_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_241_c_macro___print_counter,"xval_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_0)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_241_c_macro___print_counter,"nval_0");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_0)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_248_c_macro_ __declare_static_bit_vector(MUL_u32_u32_246,32);\
__declare_static_bit_vector(ADD_u32_u32_247,32);\
bit_vector_mul( &(a_rc_1), &(xval_1), &(MUL_u32_u32_246));\
bit_vector_plus( &(val_1), &(MUL_u32_u32_246), &(ADD_u32_u32_247));\
bit_vector_cast_to_bit_vector(0, &(nval_1), &(ADD_u32_u32_247));\
;

#define _dotP_odd_stmt_253_c_macro_ uint32_t _dotP_odd_stmt_253_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_odd>\t%s\n",_dotP_odd_stmt_253_c_macro___print_counter,"Cr_1");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_253_c_macro___print_counter,"val_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_253_c_macro___print_counter,"a_rc_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_253_c_macro___print_counter,"xval_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_1)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_253_c_macro___print_counter,"nval_1");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_1)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_260_c_macro_ __declare_static_bit_vector(MUL_u32_u32_258,32);\
__declare_static_bit_vector(ADD_u32_u32_259,32);\
bit_vector_mul( &(a_rc_2), &(xval_2), &(MUL_u32_u32_258));\
bit_vector_plus( &(val_2), &(MUL_u32_u32_258), &(ADD_u32_u32_259));\
bit_vector_cast_to_bit_vector(0, &(nval_2), &(ADD_u32_u32_259));\
;

#define _dotP_odd_stmt_265_c_macro_ uint32_t _dotP_odd_stmt_265_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_odd>\t%s\n",_dotP_odd_stmt_265_c_macro___print_counter,"Cr_2");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_265_c_macro___print_counter,"val_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_265_c_macro___print_counter,"a_rc_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_265_c_macro___print_counter,"xval_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_2)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_265_c_macro___print_counter,"nval_2");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_2)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_272_c_macro_ __declare_static_bit_vector(MUL_u32_u32_270,32);\
__declare_static_bit_vector(ADD_u32_u32_271,32);\
bit_vector_mul( &(a_rc_3), &(xval_3), &(MUL_u32_u32_270));\
bit_vector_plus( &(val_3), &(MUL_u32_u32_270), &(ADD_u32_u32_271));\
bit_vector_cast_to_bit_vector(0, &(nval_3), &(ADD_u32_u32_271));\
;

#define _dotP_odd_stmt_277_c_macro_ uint32_t _dotP_odd_stmt_277_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]dotP_odd>\t%s\n",_dotP_odd_stmt_277_c_macro___print_counter,"Cr_3");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_277_c_macro___print_counter,"val_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(val_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_277_c_macro___print_counter,"a_rc_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(a_rc_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_277_c_macro___print_counter,"xval_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(xval_3)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]dotP_odd>\t\t%s\t\t",_dotP_odd_stmt_277_c_macro___print_counter,"nval_3");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(nval_3)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);;

#define _dotP_odd_assign_stmt_282_c_macro_ __declare_static_bit_vector(konst_280,8);\
bit_vector_clear(&konst_280);\
konst_280.val.byte_array[0] = 4;\
__declare_static_bit_vector(ADD_u8_u8_281,8);\
bit_vector_clear(&konst_280);\
konst_280.val.byte_array[0] = 4;\
bit_vector_plus( &(C), &(konst_280), &(ADD_u8_u8_281));\
bit_vector_cast_to_bit_vector(0, &(nC), &(ADD_u8_u8_281));\
;
;

#define _dotP_odd_branch_block_stmt_161_c_export_apply_macro_ bit_vector_cast_to_bit_vector(0, &(nval_0__nval_0), &(nval_0));\
bit_vector_cast_to_bit_vector(0, &(nval_1__nval_1), &(nval_1));\
bit_vector_cast_to_bit_vector(0, &(nval_2__nval_2), &(nval_2));\
bit_vector_cast_to_bit_vector(0, &(nval_3__nval_3), &(nval_3));\
;

#define _dotP_odd_assign_stmt_296_c_macro_ __declare_static_bit_vector(ADD_u32_u32_293,32);\
__declare_static_bit_vector(ADD_u32_u32_294,32);\
__declare_static_bit_vector(ADD_u32_u32_295,32);\
bit_vector_plus( &(nval_2__nval_2), &(nval_3__nval_3), &(ADD_u32_u32_293));\
bit_vector_plus( &(nval_1__nval_1), &(ADD_u32_u32_293), &(ADD_u32_u32_294));\
bit_vector_plus( &(nval_0__nval_0), &(ADD_u32_u32_294), &(ADD_u32_u32_295));\
bit_vector_cast_to_bit_vector(0, &(result), &(ADD_u32_u32_295));\
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
#define _multiplyMatrixVector_branch_block_stmt_302_c_export_decl_macro_ __declare_static_bit_vector(R,8);\
__declare_static_bit_vector(val_even,32);\
__declare_static_bit_vector(val_odd,32);\
__declare_static_bit_vector(nR,8);\


#define _multiplyMatrixVector_merge_stmt_303_c_preamble_macro_ uint8_t merge_stmt_303_entry_flag;\
merge_stmt_303_entry_flag = 1;\
uint8_t loopback_302_flag = 0;\
goto merge_stmt_303_run;\
loopback_302: loopback_302_flag = 1;\
goto merge_stmt_303_run;\
merge_stmt_303_run: ;\

#define _multiplyMatrixVector_phi_stmt_304_c_macro_ __declare_static_bit_vector(konst_306,8);\
bit_vector_clear(&konst_306);\
__declare_static_bit_vector(type_cast_307,8);\
bit_vector_clear(&type_cast_307);\
if(loopback_302_flag) {\
bit_vector_cast_to_bit_vector(0, &(R), &(nR));\
}\
else {\
__declare_static_bit_vector(konst_306,8);\
bit_vector_clear(&konst_306);\
__declare_static_bit_vector(type_cast_307,8);\
bit_vector_clear(&type_cast_307);\
bit_vector_clear(&konst_306);\
bit_vector_bitcast_to_bit_vector( &(type_cast_307), &(konst_306));\
bit_vector_cast_to_bit_vector(0, &(R), &(type_cast_307));\
}\
;
;

#define _multiplyMatrixVector_merge_stmt_303_c_postamble_macro_ loopback_302_flag = 0;\
merge_stmt_303_entry_flag = 0;

#define _multiplyMatrixVector_call_stmt_312_c_macro_ _dotP_even_( &(R), &(val_even));\
;

#define _multiplyMatrixVector_call_stmt_317_c_macro_ __declare_static_bit_vector(konst_314,8);\
bit_vector_clear(&konst_314);\
konst_314.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_315,8);\
bit_vector_clear(&konst_314);\
konst_314.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_314), &(ADD_u8_u8_315));\
_dotP_odd_( &(ADD_u8_u8_315), &(val_odd));\
;

#define _multiplyMatrixVector_assign_stmt_321_c_macro_ bit_vector_cast_to_bit_vector(0, &((y[bit_vector_to_uint64(0, &R)])), &(val_even));\
;

#define _multiplyMatrixVector_assign_stmt_327_c_macro_ __declare_static_bit_vector(konst_323,8);\
bit_vector_clear(&konst_323);\
konst_323.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_324,8);\
bit_vector_clear(&konst_323);\
konst_323.val.byte_array[0] = 1;\
bit_vector_plus( &(R), &(konst_323), &(ADD_u8_u8_324));\
bit_vector_cast_to_bit_vector(0, &((y[bit_vector_to_uint64(0, &ADD_u8_u8_324)])), &(val_odd));\
;

#define _multiplyMatrixVector_assign_stmt_332_c_macro_ __declare_static_bit_vector(konst_330,8);\
bit_vector_clear(&konst_330);\
konst_330.val.byte_array[0] = 2;\
__declare_static_bit_vector(ADD_u8_u8_331,8);\
bit_vector_clear(&konst_330);\
konst_330.val.byte_array[0] = 2;\
bit_vector_plus( &(R), &(konst_330), &(ADD_u8_u8_331));\
bit_vector_cast_to_bit_vector(0, &(nR), &(ADD_u8_u8_331));\
;
;

#define _multiplyMatrixVector_branch_block_stmt_302_c_export_apply_macro_ ;

#define _multiplyMatrixVector_inner_outarg_prep_macro__ ;

#define _multiplyMatrixVector_outer_arg_decl_macro__ ;

#define _multiplyMatrixVector_outer_op_xfer_macro__ ;

#define _mvp_daemon_inner_inarg_prep_macro__ 
#define _mvp_daemon_call_stmt_583_c_macro_ _readMatrix_();\
;

#define _mvp_daemon_branch_block_stmt_584_c_export_decl_macro_ 

#define _mvp_daemon_merge_stmt_585_c_preamble_macro_ uint8_t merge_stmt_585_entry_flag;\
merge_stmt_585_entry_flag = 1;\
uint8_t loopback_584_flag = 0;\
goto merge_stmt_585_run;\
loopback_584: loopback_584_flag = 1;\
goto merge_stmt_585_run;\
merge_stmt_585_run: ;\
;

#define _mvp_daemon_merge_stmt_585_c_postamble_macro_ loopback_584_flag = 0;\
merge_stmt_585_entry_flag = 0;

#define _mvp_daemon_stmt_586_c_macro_ uint32_t _mvp_daemon_stmt_586_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]InputReadStarted>\t%s\n",_mvp_daemon_stmt_586_c_macro___print_counter,"Input_Read");release_file_print_lock(__report_log_file__);;

#define _mvp_daemon_call_stmt_587_c_macro_ _readVector_();\
;

#define _mvp_daemon_call_stmt_588_c_macro_ _multiplyMatrixVector_();\
;

#define _mvp_daemon_call_stmt_589_c_macro_ _sendVector_();\
;

#define _mvp_daemon_stmt_590_c_macro_ uint32_t _mvp_daemon_stmt_590_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]OutputReceived>\t%s\n",_mvp_daemon_stmt_590_c_macro___print_counter,"Output_Sent");release_file_print_lock(__report_log_file__);;
;

#define _mvp_daemon_branch_block_stmt_584_c_export_apply_macro_ ;

#define _mvp_daemon_inner_outarg_prep_macro__ ;

#define _mvp_daemon_outer_arg_decl_macro__ ;

#define _mvp_daemon_outer_op_xfer_macro__ ;

#define _readMatrix_inner_inarg_prep_macro__ 
#define _readMatrix_branch_block_stmt_342_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\
__declare_static_bit_vector(J,8);\
__declare_static_bit_vector(nJ,8);\
__declare_static_bit_vector(J_idx,2);\
__declare_static_bit_vector(Jr,6);\
__declare_static_bit_vector(aval,32);\
__declare_static_bit_vector(J_idx_0,1);\
__declare_static_bit_vector(J_idx_1,1);\
__declare_static_bit_vector(J_idx_2,1);\
__declare_static_bit_vector(J_idx_3,1);\


#define _readMatrix_merge_stmt_343_c_preamble_macro_ uint8_t merge_stmt_343_entry_flag;\
merge_stmt_343_entry_flag = 1;\
uint8_t outer_loopback_342_flag = 0;\
goto merge_stmt_343_run;\
outer_loopback_342: outer_loopback_342_flag = 1;\
goto merge_stmt_343_run;\
merge_stmt_343_run: ;\

#define _readMatrix_phi_stmt_344_c_macro_ __declare_static_bit_vector(konst_346,8);\
bit_vector_clear(&konst_346);\
__declare_static_bit_vector(type_cast_347,8);\
bit_vector_clear(&type_cast_347);\
if(outer_loopback_342_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_346,8);\
bit_vector_clear(&konst_346);\
__declare_static_bit_vector(type_cast_347,8);\
bit_vector_clear(&type_cast_347);\
bit_vector_clear(&konst_346);\
bit_vector_bitcast_to_bit_vector( &(type_cast_347), &(konst_346));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_347));\
}\
;
;

#define _readMatrix_merge_stmt_343_c_postamble_macro_ outer_loopback_342_flag = 0;\
merge_stmt_343_entry_flag = 0;

#define _readMatrix_assign_stmt_354_c_macro_ __declare_static_bit_vector(konst_352,8);\
bit_vector_clear(&konst_352);\
konst_352.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_353,8);\
bit_vector_clear(&konst_352);\
konst_352.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_352), &(ADD_u8_u8_353));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_353));\
;

#define _readMatrix_merge_stmt_355_c_preamble_macro_ uint8_t merge_stmt_355_entry_flag;\
merge_stmt_355_entry_flag = 1;\
uint8_t inner_loopback_342_flag = 0;\
goto merge_stmt_355_run;\
inner_loopback_342: inner_loopback_342_flag = 1;\
goto merge_stmt_355_run;\
merge_stmt_355_run: ;\

#define _readMatrix_phi_stmt_356_c_macro_ __declare_static_bit_vector(konst_358,8);\
bit_vector_clear(&konst_358);\
__declare_static_bit_vector(type_cast_359,8);\
bit_vector_clear(&type_cast_359);\
if(inner_loopback_342_flag) {\
bit_vector_cast_to_bit_vector(0, &(J), &(nJ));\
}\
else {\
__declare_static_bit_vector(konst_358,8);\
bit_vector_clear(&konst_358);\
__declare_static_bit_vector(type_cast_359,8);\
bit_vector_clear(&type_cast_359);\
bit_vector_clear(&konst_358);\
bit_vector_bitcast_to_bit_vector( &(type_cast_359), &(konst_358));\
bit_vector_cast_to_bit_vector(0, &(J), &(type_cast_359));\
}\
;
;

#define _readMatrix_merge_stmt_355_c_postamble_macro_ inner_loopback_342_flag = 0;\
merge_stmt_355_entry_flag = 0;

#define _readMatrix_assign_stmt_366_c_macro_ __declare_static_bit_vector(konst_364,8);\
bit_vector_clear(&konst_364);\
konst_364.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_365,8);\
bit_vector_clear(&konst_364);\
konst_364.val.byte_array[0] = 1;\
bit_vector_plus( &(J), &(konst_364), &(ADD_u8_u8_365));\
bit_vector_cast_to_bit_vector(0, &(nJ), &(ADD_u8_u8_365));\
;

#define _readMatrix_assign_stmt_371_c_macro_ __declare_static_bit_vector(slice_370,2);\
bit_vector_slice(&(J), &(slice_370), 0);\
bit_vector_cast_to_bit_vector(0, &(J_idx), &(slice_370));\
;

#define _readMatrix_assign_stmt_375_c_macro_ __declare_static_bit_vector(slice_374,6);\
bit_vector_slice(&(J), &(slice_374), 2);\
bit_vector_cast_to_bit_vector(0, &(Jr), &(slice_374));\
;

#define _readMatrix_assign_stmt_378_c_macro_ __declare_static_bit_vector(RPIPE_in_data_377,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_377));\
bit_vector_cast_to_bit_vector(0, &(aval), &(RPIPE_in_data_377));\
;

#define _readMatrix_assign_stmt_383_c_macro_ __declare_static_bit_vector(konst_381,2);\
bit_vector_clear(&konst_381);\
__declare_static_bit_vector(EQ_u2_u1_382,1);\
bit_vector_clear(&konst_381);\
bit_vector_equal(0, &(J_idx), &(konst_381), &(EQ_u2_u1_382));\
bit_vector_cast_to_bit_vector(0, &(J_idx_0), &(EQ_u2_u1_382));\
;

#define _readMatrix_assign_stmt_388_c_macro_ __declare_static_bit_vector(konst_386,2);\
bit_vector_clear(&konst_386);\
konst_386.val.byte_array[0] = 1;\
__declare_static_bit_vector(EQ_u2_u1_387,1);\
bit_vector_clear(&konst_386);\
konst_386.val.byte_array[0] = 1;\
bit_vector_equal(0, &(J_idx), &(konst_386), &(EQ_u2_u1_387));\
bit_vector_cast_to_bit_vector(0, &(J_idx_1), &(EQ_u2_u1_387));\
;

#define _readMatrix_assign_stmt_393_c_macro_ __declare_static_bit_vector(konst_391,2);\
bit_vector_clear(&konst_391);\
konst_391.val.byte_array[0] = 2;\
__declare_static_bit_vector(EQ_u2_u1_392,1);\
bit_vector_clear(&konst_391);\
konst_391.val.byte_array[0] = 2;\
bit_vector_equal(0, &(J_idx), &(konst_391), &(EQ_u2_u1_392));\
bit_vector_cast_to_bit_vector(0, &(J_idx_2), &(EQ_u2_u1_392));\
;

#define _readMatrix_assign_stmt_398_c_macro_ __declare_static_bit_vector(konst_396,2);\
bit_vector_clear(&konst_396);\
konst_396.val.byte_array[0] = 3;\
__declare_static_bit_vector(EQ_u2_u1_397,1);\
bit_vector_clear(&konst_396);\
konst_396.val.byte_array[0] = 3;\
bit_vector_equal(0, &(J_idx), &(konst_396), &(EQ_u2_u1_397));\
bit_vector_cast_to_bit_vector(0, &(J_idx_3), &(EQ_u2_u1_397));\
;

#define _readMatrix_assign_stmt_404_c_macro_ if (has_undefined_bit(&J_idx_0)) {fprintf(stderr, "Error: variable J_idx_0 has undefined value (%s) at test point.\n", to_string(&J_idx_0));assert(0);} \
if (bit_vector_to_uint64(0, &J_idx_0)) {\
bit_vector_cast_to_bit_vector(0, &((A_0[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_410_c_macro_ if (bit_vector_to_uint64(0, &J_idx_0)) {\
uint32_t _readMatrix_stmt_410_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_0>\t%s\n",_readMatrix_stmt_410_c_macro___print_counter,"J_idx_0");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_0>\t\t%s\t\t",_readMatrix_stmt_410_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_0>\t\t%s\t\t",_readMatrix_stmt_410_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_0>\t\t%s\t\t",_readMatrix_stmt_410_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_0>\t\t%s\t\t",_readMatrix_stmt_410_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readMatrix_assign_stmt_416_c_macro_ if (has_undefined_bit(&J_idx_1)) {fprintf(stderr, "Error: variable J_idx_1 has undefined value (%s) at test point.\n", to_string(&J_idx_1));assert(0);} \
if (bit_vector_to_uint64(0, &J_idx_1)) {\
bit_vector_cast_to_bit_vector(0, &((A_1[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_422_c_macro_ if (bit_vector_to_uint64(0, &J_idx_1)) {\
uint32_t _readMatrix_stmt_422_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_1>\t%s\n",_readMatrix_stmt_422_c_macro___print_counter,"J_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_1>\t\t%s\t\t",_readMatrix_stmt_422_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_1>\t\t%s\t\t",_readMatrix_stmt_422_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_1>\t\t%s\t\t",_readMatrix_stmt_422_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_1>\t\t%s\t\t",_readMatrix_stmt_422_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readMatrix_assign_stmt_428_c_macro_ if (has_undefined_bit(&J_idx_2)) {fprintf(stderr, "Error: variable J_idx_2 has undefined value (%s) at test point.\n", to_string(&J_idx_2));assert(0);} \
if (bit_vector_to_uint64(0, &J_idx_2)) {\
bit_vector_cast_to_bit_vector(0, &((A_2[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_434_c_macro_ if (bit_vector_to_uint64(0, &J_idx_2)) {\
uint32_t _readMatrix_stmt_434_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_2>\t%s\n",_readMatrix_stmt_434_c_macro___print_counter,"J_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_2>\t\t%s\t\t",_readMatrix_stmt_434_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_2>\t\t%s\t\t",_readMatrix_stmt_434_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_2>\t\t%s\t\t",_readMatrix_stmt_434_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_2>\t\t%s\t\t",_readMatrix_stmt_434_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readMatrix_assign_stmt_440_c_macro_ if (has_undefined_bit(&J_idx_3)) {fprintf(stderr, "Error: variable J_idx_3 has undefined value (%s) at test point.\n", to_string(&J_idx_3));assert(0);} \
if (bit_vector_to_uint64(0, &J_idx_3)) {\
bit_vector_cast_to_bit_vector(0, &((A_3[bit_vector_to_uint64(0, &I)][bit_vector_to_uint64(0, &Jr)])), &(aval));\
}
;

#define _readMatrix_stmt_446_c_macro_ if (bit_vector_to_uint64(0, &J_idx_3)) {\
uint32_t _readMatrix_stmt_446_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_3>\t%s\n",_readMatrix_stmt_446_c_macro___print_counter,"J_idx");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_3>\t\t%s\t\t",_readMatrix_stmt_446_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_3>\t\t%s\t\t",_readMatrix_stmt_446_c_macro___print_counter,"J");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(J)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_3>\t\t%s\t\t",_readMatrix_stmt_446_c_macro___print_counter,"Jr");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Jr)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readMatrix_with_J_idx_3>\t\t%s\t\t",_readMatrix_stmt_446_c_macro___print_counter,"aval");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(aval)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};
;

#define _readMatrix_branch_block_stmt_342_c_export_apply_macro_ ;

#define _readMatrix_inner_outarg_prep_macro__ ;

#define _readMatrix_outer_arg_decl_macro__ ;

#define _readMatrix_outer_op_xfer_macro__ ;

#define _readVector_inner_inarg_prep_macro__ 
#define _readVector_branch_block_stmt_462_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(I_idx,2);\
__declare_static_bit_vector(Ir,6);\
__declare_static_bit_vector(temp_val,32);\
__declare_static_bit_vector(I_idx_0,1);\
__declare_static_bit_vector(I_idx_1,1);\
__declare_static_bit_vector(I_idx_2,1);\
__declare_static_bit_vector(I_idx_3,1);\
__declare_static_bit_vector(nI,8);\


#define _readVector_merge_stmt_464_c_preamble_macro_ uint8_t merge_stmt_464_entry_flag;\
merge_stmt_464_entry_flag = do_while_entry_flag;\
goto merge_stmt_464_run;\
merge_stmt_464_run: ;\

#define _readVector_phi_stmt_465_c_macro_ __declare_static_bit_vector(konst_467,8);\
bit_vector_clear(&konst_467);\
__declare_static_bit_vector(type_cast_468,8);\
bit_vector_clear(&type_cast_468);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_467,8);\
bit_vector_clear(&konst_467);\
__declare_static_bit_vector(type_cast_468,8);\
bit_vector_clear(&type_cast_468);\
bit_vector_clear(&konst_467);\
bit_vector_bitcast_to_bit_vector( &(type_cast_468), &(konst_467));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_468));\
}\
;
;

#define _readVector_merge_stmt_464_c_postamble_macro_ merge_stmt_464_entry_flag = 0;

#define _readVector_assign_stmt_474_c_macro_ __declare_static_bit_vector(slice_473,2);\
bit_vector_slice(&(I), &(slice_473), 0);\
bit_vector_cast_to_bit_vector(0, &(I_idx), &(slice_473));\
;

#define _readVector_assign_stmt_478_c_macro_ __declare_static_bit_vector(slice_477,6);\
bit_vector_slice(&(I), &(slice_477), 2);\
bit_vector_cast_to_bit_vector(0, &(Ir), &(slice_477));\
;

#define _readVector_assign_stmt_481_c_macro_ __declare_static_bit_vector(RPIPE_in_data_480,32);\
read_bit_vector_from_pipe("in_data",&(RPIPE_in_data_480));\
bit_vector_cast_to_bit_vector(0, &(temp_val), &(RPIPE_in_data_480));\
;

#define _readVector_assign_stmt_486_c_macro_ __declare_static_bit_vector(konst_484,2);\
bit_vector_clear(&konst_484);\
__declare_static_bit_vector(EQ_u2_u1_485,1);\
bit_vector_clear(&konst_484);\
bit_vector_equal(0, &(I_idx), &(konst_484), &(EQ_u2_u1_485));\
bit_vector_cast_to_bit_vector(0, &(I_idx_0), &(EQ_u2_u1_485));\
;

#define _readVector_assign_stmt_491_c_macro_ __declare_static_bit_vector(konst_489,2);\
bit_vector_clear(&konst_489);\
konst_489.val.byte_array[0] = 1;\
__declare_static_bit_vector(EQ_u2_u1_490,1);\
bit_vector_clear(&konst_489);\
konst_489.val.byte_array[0] = 1;\
bit_vector_equal(0, &(I_idx), &(konst_489), &(EQ_u2_u1_490));\
bit_vector_cast_to_bit_vector(0, &(I_idx_1), &(EQ_u2_u1_490));\
;

#define _readVector_assign_stmt_496_c_macro_ __declare_static_bit_vector(konst_494,2);\
bit_vector_clear(&konst_494);\
konst_494.val.byte_array[0] = 2;\
__declare_static_bit_vector(EQ_u2_u1_495,1);\
bit_vector_clear(&konst_494);\
konst_494.val.byte_array[0] = 2;\
bit_vector_equal(0, &(I_idx), &(konst_494), &(EQ_u2_u1_495));\
bit_vector_cast_to_bit_vector(0, &(I_idx_2), &(EQ_u2_u1_495));\
;

#define _readVector_assign_stmt_501_c_macro_ __declare_static_bit_vector(konst_499,2);\
bit_vector_clear(&konst_499);\
konst_499.val.byte_array[0] = 3;\
__declare_static_bit_vector(EQ_u2_u1_500,1);\
bit_vector_clear(&konst_499);\
konst_499.val.byte_array[0] = 3;\
bit_vector_equal(0, &(I_idx), &(konst_499), &(EQ_u2_u1_500));\
bit_vector_cast_to_bit_vector(0, &(I_idx_3), &(EQ_u2_u1_500));\
;

#define _readVector_assign_stmt_506_c_macro_ if (has_undefined_bit(&I_idx_0)) {fprintf(stderr, "Error: variable I_idx_0 has undefined value (%s) at test point.\n", to_string(&I_idx_0));assert(0);} \
if (bit_vector_to_uint64(0, &I_idx_0)) {\
bit_vector_cast_to_bit_vector(0, &((x_0[bit_vector_to_uint64(0, &Ir)])), &(temp_val));\
}
;

#define _readVector_stmt_512_c_macro_ if (bit_vector_to_uint64(0, &I_idx_0)) {\
uint32_t _readVector_stmt_512_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readInput_with_I_idx_0>\t%s\n",_readVector_stmt_512_c_macro___print_counter,"I_idx_0");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_0>\t\t%s\t\t",_readVector_stmt_512_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_0>\t\t%s\t\t",_readVector_stmt_512_c_macro___print_counter,"I_idx");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I_idx)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_0>\t\t%s\t\t",_readVector_stmt_512_c_macro___print_counter,"Ir");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Ir)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_0>\t\t%s\t\t",_readVector_stmt_512_c_macro___print_counter,"temp_val");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(temp_val)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readVector_assign_stmt_517_c_macro_ if (has_undefined_bit(&I_idx_1)) {fprintf(stderr, "Error: variable I_idx_1 has undefined value (%s) at test point.\n", to_string(&I_idx_1));assert(0);} \
if (bit_vector_to_uint64(0, &I_idx_1)) {\
bit_vector_cast_to_bit_vector(0, &((x_1[bit_vector_to_uint64(0, &Ir)])), &(temp_val));\
}
;

#define _readVector_stmt_523_c_macro_ if (bit_vector_to_uint64(0, &I_idx_1)) {\
uint32_t _readVector_stmt_523_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readInput_with_I_idx_1>\t%s\n",_readVector_stmt_523_c_macro___print_counter,"I_idx_1");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_1>\t\t%s\t\t",_readVector_stmt_523_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_1>\t\t%s\t\t",_readVector_stmt_523_c_macro___print_counter,"I_idx");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I_idx)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_1>\t\t%s\t\t",_readVector_stmt_523_c_macro___print_counter,"Ir");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Ir)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_1>\t\t%s\t\t",_readVector_stmt_523_c_macro___print_counter,"temp_val");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(temp_val)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readVector_assign_stmt_528_c_macro_ if (has_undefined_bit(&I_idx_2)) {fprintf(stderr, "Error: variable I_idx_2 has undefined value (%s) at test point.\n", to_string(&I_idx_2));assert(0);} \
if (bit_vector_to_uint64(0, &I_idx_2)) {\
bit_vector_cast_to_bit_vector(0, &((x_2[bit_vector_to_uint64(0, &Ir)])), &(temp_val));\
}
;

#define _readVector_stmt_534_c_macro_ if (bit_vector_to_uint64(0, &I_idx_2)) {\
uint32_t _readVector_stmt_534_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readInput_with_I_idx_2>\t%s\n",_readVector_stmt_534_c_macro___print_counter,"I_idx_2");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_2>\t\t%s\t\t",_readVector_stmt_534_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_2>\t\t%s\t\t",_readVector_stmt_534_c_macro___print_counter,"I_idx");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I_idx)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_2>\t\t%s\t\t",_readVector_stmt_534_c_macro___print_counter,"Ir");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Ir)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_2>\t\t%s\t\t",_readVector_stmt_534_c_macro___print_counter,"temp_val");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(temp_val)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readVector_assign_stmt_539_c_macro_ if (has_undefined_bit(&I_idx_3)) {fprintf(stderr, "Error: variable I_idx_3 has undefined value (%s) at test point.\n", to_string(&I_idx_3));assert(0);} \
if (bit_vector_to_uint64(0, &I_idx_3)) {\
bit_vector_cast_to_bit_vector(0, &((x_3[bit_vector_to_uint64(0, &Ir)])), &(temp_val));\
}
;

#define _readVector_stmt_545_c_macro_ if (bit_vector_to_uint64(0, &I_idx_3)) {\
uint32_t _readVector_stmt_545_c_macro___print_counter= get_file_print_lock(__report_log_file__);if(__report_log_file__ != NULL) fprintf(__report_log_file__,"[%u]readInput_with_I_idx_3>\t%s\n",_readVector_stmt_545_c_macro___print_counter,"I_idx_3");if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_3>\t\t%s\t\t",_readVector_stmt_545_c_macro___print_counter,"I");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_3>\t\t%s\t\t",_readVector_stmt_545_c_macro___print_counter,"I_idx");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(I_idx)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_3>\t\t%s\t\t",_readVector_stmt_545_c_macro___print_counter,"Ir");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(Ir)));fflush (__report_log_file__);}if(__report_log_file__ != NULL) {fprintf(__report_log_file__,"[%u]readInput_with_I_idx_3>\t\t%s\t\t",_readVector_stmt_545_c_macro___print_counter,"temp_val");fprintf(__report_log_file__, ":= 0x%s\n",to_hex_string(&(temp_val)));fflush (__report_log_file__);}release_file_print_lock(__report_log_file__);};

#define _readVector_assign_stmt_550_c_macro_ __declare_static_bit_vector(konst_548,8);\
bit_vector_clear(&konst_548);\
konst_548.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_549,8);\
bit_vector_clear(&konst_548);\
konst_548.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_548), &(ADD_u8_u8_549));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_549));\
;
;

#define _readVector_branch_block_stmt_462_c_export_apply_macro_ ;

#define _readVector_inner_outarg_prep_macro__ ;

#define _readVector_outer_arg_decl_macro__ ;

#define _readVector_outer_op_xfer_macro__ ;

#define _sendVector_inner_inarg_prep_macro__ 
#define _sendVector_branch_block_stmt_558_c_export_decl_macro_ __declare_static_bit_vector(I,8);\
__declare_static_bit_vector(nI,8);\


#define _sendVector_merge_stmt_560_c_preamble_macro_ uint8_t merge_stmt_560_entry_flag;\
merge_stmt_560_entry_flag = do_while_entry_flag;\
goto merge_stmt_560_run;\
merge_stmt_560_run: ;\

#define _sendVector_phi_stmt_561_c_macro_ __declare_static_bit_vector(konst_563,8);\
bit_vector_clear(&konst_563);\
__declare_static_bit_vector(type_cast_564,8);\
bit_vector_clear(&type_cast_564);\
if(do_while_loopback_flag) {\
bit_vector_cast_to_bit_vector(0, &(I), &(nI));\
}\
else {\
__declare_static_bit_vector(konst_563,8);\
bit_vector_clear(&konst_563);\
__declare_static_bit_vector(type_cast_564,8);\
bit_vector_clear(&type_cast_564);\
bit_vector_clear(&konst_563);\
bit_vector_bitcast_to_bit_vector( &(type_cast_564), &(konst_563));\
bit_vector_cast_to_bit_vector(0, &(I), &(type_cast_564));\
}\
;
;

#define _sendVector_merge_stmt_560_c_postamble_macro_ merge_stmt_560_entry_flag = 0;

#define _sendVector_assign_stmt_570_c_macro_ write_bit_vector_to_pipe("out_data",&((y[bit_vector_to_uint64(0, &I)])));\
;

#define _sendVector_assign_stmt_575_c_macro_ __declare_static_bit_vector(konst_573,8);\
bit_vector_clear(&konst_573);\
konst_573.val.byte_array[0] = 1;\
__declare_static_bit_vector(ADD_u8_u8_574,8);\
bit_vector_clear(&konst_573);\
konst_573.val.byte_array[0] = 1;\
bit_vector_plus( &(I), &(konst_573), &(ADD_u8_u8_574));\
bit_vector_cast_to_bit_vector(0, &(nI), &(ADD_u8_u8_574));\
;
;

#define _sendVector_branch_block_stmt_558_c_export_apply_macro_ ;

#define _sendVector_inner_outarg_prep_macro__ ;

#define _sendVector_outer_arg_decl_macro__ ;

#define _sendVector_outer_op_xfer_macro__ ;
