ENTRY(_start)

MEMORY {
  flash : ORIGIN = 0x30000000, LENGTH = 64M
  sram :  ORIGIN = 0x0f000000, LENGTH = 8K
  sdram : ORIGIN = 0xa0000000, LENGTH = 32M
}

SECTIONS {
  . = ORIGIN(flash);

  .fsbl :{
    *(entry)
    *(.text.fsbl)
    . = ALIGN(4);
  } > flash AT> flash

  ssbl_flash_start = LOADADDR(.ssbl);
  .ssbl : {
    _ssbl = .;
    *(.text.ssbl)
    . = ALIGN(4);
    _essbl = .;
  } > sram AT> flash

  text_flash_start = LOADADDR(.text);
  .text : {
    _text = .;
    *(.text*)
    . = ALIGN(4);
    _etext = .;
  } > sdram AT> flash

  rodata_flash_start = LOADADDR(.rodata);
  .rodata : {
    _rodata = . ;
    *(.rodata*)
    *(.srodata)
    *(.srodata.*)
    . = ALIGN(4);
    _erodata = .;
  } > sdram AT> flash

  data_flash_start = LOADADDR(.data);
  .data : {
    _data = .;
    *(.data)
    *(.data.*)
    *(.sdata)
    *(.sdata.*)
    . = ALIGN(4);
    _edata = .;
  } > sdram AT> flash
  edata = .;
  
  .bss : {
	  _bss_start = .;
    *(.bss*)
    *(.sbss*)
    *(.scommon)
    . = ALIGN(4);
    _bss_end = .;
  } > sdram AT> flash

  _heap_start = ALIGN(0x1000);
  _heap_end = _heap_start  + 0x4000000;

  _stack_top = ALIGN(0x1000);
  . = _stack_top + 0x4000000;
  _stack_pointer = .;
}