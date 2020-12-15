#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <stdio.h>
#include <BitVectors.h>
#include <pipeHandler.h>
void _set_trace_file(FILE* fp);
void __init_aa_globals__(); 
void dotP_even(uint8_t, uint32_t* );
void _dotP_even_(bit_vector*, bit_vector* );
void dotP_odd(uint8_t, uint32_t* );
void _dotP_odd_(bit_vector*, bit_vector* );
void global_storage_initializer_();
void _global_storage_initializer__();
void multiplyMatrixVector();
void _multiplyMatrixVector_();
void mvp_daemon();
void _mvp_daemon_();
void readMatrix();
void _readMatrix_();
void readVector();
void _readVector_();
void sendVector();
void _sendVector_();
void start_daemons(FILE* fp, int trace_on);
void stop_daemons();
