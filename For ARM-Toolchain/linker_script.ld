ENTRY(reset_handler)

MEMORY
{
	flash(RX) : ORIGIN = 0x08000000 , LENGTH = 128K
	sram(RWX) : ORIGIN = 0x20000000 , LENGTH = 20K
}

SECTIONS
{
	.text :
	{
		*(.vectors)
		*(.text)
	} > flash

	.rodata :
	{
		*(.rodata)
		_E_TEXT_ = .;
	} > flash

	.data :
	{
		_S_DATA_ = .;
		*(.data)
		. = ALIGN(4);
		_E_DATA_ = .;
	} > sram AT> flash

	.bss :
	{
		_S_BSS_ = .;
		*(.bss)
		. = ALIGN(4);
		_E_BSS_ = .;

		*(.stack)
	} > sram
}