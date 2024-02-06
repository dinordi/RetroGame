MEMORY
{
  mcuboot_hdr (RX): org = 0x0, len = 0x20
  metadata (RX): org = 0x20, len = 0x20
  ROM (RX): org = 0x40, len = 8388608 - 0x40
  iram0_0_seg(RX): org = (0x40370000 + 0x4000), len = (((0x403BA000 - (0x40378000 - 0x3FC88000)) - 0x3FC88000) + 0x8000 - 0x4000) - 0x0
  dram0_0_seg(RW): org = (0x3FC88000), len = ((0x403BA000 - (0x40378000 - 0x3FC88000)) - 0x3FC88000) - 0x0
  irom0_0_seg(RX): org = 0x42000020, len = 8388608 -0x20
  drom0_0_seg(R): org = 0x3C000040, len = 8388608 - 0x40
  rtc_iram_seg(RWX): org = 0x600fe000, len = 0x2000
  rtc_data_seg(RW): org = 0x600fe000, len = 0x2000
  rtc_slow_seg(RW): org = 0x50000000, len = 0x2000
  IDT_LIST(RW): org = 0x3ebfe010, len = 0x2000
}
ENTRY("__start")
SECTIONS
{
  .mcuboot_header :
  {
    QUAD(0x0)
    QUAD(0x0)
    QUAD(0x0)
    QUAD(0x0)
  } > mcuboot_hdr
  .metadata :
  {
    LONG(0xace637d3)
    KEEP(*(.entry_addr))
    LONG(ADDR(.iram0.vectors))
    LONG(LOADADDR(.iram0.vectors))
    LONG(LOADADDR(.iram0.text) + SIZEOF(.iram0.text) - LOADADDR(.iram0.vectors))
    LONG(ADDR(.dram0.data))
    LONG(LOADADDR(.dram0.data))
    LONG(LOADADDR(.dram0.end) + SIZEOF(.dram0.end) - LOADADDR(.dram0.data))
  } > metadata
 .rel.plt :
 {
 *(.rel.plt)
 PROVIDE_HIDDEN (__rel_iplt_start = .);
 *(.rel.iplt)
 PROVIDE_HIDDEN (__rel_iplt_end = .);
 }
 .rela.plt :
 {
 *(.rela.plt)
 PROVIDE_HIDDEN (__rela_iplt_start = .);
 *(.rela.iplt)
 PROVIDE_HIDDEN (__rela_iplt_end = .);
 }
 .rel.dyn :
 {
 *(.rel.*)
 }
 .rela.dyn :
 {
 *(.rela.*)
 }
  _image_drom_start = LOADADDR(rodata);
  _image_drom_size = LOADADDR(_RODATA_SECTION_END) + SIZEOF(_RODATA_SECTION_END) - _image_drom_start;
  _image_drom_vaddr = ADDR(rodata);
  rodata : ALIGN(0x10)
  {
    _rodata_reserved_start = ABSOLUTE(.);
    _rodata_start = ABSOLUTE(.);
    *(.rodata_desc .rodata_desc.*)
    *(.rodata_custom_desc .rodata_custom_desc.*)
    __rodata_region_start = ABSOLUTE(.);
    . = ALIGN(4);
    . = ALIGN(4);
    *(EXCLUDE_FILE (*libarch__xtensa__core.a:* *libkernel.a:fatal.* *libkernel.a:init.* *libzephyr.a:cbprintf_complete* *libzephyr.a:log_core.* *libzephyr.a:log_backend_uart.* *libzephyr.a:log_output.* *libzephyr.a:loader.* *libdrivers__serial.a:uart_esp32.*) .rodata)
    *(EXCLUDE_FILE (*libarch__xtensa__core.a:* *libkernel.a:fatal.* *libkernel.a:init.* *libzephyr.a:cbprintf_complete* *libzephyr.a:log_core.* *libzephyr.a:log_backend_uart.* *libzephyr.a:log_output.* *libzephyr.a:loader.* *libdrivers__serial.a:uart_esp32.*) .rodata.*)
    *(.irom1.text)
    *(.gnu.linkonce.r.*)
    *(.rodata1)
    __XT_EXCEPTION_TABLE_ = ABSOLUTE(.);
    *(.xt_except_table)
    *(.gcc_except_table .gcc_except_table.*)
    *(.gnu.linkonce.e.*)
    *(.gnu.version_r)
    . = (. + 3) & ~ 3;
    __eh_frame = ABSOLUTE(.);
    KEEP(*(.eh_frame))
    . = (. + 7) & ~ 3;
    __XT_EXCEPTION_DESCS_ = ABSOLUTE(.);
    *(.xt_except_desc)
    *(.gnu.linkonce.h.*)
    __XT_EXCEPTION_DESCS_END__ = ABSOLUTE(.);
    *(.xt_except_desc_end)
    *(.dynamic)
    *(.gnu.version_d)
    . = ALIGN(4);
    __rodata_region_end = ABSOLUTE(.);
    _lit4_start = ABSOLUTE(.);
    *(*.lit4)
    *(.lit4.*)
    *(.gnu.linkonce.lit4.*)
    _lit4_end = ABSOLUTE(.);
    . = ALIGN(4);
    _thread_local_start = ABSOLUTE(.);
    *(.tdata)
    *(.tdata.*)
    *(.tbss)
    *(.tbss.*)
    *(.rodata_wlog)
    *(.rodata_wlog*)
    _thread_local_end = ABSOLUTE(.);
    . = ALIGN(4);
  } > drom0_0_seg AT > ROM
 ctors :
 {
  . = ALIGN(4);
  __ZEPHYR_CTOR_LIST__ = .;
  LONG((__ZEPHYR_CTOR_END__ - __ZEPHYR_CTOR_LIST__) / 4 - 2)
  KEEP(*(SORT_BY_NAME(".ctors*")))
  __CTOR_LIST__ = .;
  LONG(0)
  __ZEPHYR_CTOR_END__ = .;
  LONG(0)
  __CTOR_END__ = .;
 } > drom0_0_seg AT > ROM
 init_array :
 {
  . = ALIGN(4);
  __init_array_start = .;
  __init_array_end = .;
  __zephyr_init_array_start = .;
  KEEP(*(SORT_BY_NAME(".init_array*")))
  __zephyr_init_array_end = .;
 } > drom0_0_seg AT > ROM
 initlevel :
 {
  __init_start = .;
  __init_EARLY_start = .; KEEP(*(SORT(.z_init_EARLY?_*))); KEEP(*(SORT(.z_init_EARLY??_*)));
  __init_PRE_KERNEL_1_start = .; KEEP(*(SORT(.z_init_PRE_KERNEL_1?_*))); KEEP(*(SORT(.z_init_PRE_KERNEL_1??_*)));
  __init_PRE_KERNEL_2_start = .; KEEP(*(SORT(.z_init_PRE_KERNEL_2?_*))); KEEP(*(SORT(.z_init_PRE_KERNEL_2??_*)));
  __init_POST_KERNEL_start = .; KEEP(*(SORT(.z_init_POST_KERNEL?_*))); KEEP(*(SORT(.z_init_POST_KERNEL??_*)));
  __init_APPLICATION_start = .; KEEP(*(SORT(.z_init_APPLICATION?_*))); KEEP(*(SORT(.z_init_APPLICATION??_*)));
  __init_SMP_start = .; KEEP(*(SORT(.z_init_SMP?_*))); KEEP(*(SORT(.z_init_SMP??_*)));
  __init_end = .;
 } > drom0_0_seg AT > ROM
 device_area : SUBALIGN(4) { _device_list_start = .; KEEP(*(SORT(._device.static.*_?_*))); KEEP(*(SORT(._device.static.*_??_*))); _device_list_end = .; } > drom0_0_seg AT > ROM
 initlevel_error :
 {
  KEEP(*(SORT(.z_init_[_A-Z0-9]*)))
 }
 ASSERT(SIZEOF(initlevel_error) == 0, "Undefined initialization levels used.")
 app_shmem_regions : ALIGN_WITH_INPUT
 {
  __app_shmem_regions_start = .;
  KEEP(*(SORT(.app_regions.*)));
  __app_shmem_regions_end = .;
 } > drom0_0_seg AT > ROM
 k_p4wq_initparam_area : SUBALIGN(4) { _k_p4wq_initparam_list_start = .; KEEP(*(SORT_BY_NAME(._k_p4wq_initparam.static.*))); _k_p4wq_initparam_list_end = .; } > drom0_0_seg AT > ROM
 _static_thread_data_area : SUBALIGN(4) { __static_thread_data_list_start = .; KEEP(*(SORT_BY_NAME(.__static_thread_data.static.*))); __static_thread_data_list_end = .; } > drom0_0_seg AT > ROM
 device_deps : ALIGN_WITH_INPUT
 {
__device_deps_start = .;
KEEP(*(SORT(.__device_deps_pass2*)));
__device_deps_end = .;
 } > drom0_0_seg AT > ROM
ztest :
{
 _ztest_expected_result_entry_list_start = .; KEEP(*(SORT_BY_NAME(._ztest_expected_result_entry.static.*))); _ztest_expected_result_entry_list_end = .;
 _ztest_suite_node_list_start = .; KEEP(*(SORT_BY_NAME(._ztest_suite_node.static.*))); _ztest_suite_node_list_end = .;
 _ztest_unit_test_list_start = .; KEEP(*(SORT_BY_NAME(._ztest_unit_test.static.*))); _ztest_unit_test_list_end = .;
 _ztest_test_rule_list_start = .; KEEP(*(SORT_BY_NAME(._ztest_test_rule.static.*))); _ztest_test_rule_list_end = .;
} > drom0_0_seg AT > ROM
 bt_l2cap_fixed_chan_area : SUBALIGN(4) { _bt_l2cap_fixed_chan_list_start = .; KEEP(*(SORT_BY_NAME(._bt_l2cap_fixed_chan.static.*))); _bt_l2cap_fixed_chan_list_end = .; } > drom0_0_seg AT > ROM
 bt_gatt_service_static_area : SUBALIGN(4) { _bt_gatt_service_static_list_start = .; KEEP(*(SORT_BY_NAME(._bt_gatt_service_static.static.*))); _bt_gatt_service_static_list_end = .; } > drom0_0_seg AT > ROM
 tracing_backend_area : SUBALIGN(4) { _tracing_backend_list_start = .; KEEP(*(SORT_BY_NAME(._tracing_backend.static.*))); _tracing_backend_list_end = .; } > drom0_0_seg AT > ROM
 zephyr_dbg_info : ALIGN_WITH_INPUT
 {
  KEEP(*(".dbg_thread_info"));
 } > drom0_0_seg AT > ROM
 symbol_to_keep : ALIGN_WITH_INPUT
 {
  __symbol_to_keep_start = .;
  KEEP(*(SORT(.symbol_to_keep*)));
  __symbol_to_keep_end = .;
 } > drom0_0_seg AT > ROM
 shell_area : SUBALIGN(4) { _shell_list_start = .; KEEP(*(SORT_BY_NAME(._shell.static.*))); _shell_list_end = .; } > drom0_0_seg AT > ROM
 shell_root_cmds_area : SUBALIGN(4) { _shell_root_cmds_list_start = .; KEEP(*(SORT_BY_NAME(._shell_root_cmds.static.*))); _shell_root_cmds_list_end = .; } > drom0_0_seg AT > ROM
 shell_subcmds_area : SUBALIGN(4) { _shell_subcmds_list_start = .; KEEP(*(SORT_BY_NAME(._shell_subcmds.static.*))); _shell_subcmds_list_end = .; } > drom0_0_seg AT > ROM
 shell_dynamic_subcmds_area : SUBALIGN(4) { _shell_dynamic_subcmds_list_start = .; KEEP(*(SORT_BY_NAME(._shell_dynamic_subcmds.static.*))); _shell_dynamic_subcmds_list_end = .; } > drom0_0_seg AT > ROM
 cfb_font_area : SUBALIGN(4) { _cfb_font_list_start = .; KEEP(*(SORT_BY_NAME(._cfb_font.static.*))); _cfb_font_list_end = .; } > drom0_0_seg AT > ROM
/DISCARD/ :
{
 KEEP(*(.irq_info*))
 KEEP(*(.intList*))
}
  _RODATA_SECTION_END : ALIGN(0x10)
  {
    _rodata_reserved_end = ABSOLUTE(.);
    . = ALIGN(16);
    _image_rodata_end = ABSOLUTE(.);
  } > drom0_0_seg AT > ROM
  .iram0.vectors : ALIGN(4)
  {
    _iram_start = ABSOLUTE(.);
    _init_start = ABSOLUTE(.);
    . = 0x0;
    KEEP(*(.WindowVectors.text));
    . = 0x180;
    KEEP(*(.Level2InterruptVector.text));
    . = 0x1c0;
    KEEP(*(.Level3InterruptVector.text));
    . = 0x200;
    KEEP(*(.Level4InterruptVector.text));
    . = 0x240;
    KEEP(*(.Level5InterruptVector.text));
    . = 0x280;
    KEEP(*(.DebugExceptionVector.text));
    . = 0x2c0;
    KEEP(*(.NMIExceptionVector.text));
    . = 0x300;
    KEEP(*(.KernelExceptionVector.text));
    . = 0x340;
    KEEP(*(.UserExceptionVector.text));
    . = 0x3C0;
    KEEP(*(.DoubleExceptionVector.text));
    . = 0x400;
    _invalid_pc_placeholder = ABSOLUTE(.);
    *(.*Vector.literal)
    *(.UserEnter.literal);
    *(.UserEnter.text);
    . = ALIGN (16);
    *(.entry.text)
    *(.init.literal)
    *(.init)
    _init_end = ABSOLUTE(.);
  } > iram0_0_seg AT > ROM
  .iram0.text : ALIGN(4)
  {
    _iram_text_start = ABSOLUTE(.);
    *(.iram1 .iram1.*)
    *(.iram0.literal .iram.literal .iram.text.literal .iram0.text .iram.text)
    *libesp32.a:panic.*(.literal .text .literal.* .text.*)
    *librtc.a:(.literal .text .literal.* .text.*)
    *libarch__xtensa__core.a:(.literal .text .literal.* .text.*)
    *libkernel.a:(.literal .text .literal.* .text.*)
    *libsoc.a:rtc_*.*(.literal .text .literal.* .text.*)
    *libsoc.a:cpu_util.*(.literal .text .literal.* .text.*)
    *libgcc.a:lib2funcs.*(.literal .text .literal.* .text.*)
    *libzephyr.a:spiram*.*(.literal .text .literal.* .text.*)
    *libzephyr.a:spi_timing*.*(.literal .text .literal.* .text.*)
    *libzephyr.a:spi_flash*.*(.literal .text .literal.* .text.*)
    *libdrivers__flash.a:flash_esp32.*(.literal .text .literal.* .text.*)
    *libzephyr.a:windowspill_asm.*(.literal .text .literal.* .text.*)
    *libzephyr.a:log_noos.*(.literal .text .literal.* .text.*)
    *libdrivers__timer.a:xtensa_sys_timer.*(.literal .text .literal.* .text.*)
    *libzephyr.a:systimer_hal.*(.literal .text .literal.* .text.*)
    *libzephyr.a:log_core.*(.literal .text .literal.* .text.*)
    *libzephyr.a:cbprintf_complete.*(.literal .text .literal.* .text.*)
    *libzephyr.a:printk.*(.literal.printk .literal.vprintk .literal.char_out .text.printk .text.vprintk .text.char_out)
    *libzephyr.a:log_msg.*(.literal .text .literal.* .text.*)
    *libzephyr.a:log_list.*(.literal .text .literal.* .text.*)
    *libdrivers__console.a:uart_console.*(.literal.console_out .text.console_out)
    *libzephyr.a:log_output.*(.literal .text .literal.* .text.*)
    *libzephyr.a:log_backend_uart.*(.literal .text .literal.* .text.*)
    *libzephyr.a:loader.*(.literal .text .literal.* .text.*)
    *liblib__libc__minimal.a:string.*(.literal .text .literal.* .text.*)
    *liblib__libc__newlib.a:string.*(.literal .text .literal.* .text.*)
    *libc.a:*(.literal .text .literal.* .text.*)
    *libphy.a:(.phyiram .phyiram.*)
    *libgcov.a:(.literal .text .literal.* .text.*)
    . = ALIGN(4) + 16;
  } > iram0_0_seg AT > ROM
  .iram0.text_end (NOLOAD) :
  {
    . = ALIGN(16);
    _iram_text_end = ABSOLUTE(.);
  } > iram0_0_seg
  .iram0.data :
  {
    . = ALIGN(16);
    *(.iram.data)
    *(.iram.data*)
  } > iram0_0_seg AT > ROM
  .iram0.bss (NOLOAD) :
  {
    . = ALIGN(16);
    *(.iram.bss)
    *(.iram.bss*)
    . = ALIGN(16);
    _iram_end = ABSOLUTE(.);
  } > iram0_0_seg
  .dram0.dummy (NOLOAD):
  {
    . = ALIGN (8);
    . = ORIGIN(dram0_0_seg) + MAX(_iram_end, 0x40378000) - 0x40378000;
  } > dram0_0_seg
  bss (NOLOAD) : ALIGN_WITH_INPUT
  {
    . = ALIGN (8);
    _bss_start = ABSOLUTE(.);
    __bss_start = ABSOLUTE(.);
    *(.dynsbss)
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
    *(.scommon)
    *(.sbss2)
    *(.sbss2.*)
    *(.gnu.linkonce.sb2.*)
    *(.dynbss)
    *(.bss)
    *(.bss.*)
    *(.share.mem)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    . = ALIGN (8);
    __bss_end = ABSOLUTE(.);
  } > dram0_0_seg
  ASSERT(((__bss_end - ORIGIN(dram0_0_seg)) <= LENGTH(dram0_0_seg)), "DRAM segment data does not fit.")
  noinit (NOLOAD) : ALIGN_WITH_INPUT
  {
    . = ALIGN(8);
    *(.noinit)
    *(.noinit.*)
    . = ALIGN(8) ;
  } > dram0_0_seg
  .dram0.data :
  {
    . = ALIGN (8);
    __data_start = ABSOLUTE(.);
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    *(.data1)
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
    *(.sdata2)
    *(.sdata2.*)
    *(.gnu.linkonce.s2.*)
    *libarch__xtensa__core.a:(.rodata .rodata.*)
    *libkernel.a:fatal.*(.rodata .rodata.*)
    *libkernel.a:init.*(.rodata .rodata.*)
    *libzephyr.a:cbprintf_complete*(.rodata .rodata.*)
    *libzephyr.a:systimer_hal.*(.rodata .rodata.*)
    *libzephyr.a:log_core.*(.rodata .rodata.*)
    *libzephyr.a:log_backend_uart.*(.rodata .rodata.*)
    *libzephyr.a:log_output.*(.rodata .rodata.*)
    *libzephyr.a:loader.*(.rodata .rodata.*)
    *libdrivers__serial.a:uart_esp32.*(.rodata .rodata.*)
    *libdrivers__flash.a:flash_esp32.*(.rodata .rodata.*)
    KEEP(*(.jcr))
    *(.dram1 .dram1.*)
    . = ALIGN(4);
  } > dram0_0_seg AT > ROM
 .gcc_except_table : ONLY_IF_RO
 {
 *(.gcc_except_table .gcc_except_table.*)
 } > drom0_0_seg AT > ROM
 sw_isr_table : ALIGN_WITH_INPUT
 {
  . = ALIGN(4);
  *(.gnu.linkonce.sw_isr_table*)
 } > dram0_0_seg AT > ROM
        device_states : ALIGN_WITH_INPUT
        {
                __device_states_start = .;
  KEEP(*(".z_devstate"));
  KEEP(*(".z_devstate.*"));
                __device_states_end = .;
        } > dram0_0_seg AT > ROM
 log_mpsc_pbuf_area : ALIGN_WITH_INPUT SUBALIGN(4) { _log_mpsc_pbuf_list_start = .; *(SORT_BY_NAME(._log_mpsc_pbuf.static.*)); _log_mpsc_pbuf_list_end = .; } > dram0_0_seg AT > ROM
 log_msg_ptr_area : ALIGN_WITH_INPUT SUBALIGN(4) { _log_msg_ptr_list_start = .; KEEP(*(SORT_BY_NAME(._log_msg_ptr.static.*))); _log_msg_ptr_list_end = .; } > dram0_0_seg AT > ROM
 log_dynamic_area : ALIGN_WITH_INPUT SUBALIGN(4) { _log_dynamic_list_start = .; KEEP(*(SORT_BY_NAME(._log_dynamic.static.*))); _log_dynamic_list_end = .; } > dram0_0_seg AT > ROM
 k_timer_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_timer_list_start = .; *(SORT_BY_NAME(._k_timer.static.*)); _k_timer_list_end = .; } > dram0_0_seg AT > ROM
 k_mem_slab_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_mem_slab_list_start = .; *(SORT_BY_NAME(._k_mem_slab.static.*)); _k_mem_slab_list_end = .; } > dram0_0_seg AT > ROM
 k_heap_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_heap_list_start = .; *(SORT_BY_NAME(._k_heap.static.*)); _k_heap_list_end = .; } > dram0_0_seg AT > ROM
 k_mutex_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_mutex_list_start = .; *(SORT_BY_NAME(._k_mutex.static.*)); _k_mutex_list_end = .; } > dram0_0_seg AT > ROM
 k_stack_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_stack_list_start = .; *(SORT_BY_NAME(._k_stack.static.*)); _k_stack_list_end = .; } > dram0_0_seg AT > ROM
 k_msgq_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_msgq_list_start = .; *(SORT_BY_NAME(._k_msgq.static.*)); _k_msgq_list_end = .; } > dram0_0_seg AT > ROM
 k_mbox_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_mbox_list_start = .; *(SORT_BY_NAME(._k_mbox.static.*)); _k_mbox_list_end = .; } > dram0_0_seg AT > ROM
 k_pipe_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_pipe_list_start = .; *(SORT_BY_NAME(._k_pipe.static.*)); _k_pipe_list_end = .; } > dram0_0_seg AT > ROM
 k_sem_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_sem_list_start = .; *(SORT_BY_NAME(._k_sem.static.*)); _k_sem_list_end = .; } > dram0_0_seg AT > ROM
 k_event_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_event_list_start = .; *(SORT_BY_NAME(._k_event.static.*)); _k_event_list_end = .; } > dram0_0_seg AT > ROM
 k_queue_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_queue_list_start = .; *(SORT_BY_NAME(._k_queue.static.*)); _k_queue_list_end = .; } > dram0_0_seg AT > ROM
 k_fifo_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_fifo_list_start = .; *(SORT_BY_NAME(._k_fifo.static.*)); _k_fifo_list_end = .; } > dram0_0_seg AT > ROM
 k_lifo_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_lifo_list_start = .; *(SORT_BY_NAME(._k_lifo.static.*)); _k_lifo_list_end = .; } > dram0_0_seg AT > ROM
 k_condvar_area : ALIGN_WITH_INPUT SUBALIGN(4) { _k_condvar_list_start = .; *(SORT_BY_NAME(._k_condvar.static.*)); _k_condvar_list_end = .; } > dram0_0_seg AT > ROM
 sys_mem_blocks_ptr_area : ALIGN_WITH_INPUT SUBALIGN(4) { _sys_mem_blocks_ptr_list_start = .; *(SORT_BY_NAME(._sys_mem_blocks_ptr.static.*)); _sys_mem_blocks_ptr_list_end = .; } > dram0_0_seg AT > ROM
 net_buf_pool_area : ALIGN_WITH_INPUT SUBALIGN(4) { _net_buf_pool_list_start = .; KEEP(*(SORT_BY_NAME(._net_buf_pool.static.*))); _net_buf_pool_list_end = .; } > dram0_0_seg AT > ROM
 .gcc_except_table : ALIGN_WITH_INPUT ONLY_IF_RW
 {
 *(.gcc_except_table .gcc_except_table.*)
 } > dram0_0_seg AT > ROM
         
 log_strings_area : SUBALIGN(4) { _log_strings_list_start = .; KEEP(*(SORT_BY_NAME(._log_strings.static.*))); _log_strings_list_end = .; } > dram0_0_seg AT > ROM
 log_const_area : SUBALIGN(4) { _log_const_list_start = .; KEEP(*(SORT_BY_NAME(._log_const.static.*))); _log_const_list_end = .; } > dram0_0_seg AT > ROM
 log_backend_area : SUBALIGN(4) { _log_backend_list_start = .; KEEP(*(SORT_BY_NAME(._log_backend.static.*))); _log_backend_list_end = .; } > dram0_0_seg AT > ROM
 log_link_area : SUBALIGN(4) { _log_link_list_start = .; KEEP(*(SORT_BY_NAME(._log_link.static.*))); _log_link_list_end = .; } > dram0_0_seg AT > ROM
         
  .dram0.end :
  {
    . = ALIGN(4);
    . = ALIGN(4);
    _end = ABSOLUTE(.);
    __data_end = ABSOLUTE(.);
  } > dram0_0_seg AT > ROM
  _image_irom_start = LOADADDR(.flash.text);
  _image_irom_size = LOADADDR(.flash.text) + SIZEOF(.flash.text) - _image_irom_start;
  _image_irom_vaddr = ADDR(.flash.text);
  .flash_text_dummy (NOLOAD): ALIGN(0x10000)
  {
    . = SIZEOF(rodata);
    . = ALIGN(0x10000) + 0x20;
  } > irom0_0_seg
  .flash.text : ALIGN(0x10000)
  {
    _stext = .;
    _text_start = ABSOLUTE(.);
    *libnet80211.a:( .wifi0iram .wifi0iram.* .wifislpiram .wifislpiram.*)
    *libpp.a:( .wifi0iram .wifi0iram.* .wifislpiram .wifislpiram.* .wifiorslpiram .wifiorslpiram.*)
    *libnet80211.a:( .wifirxiram .wifirxiram.* .wifislprxiram .wifislprxiram.*)
    *libpp.a:( .wifirxiram .wifirxiram.* .wifislprxiram .wifislprxiram.*)
    *(.stub .gnu.warning .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    *(.irom0.text)
    *(.fini.literal)
    *(.fini)
    *(.gnu.version)
    *(.literal .text .literal.* .text.*)
    . += 16;
    _text_end = ABSOLUTE(.);
    _etext = .;
    _flash_cache_start = ABSOLUTE(0);
  } > irom0_0_seg AT > ROM
  .rtc.text :
  {
    . = ALIGN(4);
    _rtc_text_start = ABSOLUTE(.);
    *(.rtc.literal .rtc.text)
    *(.rtc.entry.text)
    *rtc_wake_stub*.*(.literal .text .literal.* .text.*)
    _rtc_text_end = ABSOLUTE(.);
  } > rtc_iram_seg AT > ROM
  .rtc.dummy :
  {
     _rtc_dummy_start = ABSOLUTE(.);
     _rtc_fast_start = ABSOLUTE(.);
     . = SIZEOF(.rtc.text);
     _rtc_dummy_end = ABSOLUTE(.);
  } > rtc_data_seg AT > ROM
  .rtc.force_fast :
  {
    . = ALIGN(4);
    _rtc_force_fast_start = ABSOLUTE(.);
    *(.rtc.force_fast .rtc.force_fast.*)
    . = ALIGN(4) ;
    _rtc_force_fast_end = ABSOLUTE(.);
  } > rtc_data_seg AT > ROM
  .rtc.data :
  {
    _rtc_data_start = ABSOLUTE(.);
    *(.rtc.data)
    *(.rtc.rodata)
    *rtc_wake_stub*.o(.data .rodata .data.* .rodata.* .bss .bss.*)
    _rtc_data_end = ABSOLUTE(.);
  } > rtc_slow_seg AT > ROM
  .rtc.bss (NOLOAD) :
  {
    _rtc_bss_start = ABSOLUTE(.);
    *rtc_wake_stub*.*(.bss .bss.*)
    *rtc_wake_stub*.*(COMMON)
    *(.rtc.data)
    *(.rtc.rodata)
    _rtc_bss_end = ABSOLUTE(.);
  } > rtc_slow_seg AT > ROM
  .rtc.bss (NOLOAD) :
  {
    _rtc_bss_start = ABSOLUTE(.);
    *rtc_wake_stub*.*(.bss .bss.*)
    *rtc_wake_stub*.*(COMMON)
    _rtc_bss_end = ABSOLUTE(.);
  } > rtc_slow_seg AT > ROM
  .rtc_noinit (NOLOAD):
  {
    . = ALIGN(4);
    _rtc_noinit_start = ABSOLUTE(.);
    *(.rtc_noinit .rtc_noinit.*)
    . = ALIGN(4) ;
    _rtc_noinit_end = ABSOLUTE(.);
  } > rtc_slow_seg AT > ROM
  .rtc.force_slow :
  {
    . = ALIGN(4);
    _rtc_force_slow_start = ABSOLUTE(.);
    *(.rtc.force_slow .rtc.force_slow.*)
    . = ALIGN(4) ;
    _rtc_force_slow_end = ABSOLUTE(.);
  } > rtc_slow_seg AT > ROM
  _rtc_slow_length = (_rtc_force_slow_end - _rtc_data_start);
  _rtc_fast_length = (_rtc_force_fast_end - _rtc_fast_start);
  ASSERT((_rtc_slow_length <= LENGTH(rtc_slow_seg)), "RTC_SLOW segment data does not fit.")
  ASSERT((_rtc_fast_length <= LENGTH(rtc_data_seg)), "RTC_FAST segment data does not fit.")
/DISCARD/ :
{
 KEEP(*(.irq_info*))
 KEEP(*(.intList*))
}
_heap_sentry = 0x3fceb910;
 .stab 0 : { *(.stab) }
 .stabstr 0 : { *(.stabstr) }
 .stab.excl 0 : { *(.stab.excl) }
 .stab.exclstr 0 : { *(.stab.exclstr) }
 .stab.index 0 : { *(.stab.index) }
 .stab.indexstr 0 : { *(.stab.indexstr) }
 .gnu.build.attributes 0 : { *(.gnu.build.attributes .gnu.build.attributes.*) }
 .comment 0 : { *(.comment) }
 .debug 0 : { *(.debug) }
 .line 0 : { *(.line) }
 .debug_srcinfo 0 : { *(.debug_srcinfo) }
 .debug_sfnames 0 : { *(.debug_sfnames) }
 .debug_aranges 0 : { *(.debug_aranges) }
 .debug_pubnames 0 : { *(.debug_pubnames) }
 .debug_info 0 : { *(.debug_info .gnu.linkonce.wi.*) }
 .debug_abbrev 0 : { *(.debug_abbrev) }
 .debug_line 0 : { *(.debug_line .debug_line.* .debug_line_end ) }
 .debug_frame 0 : { *(.debug_frame) }
 .debug_str 0 : { *(.debug_str) }
 .debug_loc 0 : { *(.debug_loc) }
 .debug_macinfo 0 : { *(.debug_macinfo) }
 .debug_weaknames 0 : { *(.debug_weaknames) }
 .debug_funcnames 0 : { *(.debug_funcnames) }
 .debug_typenames 0 : { *(.debug_typenames) }
 .debug_varnames 0 : { *(.debug_varnames) }
 .debug_pubtypes 0 : { *(.debug_pubtypes) }
 .debug_ranges 0 : { *(.debug_ranges) }
 .debug_macro 0 : { *(.debug_macro) }
 .debug_line_str 0 : { *(.debug_line_str) }
 .debug_loclists 0 : { *(.debug_loclists) }
 .debug_rnglists 0 : { *(.debug_rnglists) }
  .xtensa.info 0 : { *(.xtensa.info) }
  .xt.insn 0 :
  {
    KEEP (*(.xt.insn))
    KEEP (*(.gnu.linkonce.x.*))
  }
  .xt.prop 0 :
  {
    KEEP (*(.xt.prop))
    KEEP (*(.xt.prop.*))
    KEEP (*(.gnu.linkonce.prop.*))
  }
  .xt.lit 0 :
  {
    KEEP (*(.xt.lit))
    KEEP (*(.xt.lit.*))
    KEEP (*(.gnu.linkonce.p.*))
  }
  .xt.profile_range 0 :
  {
    KEEP (*(.xt.profile_range))
    KEEP (*(.gnu.linkonce.profile_range.*))
  }
  .xt.profile_ranges 0 :
  {
    KEEP (*(.xt.profile_ranges))
    KEEP (*(.gnu.linkonce.xt.profile_ranges.*))
  }
  .xt.profile_files 0 :
  {
    KEEP (*(.xt.profile_files))
    KEEP (*(.gnu.linkonce.xt.profile_files.*))
  }
}
ASSERT(((_iram_end - ORIGIN(iram0_0_seg)) <= LENGTH(iram0_0_seg)),
          "IRAM0 segment data does not fit.")
