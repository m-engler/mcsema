set(LLVM_TARGET_DEFINITIONS MSP430.td)

tablegen(LLVM MSP430GenRegisterInfo.inc -gen-register-info)
tablegen(LLVM MSP430GenInstrInfo.inc -gen-instr-info)
tablegen(LLVM MSP430GenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM MSP430GenDAGISel.inc -gen-dag-isel)
tablegen(LLVM MSP430GenCallingConv.inc -gen-callingconv)
tablegen(LLVM MSP430GenSubtargetInfo.inc -gen-subtarget)
add_public_tablegen_target(MSP430CommonTableGen)

add_llvm_target(MSP430CodeGen
  MSP430BranchSelector.cpp
  MSP430ISelDAGToDAG.cpp
  MSP430ISelLowering.cpp
  MSP430InstrInfo.cpp
  MSP430FrameLowering.cpp
  MSP430MachineFunctionInfo.cpp
  MSP430RegisterInfo.cpp
  MSP430Subtarget.cpp
  MSP430TargetMachine.cpp
  MSP430SelectionDAGInfo.cpp
  MSP430AsmPrinter.cpp
  MSP430MCInstLower.cpp
  )

add_subdirectory(InstPrinter)
add_subdirectory(TargetInfo)
add_subdirectory(MCTargetDesc)
