BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=FLAG_CF|FLAG_OF|FLAG_SF|FLAG_AF|FLAG_PF 
;TEST_FILE_META_END
    ;TEST_BEGIN_RECORDING
    mov edi, 0x114400
    bsf eax, edi
    ;TEST_END_RECORDING

