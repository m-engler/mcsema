BITS 64
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=
;TEST_FILE_META_END
    ; SETB
    mov ecx, 0x010
    mov ebx, 0x0F0
    cmp ecx, ebx
    ;TEST_BEGIN_RECORDING
    setb al
    ;TEST_END_RECORDING 
