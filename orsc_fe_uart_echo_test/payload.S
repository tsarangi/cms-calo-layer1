
payload.elf:     file format elf32-microblazeel


Disassembly of section .vectors.reset:

00000000 <_start>:
   0:	b0000000 	imm	0
   4:	b8080050 	brai	80	// 50 <_start1>

Disassembly of section .vectors.sw_exception:

00000008 <_vector_sw_exception>:
   8:	b0000000 	imm	0
   c:	b8080254 	brai	596	// 254 <_exception_handler>

Disassembly of section .vectors.interrupt:

00000010 <_vector_interrupt>:
  10:	b0000000 	imm	0
  14:	b8080270 	brai	624	// 270 <__interrupt_handler>

Disassembly of section .vectors.hw_exception:

00000020 <_vector_hw_exception>:
  20:	b0000000 	imm	0
  24:	b808026c 	brai	620	// 26c <_hw_exception_handler>

Disassembly of section .text:

00000050 <_start1>:
      50:	b0000000 	imm	0
      54:	31a05ea0 	addik	r13, r0, 24224	// 5ea0 <_SDA_BASE_>
      58:	b0000000 	imm	0
      5c:	30405929 	addik	r2, r0, 22825	// 5929 <_SDA2_BASE_>
      60:	b0000000 	imm	0
      64:	30209f80 	addik	r1, r0, -24704
      68:	b0000000 	imm	0
      6c:	b9f40138 	brlid	r15, 312	// 1a4 <_crtinit>
      70:	80000000 	or	r0, r0, r0
      74:	b0000000 	imm	0
      78:	b9f4112c 	brlid	r15, 4396	// 11a4 <exit>
      7c:	30a30000 	addik	r5, r3, 0

00000080 <_exit>:
      80:	b8000000 	bri	0	// 80 <_exit>

00000084 <__do_global_dtors_aux>:
      84:	b0000000 	imm	0
      88:	e0605ea0 	lbui	r3, r0, 24224	// 5ea0 <_SDA_BASE_>
      8c:	3021ffe0 	addik	r1, r1, -32
      90:	f9e10000 	swi	r15, r1, 0
      94:	be23009c 	bneid	r3, 156		// 130
      98:	fa61001c 	swi	r19, r1, 28
      9c:	b0000000 	imm	0
      a0:	308058a0 	addik	r4, r0, 22688	// 58a0 <__CTOR_END__>
      a4:	b0000000 	imm	0
      a8:	30a058a4 	addik	r5, r0, 22692	// 58a4 <__DTOR_END__>
      ac:	b0000000 	imm	0
      b0:	e8605ea4 	lwi	r3, r0, 24228	// 5ea4 <dtor_idx.2337>
      b4:	14842800 	rsubk	r4, r4, r5
      b8:	12602000 	addk	r19, r0, r4
      bc:	92640001 	sra	r19, r4
      c0:	92730001 	sra	r19, r19
      c4:	3273ffff 	addik	r19, r19, -1
      c8:	14931803 	cmpu	r4, r19, r3
      cc:	bea4003c 	bgeid	r4, 60		// 108
      d0:	30630001 	addik	r3, r3, 1
      d4:	60830004 	muli	r4, r3, 4
      d8:	b0000000 	imm	0
      dc:	308458a0 	addik	r4, r4, 22688
      e0:	e8840000 	lwi	r4, r4, 0
      e4:	b0000000 	imm	0
      e8:	f8605ea4 	swi	r3, r0, 24228	// 5ea4 <dtor_idx.2337>
      ec:	99fc2000 	brald	r15, r4
      f0:	80000000 	or	r0, r0, r0
      f4:	b0000000 	imm	0
      f8:	e8605ea4 	lwi	r3, r0, 24228	// 5ea4 <dtor_idx.2337>
      fc:	14931803 	cmpu	r4, r19, r3
     100:	be44ffd4 	bltid	r4, -44		// d4
     104:	30630001 	addik	r3, r3, 1
     108:	b0000000 	imm	0
     10c:	30600000 	addik	r3, r0, 0
     110:	bc030014 	beqi	r3, 20		// 124
     114:	b0000000 	imm	0
     118:	30a05e94 	addik	r5, r0, 24212	// 5e94 <__data_end>
     11c:	99fc1800 	brald	r15, r3
     120:	80000000 	or	r0, r0, r0
     124:	30600001 	addik	r3, r0, 1
     128:	b0000000 	imm	0
     12c:	f0605ea0 	sbi	r3, r0, 24224	// 5ea0 <_SDA_BASE_>
     130:	e9e10000 	lwi	r15, r1, 0
     134:	ea61001c 	lwi	r19, r1, 28
     138:	b60f0008 	rtsd	r15, 8
     13c:	30210020 	addik	r1, r1, 32

00000140 <frame_dummy>:
     140:	b0000000 	imm	0
     144:	30600000 	addik	r3, r0, 0
     148:	3021ffe4 	addik	r1, r1, -28
     14c:	be030020 	beqid	r3, 32		// 16c
     150:	f9e10000 	swi	r15, r1, 0
     154:	b0000000 	imm	0
     158:	30a05e94 	addik	r5, r0, 24212	// 5e94 <__data_end>
     15c:	b0000000 	imm	0
     160:	30c05ea8 	addik	r6, r0, 24232	// 5ea8 <object.2347>
     164:	99fc1800 	brald	r15, r3
     168:	80000000 	or	r0, r0, r0
     16c:	b0000000 	imm	0
     170:	e8605e98 	lwi	r3, r0, 24216	// 5e98 <__JCR_END__>
     174:	be030028 	beqid	r3, 40		// 19c
     178:	e9e10000 	lwi	r15, r1, 0
     17c:	b0000000 	imm	0
     180:	30600000 	addik	r3, r0, 0
     184:	bc030018 	beqi	r3, 24		// 19c
     188:	b0000000 	imm	0
     18c:	30a05e98 	addik	r5, r0, 24216	// 5e98 <__JCR_END__>
     190:	99fc1800 	brald	r15, r3
     194:	80000000 	or	r0, r0, r0
     198:	e9e10000 	lwi	r15, r1, 0
     19c:	b60f0008 	rtsd	r15, 8
     1a0:	3021001c 	addik	r1, r1, 28

000001a4 <_crtinit>:
     1a4:	2021ffec 	addi	r1, r1, -20
     1a8:	f9e10000 	swi	r15, r1, 0
     1ac:	b0000000 	imm	0
     1b0:	20c05ea0 	addi	r6, r0, 24224	// 5ea0 <_SDA_BASE_>
     1b4:	b0000000 	imm	0
     1b8:	20e05ea0 	addi	r7, r0, 24224	// 5ea0 <_SDA_BASE_>
     1bc:	06463800 	rsub	r18, r6, r7
     1c0:	bc720014 	blei	r18, 20		// 1d4
     1c4:	f8060000 	swi	r0, r6, 0
     1c8:	20c60004 	addi	r6, r6, 4
     1cc:	06463800 	rsub	r18, r6, r7
     1d0:	bc92fff4 	bgti	r18, -12		// 1c4
     1d4:	b0000000 	imm	0
     1d8:	20c05ea0 	addi	r6, r0, 24224	// 5ea0 <_SDA_BASE_>
     1dc:	b0000000 	imm	0
     1e0:	20e05f8c 	addi	r7, r0, 24460	// 5f8c <__bss_end>
     1e4:	06463800 	rsub	r18, r6, r7
     1e8:	bc720014 	blei	r18, 20		// 1fc
     1ec:	f8060000 	swi	r0, r6, 0
     1f0:	20c60004 	addi	r6, r6, 4
     1f4:	06463800 	rsub	r18, r6, r7
     1f8:	bc92fff4 	bgti	r18, -12		// 1ec
     1fc:	b0000000 	imm	0
     200:	b9f40064 	brlid	r15, 100	// 264 <_program_init>
     204:	80000000 	or	r0, r0, r0
     208:	b0000000 	imm	0
     20c:	b9f45630 	brlid	r15, 22064	// 583c <__init>
     210:	80000000 	or	r0, r0, r0
     214:	20c00000 	addi	r6, r0, 0
     218:	20e00000 	addi	r7, r0, 0
     21c:	b0000000 	imm	0
     220:	b9f453c0 	brlid	r15, 21440	// 55e0 <main>
     224:	20a00000 	addi	r5, r0, 0
     228:	32630000 	addik	r19, r3, 0
     22c:	b0000000 	imm	0
     230:	b9f45648 	brlid	r15, 22088	// 5878 <__fini>
     234:	80000000 	or	r0, r0, r0
     238:	b0000000 	imm	0
     23c:	b9f40020 	brlid	r15, 32	// 25c <_program_clean>
     240:	80000000 	or	r0, r0, r0
     244:	c9e10000 	lw	r15, r1, r0
     248:	30730000 	addik	r3, r19, 0
     24c:	b60f0008 	rtsd	r15, 8
     250:	20210014 	addi	r1, r1, 20

00000254 <_exception_handler>:
     254:	b6110000 	rtsd	r17, 0
     258:	80000000 	or	r0, r0, r0

0000025c <_program_clean>:
     25c:	b60f0008 	rtsd	r15, 8
     260:	80000000 	or	r0, r0, r0

00000264 <_program_init>:
     264:	b60f0008 	rtsd	r15, 8
     268:	80000000 	or	r0, r0, r0

0000026c <_hw_exception_handler>:
.global _hw_exception_handler                               
.section .text                                          
.align 2
.ent _hw_exception_handler
_hw_exception_handler:
        bri     0; 
     26c:	b8000000 	bri	0	// 26c <_hw_exception_handler>

00000270 <__interrupt_handler>:
*
* None.
*
******************************************************************************/
void __interrupt_handler(void)
{
     270:	3021ffac 	addik	r1, r1, -84
     274:	f9e10000 	swi	r15, r1, 0
     278:	f8210020 	swi	r1, r1, 32
     27c:	f8610024 	swi	r3, r1, 36
     280:	f8810028 	swi	r4, r1, 40
     284:	f8a1002c 	swi	r5, r1, 44
     288:	f8c10030 	swi	r6, r1, 48
     28c:	f8e10034 	swi	r7, r1, 52
     290:	f9010038 	swi	r8, r1, 56
     294:	f921003c 	swi	r9, r1, 60
     298:	f9410040 	swi	r10, r1, 64
	/* The compiler saves all volatiles and the MSR */
	MB_InterruptVectorTable.Handler(MB_InterruptVectorTable.CallBackRef);
     29c:	b0000000 	imm	0
     2a0:	30605934 	addik	r3, r0, 22836	// 5934 <MB_InterruptVectorTable>
*
* None.
*
******************************************************************************/
void __interrupt_handler(void)
{
     2a4:	f9610044 	swi	r11, r1, 68
     2a8:	f9810048 	swi	r12, r1, 72
     2ac:	fa21004c 	swi	r17, r1, 76
     2b0:	95608001 	mfs	r11, rmsr
	/* The compiler saves all volatiles and the MSR */
	MB_InterruptVectorTable.Handler(MB_InterruptVectorTable.CallBackRef);
     2b4:	e8830000 	lwi	r4, r3, 0
     2b8:	e8a30004 	lwi	r5, r3, 4
*
* None.
*
******************************************************************************/
void __interrupt_handler(void)
{
     2bc:	fa410050 	swi	r18, r1, 80
     2c0:	f961001c 	swi	r11, r1, 28
	/* The compiler saves all volatiles and the MSR */
	MB_InterruptVectorTable.Handler(MB_InterruptVectorTable.CallBackRef);
     2c4:	99fc2000 	brald	r15, r4
     2c8:	80000000 	or	r0, r0, r0
	/* The compiler restores all volatiles and MSR, and returns from interrupt */
}
     2cc:	e9e10000 	lwi	r15, r1, 0
     2d0:	e961001c 	lwi	r11, r1, 28
     2d4:	e8210020 	lwi	r1, r1, 32
     2d8:	940bc001 	mts	rmsr, r11
     2dc:	e8610024 	lwi	r3, r1, 36
     2e0:	e8810028 	lwi	r4, r1, 40
     2e4:	e8a1002c 	lwi	r5, r1, 44
     2e8:	e8c10030 	lwi	r6, r1, 48
     2ec:	e8e10034 	lwi	r7, r1, 52
     2f0:	e9010038 	lwi	r8, r1, 56
     2f4:	e921003c 	lwi	r9, r1, 60
     2f8:	e9410040 	lwi	r10, r1, 64
     2fc:	e9610044 	lwi	r11, r1, 68
     300:	e9810048 	lwi	r12, r1, 72
     304:	ea21004c 	lwi	r17, r1, 76
     308:	ea410050 	lwi	r18, r1, 80
     30c:	b62e0000 	rtid	r14, 0
     310:	30210054 	addik	r1, r1, 84

00000314 <microblaze_register_handler>:
* None.
*
****************************************************************************/
void microblaze_register_handler(XInterruptHandler Handler, void *DataPtr)
{
   MB_InterruptVectorTable.Handler = Handler;
     314:	b0000000 	imm	0
     318:	30605934 	addik	r3, r0, 22836	// 5934 <MB_InterruptVectorTable>
     31c:	f8a30000 	swi	r5, r3, 0
   MB_InterruptVectorTable.CallBackRef = DataPtr;
}
     320:	b60f0008 	rtsd	r15, 8
     324:	f8c30004 	swi	r6, r3, 4

00000328 <XIntc_DeviceInterruptHandler>:
	int IntrNumber;
	XIntc_Config *CfgPtr;
	u32 Imr;

	/* Get the configuration data using the device ID */
	CfgPtr = &XIntc_ConfigTable[(u32) DeviceId];
     328:	60a50028 	muli	r5, r5, 40
* for the interrupt controller. XPAR_INTC_MAX_NUM_INTR_INPUTS specifies the
* highest numbered interrupt input signal that is used.
*
******************************************************************************/
void XIntc_DeviceInterruptHandler(void *DeviceId)
{
     32c:	3021ffd0 	addik	r1, r1, -48
     330:	fa61001c 	swi	r19, r1, 28
     334:	f9e10000 	swi	r15, r1, 0
     338:	fac10020 	swi	r22, r1, 32
     33c:	fae10024 	swi	r23, r1, 36
     340:	fb010028 	swi	r24, r1, 40
     344:	fb21002c 	swi	r25, r1, 44
	int IntrNumber;
	XIntc_Config *CfgPtr;
	u32 Imr;

	/* Get the configuration data using the device ID */
	CfgPtr = &XIntc_ConfigTable[(u32) DeviceId];
     348:	b0000000 	imm	0
     34c:	32655944 	addik	r19, r5, 22852

	/* Get the interrupts that are waiting to be serviced */
	IntrStatus = XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     350:	e8730004 	lwi	r3, r19, 4

	/* Mask the Fast Interrupts */
	if (CfgPtr->FastIntr == TRUE) {
     354:	e893000c 	lwi	r4, r19, 12

	/* Get the configuration data using the device ID */
	CfgPtr = &XIntc_ConfigTable[(u32) DeviceId];

	/* Get the interrupts that are waiting to be serviced */
	IntrStatus = XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     358:	e8a30000 	lwi	r5, r3, 0
     35c:	eac30008 	lwi	r22, r3, 8

	/* Mask the Fast Interrupts */
	if (CfgPtr->FastIntr == TRUE) {
     360:	a8840001 	xori	r4, r4, 1
     364:	be0400b4 	beqid	r4, 180		// 418
     368:	86d62800 	and	r22, r22, r5
* for the interrupt controller. XPAR_INTC_MAX_NUM_INTR_INPUTS specifies the
* highest numbered interrupt input signal that is used.
*
******************************************************************************/
void XIntc_DeviceInterruptHandler(void *DeviceId)
{
     36c:	33000002 	addik	r24, r0, 2
     370:	13200000 	addk	r25, r0, r0
     374:	32e00001 	addik	r23, r0, 1

			/* The interrupt is active and enabled, call the
			 * interrupt handler that was setup with the specified
			 * parameter
			 */
			TablePtr = &(CfgPtr->HandlerTable[IntrNumber]);
     378:	30990003 	addik	r4, r25, 3
     37c:	64840403 	bslli	r4, r4, 3
	 * bit in the register from LSB to MSB which corresponds to an interrupt
	 * intput signal
	 */
	for (IntrNumber = 0; IntrNumber < XPAR_INTC_MAX_NUM_INTR_INPUTS;
	     IntrNumber++) {
		if (IntrStatus & 1) {
     380:	a4b60001 	andi	r5, r22, 1

			/* The interrupt is active and enabled, call the
			 * interrupt handler that was setup with the specified
			 * parameter
			 */
			TablePtr = &(CfgPtr->HandlerTable[IntrNumber]);
     384:	10d32000 	addk	r6, r19, r4
			}
		}

		/* Move to the next interrupt to check */
		IntrMask <<= 1;
		IntrStatus >>= 1;
     388:	92d60041 	srl	r22, r22
	 * bit in the register from LSB to MSB which corresponds to an interrupt
	 * intput signal
	 */
	for (IntrNumber = 0; IntrNumber < XPAR_INTC_MAX_NUM_INTR_INPUTS;
	     IntrNumber++) {
		if (IntrStatus & 1) {
     38c:	be05004c 	beqid	r5, 76		// 3d8
     390:	3318ffff 	addik	r24, r24, -1
			XIntc_VectorTableEntry *TablePtr;

			/* If the interrupt has been setup to acknowledge it
			 * before servicing the interrupt, then ack it
			 */
			if (CfgPtr->AckBeforeService & IntrMask) {
     394:	e8b30008 	lwi	r5, r19, 8
     398:	84b72800 	and	r5, r23, r5
     39c:	bc050008 	beqi	r5, 8		// 3a4
				XIntc_AckIntr(CfgPtr->BaseAddress, IntrMask);
     3a0:	fae3000c 	swi	r23, r3, 12
			/* The interrupt is active and enabled, call the
			 * interrupt handler that was setup with the specified
			 * parameter
			 */
			TablePtr = &(CfgPtr->HandlerTable[IntrNumber]);
			TablePtr->Handler(TablePtr->CallBackRef);
     3a4:	c8649800 	lw	r3, r4, r19
     3a8:	99fc1800 	brald	r15, r3
     3ac:	e8a60004 	lwi	r5, r6, 4

			/* If the interrupt has been setup to acknowledge it
			 * after it has been serviced then ack it
			 */
			if ((CfgPtr->AckBeforeService & IntrMask) == 0) {
     3b0:	e8730008 	lwi	r3, r19, 8
     3b4:	84771800 	and	r3, r23, r3
     3b8:	bc030050 	beqi	r3, 80		// 408

			/*
			 * Read the ISR again to handle architectures with posted write
			 * bus access issues.
			 */
			 XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     3bc:	e8730004 	lwi	r3, r19, 4
			/*
			 * If only the highest priority interrupt is to be
			 * serviced, exit loop and return after servicing
			 * the interrupt
			 */
			if (CfgPtr->Options == XIN_SVC_SGL_ISR_OPTION) {
     3c0:	e8930014 	lwi	r4, r19, 20

			/*
			 * Read the ISR again to handle architectures with posted write
			 * bus access issues.
			 */
			 XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     3c4:	e8a30000 	lwi	r5, r3, 0
     3c8:	e8a30008 	lwi	r5, r3, 8
			/*
			 * If only the highest priority interrupt is to be
			 * serviced, exit loop and return after servicing
			 * the interrupt
			 */
			if (CfgPtr->Options == XIN_SVC_SGL_ISR_OPTION) {
     3cc:	a8840001 	xori	r4, r4, 1
     3d0:	be04001c 	beqid	r4, 28		// 3ec
     3d4:	e9e10000 	lwi	r15, r1, 0
		IntrStatus >>= 1;

		/* If there are no other bits set indicating that all interrupts
		 * have been serviced, then exit the loop
		 */
		if (IntrStatus == 0) {
     3d8:	be160010 	beqid	r22, 16		// 3e8
     3dc:	12f7b800 	addk	r23, r23, r23
	}
	/* Service each interrupt that is active and enabled by checking each
	 * bit in the register from LSB to MSB which corresponds to an interrupt
	 * intput signal
	 */
	for (IntrNumber = 0; IntrNumber < XPAR_INTC_MAX_NUM_INTR_INPUTS;
     3e0:	be38ff98 	bneid	r24, -104		// 378
     3e4:	33390001 	addik	r25, r25, 1
		 */
		if (IntrStatus == 0) {
			break;
		}
	}
}
     3e8:	e9e10000 	lwi	r15, r1, 0
     3ec:	ea61001c 	lwi	r19, r1, 28
     3f0:	eac10020 	lwi	r22, r1, 32
     3f4:	eae10024 	lwi	r23, r1, 36
     3f8:	eb010028 	lwi	r24, r1, 40
     3fc:	eb21002c 	lwi	r25, r1, 44
     400:	b60f0008 	rtsd	r15, 8
     404:	30210030 	addik	r1, r1, 48

			/* If the interrupt has been setup to acknowledge it
			 * after it has been serviced then ack it
			 */
			if ((CfgPtr->AckBeforeService & IntrMask) == 0) {
				XIntc_AckIntr(CfgPtr->BaseAddress, IntrMask);
     408:	e8730004 	lwi	r3, r19, 4
     40c:	fae3000c 	swi	r23, r3, 12

			/*
			 * Read the ISR again to handle architectures with posted write
			 * bus access issues.
			 */
			 XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     410:	b810ffb0 	brid	-80		// 3c0
     414:	e8730004 	lwi	r3, r19, 4
	/* Get the interrupts that are waiting to be serviced */
	IntrStatus = XIntc_GetIntrStatus(CfgPtr->BaseAddress);

	/* Mask the Fast Interrupts */
	if (CfgPtr->FastIntr == TRUE) {
		Imr = XIntc_In32(CfgPtr->BaseAddress + XIN_IMR_OFFSET);
     418:	e8830020 	lwi	r4, r3, 32
		IntrStatus &=  ~Imr;
     41c:	a884ffff 	xori	r4, r4, -1
     420:	b810ff4c 	brid	-180		// 36c
     424:	86d62000 	and	r22, r22, r4

00000428 <XIntc_LowLevelInterruptHandler>:
* to be included in the driver compilation.
*
******************************************************************************/
#ifdef XPAR_INTC_SINGLE_DEVICE_ID
void XIntc_LowLevelInterruptHandler(void)
{
     428:	3021ffe4 	addik	r1, r1, -28
     42c:	f9e10000 	swi	r15, r1, 0
	 * A level of indirection here because the interrupt handler used with
	 * the driver interface given in this file needs to remain void - no
	 * arguments.  So we need the globally defined device ID of THE
	 * interrupt controller.
	 */
	XIntc_DeviceInterruptHandler((void *) XPAR_INTC_SINGLE_DEVICE_ID);
     430:	b9f4fef8 	brlid	r15, -264	// 328 <XIntc_DeviceInterruptHandler>
     434:	10a00000 	addk	r5, r0, r0
}
     438:	e9e10000 	lwi	r15, r1, 0
     43c:	b60f0008 	rtsd	r15, 8
     440:	3021001c 	addik	r1, r1, 28

00000444 <XIntc_SetIntrSvcOption>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].BaseAddress == BaseAddress) {
     444:	b0000000 	imm	0
     448:	e8605948 	lwi	r3, r0, 22856
     44c:	88a51800 	xor	r5, r5, r3
     450:	bc05000c 	beqi	r5, 12		// 45c
     454:	b60f0008 	rtsd	r15, 8
     458:	80000000 	or	r0, r0, r0
{
	XIntc_Config *CfgPtr;

	CfgPtr = LookupConfigByBaseAddress(BaseAddress);
	if (CfgPtr != NULL) {
		CfgPtr->Options = Option;
     45c:	b0000000 	imm	0
     460:	30605948 	addik	r3, r0, 22856
     464:	b60f0008 	rtsd	r15, 8
     468:	f8c30010 	swi	r6, r3, 16

0000046c <XIntc_RegisterHandler>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].BaseAddress == BaseAddress) {
     46c:	b0000000 	imm	0
     470:	e8605948 	lwi	r3, r0, 22856
     474:	88a51800 	xor	r5, r5, r3
     478:	bc05000c 	beqi	r5, 12		// 484
     47c:	b60f0008 	rtsd	r15, 8
     480:	80000000 	or	r0, r0, r0
{
	XIntc_Config *CfgPtr;

	CfgPtr = LookupConfigByBaseAddress(BaseAddress);
	if (CfgPtr != NULL) {
		CfgPtr->HandlerTable[InterruptId].Handler = Handler;
     484:	64660403 	bslli	r3, r6, 3
     488:	b0000000 	imm	0
     48c:	f8e3595c 	swi	r7, r3, 22876
		CfgPtr->HandlerTable[InterruptId].CallBackRef = CallBackRef;
     490:	b0000000 	imm	0
     494:	f9035960 	swi	r8, r3, 22880
     498:	b60f0008 	rtsd	r15, 8
     49c:	80000000 	or	r0, r0, r0

000004a0 <XIntc_RegisterFastHandler>:
	u32 Imr;

	CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);

	/* Convert from integer id to bit mask */
	Mask = XIntc_BitPosMask[Id];
     4a0:	64c60402 	bslli	r6, r6, 2
     4a4:	b0000000 	imm	0
     4a8:	30665f18 	addik	r3, r6, 24344
{
	u32 CurrentIER;
	u32 Mask;
	u32 Imr;

	CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4ac:	e8850008 	lwi	r4, r5, 8

	/* Convert from integer id to bit mask */
	Mask = XIntc_BitPosMask[Id];
     4b0:	e8630000 	lwi	r3, r3, 0

	if (CurrentIER & Mask) {
     4b4:	84832000 	and	r4, r3, r4
     4b8:	be040048 	beqid	r4, 72		// 500
     4bc:	30850100 	addik	r4, r5, 256
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4c0:	e8850008 	lwi	r4, r5, 8
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
     4c4:	a923ffff 	xori	r9, r3, -1
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     4c8:	31050100 	addik	r8, r5, 256
	Mask = XIntc_BitPosMask[Id];

	if (CurrentIER & Mask) {
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
     4cc:	85292000 	and	r9, r9, r4
     4d0:	f9250008 	swi	r9, r5, 8
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     4d4:	d8e64000 	sw	r7, r6, r8
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
     4d8:	e8c50020 	lwi	r6, r5, 32
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);


	/* Enable Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     4dc:	84841800 	and	r4, r4, r3

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);
     4e0:	80c61800 	or	r6, r6, r3
     4e4:	f8c50020 	swi	r6, r5, 32


	/* Enable Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     4e8:	bc040028 	beqi	r4, 40		// 510
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4ec:	e8850008 	lwi	r4, r5, 8
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER | Mask));
     4f0:	80641800 	or	r3, r4, r3
     4f4:	f8650008 	swi	r3, r5, 8
     4f8:	b60f0008 	rtsd	r15, 8
     4fc:	80000000 	or	r0, r0, r0
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     500:	d8e62000 	sw	r7, r6, r4
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
     504:	e8850020 	lwi	r4, r5, 32
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);
     508:	80641800 	or	r3, r4, r3
     50c:	f8650020 	swi	r3, r5, 32
     510:	b60f0008 	rtsd	r15, 8
     514:	80000000 	or	r0, r0, r0

00000518 <StubHandler>:
*
* @note		None.
*
******************************************************************************/
static void StubHandler(void *CallBackRef)
{
     518:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     51c:	be050028 	beqid	r5, 40		// 544
     520:	f9e10000 	swi	r15, r1, 0

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
     524:	e865000c 	lwi	r3, r5, 12
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     528:	b0000000 	imm	0
     52c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
     530:	30630001 	addik	r3, r3, 1
     534:	f865000c 	swi	r3, r5, 12
}
     538:	e9e10000 	lwi	r15, r1, 0
     53c:	b60f0008 	rtsd	r15, 8
     540:	3021001c 	addik	r1, r1, 28
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     544:	b0000000 	imm	0
     548:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     54c:	b0000000 	imm	0
     550:	b9f40c0c 	brlid	r15, 3084	// 115c <Xil_Assert>
     554:	30c0023f 	addik	r6, r0, 575

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
}
     558:	e9e10000 	lwi	r15, r1, 0
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     55c:	30600001 	addik	r3, r0, 1
     560:	b0000000 	imm	0
     564:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
}
     568:	b60f0008 	rtsd	r15, 8
     56c:	3021001c 	addik	r1, r1, 28

00000570 <XIntc_Initialize>:
*
* @note		None.
*
******************************************************************************/
int XIntc_Initialize(XIntc * InstancePtr, u16 DeviceId)
{
     570:	3021ffe0 	addik	r1, r1, -32
     574:	fa61001c 	swi	r19, r1, 28
     578:	f9e10000 	swi	r15, r1, 0
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     57c:	be050050 	beqid	r5, 80		// 5cc
     580:	12650000 	addk	r19, r5, r0
	/*
	 * If the device is started, disallow the initialize and return a status
	 * indicating it is started.  This allows the user to stop the device
	 * and reinitialize, but prevents a user from inadvertently initializing
	 */
	if (InstancePtr->IsStarted == XIL_COMPONENT_IS_STARTED) {
     584:	e8850008 	lwi	r4, r5, 8
{
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     588:	b0000000 	imm	0
     58c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	/*
	 * If the device is started, disallow the initialize and return a status
	 * indicating it is started.  This allows the user to stop the device
	 * and reinitialize, but prevents a user from inadvertently initializing
	 */
	if (InstancePtr->IsStarted == XIL_COMPONENT_IS_STARTED) {
     590:	b0002222 	imm	8738
     594:	a8842222 	xori	r4, r4, 8738
     598:	be040024 	beqid	r4, 36		// 5bc
     59c:	30600005 	addik	r3, r0, 5
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].DeviceId == DeviceId) {
     5a0:	b0000000 	imm	0
     5a4:	e4605944 	lhui	r3, r0, 22852	// 5944 <XIntc_ConfigTable>
     5a8:	b0000000 	imm	0
     5ac:	30805944 	addik	r4, r0, 22852	// 5944 <XIntc_ConfigTable>
     5b0:	88c33000 	xor	r6, r3, r6
     5b4:	be060040 	beqid	r6, 64		// 5f4
     5b8:	30600002 	addik	r3, r0, 2
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
}
     5bc:	e9e10000 	lwi	r15, r1, 0
     5c0:	ea61001c 	lwi	r19, r1, 28
     5c4:	b60f0008 	rtsd	r15, 8
     5c8:	30210020 	addik	r1, r1, 32
{
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     5cc:	b0000000 	imm	0
     5d0:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     5d4:	b0000000 	imm	0
     5d8:	b9f40b84 	brlid	r15, 2948	// 115c <Xil_Assert>
     5dc:	30c0008b 	addik	r6, r0, 139
     5e0:	30600001 	addik	r3, r0, 1
     5e4:	b0000000 	imm	0
     5e8:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     5ec:	b810ffd0 	brid	-48		// 5bc
     5f0:	10730000 	addk	r3, r19, r0
	}

	/*
	 * Set some default values
	 */
	InstancePtr->IsReady = 0;
     5f4:	f8c50004 	swi	r6, r5, 4
	InstancePtr->IsStarted = 0;	/* not started */
     5f8:	f8c50008 	swi	r6, r5, 8
	InstancePtr->CfgPtr = CfgPtr;
     5fc:	f8850010 	swi	r4, r5, 16
	 * interrupt can be accessed
	 */
#if (XPAR_XINTC_USE_DCR_BRIDGE != 0)
	InstancePtr->BaseAddress = ((CfgPtr->BaseAddress >> 2)) & 0xFFF;
#else
	InstancePtr->BaseAddress = CfgPtr->BaseAddress;
     600:	b0000000 	imm	0
     604:	e8605948 	lwi	r3, r0, 22856
	 */
	InstancePtr->IsReady = 0;
	InstancePtr->IsStarted = 0;	/* not started */
	InstancePtr->CfgPtr = CfgPtr;

	InstancePtr->CfgPtr->Options = XIN_SVC_SGL_ISR_OPTION;
     608:	30a00001 	addik	r5, r0, 1
     60c:	f8a40014 	swi	r5, r4, 20
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     610:	b0000000 	imm	0
     614:	e880595c 	lwi	r4, r0, 22876
     618:	be0400c4 	beqid	r4, 196		// 6dc
     61c:	f8730000 	swi	r3, r19, 0
     620:	b0000000 	imm	0
     624:	30a01154 	addik	r5, r0, 4436	// 1154 <XNullHandler>
     628:	88842800 	xor	r4, r4, r5
     62c:	bc0400b0 	beqi	r4, 176		// 6dc
     630:	b0000000 	imm	0
     634:	e8805964 	lwi	r4, r0, 22884
		 * Initialize the bit position mask table such that bit
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
     638:	30a00001 	addik	r5, r0, 1
     63c:	b0000000 	imm	0
     640:	f8a05f18 	swi	r5, r0, 24344	// 5f18 <XIntc_BitPosMask>
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
				StubHandler;
		}
		InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     644:	b0000000 	imm	0
     648:	fa605960 	swi	r19, r0, 22880
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     64c:	bc040078 	beqi	r4, 120		// 6c4
     650:	b0000000 	imm	0
     654:	30a01154 	addik	r5, r0, 4436	// 1154 <XNullHandler>
     658:	88842800 	xor	r4, r4, r5
     65c:	bc040068 	beqi	r4, 104		// 6c4
		 * Initialize the bit position mask table such that bit
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
     660:	30a00002 	addik	r5, r0, 2
     664:	b0000000 	imm	0
     668:	f8a05f1c 	swi	r5, r0, 24348
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
				StubHandler;
		}
		InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     66c:	b0000000 	imm	0
     670:	fa605968 	swi	r19, r0, 22888
	/*
	 * Disable IRQ output signal
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
     674:	f803001c 	swi	r0, r3, 28
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
     678:	e8730000 	lwi	r3, r19, 0
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     67c:	30a0ffff 	addik	r5, r0, -1
	 * Disable IRQ output signal
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
     680:	f8030008 	swi	r0, r3, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     684:	e8930000 	lwi	r4, r19, 0

	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
     688:	b0000000 	imm	0
     68c:	e8605950 	lwi	r3, r0, 22864
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     690:	f8a4000c 	swi	r5, r4, 12

	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
     694:	a8630001 	xori	r3, r3, 1
     698:	bc23000c 	bnei	r3, 12		// 6a4
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET, 0);
     69c:	e8930000 	lwi	r4, r19, 0
     6a0:	f8640020 	swi	r3, r4, 32


	/*
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
     6a4:	b0001111 	imm	4369
     6a8:	30601111 	addik	r3, r0, 4369
     6ac:	f8730004 	swi	r3, r19, 4

	return XST_SUCCESS;
}
     6b0:	e9e10000 	lwi	r15, r1, 0
     6b4:	ea61001c 	lwi	r19, r1, 28
	/*
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
     6b8:	10600000 	addk	r3, r0, r0
}
     6bc:	b60f0008 	rtsd	r15, 8
     6c0:	30210020 	addik	r1, r1, 32
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
     6c4:	b0000000 	imm	0
     6c8:	30800518 	addik	r4, r0, 1304	// 518 <StubHandler>
     6cc:	b0000000 	imm	0
     6d0:	f8805964 	swi	r4, r0, 22884
		 * Initialize the bit position mask table such that bit
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
     6d4:	b810ff90 	brid	-112		// 664
     6d8:	30a00002 	addik	r5, r0, 2
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
     6dc:	b0000000 	imm	0
     6e0:	30800518 	addik	r4, r0, 1304	// 518 <StubHandler>
     6e4:	b0000000 	imm	0
     6e8:	f880595c 	swi	r4, r0, 22876
     6ec:	b800ff44 	bri	-188		// 630

000006f0 <XIntc_Start>:
*
* @note 	Must be called after XIntc initialization is completed.
*
******************************************************************************/
int XIntc_Start(XIntc * InstancePtr, u8 Mode)
{
     6f0:	3021ffe0 	addik	r1, r1, -32
     6f4:	f9e10000 	swi	r15, r1, 0
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     6f8:	be0500c0 	beqid	r5, 192		// 7b8
     6fc:	fa61001c 	swi	r19, r1, 28
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     700:	32600001 	addik	r19, r0, 1
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     704:	b0000000 	imm	0
     708:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     70c:	14669803 	cmpu	r3, r6, r19
     710:	bc430078 	blti	r3, 120		// 788
			(Mode == XIN_REAL_MODE))
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     714:	e8650004 	lwi	r3, r5, 4
     718:	b0001111 	imm	4369
     71c:	a8631111 	xori	r3, r3, 4369
     720:	bc230038 	bnei	r3, 56		// 758

	/*
	 * Check for simulation mode
	 */
	if (Mode == XIN_SIMULATION_MODE) {
     724:	be26000c 	bneid	r6, 12		// 730
     728:	30600003 	addik	r3, r0, 3
* @note 	Must be called after XIntc initialization is completed.
*
******************************************************************************/
int XIntc_Start(XIntc * InstancePtr, u8 Mode)
{
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;
     72c:	10730000 	addk	r3, r19, r0

	/*
	 * Indicate the instance is ready to be used and is started before we
	 * enable the device.
	 */
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;
     730:	b0002222 	imm	8738
     734:	30c02222 	addik	r6, r0, 8738

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);
     738:	e8850000 	lwi	r4, r5, 0

	/*
	 * Indicate the instance is ready to be used and is started before we
	 * enable the device.
	 */
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;
     73c:	f8c50008 	swi	r6, r5, 8

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);
     740:	f864001c 	swi	r3, r4, 28

	return XST_SUCCESS;
}
     744:	e9e10000 	lwi	r15, r1, 0
     748:	ea61001c 	lwi	r19, r1, 28
     74c:	10600000 	addk	r3, r0, r0
     750:	b60f0008 	rtsd	r15, 8
     754:	30210020 	addik	r1, r1, 32
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
			(Mode == XIN_REAL_MODE))
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     758:	b0000000 	imm	0
     75c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     760:	b0000000 	imm	0
     764:	b9f409f8 	brlid	r15, 2552	// 115c <Xil_Assert>
     768:	30c00112 	addik	r6, r0, 274
     76c:	b0000000 	imm	0
     770:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     774:	e9e10000 	lwi	r15, r1, 0
     778:	ea61001c 	lwi	r19, r1, 28
     77c:	10600000 	addk	r3, r0, r0
     780:	b60f0008 	rtsd	r15, 8
     784:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     788:	b0000000 	imm	0
     78c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     790:	b0000000 	imm	0
     794:	b9f409c8 	brlid	r15, 2504	// 115c <Xil_Assert>
     798:	30c00111 	addik	r6, r0, 273
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     79c:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     7a0:	b0000000 	imm	0
     7a4:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     7a8:	ea61001c 	lwi	r19, r1, 28
     7ac:	10600000 	addk	r3, r0, r0
     7b0:	b60f0008 	rtsd	r15, 8
     7b4:	30210020 	addik	r1, r1, 32
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     7b8:	b0000000 	imm	0
     7bc:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     7c0:	b0000000 	imm	0
     7c4:	b9f40998 	brlid	r15, 2456	// 115c <Xil_Assert>
     7c8:	30c0010f 	addik	r6, r0, 271
     7cc:	30600001 	addik	r3, r0, 1
     7d0:	b0000000 	imm	0
     7d4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     7d8:	b810ffa0 	brid	-96		// 778
     7dc:	e9e10000 	lwi	r15, r1, 0

000007e0 <XIntc_Stop>:
*
* @note		None.
*
******************************************************************************/
void XIntc_Stop(XIntc * InstancePtr)
{
     7e0:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     7e4:	be050064 	beqid	r5, 100		// 848
     7e8:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     7ec:	e8650004 	lwi	r3, r5, 4
void XIntc_Stop(XIntc * InstancePtr)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     7f0:	b0000000 	imm	0
     7f4:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     7f8:	b0001111 	imm	4369
     7fc:	a8631111 	xori	r3, r3, 4369
     800:	bc030030 	beqi	r3, 48		// 830
     804:	b0000000 	imm	0
     808:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     80c:	b0000000 	imm	0
     810:	b9f4094c 	brlid	r15, 2380	// 115c <Xil_Assert>
     814:	30c0013e 	addik	r6, r0, 318
     818:	30600001 	addik	r3, r0, 1
     81c:	b0000000 	imm	0
     820:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * disabling all interrupts in the MER register
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);

	InstancePtr->IsStarted = 0;
}
     824:	e9e10000 	lwi	r15, r1, 0
     828:	b60f0008 	rtsd	r15, 8
     82c:	3021001c 	addik	r1, r1, 28

	/*
	 * Stop all interrupts from occurring thru the interrupt controller by
	 * disabling all interrupts in the MER register
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
     830:	e8850000 	lwi	r4, r5, 0
     834:	f864001c 	swi	r3, r4, 28

	InstancePtr->IsStarted = 0;
     838:	f8650008 	swi	r3, r5, 8
}
     83c:	e9e10000 	lwi	r15, r1, 0
     840:	b60f0008 	rtsd	r15, 8
     844:	3021001c 	addik	r1, r1, 28
void XIntc_Stop(XIntc * InstancePtr)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     848:	b0000000 	imm	0
     84c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     850:	b0000000 	imm	0
     854:	b9f40908 	brlid	r15, 2312	// 115c <Xil_Assert>
     858:	30c0013d 	addik	r6, r0, 317
     85c:	30600001 	addik	r3, r0, 1
     860:	b0000000 	imm	0
     864:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     868:	b810ffc0 	brid	-64		// 828
     86c:	e9e10000 	lwi	r15, r1, 0

00000870 <XIntc_Connect>:
* that was previously connected.
*
****************************************************************************/
int XIntc_Connect(XIntc * InstancePtr, u8 Id,
		  XInterruptHandler Handler, void *CallBackRef)
{
     870:	3021ffe0 	addik	r1, r1, -32
     874:	f9e10000 	swi	r15, r1, 0
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     878:	be0500c0 	beqid	r5, 192		// 938
     87c:	fa61001c 	swi	r19, r1, 28
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     880:	32600001 	addik	r19, r0, 1
		  XInterruptHandler Handler, void *CallBackRef)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     884:	b0000000 	imm	0
     888:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     88c:	14669803 	cmpu	r3, r6, r19
     890:	bc430078 	blti	r3, 120		// 908
	Xil_AssertNonvoid(Handler != NULL);
     894:	bc0700cc 	beqi	r7, 204		// 960
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     898:	e8650004 	lwi	r3, r5, 4
     89c:	b0001111 	imm	4369
     8a0:	a8631111 	xori	r3, r3, 4369
     8a4:	be030038 	beqid	r3, 56		// 8dc
     8a8:	30860003 	addik	r4, r6, 3
     8ac:	b0000000 	imm	0
     8b0:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     8b4:	b0000000 	imm	0
     8b8:	b9f408a4 	brlid	r15, 2212	// 115c <Xil_Assert>
     8bc:	30c0016c 	addik	r6, r0, 364
     8c0:	b0000000 	imm	0
     8c4:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     8c8:	e9e10000 	lwi	r15, r1, 0
     8cc:	ea61001c 	lwi	r19, r1, 28
     8d0:	10600000 	addk	r3, r0, r0
     8d4:	b60f0008 	rtsd	r15, 8
     8d8:	30210020 	addik	r1, r1, 32

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8dc:	e8650010 	lwi	r3, r5, 16
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8e0:	64c60403 	bslli	r6, r6, 3

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8e4:	64840403 	bslli	r4, r4, 3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8e8:	10c33000 	addk	r6, r3, r6

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8ec:	d8e41800 	sw	r7, r4, r3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8f0:	f906001c 	swi	r8, r6, 28

	return XST_SUCCESS;
}
     8f4:	e9e10000 	lwi	r15, r1, 0
     8f8:	ea61001c 	lwi	r19, r1, 28
     8fc:	10600000 	addk	r3, r0, r0
     900:	b60f0008 	rtsd	r15, 8
     904:	30210020 	addik	r1, r1, 32
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     908:	b0000000 	imm	0
     90c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     910:	b0000000 	imm	0
     914:	b9f40848 	brlid	r15, 2120	// 115c <Xil_Assert>
     918:	30c0016a 	addik	r6, r0, 362
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     91c:	e9e10000 	lwi	r15, r1, 0
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     920:	b0000000 	imm	0
     924:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     928:	ea61001c 	lwi	r19, r1, 28
     92c:	10600000 	addk	r3, r0, r0
     930:	b60f0008 	rtsd	r15, 8
     934:	30210020 	addik	r1, r1, 32
		  XInterruptHandler Handler, void *CallBackRef)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     938:	b0000000 	imm	0
     93c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     940:	b0000000 	imm	0
     944:	b9f40818 	brlid	r15, 2072	// 115c <Xil_Assert>
     948:	30c00169 	addik	r6, r0, 361
     94c:	30600001 	addik	r3, r0, 1
     950:	b0000000 	imm	0
     954:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     958:	b810ff74 	brid	-140		// 8cc
     95c:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
     960:	b0000000 	imm	0
     964:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     968:	b0000000 	imm	0
     96c:	b9f407f0 	brlid	r15, 2032	// 115c <Xil_Assert>
     970:	30c0016b 	addik	r6, r0, 363
     974:	b0000000 	imm	0
     978:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
     97c:	b810ff50 	brid	-176		// 8cc
     980:	e9e10000 	lwi	r15, r1, 0

00000984 <XIntc_Disconnect>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Disconnect(XIntc * InstancePtr, u8 Id)
{
     984:	3021ffe0 	addik	r1, r1, -32
     988:	f9e10000 	swi	r15, r1, 0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     98c:	be0500dc 	beqid	r5, 220		// a68
     990:	fa61001c 	swi	r19, r1, 28
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     994:	32600001 	addik	r19, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     998:	b0000000 	imm	0
     99c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     9a0:	14669803 	cmpu	r3, r6, r19
     9a4:	bc430098 	blti	r3, 152		// a3c
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     9a8:	e8650004 	lwi	r3, r5, 4
     9ac:	b0001111 	imm	4369
     9b0:	a8631111 	xori	r3, r3, 4369
     9b4:	be030034 	beqid	r3, 52		// 9e8
     9b8:	64860402 	bslli	r4, r6, 2
     9bc:	b0000000 	imm	0
     9c0:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     9c4:	b0000000 	imm	0
     9c8:	b9f40794 	brlid	r15, 1940	// 115c <Xil_Assert>
     9cc:	30c00193 	addik	r6, r0, 403
     9d0:	b0000000 	imm	0
     9d4:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     9d8:	e9e10000 	lwi	r15, r1, 0
     9dc:	ea61001c 	lwi	r19, r1, 28
     9e0:	b60f0008 	rtsd	r15, 8
     9e4:	30210020 	addik	r1, r1, 32
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     9e8:	64660403 	bslli	r3, r6, 3
	/*
	 * Disable the interrupt such that it won't occur while disconnecting
	 * the handler, only disable the specified interrupt id without
	 * modifying the other interrupt ids
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     9ec:	e8e50000 	lwi	r7, r5, 0

	Mask = XIntc_BitPosMask[Id];/* convert from integer id to bit mask */
     9f0:	b0000000 	imm	0
     9f4:	30845f18 	addik	r4, r4, 24344

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     9f8:	e9040000 	lwi	r8, r4, 0
	/*
	 * Disable the interrupt such that it won't occur while disconnecting
	 * the handler, only disable the specified interrupt id without
	 * modifying the other interrupt ids
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     9fc:	e9270008 	lwi	r9, r7, 8
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     a00:	e8850010 	lwi	r4, r5, 16
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);

	Mask = XIntc_BitPosMask[Id];/* convert from integer id to bit mask */

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     a04:	a908ffff 	xori	r8, r8, -1
     a08:	85084800 	and	r8, r8, r9
     a0c:	f9070008 	swi	r8, r7, 8
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     a10:	30c60003 	addik	r6, r6, 3
     a14:	b0000000 	imm	0
     a18:	30e00518 	addik	r7, r0, 1304	// 518 <StubHandler>
     a1c:	64c60403 	bslli	r6, r6, 3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     a20:	10641800 	addk	r3, r4, r3
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     a24:	d8e62000 	sw	r7, r6, r4
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     a28:	f8a3001c 	swi	r5, r3, 28
}
     a2c:	e9e10000 	lwi	r15, r1, 0
     a30:	ea61001c 	lwi	r19, r1, 28
     a34:	b60f0008 	rtsd	r15, 8
     a38:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a3c:	b0000000 	imm	0
     a40:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     a44:	b0000000 	imm	0
     a48:	b9f40714 	brlid	r15, 1812	// 115c <Xil_Assert>
     a4c:	30c00192 	addik	r6, r0, 402
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     a50:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a54:	b0000000 	imm	0
     a58:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     a5c:	ea61001c 	lwi	r19, r1, 28
     a60:	b60f0008 	rtsd	r15, 8
     a64:	30210020 	addik	r1, r1, 32
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     a68:	b0000000 	imm	0
     a6c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     a70:	b0000000 	imm	0
     a74:	b9f406e8 	brlid	r15, 1768	// 115c <Xil_Assert>
     a78:	30c00191 	addik	r6, r0, 401
     a7c:	30600001 	addik	r3, r0, 1
     a80:	b0000000 	imm	0
     a84:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     a88:	b810ff54 	brid	-172		// 9dc
     a8c:	e9e10000 	lwi	r15, r1, 0

00000a90 <XIntc_Enable>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Enable(XIntc * InstancePtr, u8 Id)
{
     a90:	3021ffe0 	addik	r1, r1, -32
     a94:	f9e10000 	swi	r15, r1, 0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     a98:	be0500b4 	beqid	r5, 180		// b4c
     a9c:	fa61001c 	swi	r19, r1, 28
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     aa0:	32600001 	addik	r19, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     aa4:	b0000000 	imm	0
     aa8:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     aac:	14669803 	cmpu	r3, r6, r19
     ab0:	bc430070 	blti	r3, 112		// b20
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     ab4:	e8650004 	lwi	r3, r5, 4
     ab8:	b0001111 	imm	4369
     abc:	a8631111 	xori	r3, r3, 4369
     ac0:	be030034 	beqid	r3, 52		// af4
     ac4:	64c60402 	bslli	r6, r6, 2
     ac8:	b0000000 	imm	0
     acc:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     ad0:	b0000000 	imm	0
     ad4:	b9f40688 	brlid	r15, 1672	// 115c <Xil_Assert>
     ad8:	30c001c5 	addik	r6, r0, 453
     adc:	b0000000 	imm	0
     ae0:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     ae4:	e9e10000 	lwi	r15, r1, 0
     ae8:	ea61001c 	lwi	r19, r1, 28
     aec:	b60f0008 	rtsd	r15, 8
     af0:	30210020 	addik	r1, r1, 32

	/*
	 * Enable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     af4:	e8650000 	lwi	r3, r5, 0

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     af8:	b0000000 	imm	0
     afc:	30c65f18 	addik	r6, r6, 24344

	/*
	 * Enable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     b00:	e8a30008 	lwi	r5, r3, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     b04:	e8860000 	lwi	r4, r6, 0
     b08:	80852000 	or	r4, r5, r4
     b0c:	f8830008 	swi	r4, r3, 8
		    (CurrentIER | Mask));
}
     b10:	e9e10000 	lwi	r15, r1, 0
     b14:	ea61001c 	lwi	r19, r1, 28
     b18:	b60f0008 	rtsd	r15, 8
     b1c:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b20:	b0000000 	imm	0
     b24:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     b28:	b0000000 	imm	0
     b2c:	b9f40630 	brlid	r15, 1584	// 115c <Xil_Assert>
     b30:	30c001c4 	addik	r6, r0, 452
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b34:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b38:	b0000000 	imm	0
     b3c:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b40:	ea61001c 	lwi	r19, r1, 28
     b44:	b60f0008 	rtsd	r15, 8
     b48:	30210020 	addik	r1, r1, 32
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b4c:	b0000000 	imm	0
     b50:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     b54:	b0000000 	imm	0
     b58:	b9f40604 	brlid	r15, 1540	// 115c <Xil_Assert>
     b5c:	30c001c3 	addik	r6, r0, 451
     b60:	30600001 	addik	r3, r0, 1
     b64:	b0000000 	imm	0
     b68:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b6c:	b810ff7c 	brid	-132		// ae8
     b70:	e9e10000 	lwi	r15, r1, 0

00000b74 <XIntc_Disable>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Disable(XIntc * InstancePtr, u8 Id)
{
     b74:	3021ffe0 	addik	r1, r1, -32
     b78:	f9e10000 	swi	r15, r1, 0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b7c:	be0500b8 	beqid	r5, 184		// c34
     b80:	fa61001c 	swi	r19, r1, 28
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b84:	32600001 	addik	r19, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b88:	b0000000 	imm	0
     b8c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b90:	14669803 	cmpu	r3, r6, r19
     b94:	bc430074 	blti	r3, 116		// c08
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     b98:	e8650004 	lwi	r3, r5, 4
     b9c:	b0001111 	imm	4369
     ba0:	a8631111 	xori	r3, r3, 4369
     ba4:	be030034 	beqid	r3, 52		// bd8
     ba8:	64c60402 	bslli	r6, r6, 2
     bac:	b0000000 	imm	0
     bb0:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     bb4:	b0000000 	imm	0
     bb8:	b9f405a4 	brlid	r15, 1444	// 115c <Xil_Assert>
     bbc:	30c001f2 	addik	r6, r0, 498
     bc0:	b0000000 	imm	0
     bc4:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     bc8:	e9e10000 	lwi	r15, r1, 0
     bcc:	ea61001c 	lwi	r19, r1, 28
     bd0:	b60f0008 	rtsd	r15, 8
     bd4:	30210020 	addik	r1, r1, 32

	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     bd8:	e8650000 	lwi	r3, r5, 0

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     bdc:	b0000000 	imm	0
     be0:	30c65f18 	addik	r6, r6, 24344
	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     be4:	e8860000 	lwi	r4, r6, 0

	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     be8:	e8a30008 	lwi	r5, r3, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     bec:	a884ffff 	xori	r4, r4, -1
     bf0:	84842800 	and	r4, r4, r5
     bf4:	f8830008 	swi	r4, r3, 8
		    (CurrentIER & ~Mask));
}
     bf8:	e9e10000 	lwi	r15, r1, 0
     bfc:	ea61001c 	lwi	r19, r1, 28
     c00:	b60f0008 	rtsd	r15, 8
     c04:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c08:	b0000000 	imm	0
     c0c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     c10:	b0000000 	imm	0
     c14:	b9f40548 	brlid	r15, 1352	// 115c <Xil_Assert>
     c18:	30c001f1 	addik	r6, r0, 497
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     c1c:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c20:	b0000000 	imm	0
     c24:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     c28:	ea61001c 	lwi	r19, r1, 28
     c2c:	b60f0008 	rtsd	r15, 8
     c30:	30210020 	addik	r1, r1, 32
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c34:	b0000000 	imm	0
     c38:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     c3c:	b0000000 	imm	0
     c40:	b9f4051c 	brlid	r15, 1308	// 115c <Xil_Assert>
     c44:	30c001f0 	addik	r6, r0, 496
     c48:	30600001 	addik	r3, r0, 1
     c4c:	b0000000 	imm	0
     c50:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     c54:	b810ff78 	brid	-136		// bcc
     c58:	e9e10000 	lwi	r15, r1, 0

00000c5c <XIntc_Acknowledge>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Acknowledge(XIntc * InstancePtr, u8 Id)
{
     c5c:	3021ffe0 	addik	r1, r1, -32
     c60:	f9e10000 	swi	r15, r1, 0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c64:	be0500ac 	beqid	r5, 172		// d10
     c68:	fa61001c 	swi	r19, r1, 28
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c6c:	32600001 	addik	r19, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c70:	b0000000 	imm	0
     c74:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c78:	14669803 	cmpu	r3, r6, r19
     c7c:	bc430068 	blti	r3, 104		// ce4
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     c80:	e8650004 	lwi	r3, r5, 4
     c84:	b0001111 	imm	4369
     c88:	a8631111 	xori	r3, r3, 4369
     c8c:	be030034 	beqid	r3, 52		// cc0
     c90:	64c60402 	bslli	r6, r6, 2
     c94:	b0000000 	imm	0
     c98:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     c9c:	b0000000 	imm	0
     ca0:	b9f404bc 	brlid	r15, 1212	// 115c <Xil_Assert>
     ca4:	30c0021d 	addik	r6, r0, 541
     ca8:	b0000000 	imm	0
     cac:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     cb0:	e9e10000 	lwi	r15, r1, 0
     cb4:	ea61001c 	lwi	r19, r1, 28
     cb8:	b60f0008 	rtsd	r15, 8
     cbc:	30210020 	addik	r1, r1, 32

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     cc0:	b0000000 	imm	0
     cc4:	30c65f18 	addik	r6, r6, 24344
     cc8:	e8860000 	lwi	r4, r6, 0
	/*
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
     ccc:	e8650000 	lwi	r3, r5, 0
     cd0:	f883000c 	swi	r4, r3, 12
}
     cd4:	e9e10000 	lwi	r15, r1, 0
     cd8:	ea61001c 	lwi	r19, r1, 28
     cdc:	b60f0008 	rtsd	r15, 8
     ce0:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     ce4:	b0000000 	imm	0
     ce8:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     cec:	b0000000 	imm	0
     cf0:	b9f4046c 	brlid	r15, 1132	// 115c <Xil_Assert>
     cf4:	30c0021c 	addik	r6, r0, 540
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     cf8:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     cfc:	b0000000 	imm	0
     d00:	fa605f24 	swi	r19, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     d04:	ea61001c 	lwi	r19, r1, 28
     d08:	b60f0008 	rtsd	r15, 8
     d0c:	30210020 	addik	r1, r1, 32
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     d10:	b0000000 	imm	0
     d14:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     d18:	b0000000 	imm	0
     d1c:	b9f40440 	brlid	r15, 1088	// 115c <Xil_Assert>
     d20:	30c0021b 	addik	r6, r0, 539
     d24:	30600001 	addik	r3, r0, 1
     d28:	b0000000 	imm	0
     d2c:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     d30:	b810ff84 	brid	-124		// cb4
     d34:	e9e10000 	lwi	r15, r1, 0

00000d38 <XIntc_LookupConfig>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].DeviceId == DeviceId) {
     d38:	b0000000 	imm	0
     d3c:	e4805944 	lhui	r4, r0, 22852	// 5944 <XIntc_ConfigTable>
     d40:	88a42800 	xor	r5, r4, r5
     d44:	be250010 	bneid	r5, 16		// d54
     d48:	10600000 	addk	r3, r0, r0
			CfgPtr = &XIntc_ConfigTable[Index];
     d4c:	b0000000 	imm	0
     d50:	30605944 	addik	r3, r0, 22852	// 5944 <XIntc_ConfigTable>
			break;
		}
	}

	return CfgPtr;
}
     d54:	b60f0008 	rtsd	r15, 8
     d58:	80000000 	or	r0, r0, r0

00000d5c <XIntc_ConnectFastHandler>:
* that was previously connected.
*
****************************************************************************/
int XIntc_ConnectFastHandler(XIntc *InstancePtr, u8 Id,
				XFastInterruptHandler Handler)
{
     d5c:	3021ffd0 	addik	r1, r1, -48
     d60:	fa610020 	swi	r19, r1, 32
     d64:	fae10028 	swi	r23, r1, 40
     d68:	f9e10000 	swi	r15, r1, 0
     d6c:	fac10024 	swi	r22, r1, 36
     d70:	fb01002c 	swi	r24, r1, 44
     d74:	12650000 	addk	r19, r5, r0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     d78:	be05018c 	beqid	r5, 396		// f04
     d7c:	12e60000 	addk	r23, r6, r0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     d80:	32c00001 	addik	r22, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     d84:	b0000000 	imm	0
     d88:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     d8c:	1466b003 	cmpu	r3, r6, r22
     d90:	bc4300bc 	blti	r3, 188		// e4c
	Xil_AssertNonvoid(Handler != NULL);
     d94:	bc070198 	beqi	r7, 408		// f2c
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     d98:	e8650004 	lwi	r3, r5, 4
     d9c:	b0001111 	imm	4369
     da0:	a8631111 	xori	r3, r3, 4369
     da4:	bc23006c 	bnei	r3, 108		// e10
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     da8:	e8650010 	lwi	r3, r5, 16
     dac:	e863000c 	lwi	r3, r3, 12
     db0:	a8630001 	xori	r3, r3, 1
     db4:	be2300d4 	bneid	r3, 212		// e88
     db8:	67060402 	bslli	r24, r6, 2


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     dbc:	e8650000 	lwi	r3, r5, 0
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     dc0:	b0000000 	imm	0
     dc4:	31185f18 	addik	r8, r24, 24344
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     dc8:	e8830008 	lwi	r4, r3, 8
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     dcc:	eac80000 	lwi	r22, r8, 0


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     dd0:	84962000 	and	r4, r22, r4
     dd4:	be2400f0 	bneid	r4, 240		// ec4
     dd8:	30630100 	addik	r3, r3, 256
		XIntc_Disable(InstancePtr, Id);
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     ddc:	d8f81800 	sw	r7, r24, r3
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     de0:	e8650000 	lwi	r3, r5, 0
     de4:	e8830020 	lwi	r4, r3, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     de8:	82d62000 	or	r22, r22, r4
     dec:	fac30020 	swi	r22, r3, 32
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     df0:	e9e10000 	lwi	r15, r1, 0
     df4:	ea610020 	lwi	r19, r1, 32
     df8:	eac10024 	lwi	r22, r1, 36
     dfc:	eae10028 	lwi	r23, r1, 40
     e00:	eb01002c 	lwi	r24, r1, 44
     e04:	10600000 	addk	r3, r0, r0
     e08:	b60f0008 	rtsd	r15, 8
     e0c:	30210030 	addik	r1, r1, 48
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     e10:	b0000000 	imm	0
     e14:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     e18:	b0000000 	imm	0
     e1c:	b9f40340 	brlid	r15, 832	// 115c <Xil_Assert>
     e20:	30c00289 	addik	r6, r0, 649
     e24:	b0000000 	imm	0
     e28:	fac05f24 	swi	r22, r0, 24356	// 5f24 <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e2c:	e9e10000 	lwi	r15, r1, 0
     e30:	ea610020 	lwi	r19, r1, 32
     e34:	eac10024 	lwi	r22, r1, 36
     e38:	eae10028 	lwi	r23, r1, 40
     e3c:	eb01002c 	lwi	r24, r1, 44
     e40:	10600000 	addk	r3, r0, r0
     e44:	b60f0008 	rtsd	r15, 8
     e48:	30210030 	addik	r1, r1, 48

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     e4c:	b0000000 	imm	0
     e50:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     e54:	b0000000 	imm	0
     e58:	b9f40304 	brlid	r15, 772	// 115c <Xil_Assert>
     e5c:	30c00287 	addik	r6, r0, 647
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e60:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     e64:	b0000000 	imm	0
     e68:	fac05f24 	swi	r22, r0, 24356	// 5f24 <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e6c:	ea610020 	lwi	r19, r1, 32
     e70:	eac10024 	lwi	r22, r1, 36
     e74:	eae10028 	lwi	r23, r1, 40
     e78:	eb01002c 	lwi	r24, r1, 44
     e7c:	10600000 	addk	r3, r0, r0
     e80:	b60f0008 	rtsd	r15, 8
     e84:	30210030 	addik	r1, r1, 48
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     e88:	b0000000 	imm	0
     e8c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     e90:	b0000000 	imm	0
     e94:	b9f402c8 	brlid	r15, 712	// 115c <Xil_Assert>
     e98:	30c0028a 	addik	r6, r0, 650
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e9c:	e9e10000 	lwi	r15, r1, 0
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     ea0:	b0000000 	imm	0
     ea4:	fac05f24 	swi	r22, r0, 24356	// 5f24 <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     ea8:	ea610020 	lwi	r19, r1, 32
     eac:	eac10024 	lwi	r22, r1, 36
     eb0:	eae10028 	lwi	r23, r1, 40
     eb4:	eb01002c 	lwi	r24, r1, 44
     eb8:	10600000 	addk	r3, r0, r0
     ebc:	b60f0008 	rtsd	r15, 8
     ec0:	30210030 	addik	r1, r1, 48
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
     ec4:	b9f4fcb0 	brlid	r15, -848	// b74 <XIntc_Disable>
     ec8:	f8e1001c 	swi	r7, r1, 28
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     ecc:	e8730000 	lwi	r3, r19, 0
     ed0:	e8e1001c 	lwi	r7, r1, 28
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     ed4:	10b30000 	addk	r5, r19, r0
	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     ed8:	30630100 	addik	r3, r3, 256
     edc:	d8f81800 	sw	r7, r24, r3
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     ee0:	e8730000 	lwi	r3, r19, 0
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     ee4:	10d70000 	addk	r6, r23, r0
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     ee8:	e8830020 	lwi	r4, r3, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     eec:	82d62000 	or	r22, r22, r4
     ef0:	fac30020 	swi	r22, r3, 32
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     ef4:	b9f4fb9c 	brlid	r15, -1124	// a90 <XIntc_Enable>
     ef8:	80000000 	or	r0, r0, r0
	}
	return XST_SUCCESS;

}
     efc:	b810ff34 	brid	-204		// e30
     f00:	e9e10000 	lwi	r15, r1, 0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     f04:	b0000000 	imm	0
     f08:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     f0c:	b0000000 	imm	0
     f10:	b9f4024c 	brlid	r15, 588	// 115c <Xil_Assert>
     f14:	30c00286 	addik	r6, r0, 646
     f18:	30600001 	addik	r3, r0, 1
     f1c:	b0000000 	imm	0
     f20:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
     f24:	b810ff0c 	brid	-244		// e30
     f28:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
     f2c:	b0000000 	imm	0
     f30:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
     f34:	b0000000 	imm	0
     f38:	b9f40224 	brlid	r15, 548	// 115c <Xil_Assert>
     f3c:	30c00288 	addik	r6, r0, 648
     f40:	b0000000 	imm	0
     f44:	fac05f24 	swi	r22, r0, 24356	// 5f24 <Xil_AssertStatus>
     f48:	b810fee8 	brid	-280		// e30
     f4c:	e9e10000 	lwi	r15, r1, 0

00000f50 <XIntc_SetNormalIntrMode>:
*
* @note		None.
*
****************************************************************************/
void XIntc_SetNormalIntrMode(XIntc *InstancePtr, u8 Id)
{
     f50:	3021ffd0 	addik	r1, r1, -48
     f54:	fa61001c 	swi	r19, r1, 28
     f58:	fac10020 	swi	r22, r1, 32
     f5c:	f9e10000 	swi	r15, r1, 0
     f60:	fae10024 	swi	r23, r1, 36
     f64:	fb010028 	swi	r24, r1, 40
     f68:	fb21002c 	swi	r25, r1, 44
     f6c:	12650000 	addk	r19, r5, r0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     f70:	be050174 	beqid	r5, 372		// 10e4
     f74:	12c60000 	addk	r22, r6, r0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     f78:	32e00001 	addik	r23, r0, 1
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     f7c:	b0000000 	imm	0
     f80:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     f84:	1466b803 	cmpu	r3, r6, r23
     f88:	bc4300c0 	blti	r3, 192		// 1048
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     f8c:	e8650004 	lwi	r3, r5, 4
     f90:	b0001111 	imm	4369
     f94:	a8631111 	xori	r3, r3, 4369
     f98:	bc230074 	bnei	r3, 116		// 100c
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     f9c:	e8650010 	lwi	r3, r5, 16
     fa0:	e883000c 	lwi	r4, r3, 12
     fa4:	a8840001 	xori	r4, r4, 1
     fa8:	bc240100 	bnei	r4, 256		// 10a8


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     fac:	e8850000 	lwi	r4, r5, 0
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     fb0:	66e60402 	bslli	r23, r6, 2
     fb4:	b0000000 	imm	0
     fb8:	30f75f18 	addik	r7, r23, 24344
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     fbc:	eb040008 	lwi	r24, r4, 8
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     fc0:	eb270000 	lwi	r25, r7, 0


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     fc4:	8719c000 	and	r24, r25, r24
     fc8:	bc3800cc 	bnei	r24, 204		// 1094
	/*
	 * Disable the selected interrupt as Fast Interrupt by reading the
	 * interrupt mode register and then modifying only the
	 * specified interrupt id
	 */
	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     fcc:	e8a40020 	lwi	r5, r4, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     fd0:	ab39ffff 	xori	r25, r25, -1
     fd4:	8725c800 	and	r25, r5, r25
     fd8:	fb240020 	swi	r25, r4, 32
		    Imr & ~Mask);

	if (InstancePtr->CfgPtr->IntVectorAddr == 0x0) {
     fdc:	e8630010 	lwi	r3, r3, 16
     fe0:	be2300a4 	bneid	r3, 164		// 1084
     fe4:	30800010 	addik	r4, r0, 16	// 10 <_vector_interrupt>
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     fe8:	e8730000 	lwi	r3, r19, 0
     fec:	30630100 	addik	r3, r3, 256
     ff0:	d8971800 	sw	r4, r23, r3
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    	InstancePtr->CfgPtr->IntVectorAddr);
	}

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     ff4:	be180034 	beqid	r24, 52		// 1028
     ff8:	10b30000 	addk	r5, r19, r0
		XIntc_Enable(InstancePtr, Id);
     ffc:	b9f4fa94 	brlid	r15, -1388	// a90 <XIntc_Enable>
    1000:	10d60000 	addk	r6, r22, r0
	}
}
    1004:	b8100028 	brid	40		// 102c
    1008:	e9e10000 	lwi	r15, r1, 0
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    100c:	b0000000 	imm	0
    1010:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
    1014:	b0000000 	imm	0
    1018:	b9f40144 	brlid	r15, 324	// 115c <Xil_Assert>
    101c:	30c002c5 	addik	r6, r0, 709
    1020:	b0000000 	imm	0
    1024:	fae05f24 	swi	r23, r0, 24356	// 5f24 <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    1028:	e9e10000 	lwi	r15, r1, 0
    102c:	ea61001c 	lwi	r19, r1, 28
    1030:	eac10020 	lwi	r22, r1, 32
    1034:	eae10024 	lwi	r23, r1, 36
    1038:	eb010028 	lwi	r24, r1, 40
    103c:	eb21002c 	lwi	r25, r1, 44
    1040:	b60f0008 	rtsd	r15, 8
    1044:	30210030 	addik	r1, r1, 48

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
    1048:	b0000000 	imm	0
    104c:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
    1050:	b0000000 	imm	0
    1054:	b9f40108 	brlid	r15, 264	// 115c <Xil_Assert>
    1058:	30c002c4 	addik	r6, r0, 708

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    105c:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
    1060:	b0000000 	imm	0
    1064:	fae05f24 	swi	r23, r0, 24356	// 5f24 <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    1068:	ea61001c 	lwi	r19, r1, 28
    106c:	eac10020 	lwi	r22, r1, 32
    1070:	eae10024 	lwi	r23, r1, 36
    1074:	eb010028 	lwi	r24, r1, 40
    1078:	eb21002c 	lwi	r25, r1, 44
    107c:	b60f0008 	rtsd	r15, 8
    1080:	30210030 	addik	r1, r1, 48
	if (InstancePtr->CfgPtr->IntVectorAddr == 0x0) {
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    			0x10);
	} else {

		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
    1084:	e8930000 	lwi	r4, r19, 0
    1088:	30840100 	addik	r4, r4, 256
    108c:	d8772000 	sw	r3, r23, r4
    1090:	b800ff64 	bri	-156		// ff4
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
    1094:	b9f4fae0 	brlid	r15, -1312	// b74 <XIntc_Disable>
    1098:	80000000 	or	r0, r0, r0
    109c:	e8930000 	lwi	r4, r19, 0
    10a0:	b810ff2c 	brid	-212		// fcc
    10a4:	e8730010 	lwi	r3, r19, 16
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
    10a8:	b0000000 	imm	0
    10ac:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
    10b0:	b0000000 	imm	0
    10b4:	b9f400a8 	brlid	r15, 168	// 115c <Xil_Assert>
    10b8:	30c002c6 	addik	r6, r0, 710

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    10bc:	e9e10000 	lwi	r15, r1, 0
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
    10c0:	b0000000 	imm	0
    10c4:	fae05f24 	swi	r23, r0, 24356	// 5f24 <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    10c8:	ea61001c 	lwi	r19, r1, 28
    10cc:	eac10020 	lwi	r22, r1, 32
    10d0:	eae10024 	lwi	r23, r1, 36
    10d4:	eb010028 	lwi	r24, r1, 40
    10d8:	eb21002c 	lwi	r25, r1, 44
    10dc:	b60f0008 	rtsd	r15, 8
    10e0:	30210030 	addik	r1, r1, 48
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    10e4:	b0000000 	imm	0
    10e8:	30a058a8 	addik	r5, r0, 22696	// 58a8 <__rodata_start>
    10ec:	b0000000 	imm	0
    10f0:	b9f4006c 	brlid	r15, 108	// 115c <Xil_Assert>
    10f4:	30c002c3 	addik	r6, r0, 707
    10f8:	30600001 	addik	r3, r0, 1
    10fc:	b0000000 	imm	0
    1100:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    1104:	b810ff28 	brid	-216		// 102c
    1108:	e9e10000 	lwi	r15, r1, 0

0000110c <XAssert>:
*
******************************************************************************/
void XAssert(char *File, int Line)
{
	/* if the callback has been set then invoke it */
	if (XAssertCallbackRoutine != NULL) {
    110c:	b0000000 	imm	0
    1110:	e8605ec0 	lwi	r3, r0, 24256	// 5ec0 <XAssertCallbackRoutine>
*
* @note     None.
*
******************************************************************************/
void XAssert(char *File, int Line)
{
    1114:	3021ffe4 	addik	r1, r1, -28
	/* if the callback has been set then invoke it */
	if (XAssertCallbackRoutine != NULL) {
    1118:	be030010 	beqid	r3, 16		// 1128
    111c:	f9e10000 	swi	r15, r1, 0
		(*XAssertCallbackRoutine) (File, Line);
    1120:	99fc1800 	brald	r15, r3
    1124:	80000000 	or	r0, r0, r0
	}

	/* if specified, wait indefinitely such that the assert will show up
	 * in testing
	 */
	while (XWaitInAssert) {
    1128:	b0000000 	imm	0
    112c:	e860593c 	lwi	r3, r0, 22844	// 593c <XWaitInAssert>
    1130:	be230010 	bneid	r3, 16		// 1140
    1134:	e9e10000 	lwi	r15, r1, 0
	}
}
    1138:	b60f0008 	rtsd	r15, 8
    113c:	3021001c 	addik	r1, r1, 28
    1140:	b8000000 	bri	0		// 1140

00001144 <XAssertSetCallback>:
* @note     This function has no effect if NDEBUG is set
*
******************************************************************************/
void XAssertSetCallback(XAssertCallback Routine)
{
	XAssertCallbackRoutine = Routine;
    1144:	b0000000 	imm	0
    1148:	f8a05ec0 	swi	r5, r0, 24256	// 5ec0 <XAssertCallbackRoutine>
}
    114c:	b60f0008 	rtsd	r15, 8
    1150:	80000000 	or	r0, r0, r0

00001154 <XNullHandler>:
*
******************************************************************************/
void XNullHandler(void *NullParameter)
{
 (void) NullParameter;
}
    1154:	b60f0008 	rtsd	r15, 8
    1158:	80000000 	or	r0, r0, r0

0000115c <Xil_Assert>:
*
******************************************************************************/
void Xil_Assert(const char *File, int Line)
{
	/* if the callback has been set then invoke it */
	if (Xil_AssertCallbackRoutine != 0) {
    115c:	b0000000 	imm	0
    1160:	e8605ec4 	lwi	r3, r0, 24260	// 5ec4 <Xil_AssertCallbackRoutine>
*
* @note     None.
*
******************************************************************************/
void Xil_Assert(const char *File, int Line)
{
    1164:	3021ffe4 	addik	r1, r1, -28
	/* if the callback has been set then invoke it */
	if (Xil_AssertCallbackRoutine != 0) {
    1168:	be030010 	beqid	r3, 16		// 1178
    116c:	f9e10000 	swi	r15, r1, 0
		(*Xil_AssertCallbackRoutine)(File, Line);
    1170:	99fc1800 	brald	r15, r3
    1174:	80000000 	or	r0, r0, r0
	}

	/* if specified, wait indefinitely such that the assert will show up
	 * in testing
	 */
	while (Xil_AssertWait) {
    1178:	b0000000 	imm	0
    117c:	e8605940 	lwi	r3, r0, 22848	// 5940 <Xil_AssertWait>
    1180:	be230010 	bneid	r3, 16		// 1190
    1184:	e9e10000 	lwi	r15, r1, 0
	}
}
    1188:	b60f0008 	rtsd	r15, 8
    118c:	3021001c 	addik	r1, r1, 28
    1190:	b8000000 	bri	0		// 1190

00001194 <Xil_AssertSetCallback>:
* @note     This function has no effect if NDEBUG is set
*
******************************************************************************/
void Xil_AssertSetCallback(Xil_AssertCallback Routine)
{
	Xil_AssertCallbackRoutine = Routine;
    1194:	b0000000 	imm	0
    1198:	f8a05ec4 	swi	r5, r0, 24260	// 5ec4 <Xil_AssertCallbackRoutine>
}
    119c:	b60f0008 	rtsd	r15, 8
    11a0:	80000000 	or	r0, r0, r0

000011a4 <exit>:
    11a4:	3021ffe0 	addik	r1, r1, -32
    11a8:	10c00000 	addk	r6, r0, r0
    11ac:	fa61001c 	swi	r19, r1, 28
    11b0:	f9e10000 	swi	r15, r1, 0
    11b4:	b0000000 	imm	0
    11b8:	b9f4002c 	brlid	r15, 44	// 11e4 <__call_exitprocs>
    11bc:	12650000 	addk	r19, r5, r0
    11c0:	b0000000 	imm	0
    11c4:	e88058b0 	lwi	r4, r0, 22704	// 58b0 <_global_impure_ptr>
    11c8:	e8640028 	lwi	r3, r4, 40
    11cc:	bc03000c 	beqi	r3, 12		// 11d8
    11d0:	99fc1800 	brald	r15, r3
    11d4:	10a40000 	addk	r5, r4, r0
    11d8:	b000ffff 	imm	-1
    11dc:	b9f4eea4 	brlid	r15, -4444	// 80 <_exit>
    11e0:	10b30000 	addk	r5, r19, r0

000011e4 <__call_exitprocs>:
    11e4:	3021ffb8 	addik	r1, r1, -72
    11e8:	fb810038 	swi	r28, r1, 56
    11ec:	b0000000 	imm	0
    11f0:	eb8058b0 	lwi	r28, r0, 22704	// 58b0 <_global_impure_ptr>
    11f4:	fb21002c 	swi	r25, r1, 44
    11f8:	fbc10040 	swi	r30, r1, 64
    11fc:	fbe10044 	swi	r31, r1, 68
    1200:	13c50000 	addk	r30, r5, r0
    1204:	13260000 	addk	r25, r6, r0
    1208:	b0000000 	imm	0
    120c:	33e037dc 	addik	r31, r0, 14300	// 37dc <free>
    1210:	fb610034 	swi	r27, r1, 52
    1214:	fba1003c 	swi	r29, r1, 60
    1218:	f9e10000 	swi	r15, r1, 0
    121c:	fa61001c 	swi	r19, r1, 28
    1220:	fac10020 	swi	r22, r1, 32
    1224:	fae10024 	swi	r23, r1, 36
    1228:	fb010028 	swi	r24, r1, 40
    122c:	fb410030 	swi	r26, r1, 48
    1230:	33bc0048 	addik	r29, r28, 72
    1234:	33600001 	addik	r27, r0, 1
    1238:	eadc0048 	lwi	r22, r28, 72
    123c:	be1600b4 	beqid	r22, 180		// 12f0
    1240:	135d0000 	addk	r26, r29, r0
    1244:	e8760004 	lwi	r3, r22, 4
    1248:	3263ffff 	addik	r19, r3, -1
    124c:	be5300a0 	bltid	r19, 160		// 12ec
    1250:	eaf60088 	lwi	r23, r22, 136
    1254:	bc190104 	beqi	r25, 260		// 1358
    1258:	bc370010 	bnei	r23, 16		// 1268
    125c:	b8000090 	bri	144		// 12ec
    1260:	3273ffff 	addik	r19, r19, -1
    1264:	bc530088 	blti	r19, 136		// 12ec
    1268:	30730020 	addik	r3, r19, 32
    126c:	64630402 	bslli	r3, r3, 2
    1270:	c863b800 	lw	r3, r3, r23
    1274:	8863c800 	xor	r3, r3, r25
    1278:	be23ffe8 	bneid	r3, -24		// 1260
    127c:	30f30002 	addik	r7, r19, 2
    1280:	eb160004 	lwi	r24, r22, 4
    1284:	64e70402 	bslli	r7, r7, 2
    1288:	30d8ffff 	addik	r6, r24, -1
    128c:	89069800 	xor	r8, r6, r19
    1290:	be0800a8 	beqid	r8, 168		// 1338
    1294:	c887b000 	lw	r4, r7, r22
    1298:	d867b000 	sw	r3, r7, r22
    129c:	be04ffc4 	beqid	r4, -60		// 1260
    12a0:	447b9c00 	bsll	r3, r27, r19
    12a4:	e8d70100 	lwi	r6, r23, 256
    12a8:	84c33000 	and	r6, r3, r6
    12ac:	bc06007c 	beqi	r6, 124		// 1328
    12b0:	e8b70104 	lwi	r5, r23, 260
    12b4:	84632800 	and	r3, r3, r5
    12b8:	be03008c 	beqid	r3, 140		// 1344
    12bc:	64730402 	bslli	r3, r19, 2
    12c0:	99fc2000 	brald	r15, r4
    12c4:	c8a3b800 	lw	r5, r3, r23
    12c8:	e8760004 	lwi	r3, r22, 4
    12cc:	8b03c000 	xor	r24, r3, r24
    12d0:	bc38ff68 	bnei	r24, -152		// 1238
    12d4:	e87a0000 	lwi	r3, r26, 0
    12d8:	8863b000 	xor	r3, r3, r22
    12dc:	be23ff5c 	bneid	r3, -164		// 1238
    12e0:	3273ffff 	addik	r19, r19, -1
    12e4:	beb3ff88 	bgeid	r19, -120		// 126c
    12e8:	30730020 	addik	r3, r19, 32
    12ec:	bc3f0188 	bnei	r31, 392		// 1474
    12f0:	e9e10000 	lwi	r15, r1, 0
    12f4:	ea61001c 	lwi	r19, r1, 28
    12f8:	eac10020 	lwi	r22, r1, 32
    12fc:	eae10024 	lwi	r23, r1, 36
    1300:	eb010028 	lwi	r24, r1, 40
    1304:	eb21002c 	lwi	r25, r1, 44
    1308:	eb410030 	lwi	r26, r1, 48
    130c:	eb610034 	lwi	r27, r1, 52
    1310:	eb810038 	lwi	r28, r1, 56
    1314:	eba1003c 	lwi	r29, r1, 60
    1318:	ebc10040 	lwi	r30, r1, 64
    131c:	ebe10044 	lwi	r31, r1, 68
    1320:	b60f0008 	rtsd	r15, 8
    1324:	30210048 	addik	r1, r1, 72
    1328:	99fc2000 	brald	r15, r4
    132c:	80000000 	or	r0, r0, r0
    1330:	b810ff9c 	brid	-100		// 12cc
    1334:	e8760004 	lwi	r3, r22, 4
    1338:	f8d60004 	swi	r6, r22, 4
    133c:	b810ff60 	brid	-160		// 129c
    1340:	13060000 	addk	r24, r6, r0
    1344:	10be0000 	addk	r5, r30, r0
    1348:	99fc2000 	brald	r15, r4
    134c:	c8c3b800 	lw	r6, r3, r23
    1350:	b810ff7c 	brid	-132		// 12cc
    1354:	e8760004 	lwi	r3, r22, 4
    1358:	be1700d8 	beqid	r23, 216		// 1430
    135c:	30d30002 	addik	r6, r19, 2
    1360:	13030000 	addk	r24, r3, r0
    1364:	64c60402 	bslli	r6, r6, 2
    1368:	3063ffff 	addik	r3, r3, -1
    136c:	88e39800 	xor	r7, r3, r19
    1370:	be07007c 	beqid	r7, 124		// 13ec
    1374:	c886b000 	lw	r4, r6, r22
    1378:	d806b000 	sw	r0, r6, r22
    137c:	be040048 	beqid	r4, 72		// 13c4
    1380:	447b9c00 	bsll	r3, r27, r19
    1384:	e8b70100 	lwi	r5, r23, 256
    1388:	84a32800 	and	r5, r3, r5
    138c:	bc0500c8 	beqi	r5, 200		// 1454
    1390:	e8b70104 	lwi	r5, r23, 260
    1394:	84632800 	and	r3, r3, r5
    1398:	be2300cc 	bneid	r3, 204		// 1464
    139c:	64730402 	bslli	r3, r19, 2
    13a0:	10be0000 	addk	r5, r30, r0
    13a4:	99fc2000 	brald	r15, r4
    13a8:	c8c3b800 	lw	r6, r3, r23
    13ac:	e8760004 	lwi	r3, r22, 4
    13b0:	8863c000 	xor	r3, r3, r24
    13b4:	bc23fe84 	bnei	r3, -380		// 1238
    13b8:	e87a0000 	lwi	r3, r26, 0
    13bc:	8863b000 	xor	r3, r3, r22
    13c0:	bc23fe78 	bnei	r3, -392		// 1238
    13c4:	3273ffff 	addik	r19, r19, -1
    13c8:	be53ff24 	bltid	r19, -220		// 12ec
    13cc:	30d30002 	addik	r6, r19, 2
    13d0:	e8760004 	lwi	r3, r22, 4
    13d4:	64c60402 	bslli	r6, r6, 2
    13d8:	13030000 	addk	r24, r3, r0
    13dc:	3063ffff 	addik	r3, r3, -1
    13e0:	88e39800 	xor	r7, r3, r19
    13e4:	be27ff94 	bneid	r7, -108		// 1378
    13e8:	c886b000 	lw	r4, r6, r22
    13ec:	f8760004 	swi	r3, r22, 4
    13f0:	b810ff8c 	brid	-116		// 137c
    13f4:	13030000 	addk	r24, r3, r0
    13f8:	13030000 	addk	r24, r3, r0
    13fc:	f8760004 	swi	r3, r22, 4
    1400:	bc060024 	beqi	r6, 36		// 1424
    1404:	99fc3000 	brald	r15, r6
    1408:	80000000 	or	r0, r0, r0
    140c:	e8760004 	lwi	r3, r22, 4
    1410:	8863c000 	xor	r3, r3, r24
    1414:	bc23fe24 	bnei	r3, -476		// 1238
    1418:	e87a0000 	lwi	r3, r26, 0
    141c:	8863b000 	xor	r3, r3, r22
    1420:	bc23fe18 	bnei	r3, -488		// 1238
    1424:	3273ffff 	addik	r19, r19, -1
    1428:	bc53fec4 	blti	r19, -316		// 12ec
    142c:	e8760004 	lwi	r3, r22, 4
    1430:	30930002 	addik	r4, r19, 2
    1434:	13030000 	addk	r24, r3, r0
    1438:	64840402 	bslli	r4, r4, 2
    143c:	3063ffff 	addik	r3, r3, -1
    1440:	88a39800 	xor	r5, r3, r19
    1444:	be05ffb4 	beqid	r5, -76		// 13f8
    1448:	c8c4b000 	lw	r6, r4, r22
    144c:	b810ffb4 	brid	-76		// 1400
    1450:	d804b000 	sw	r0, r4, r22
    1454:	99fc2000 	brald	r15, r4
    1458:	80000000 	or	r0, r0, r0
    145c:	b810ff54 	brid	-172		// 13b0
    1460:	e8760004 	lwi	r3, r22, 4
    1464:	99fc2000 	brald	r15, r4
    1468:	c8a3b800 	lw	r5, r3, r23
    146c:	b810ff44 	brid	-188		// 13b0
    1470:	e8760004 	lwi	r3, r22, 4
    1474:	e8760004 	lwi	r3, r22, 4
    1478:	bc230040 	bnei	r3, 64		// 14b8
    147c:	e8760000 	lwi	r3, r22, 0
    1480:	bc03003c 	beqi	r3, 60		// 14bc
    1484:	be170014 	beqid	r23, 20		// 1498
    1488:	f87a0000 	swi	r3, r26, 0
    148c:	b0000000 	imm	0
    1490:	b9f4234c 	brlid	r15, 9036	// 37dc <free>
    1494:	10b70000 	addk	r5, r23, r0
    1498:	b0000000 	imm	0
    149c:	b9f42340 	brlid	r15, 9024	// 37dc <free>
    14a0:	10b60000 	addk	r5, r22, r0
    14a4:	eada0000 	lwi	r22, r26, 0
    14a8:	be36fd9c 	bneid	r22, -612		// 1244
    14ac:	e9e10000 	lwi	r15, r1, 0
    14b0:	b810fe48 	brid	-440		// 12f8
    14b4:	ea61001c 	lwi	r19, r1, 28
    14b8:	e8760000 	lwi	r3, r22, 0
    14bc:	13560000 	addk	r26, r22, r0
    14c0:	b810ffe8 	brid	-24		// 14a8
    14c4:	12c30000 	addk	r22, r3, r0

000014c8 <enable_caches>:

#define UART_BAUD 9600

void
enable_caches()
{
    14c8:	3021ffe4 	addik	r1, r1, -28
    14cc:	f9e10000 	swi	r15, r1, 0
#ifdef __PPC__
    Xil_ICacheEnableRegion(CACHEABLE_REGION_MASK);
    Xil_DCacheEnableRegion(CACHEABLE_REGION_MASK);
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
    14d0:	b0000000 	imm	0
    14d4:	b9f41278 	brlid	r15, 4728	// 274c <microblaze_enable_icache>
    14d8:	80000000 	or	r0, r0, r0
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
    14dc:	b0000000 	imm	0
    14e0:	b9f41254 	brlid	r15, 4692	// 2734 <microblaze_enable_dcache>
    14e4:	80000000 	or	r0, r0, r0
#endif
#endif
}
    14e8:	e9e10000 	lwi	r15, r1, 0
    14ec:	b60f0008 	rtsd	r15, 8
    14f0:	3021001c 	addik	r1, r1, 28

000014f4 <disable_caches>:

void
disable_caches()
{
    14f4:	3021ffe4 	addik	r1, r1, -28
    14f8:	f9e10000 	swi	r15, r1, 0
    Xil_DCacheDisable();
    14fc:	b0000000 	imm	0
    1500:	b9f41290 	brlid	r15, 4752	// 2790 <Xil_DCacheDisable>
    1504:	80000000 	or	r0, r0, r0
    Xil_ICacheDisable();
    1508:	b0000000 	imm	0
    150c:	b9f412bc 	brlid	r15, 4796	// 27c8 <Xil_ICacheDisable>
    1510:	80000000 	or	r0, r0, r0
}
    1514:	e9e10000 	lwi	r15, r1, 0
    1518:	b60f0008 	rtsd	r15, 8
    151c:	3021001c 	addik	r1, r1, 28

00001520 <init_uart>:
{
#ifdef STDOUT_IS_16550
    XUartNs550_SetBaud(STDOUT_BASEADDR, XPAR_XUARTNS550_CLOCK_HZ, UART_BAUD);
    XUartNs550_SetLineControlReg(STDOUT_BASEADDR, XUN_LCR_8_DATA_BITS);
#endif
}
    1520:	b60f0008 	rtsd	r15, 8
    1524:	80000000 	or	r0, r0, r0

00001528 <init_platform>:

void
init_platform()
{
    1528:	3021ffe4 	addik	r1, r1, -28
    152c:	f9e10000 	swi	r15, r1, 0
     * uncomment the following line and also #include "ps7_init.h" at the top.
     * Make sure that the ps7_init.c and ps7_init.h files are included
     * along with this example source files for compilation.
     */
    /* ps7_init();*/
    enable_caches();
    1530:	b9f4ff98 	brlid	r15, -104	// 14c8 <enable_caches>
    1534:	80000000 	or	r0, r0, r0
    init_uart();
}
    1538:	e9e10000 	lwi	r15, r1, 0
    153c:	b60f0008 	rtsd	r15, 8
    1540:	3021001c 	addik	r1, r1, 28

00001544 <cleanup_platform>:

void
cleanup_platform()
{
    1544:	3021ffe4 	addik	r1, r1, -28
    1548:	f9e10000 	swi	r15, r1, 0
    disable_caches();
    154c:	b9f4ffa8 	brlid	r15, -88	// 14f4 <disable_caches>
    1550:	80000000 	or	r0, r0, r0
}
    1554:	e9e10000 	lwi	r15, r1, 0
    1558:	b60f0008 	rtsd	r15, 8
    155c:	3021001c 	addik	r1, r1, 28

00001560 <RecvHandler>:
void RecvHandler(void *CallBackRef, unsigned int EventData) {
  //LOG_DEBUG("RecvHandler %x data %x\n", EventData, rx_tmp_buffer);
  if (EventData != sizeof(uint32_t)) {
    LOG_DEBUG("ERROR: did not receive a whole word!\n");
  }
  cbuffer_push_back(rx_buffer, rx_tmp_buffer);
    1560:	b0000000 	imm	0
    1564:	e8c05ecc 	lwi	r6, r0, 24268	// 5ecc <rx_tmp_buffer>
    1568:	b0000000 	imm	0
    156c:	e8a05ed4 	lwi	r5, r0, 24276	// 5ed4 <rx_buffer>
    currently_sending = 0;
  }
  //LOG_DEBUG("SendHandler SENT INTR %x\n", EventData);
}

void RecvHandler(void *CallBackRef, unsigned int EventData) {
    1570:	3021ffe4 	addik	r1, r1, -28
    1574:	f9e10000 	swi	r15, r1, 0
  //LOG_DEBUG("RecvHandler %x data %x\n", EventData, rx_tmp_buffer);
  if (EventData != sizeof(uint32_t)) {
    LOG_DEBUG("ERROR: did not receive a whole word!\n");
  }
  cbuffer_push_back(rx_buffer, rx_tmp_buffer);
    1578:	b0000000 	imm	0
    157c:	b9f409d0 	brlid	r15, 2512	// 1f4c <cbuffer_push_back>
    1580:	80000000 	or	r0, r0, r0
  XUartLite_Recv(&UartLite, (u8*)&rx_tmp_buffer, sizeof(uint32_t));
    1584:	b0000000 	imm	0
    1588:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    158c:	b0000000 	imm	0
    1590:	30c05ecc 	addik	r6, r0, 24268	// 5ecc <rx_tmp_buffer>
    1594:	b0000000 	imm	0
    1598:	b9f41b5c 	brlid	r15, 7004	// 30f4 <XUartLite_Recv>
    159c:	30e00004 	addik	r7, r0, 4
}
    15a0:	e9e10000 	lwi	r15, r1, 0
    15a4:	b60f0008 	rtsd	r15, 8
    15a8:	3021001c 	addik	r1, r1, 28

000015ac <SendHandler>:
void SendHandler(void *CallBackRef, unsigned int EventData) {
  // delete the bytes which were sent previously
  if (EventData % sizeof(uint32_t)) {
    LOG_DEBUG("ERROR: sent data not word aligned!!!\n");
  }
  cbuffer_deletefront(tx_buffer, EventData / sizeof(uint32_t));
    15ac:	10603000 	addk	r3, r0, r6
    15b0:	90660041 	srl	r3, r6
    15b4:	90630041 	srl	r3, r3
    15b8:	b0000000 	imm	0
    15bc:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    15c0:	10c30000 	addk	r6, r3, r0
static volatile uint32_t rx_tmp_buffer;
static volatile int currently_sending = 0;

int SetupInterruptSystem(XUartLite *UartLitePtr);

void SendHandler(void *CallBackRef, unsigned int EventData) {
    15c4:	3021ffe0 	addik	r1, r1, -32
    15c8:	f9e10000 	swi	r15, r1, 0
  // delete the bytes which were sent previously
  if (EventData % sizeof(uint32_t)) {
    LOG_DEBUG("ERROR: sent data not word aligned!!!\n");
  }
  cbuffer_deletefront(tx_buffer, EventData / sizeof(uint32_t));
    15cc:	b0000000 	imm	0
    15d0:	b9f40bac 	brlid	r15, 2988	// 217c <cbuffer_deletefront>
    15d4:	f861001c 	swi	r3, r1, 28
  if (cbuffer_size(tx_buffer)) {
    15d8:	b0000000 	imm	0
    15dc:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    15e0:	b0000000 	imm	0
    15e4:	b9f40700 	brlid	r15, 1792	// 1ce4 <cbuffer_size>
    15e8:	80000000 	or	r0, r0, r0
    15ec:	be230018 	bneid	r3, 24		// 1604
    15f0:	e9e10000 	lwi	r15, r1, 0
    XUartLite_Send(&UartLite, (u8*)&(tx_buffer->data[tx_buffer->pos]), to_send);
    //LOG_DEBUG("SendHandler _Send  %x\n", to_send);
    currently_sending = 1;
  } else {
    //LOG_DEBUG("SendHandler Idling\n");
    currently_sending = 0;
    15f4:	b0000000 	imm	0
    15f8:	f8605ec8 	swi	r3, r0, 24264	// 5ec8 <currently_sending>
  }
  //LOG_DEBUG("SendHandler SENT INTR %x\n", EventData);
}
    15fc:	b60f0008 	rtsd	r15, 8
    1600:	30210020 	addik	r1, r1, 32
  if (EventData % sizeof(uint32_t)) {
    LOG_DEBUG("ERROR: sent data not word aligned!!!\n");
  }
  cbuffer_deletefront(tx_buffer, EventData / sizeof(uint32_t));
  if (cbuffer_size(tx_buffer)) {
    unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    1604:	b0000000 	imm	0
    1608:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    160c:	b0000000 	imm	0
    1610:	b9f406f8 	brlid	r15, 1784	// 1d08 <cbuffer_contiguous_data_size>
    1614:	80000000 	or	r0, r0, r0
    XUartLite_Send(&UartLite, (u8*)&(tx_buffer->data[tx_buffer->pos]), to_send);
    1618:	b0000000 	imm	0
    161c:	e8805ed0 	lwi	r4, r0, 24272	// 5ed0 <tx_buffer>
    1620:	60e30004 	muli	r7, r3, 4
    1624:	b0000000 	imm	0
    1628:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    162c:	e8640008 	lwi	r3, r4, 8
    1630:	e8c40000 	lwi	r6, r4, 0
    1634:	60630004 	muli	r3, r3, 4
    1638:	b0000000 	imm	0
    163c:	b9f418a0 	brlid	r15, 6304	// 2edc <XUartLite_Send>
    1640:	10c61800 	addk	r6, r6, r3
  } else {
    //LOG_DEBUG("SendHandler Idling\n");
    currently_sending = 0;
  }
  //LOG_DEBUG("SendHandler SENT INTR %x\n", EventData);
}
    1644:	e9e10000 	lwi	r15, r1, 0
  cbuffer_deletefront(tx_buffer, EventData / sizeof(uint32_t));
  if (cbuffer_size(tx_buffer)) {
    unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    XUartLite_Send(&UartLite, (u8*)&(tx_buffer->data[tx_buffer->pos]), to_send);
    //LOG_DEBUG("SendHandler _Send  %x\n", to_send);
    currently_sending = 1;
    1648:	30600001 	addik	r3, r0, 1
    164c:	b0000000 	imm	0
    1650:	f8605ec8 	swi	r3, r0, 24264	// 5ec8 <currently_sending>
  } else {
    //LOG_DEBUG("SendHandler Idling\n");
    currently_sending = 0;
  }
  //LOG_DEBUG("SendHandler SENT INTR %x\n", EventData);
}
    1654:	b60f0008 	rtsd	r15, 8
    1658:	30210020 	addik	r1, r1, 32

0000165c <SetupInterruptSystem>:
    }
  }

}

int SetupInterruptSystem(XUartLite *UartLitePtr) {
    165c:	3021ffdc 	addik	r1, r1, -36
    1660:	fac10020 	swi	r22, r1, 32
    1664:	12c50000 	addk	r22, r5, r0
  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  LOG_INFO("shiiit 1\n");
  Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
    1668:	b0000000 	imm	0
    166c:	30a05f74 	addik	r5, r0, 24436	// 5f74 <InterruptController>
    }
  }

}

int SetupInterruptSystem(XUartLite *UartLitePtr) {
    1670:	fa61001c 	swi	r19, r1, 28
    1674:	f9e10000 	swi	r15, r1, 0
  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  LOG_INFO("shiiit 1\n");
  Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
    1678:	b000ffff 	imm	-1
    167c:	b9f4eef4 	brlid	r15, -4364	// 570 <XIntc_Initialize>
    1680:	10c00000 	addk	r6, r0, r0
  if (Status != XST_SUCCESS) {
      LOG_INFO("shiiit\n");
    return XST_FAILURE;
    1684:	32600001 	addik	r19, r0, 1
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  LOG_INFO("shiiit 1\n");
  Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
  if (Status != XST_SUCCESS) {
    1688:	be030020 	beqid	r3, 32		// 16a8
    168c:	10c30000 	addk	r6, r3, r0
  Xil_ExceptionEnable();

  LOG_INFO("setup interrupts okay\n");

  return XST_SUCCESS;
}
    1690:	10730000 	addk	r3, r19, r0
    1694:	e9e10000 	lwi	r15, r1, 0
    1698:	ea61001c 	lwi	r19, r1, 28
    169c:	eac10020 	lwi	r22, r1, 32
    16a0:	b60f0008 	rtsd	r15, 8
    16a4:	30210024 	addik	r1, r1, 36
  /*
   * Connect a device driver handler that will be called when an interrupt
   * for the device occurs, the device driver handler performs the
   * specific interrupt processing for the device.
   */
  Status = XIntc_Connect(&InterruptController, UARTLITE_INT_IRQ_ID,
    16a8:	b0000000 	imm	0
    16ac:	30a05f74 	addik	r5, r0, 24436	// 5f74 <InterruptController>
    16b0:	b0000000 	imm	0
    16b4:	30e02a0c 	addik	r7, r0, 10764	// 2a0c <XUartLite_InterruptHandler>
    16b8:	b000ffff 	imm	-1
    16bc:	b9f4f1b4 	brlid	r15, -3660	// 870 <XIntc_Connect>
    16c0:	11160000 	addk	r8, r22, r0
      (XInterruptHandler)XUartLite_InterruptHandler,
      (void *)UartLitePtr);
  if (Status != XST_SUCCESS) {
    16c4:	be23ffd0 	bneid	r3, -48		// 1694
    16c8:	10730000 	addk	r3, r19, r0
  /*
   * Start the interrupt controller such that interrupts are enabled for
   * all devices that cause interrupts, specific real mode so that
   * the UartLite can cause interrupts through the interrupt controller.
   */
  Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
    16cc:	b0000000 	imm	0
    16d0:	30a05f74 	addik	r5, r0, 24436	// 5f74 <InterruptController>
    16d4:	b000ffff 	imm	-1
    16d8:	b9f4f018 	brlid	r15, -4072	// 6f0 <XIntc_Start>
    16dc:	10d30000 	addk	r6, r19, r0
  if (Status != XST_SUCCESS) {
    16e0:	bc23ffb0 	bnei	r3, -80		// 1690
  LOG_INFO("wtf6\n");

  /*
   * Enable the interrupt for the UartLite device.
   */
  XIntc_Enable(&InterruptController, UARTLITE_INT_IRQ_ID);
    16e4:	10c30000 	addk	r6, r3, r0
    16e8:	b0000000 	imm	0
    16ec:	30a05f74 	addik	r5, r0, 24436	// 5f74 <InterruptController>
    16f0:	b000ffff 	imm	-1
    16f4:	b9f4f39c 	brlid	r15, -3172	// a90 <XIntc_Enable>
    16f8:	12630000 	addk	r19, r3, r0

  /*
   * Initialize the exception table.
   */
  Xil_ExceptionInit();
    16fc:	b0000000 	imm	0
    1700:	b9f410fc 	brlid	r15, 4348	// 27fc <Xil_ExceptionInit>
    1704:	80000000 	or	r0, r0, r0

  /*
   * Register the interrupt controller handler with the exception table.
   */
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
    1708:	b0000000 	imm	0
    170c:	30c03574 	addik	r6, r0, 13684	// 3574 <XIntc_InterruptHandler>
    1710:	b0000000 	imm	0
    1714:	30e05f74 	addik	r7, r0, 24436	// 5f74 <InterruptController>
    1718:	b0000000 	imm	0
    171c:	b9f41128 	brlid	r15, 4392	// 2844 <Xil_ExceptionRegisterHandler>
    1720:	30a00010 	addik	r5, r0, 16	// 10 <_vector_interrupt>
      &InterruptController);

  /*
   * Enable exceptions.
   */
  Xil_ExceptionEnable();
    1724:	b0000000 	imm	0
    1728:	b9f410dc 	brlid	r15, 4316	// 2804 <Xil_ExceptionEnable>
    172c:	80000000 	or	r0, r0, r0

  LOG_INFO("setup interrupts okay\n");

  return XST_SUCCESS;
    1730:	b810ff64 	brid	-156		// 1694
    1734:	10730000 	addk	r3, r19, r0

00001738 <buffer_new>:
#include <stdlib.h>
#include <string.h>

#include "buffer.h"

Buffer* buffer_new(void* data, uint32_t size) {
    1738:	3021ffd4 	addik	r1, r1, -44
    173c:	fb010028 	swi	r24, r1, 40
    1740:	13060000 	addk	r24, r6, r0
    1744:	fae10024 	swi	r23, r1, 36
    1748:	12e50000 	addk	r23, r5, r0
  Buffer* output = (Buffer*)malloc(sizeof(Buffer));
    174c:	30a00008 	addik	r5, r0, 8	// 8 <_vector_sw_exception>
#include <stdlib.h>
#include <string.h>

#include "buffer.h"

Buffer* buffer_new(void* data, uint32_t size) {
    1750:	f9e10000 	swi	r15, r1, 0
    1754:	fa61001c 	swi	r19, r1, 28
  Buffer* output = (Buffer*)malloc(sizeof(Buffer));
    1758:	b0000000 	imm	0
    175c:	b9f42054 	brlid	r15, 8276	// 37b0 <malloc>
    1760:	fac10020 	swi	r22, r1, 32
  output->data = (uint32_t*)malloc(size * sizeof(uint32_t));
    1764:	62d80004 	muli	r22, r24, 4
    1768:	10b60000 	addk	r5, r22, r0
    176c:	b0000000 	imm	0
    1770:	b9f42040 	brlid	r15, 8256	// 37b0 <malloc>
    1774:	12630000 	addk	r19, r3, r0
    1778:	f8730000 	swi	r3, r19, 0
  output->size = size;
    177c:	fb130004 	swi	r24, r19, 4
  if (data) {
    memcpy(output->data, data, size * sizeof(uint32_t));
    1780:	10a30000 	addk	r5, r3, r0
    1784:	10d70000 	addk	r6, r23, r0

Buffer* buffer_new(void* data, uint32_t size) {
  Buffer* output = (Buffer*)malloc(sizeof(Buffer));
  output->data = (uint32_t*)malloc(size * sizeof(uint32_t));
  output->size = size;
  if (data) {
    1788:	be170034 	beqid	r23, 52		// 17bc
    178c:	10f60000 	addk	r7, r22, r0
    memcpy(output->data, data, size * sizeof(uint32_t));
    1790:	b0000000 	imm	0
    1794:	b9f42924 	brlid	r15, 10532	// 40b8 <memcpy>
    1798:	80000000 	or	r0, r0, r0
  } else {
    memset(output->data, 0, size * sizeof(uint32_t));
  }
  return output;
}
    179c:	10730000 	addk	r3, r19, r0
    17a0:	e9e10000 	lwi	r15, r1, 0
    17a4:	ea61001c 	lwi	r19, r1, 28
    17a8:	eac10020 	lwi	r22, r1, 32
    17ac:	eae10024 	lwi	r23, r1, 36
    17b0:	eb010028 	lwi	r24, r1, 40
    17b4:	b60f0008 	rtsd	r15, 8
    17b8:	3021002c 	addik	r1, r1, 44
  output->data = (uint32_t*)malloc(size * sizeof(uint32_t));
  output->size = size;
  if (data) {
    memcpy(output->data, data, size * sizeof(uint32_t));
  } else {
    memset(output->data, 0, size * sizeof(uint32_t));
    17bc:	b0000000 	imm	0
    17c0:	b9f42cc0 	brlid	r15, 11456	// 4480 <memset>
    17c4:	80000000 	or	r0, r0, r0
  }
  return output;
}
    17c8:	10730000 	addk	r3, r19, r0
    17cc:	e9e10000 	lwi	r15, r1, 0
    17d0:	ea61001c 	lwi	r19, r1, 28
    17d4:	eac10020 	lwi	r22, r1, 32
    17d8:	eae10024 	lwi	r23, r1, 36
    17dc:	eb010028 	lwi	r24, r1, 40
    17e0:	b60f0008 	rtsd	r15, 8
    17e4:	3021002c 	addik	r1, r1, 44

000017e8 <buffer_free>:

void buffer_free(Buffer* buf) {
    17e8:	3021ffe0 	addik	r1, r1, -32
    17ec:	f9e10000 	swi	r15, r1, 0
    17f0:	fa61001c 	swi	r19, r1, 28
    17f4:	12650000 	addk	r19, r5, r0
  free(buf->data);
    17f8:	b0000000 	imm	0
    17fc:	b9f41fe0 	brlid	r15, 8160	// 37dc <free>
    1800:	e8a50000 	lwi	r5, r5, 0
  free(buf);
    1804:	b0000000 	imm	0
    1808:	b9f41fd4 	brlid	r15, 8148	// 37dc <free>
    180c:	10b30000 	addk	r5, r19, r0
}
    1810:	e9e10000 	lwi	r15, r1, 0
    1814:	ea61001c 	lwi	r19, r1, 28
    1818:	b60f0008 	rtsd	r15, 8
    181c:	30210020 	addik	r1, r1, 32

00001820 <buffer_resize>:

void buffer_resize(Buffer* buf, uint32_t size) {
    1820:	3021ffdc 	addik	r1, r1, -36
    1824:	f9e10000 	swi	r15, r1, 0
    1828:	fa61001c 	swi	r19, r1, 28
    182c:	fac10020 	swi	r22, r1, 32
    1830:	12650000 	addk	r19, r5, r0
  buf->data = (uint32_t*)realloc(buf->data, size * sizeof(uint32_t));
    1834:	e8a50000 	lwi	r5, r5, 0
void buffer_free(Buffer* buf) {
  free(buf->data);
  free(buf);
}

void buffer_resize(Buffer* buf, uint32_t size) {
    1838:	12c60000 	addk	r22, r6, r0
  buf->data = (uint32_t*)realloc(buf->data, size * sizeof(uint32_t));
    183c:	b0000000 	imm	0
    1840:	b9f42e34 	brlid	r15, 11828	// 4674 <realloc>
    1844:	60c60004 	muli	r6, r6, 4
    1848:	f8730000 	swi	r3, r19, 0
  buf->size = size;
    184c:	fad30004 	swi	r22, r19, 4
}
    1850:	e9e10000 	lwi	r15, r1, 0
    1854:	ea61001c 	lwi	r19, r1, 28
    1858:	eac10020 	lwi	r22, r1, 32
    185c:	b60f0008 	rtsd	r15, 8
    1860:	30210024 	addik	r1, r1, 36

00001864 <bytebuffer_ctor>:

#include <stdlib.h>
#include <string.h>
#include <unistd.h>

ByteBuffer bytebuffer_ctor(const unsigned char* data, size_t n) {
    1864:	3021ffd4 	addik	r1, r1, -44
    1868:	fa610020 	swi	r19, r1, 32
    186c:	fac10024 	swi	r22, r1, 36
    1870:	fae10028 	swi	r23, r1, 40
    1874:	f9e10000 	swi	r15, r1, 0
    1878:	12670000 	addk	r19, r7, r0
    187c:	12c50000 	addk	r22, r5, r0
  ByteBuffer output;
  output.bufsize = n;
  output.buf = NULL;
  if (n) {
    1880:	be070034 	beqid	r7, 52		// 18b4
    1884:	12e70000 	addk	r23, r7, r0
    if (data != NULL) {
    1888:	be060050 	beqid	r6, 80		// 18d8
    188c:	10a70000 	addk	r5, r7, r0
      output.buf = (unsigned char*) malloc(n);
    1890:	b0000000 	imm	0
    1894:	b9f41f1c 	brlid	r15, 7964	// 37b0 <malloc>
    1898:	f8c1001c 	swi	r6, r1, 28
      memcpy(output.buf, data, n);
    189c:	10a30000 	addk	r5, r3, r0
    18a0:	e8c1001c 	lwi	r6, r1, 28
    18a4:	10f30000 	addk	r7, r19, r0
    18a8:	b0000000 	imm	0
    18ac:	b9f4280c 	brlid	r15, 10252	// 40b8 <memcpy>
    18b0:	12e30000 	addk	r23, r3, r0
    } else {
      output.buf = (unsigned char*)calloc(n, 1);
    }
  }
  return output;
    18b4:	fa760000 	swi	r19, r22, 0
    18b8:	faf60004 	swi	r23, r22, 4
}
    18bc:	10760000 	addk	r3, r22, r0
    18c0:	e9e10000 	lwi	r15, r1, 0
    18c4:	ea610020 	lwi	r19, r1, 32
    18c8:	eac10024 	lwi	r22, r1, 36
    18cc:	eae10028 	lwi	r23, r1, 40
    18d0:	b60f0008 	rtsd	r15, 8
    18d4:	3021002c 	addik	r1, r1, 44
  if (n) {
    if (data != NULL) {
      output.buf = (unsigned char*) malloc(n);
      memcpy(output.buf, data, n);
    } else {
      output.buf = (unsigned char*)calloc(n, 1);
    18d8:	b0000000 	imm	0
    18dc:	b9f41ddc 	brlid	r15, 7644	// 36b8 <calloc>
    18e0:	30c00001 	addik	r6, r0, 1
    18e4:	b810ffd0 	brid	-48		// 18b4
    18e8:	12e30000 	addk	r23, r3, r0

000018ec <bytebuffer_free>:
    }
  }
  return output;
}

void bytebuffer_free(ByteBuffer* buffer) {
    18ec:	3021ffe0 	addik	r1, r1, -32
    18f0:	f9e10000 	swi	r15, r1, 0
    18f4:	fa61001c 	swi	r19, r1, 28
    18f8:	12650000 	addk	r19, r5, r0
  free(buffer->buf);
    18fc:	b0000000 	imm	0
    1900:	b9f41edc 	brlid	r15, 7900	// 37dc <free>
    1904:	e8a50004 	lwi	r5, r5, 4
  buffer->bufsize = 0;
    1908:	f8130000 	swi	r0, r19, 0
  buffer->buf = NULL;
    190c:	f8130004 	swi	r0, r19, 4
}
    1910:	e9e10000 	lwi	r15, r1, 0
    1914:	ea61001c 	lwi	r19, r1, 28
    1918:	b60f0008 	rtsd	r15, 8
    191c:	30210020 	addik	r1, r1, 32

00001920 <bytebuffer_reserve_back>:

void bytebuffer_reserve_back(ByteBuffer* buffer, size_t n) {
    1920:	3021ffdc 	addik	r1, r1, -36
    1924:	f9e10000 	swi	r15, r1, 0
    1928:	fa61001c 	swi	r19, r1, 28
    192c:	fac10020 	swi	r22, r1, 32
    1930:	12c60000 	addk	r22, r6, r0
  // From: http://www.cplusplus.com/reference/cstdlib/realloc/
  // "Alternatively, this can be a null pointer, in which case a new block is
  // allocated (as if malloc was called)."
  buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize + n);
    1934:	e8c50000 	lwi	r6, r5, 0
  free(buffer->buf);
  buffer->bufsize = 0;
  buffer->buf = NULL;
}

void bytebuffer_reserve_back(ByteBuffer* buffer, size_t n) {
    1938:	12650000 	addk	r19, r5, r0
  // From: http://www.cplusplus.com/reference/cstdlib/realloc/
  // "Alternatively, this can be a null pointer, in which case a new block is
  // allocated (as if malloc was called)."
  buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize + n);
    193c:	e8a50004 	lwi	r5, r5, 4
    1940:	b0000000 	imm	0
    1944:	b9f42d30 	brlid	r15, 11568	// 4674 <realloc>
    1948:	10d63000 	addk	r6, r22, r6
  buffer->bufsize += n;
    194c:	e8930000 	lwi	r4, r19, 0

void bytebuffer_reserve_back(ByteBuffer* buffer, size_t n) {
  // From: http://www.cplusplus.com/reference/cstdlib/realloc/
  // "Alternatively, this can be a null pointer, in which case a new block is
  // allocated (as if malloc was called)."
  buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize + n);
    1950:	f8730004 	swi	r3, r19, 4
  buffer->bufsize += n;
    1954:	12c4b000 	addk	r22, r4, r22
    1958:	fad30000 	swi	r22, r19, 0
}
    195c:	e9e10000 	lwi	r15, r1, 0
    1960:	ea61001c 	lwi	r19, r1, 28
    1964:	eac10020 	lwi	r22, r1, 32
    1968:	b60f0008 	rtsd	r15, 8
    196c:	30210024 	addik	r1, r1, 36

00001970 <bytebuffer_append>:

void bytebuffer_append(ByteBuffer* buffer, const unsigned char* data, size_t n) {
    1970:	3021ffd4 	addik	r1, r1, -44
    1974:	fa610020 	swi	r19, r1, 32
    1978:	12660000 	addk	r19, r6, r0
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
    197c:	10c70000 	addk	r6, r7, r0
  // allocated (as if malloc was called)."
  buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize + n);
  buffer->bufsize += n;
}

void bytebuffer_append(ByteBuffer* buffer, const unsigned char* data, size_t n) {
    1980:	fac10024 	swi	r22, r1, 36
    1984:	12c50000 	addk	r22, r5, r0
    1988:	f9e10000 	swi	r15, r1, 0
    198c:	fae10028 	swi	r23, r1, 40
  size_t original_size = buffer->bufsize;
    1990:	eae50000 	lwi	r23, r5, 0
  bytebuffer_reserve_back(buffer, n);
    1994:	b9f4ff8c 	brlid	r15, -116	// 1920 <bytebuffer_reserve_back>
    1998:	f8e1001c 	swi	r7, r1, 28
  if (data != NULL) {
    memcpy(buffer->buf + original_size, data, n);
    199c:	e8b60004 	lwi	r5, r22, 4
}

void bytebuffer_append(ByteBuffer* buffer, const unsigned char* data, size_t n) {
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
  if (data != NULL) {
    19a0:	e8e1001c 	lwi	r7, r1, 28
    memcpy(buffer->buf + original_size, data, n);
    19a4:	10d30000 	addk	r6, r19, r0
}

void bytebuffer_append(ByteBuffer* buffer, const unsigned char* data, size_t n) {
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
  if (data != NULL) {
    19a8:	be13002c 	beqid	r19, 44		// 19d4
    19ac:	10a5b800 	addk	r5, r5, r23
    memcpy(buffer->buf + original_size, data, n);
    19b0:	b0000000 	imm	0
    19b4:	b9f42704 	brlid	r15, 9988	// 40b8 <memcpy>
    19b8:	80000000 	or	r0, r0, r0
  } else {
    memset(buffer->buf + original_size, 0, n);
  }
}
    19bc:	e9e10000 	lwi	r15, r1, 0
    19c0:	ea610020 	lwi	r19, r1, 32
    19c4:	eac10024 	lwi	r22, r1, 36
    19c8:	eae10028 	lwi	r23, r1, 40
    19cc:	b60f0008 	rtsd	r15, 8
    19d0:	3021002c 	addik	r1, r1, 44
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
  if (data != NULL) {
    memcpy(buffer->buf + original_size, data, n);
  } else {
    memset(buffer->buf + original_size, 0, n);
    19d4:	b0000000 	imm	0
    19d8:	b9f42aa8 	brlid	r15, 10920	// 4480 <memset>
    19dc:	80000000 	or	r0, r0, r0
  }
}
    19e0:	e9e10000 	lwi	r15, r1, 0
    19e4:	ea610020 	lwi	r19, r1, 32
    19e8:	eac10024 	lwi	r22, r1, 36
    19ec:	eae10028 	lwi	r23, r1, 40
    19f0:	b60f0008 	rtsd	r15, 8
    19f4:	3021002c 	addik	r1, r1, 44

000019f8 <bytebuffer_del_back>:

void bytebuffer_del_back(ByteBuffer* buffer, size_t n) {
    19f8:	3021ffe0 	addik	r1, r1, -32
    19fc:	fa61001c 	swi	r19, r1, 28
    1a00:	f9e10000 	swi	r15, r1, 0
  if ((int)n >= buffer->bufsize) {
    1a04:	e8650000 	lwi	r3, r5, 0
    1a08:	14833001 	cmp	r4, r3, r6
    1a0c:	bea40034 	bgeid	r4, 52		// 1a40
    1a10:	12650000 	addk	r19, r5, r0
    bytebuffer_free(buffer);
  } else {
    buffer->bufsize -= n;
    1a14:	14661800 	rsubk	r3, r6, r3
    buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize);
    1a18:	e8a50004 	lwi	r5, r5, 4
    1a1c:	10c30000 	addk	r6, r3, r0
    1a20:	b0000000 	imm	0
    1a24:	b9f42c50 	brlid	r15, 11344	// 4674 <realloc>
    1a28:	f8730000 	swi	r3, r19, 0
    1a2c:	f8730004 	swi	r3, r19, 4
  }
}
    1a30:	e9e10000 	lwi	r15, r1, 0
    1a34:	ea61001c 	lwi	r19, r1, 28
    1a38:	b60f0008 	rtsd	r15, 8
    1a3c:	30210020 	addik	r1, r1, 32
  }
}

void bytebuffer_del_back(ByteBuffer* buffer, size_t n) {
  if ((int)n >= buffer->bufsize) {
    bytebuffer_free(buffer);
    1a40:	b9f4feac 	brlid	r15, -340	// 18ec <bytebuffer_free>
    1a44:	80000000 	or	r0, r0, r0
  } else {
    buffer->bufsize -= n;
    buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize);
  }
}
    1a48:	e9e10000 	lwi	r15, r1, 0
    1a4c:	ea61001c 	lwi	r19, r1, 28
    1a50:	b60f0008 	rtsd	r15, 8
    1a54:	30210020 	addik	r1, r1, 32

00001a58 <bytebuffer_del_front>:

void bytebuffer_del_front(ByteBuffer* buffer, size_t n) {
    1a58:	3021ffdc 	addik	r1, r1, -36
    1a5c:	fa61001c 	swi	r19, r1, 28
    1a60:	fac10020 	swi	r22, r1, 32
    1a64:	f9e10000 	swi	r15, r1, 0
  if ((int)n >= buffer->bufsize) {
    1a68:	e8e50000 	lwi	r7, r5, 0
    buffer->bufsize -= n;
    buffer->buf = (unsigned char*)realloc(buffer->buf, buffer->bufsize);
  }
}

void bytebuffer_del_front(ByteBuffer* buffer, size_t n) {
    1a6c:	12c50000 	addk	r22, r5, r0
  if ((int)n >= buffer->bufsize) {
    1a70:	14673001 	cmp	r3, r7, r6
    1a74:	bea3003c 	bgeid	r3, 60		// 1ab0
    1a78:	12660000 	addk	r19, r6, r0
    bytebuffer_free(buffer);
  } else {
    // shift original data back to front of buffer
    memmove(buffer->buf, buffer->buf + n, buffer->bufsize - n);
    1a7c:	e8a50004 	lwi	r5, r5, 4
    1a80:	14e63800 	rsubk	r7, r6, r7
    1a84:	b0000000 	imm	0
    1a88:	b9f427ec 	brlid	r15, 10220	// 4274 <memmove>
    1a8c:	10c53000 	addk	r6, r5, r6
    bytebuffer_del_back(buffer, n);
    1a90:	10b60000 	addk	r5, r22, r0
    1a94:	b9f4ff64 	brlid	r15, -156	// 19f8 <bytebuffer_del_back>
    1a98:	10d30000 	addk	r6, r19, r0
  }
}
    1a9c:	e9e10000 	lwi	r15, r1, 0
    1aa0:	ea61001c 	lwi	r19, r1, 28
    1aa4:	eac10020 	lwi	r22, r1, 32
    1aa8:	b60f0008 	rtsd	r15, 8
    1aac:	30210024 	addik	r1, r1, 36
  }
}

void bytebuffer_del_front(ByteBuffer* buffer, size_t n) {
  if ((int)n >= buffer->bufsize) {
    bytebuffer_free(buffer);
    1ab0:	b9f4fe3c 	brlid	r15, -452	// 18ec <bytebuffer_free>
    1ab4:	80000000 	or	r0, r0, r0
  } else {
    // shift original data back to front of buffer
    memmove(buffer->buf, buffer->buf + n, buffer->bufsize - n);
    bytebuffer_del_back(buffer, n);
  }
}
    1ab8:	e9e10000 	lwi	r15, r1, 0
    1abc:	ea61001c 	lwi	r19, r1, 28
    1ac0:	eac10020 	lwi	r22, r1, 32
    1ac4:	b60f0008 	rtsd	r15, 8
    1ac8:	30210024 	addik	r1, r1, 36

00001acc <bytebuffer_pop>:

ByteBuffer bytebuffer_pop(ByteBuffer* buffer, size_t n) {
    1acc:	3021ffd4 	addik	r1, r1, -44
    1ad0:	fa61001c 	swi	r19, r1, 28
    1ad4:	fac10020 	swi	r22, r1, 32
    1ad8:	fae10024 	swi	r23, r1, 36
    1adc:	f9e10000 	swi	r15, r1, 0
    1ae0:	fb010028 	swi	r24, r1, 40
  ByteBuffer output;
  // the requested amount is greater than what we have, pop everything.
  if ((int)n >= buffer->bufsize) {
    1ae4:	eb060000 	lwi	r24, r6, 0
    memmove(buffer->buf, buffer->buf + n, buffer->bufsize - n);
    bytebuffer_del_back(buffer, n);
  }
}

ByteBuffer bytebuffer_pop(ByteBuffer* buffer, size_t n) {
    1ae8:	12e60000 	addk	r23, r6, r0
    1aec:	12c70000 	addk	r22, r7, r0
  ByteBuffer output;
  // the requested amount is greater than what we have, pop everything.
  if ((int)n >= buffer->bufsize) {
    1af0:	14783801 	cmp	r3, r24, r7
    1af4:	bea30060 	bgeid	r3, 96		// 1b54
    1af8:	12650000 	addk	r19, r5, r0
    output.buf = (unsigned char*)malloc(buffer->bufsize);
    memcpy(output.buf, buffer->buf, buffer->bufsize);
    bytebuffer_free(buffer);
    return output;
  }
  output.buf = (unsigned char*)malloc(n);
    1afc:	b0000000 	imm	0
    1b00:	b9f41cb0 	brlid	r15, 7344	// 37b0 <malloc>
    1b04:	10a70000 	addk	r5, r7, r0
  output.bufsize = n;
  memcpy(output.buf, buffer->buf, n);
    1b08:	10f60000 	addk	r7, r22, r0
    1b0c:	e8d70004 	lwi	r6, r23, 4
    1b10:	10a30000 	addk	r5, r3, r0
    1b14:	b0000000 	imm	0
    1b18:	b9f425a0 	brlid	r15, 9632	// 40b8 <memcpy>
    1b1c:	13030000 	addk	r24, r3, r0
  bytebuffer_del_front(buffer, n);
    1b20:	10b70000 	addk	r5, r23, r0
    1b24:	b9f4ff34 	brlid	r15, -204	// 1a58 <bytebuffer_del_front>
    1b28:	10d60000 	addk	r6, r22, r0
  return output;
    1b2c:	fad30000 	swi	r22, r19, 0
    1b30:	fb130004 	swi	r24, r19, 4
}
    1b34:	10730000 	addk	r3, r19, r0
    1b38:	e9e10000 	lwi	r15, r1, 0
    1b3c:	ea61001c 	lwi	r19, r1, 28
    1b40:	eac10020 	lwi	r22, r1, 32
    1b44:	eae10024 	lwi	r23, r1, 36
    1b48:	eb010028 	lwi	r24, r1, 40
    1b4c:	b60f0008 	rtsd	r15, 8
    1b50:	3021002c 	addik	r1, r1, 44
ByteBuffer bytebuffer_pop(ByteBuffer* buffer, size_t n) {
  ByteBuffer output;
  // the requested amount is greater than what we have, pop everything.
  if ((int)n >= buffer->bufsize) {
    output.bufsize = buffer->bufsize;
    output.buf = (unsigned char*)malloc(buffer->bufsize);
    1b54:	b0000000 	imm	0
    1b58:	b9f41c58 	brlid	r15, 7256	// 37b0 <malloc>
    1b5c:	10b80000 	addk	r5, r24, r0
    memcpy(output.buf, buffer->buf, buffer->bufsize);
    1b60:	e8d70004 	lwi	r6, r23, 4
    1b64:	10f80000 	addk	r7, r24, r0
    1b68:	10a30000 	addk	r5, r3, r0
    1b6c:	b0000000 	imm	0
    1b70:	b9f42548 	brlid	r15, 9544	// 40b8 <memcpy>
    1b74:	12c30000 	addk	r22, r3, r0
    bytebuffer_free(buffer);
    1b78:	b9f4fd74 	brlid	r15, -652	// 18ec <bytebuffer_free>
    1b7c:	10b70000 	addk	r5, r23, r0
    return output;
    1b80:	fb130000 	swi	r24, r19, 0
    1b84:	fad30004 	swi	r22, r19, 4
  output.buf = (unsigned char*)malloc(n);
  output.bufsize = n;
  memcpy(output.buf, buffer->buf, n);
  bytebuffer_del_front(buffer, n);
  return output;
}
    1b88:	10730000 	addk	r3, r19, r0
    1b8c:	e9e10000 	lwi	r15, r1, 0
    1b90:	ea61001c 	lwi	r19, r1, 28
    1b94:	eac10020 	lwi	r22, r1, 32
    1b98:	eae10024 	lwi	r23, r1, 36
    1b9c:	eb010028 	lwi	r24, r1, 40
    1ba0:	b60f0008 	rtsd	r15, 8
    1ba4:	3021002c 	addik	r1, r1, 44

00001ba8 <bytebuffer_read_fd>:

ssize_t bytebuffer_read_fd(ByteBuffer* buffer, int fd, size_t n) {
    1ba8:	3021ffd0 	addik	r1, r1, -48
    1bac:	fb01002c 	swi	r24, r1, 44
    1bb0:	13060000 	addk	r24, r6, r0
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
    1bb4:	10c70000 	addk	r6, r7, r0
  memcpy(output.buf, buffer->buf, n);
  bytebuffer_del_front(buffer, n);
  return output;
}

ssize_t bytebuffer_read_fd(ByteBuffer* buffer, int fd, size_t n) {
    1bb8:	fa610020 	swi	r19, r1, 32
    1bbc:	12650000 	addk	r19, r5, r0
    1bc0:	f9e10000 	swi	r15, r1, 0
    1bc4:	fac10024 	swi	r22, r1, 36
    1bc8:	fae10028 	swi	r23, r1, 40
    1bcc:	12c70000 	addk	r22, r7, r0
  size_t original_size = buffer->bufsize;
  bytebuffer_reserve_back(buffer, n);
    1bd0:	b9f4fd50 	brlid	r15, -688	// 1920 <bytebuffer_reserve_back>
    1bd4:	eae50000 	lwi	r23, r5, 0
  ssize_t bytes_read = read(fd, &(buffer->buf[original_size]), n);
    1bd8:	e8d30004 	lwi	r6, r19, 4
    1bdc:	10b80000 	addk	r5, r24, r0
    1be0:	10f60000 	addk	r7, r22, r0
    1be4:	b0000000 	imm	0
    1be8:	b9f40a94 	brlid	r15, 2708	// 267c <read>
    1bec:	10c6b800 	addk	r6, r6, r23
  // Unallocate any leftover room at the end of the buffer.
  // The check is to protect against the bytes_read = -1 on error
  // case.
  size_t deallocate = bytes_read > 0 ? n - bytes_read : n;
    1bf0:	be63000c 	bleid	r3, 12		// 1bfc
    1bf4:	10d60000 	addk	r6, r22, r0
    1bf8:	14c3b000 	rsubk	r6, r3, r22
  bytebuffer_del_back(buffer, deallocate);
    1bfc:	10b30000 	addk	r5, r19, r0
    1c00:	b9f4fdf8 	brlid	r15, -520	// 19f8 <bytebuffer_del_back>
    1c04:	f861001c 	swi	r3, r1, 28
  return bytes_read;
}
    1c08:	e861001c 	lwi	r3, r1, 28
    1c0c:	e9e10000 	lwi	r15, r1, 0
    1c10:	ea610020 	lwi	r19, r1, 32
    1c14:	eac10024 	lwi	r22, r1, 36
    1c18:	eae10028 	lwi	r23, r1, 40
    1c1c:	eb01002c 	lwi	r24, r1, 44
    1c20:	b60f0008 	rtsd	r15, 8
    1c24:	30210030 	addik	r1, r1, 48

00001c28 <cbuffer_new>:
#ifndef max
#define max(a,b) (((a) (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#endif

CircularBuffer* cbuffer_new(void) {
    1c28:	3021ffe0 	addik	r1, r1, -32
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
    1c2c:	30a0000c 	addik	r5, r0, 12
#ifndef max
#define max(a,b) (((a) (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#endif

CircularBuffer* cbuffer_new(void) {
    1c30:	f9e10000 	swi	r15, r1, 0
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
    1c34:	b0000000 	imm	0
    1c38:	b9f41b78 	brlid	r15, 7032	// 37b0 <malloc>
    1c3c:	fa61001c 	swi	r19, r1, 28
    1c40:	12630000 	addk	r19, r3, r0
  output->data = (uint32_t*)calloc(IO_BUFFER_SIZE, sizeof(uint32_t));
    1c44:	30a00100 	addik	r5, r0, 256
    1c48:	b0000000 	imm	0
    1c4c:	b9f41a6c 	brlid	r15, 6764	// 36b8 <calloc>
    1c50:	30c00004 	addik	r6, r0, 4
    1c54:	f8730000 	swi	r3, r19, 0
  output->tail = 0;
    1c58:	f8130004 	swi	r0, r19, 4
  output->pos = 0;
  return output;
}
    1c5c:	10730000 	addk	r3, r19, r0

CircularBuffer* cbuffer_new(void) {
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
  output->data = (uint32_t*)calloc(IO_BUFFER_SIZE, sizeof(uint32_t));
  output->tail = 0;
  output->pos = 0;
    1c60:	f8130008 	swi	r0, r19, 8
  return output;
}
    1c64:	e9e10000 	lwi	r15, r1, 0
    1c68:	ea61001c 	lwi	r19, r1, 28
    1c6c:	b60f0008 	rtsd	r15, 8
    1c70:	30210020 	addik	r1, r1, 32

00001c74 <cbuffer_copy>:

CircularBuffer* cbuffer_copy(CircularBuffer* from) {
    1c74:	3021ffdc 	addik	r1, r1, -36
    1c78:	fac10020 	swi	r22, r1, 32
    1c7c:	12c50000 	addk	r22, r5, r0
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
    1c80:	30a0000c 	addik	r5, r0, 12
  output->tail = 0;
  output->pos = 0;
  return output;
}

CircularBuffer* cbuffer_copy(CircularBuffer* from) {
    1c84:	f9e10000 	swi	r15, r1, 0
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
    1c88:	b0000000 	imm	0
    1c8c:	b9f41b24 	brlid	r15, 6948	// 37b0 <malloc>
    1c90:	fa61001c 	swi	r19, r1, 28
  output->data = (uint32_t*)malloc(IO_BUFFER_SIZE * sizeof(uint32_t));
    1c94:	30a00400 	addik	r5, r0, 1024
    1c98:	b0000000 	imm	0
    1c9c:	b9f41b14 	brlid	r15, 6932	// 37b0 <malloc>
    1ca0:	12630000 	addk	r19, r3, r0
  memcpy(output->data, from->data, IO_BUFFER_SIZE * sizeof(uint32_t));
    1ca4:	e8d60000 	lwi	r6, r22, 0
    1ca8:	10a30000 	addk	r5, r3, r0
    1cac:	30e00400 	addik	r7, r0, 1024
    1cb0:	b0000000 	imm	0
    1cb4:	b9f42404 	brlid	r15, 9220	// 40b8 <memcpy>
    1cb8:	f8730000 	swi	r3, r19, 0
  output->tail = from->tail;
    1cbc:	e8960004 	lwi	r4, r22, 4
  output->pos = from->pos;
    1cc0:	ead60008 	lwi	r22, r22, 8
  return output;
}
    1cc4:	10730000 	addk	r3, r19, r0

CircularBuffer* cbuffer_copy(CircularBuffer* from) {
  CircularBuffer* output = (CircularBuffer*)malloc(sizeof(CircularBuffer));
  output->data = (uint32_t*)malloc(IO_BUFFER_SIZE * sizeof(uint32_t));
  memcpy(output->data, from->data, IO_BUFFER_SIZE * sizeof(uint32_t));
  output->tail = from->tail;
    1cc8:	f8930004 	swi	r4, r19, 4
  output->pos = from->pos;
    1ccc:	fad30008 	swi	r22, r19, 8
  return output;
}
    1cd0:	e9e10000 	lwi	r15, r1, 0
    1cd4:	ea61001c 	lwi	r19, r1, 28
    1cd8:	eac10020 	lwi	r22, r1, 32
    1cdc:	b60f0008 	rtsd	r15, 8
    1ce0:	30210024 	addik	r1, r1, 36

00001ce4 <cbuffer_size>:

uint32_t cbuffer_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    1ce4:	e8650008 	lwi	r3, r5, 8
    1ce8:	e8850004 	lwi	r4, r5, 4
    1cec:	14a32003 	cmpu	r5, r3, r4
    1cf0:	bca50010 	bgei	r5, 16		// 1d00
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
    1cf4:	30840100 	addik	r4, r4, 256
}
    1cf8:	b60f0008 	rtsd	r15, 8
    1cfc:	14632000 	rsubk	r3, r3, r4
  return output;
}

uint32_t cbuffer_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    return buffer->tail - buffer->pos;
    1d00:	b60f0008 	rtsd	r15, 8
    1d04:	14632000 	rsubk	r3, r3, r4

00001d08 <cbuffer_contiguous_data_size>:
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    1d08:	e8850008 	lwi	r4, r5, 8
    1d0c:	e8a50004 	lwi	r5, r5, 4
    return buffer->tail - buffer->pos;
  return IO_BUFFER_SIZE - buffer->pos;
    1d10:	30c00100 	addik	r6, r0, 256
    1d14:	14643000 	rsubk	r3, r4, r6
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    1d18:	14c42803 	cmpu	r6, r4, r5
    1d1c:	bca6000c 	bgei	r6, 12		// 1d28
    return buffer->tail - buffer->pos;
  return IO_BUFFER_SIZE - buffer->pos;
}
    1d20:	b60f0008 	rtsd	r15, 8
    1d24:	80000000 	or	r0, r0, r0
    1d28:	b60f0008 	rtsd	r15, 8
    1d2c:	14642800 	rsubk	r3, r4, r5

00001d30 <cbuffer_free>:

void cbuffer_free(CircularBuffer* tokill) {
    1d30:	3021ffe0 	addik	r1, r1, -32
    1d34:	f9e10000 	swi	r15, r1, 0
    1d38:	fa61001c 	swi	r19, r1, 28
    1d3c:	12650000 	addk	r19, r5, r0
  free(tokill->data);
    1d40:	b0000000 	imm	0
    1d44:	b9f41a98 	brlid	r15, 6808	// 37dc <free>
    1d48:	e8a50000 	lwi	r5, r5, 0
  free(tokill);
    1d4c:	b0000000 	imm	0
    1d50:	b9f41a8c 	brlid	r15, 6796	// 37dc <free>
    1d54:	10b30000 	addk	r5, r19, r0
}
    1d58:	e9e10000 	lwi	r15, r1, 0
    1d5c:	ea61001c 	lwi	r19, r1, 28
    1d60:	b60f0008 	rtsd	r15, 8
    1d64:	30210020 	addik	r1, r1, 32

00001d68 <cbuffer_value_at>:

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
    1d68:	e8850008 	lwi	r4, r5, 8
  return buf->data[actual_idx];
    1d6c:	e8650000 	lwi	r3, r5, 0
  free(tokill->data);
  free(tokill);
}

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
    1d70:	10c62000 	addk	r6, r6, r4
    1d74:	a4c600ff 	andi	r6, r6, 255
  return buf->data[actual_idx];
    1d78:	60c60004 	muli	r6, r6, 4
}
    1d7c:	b60f0008 	rtsd	r15, 8
    1d80:	c8661800 	lw	r3, r6, r3

00001d84 <cbuffer_value_at_net>:
  free(tokill->data);
  free(tokill);
}

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
    1d84:	e8850008 	lwi	r4, r5, 8
  return buf->data[actual_idx];
    1d88:	e8650000 	lwi	r3, r5, 0
  free(tokill->data);
  free(tokill);
}

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
    1d8c:	10c62000 	addk	r6, r6, r4
    1d90:	a4c600ff 	andi	r6, r6, 255
  return buf->data[actual_idx];
    1d94:	60c60004 	muli	r6, r6, 4
    1d98:	c8661800 	lw	r3, r6, r3
}

uint32_t cbuffer_value_at_net(const CircularBuffer* buf, uint32_t idx) {
  return network_to_host(cbuffer_value_at(buf, idx));
    1d9c:	b0000000 	imm	0
    1da0:	a4a3ffff 	andi	r5, r3, -1
    1da4:	10801800 	addk	r4, r0, r3
    1da8:	90830041 	srl	r4, r3
    1dac:	90840041 	srl	r4, r4
    1db0:	90840041 	srl	r4, r4
    1db4:	90840041 	srl	r4, r4
    1db8:	90840041 	srl	r4, r4
    1dbc:	90840041 	srl	r4, r4
    1dc0:	90840041 	srl	r4, r4
    1dc4:	90840041 	srl	r4, r4
    1dc8:	90840041 	srl	r4, r4
    1dcc:	90840041 	srl	r4, r4
    1dd0:	90840041 	srl	r4, r4
    1dd4:	90840041 	srl	r4, r4
    1dd8:	90840041 	srl	r4, r4
    1ddc:	90840041 	srl	r4, r4
    1de0:	90840041 	srl	r4, r4
    1de4:	90840041 	srl	r4, r4
    1de8:	60e50100 	muli	r7, r5, 256
    1dec:	60640100 	muli	r3, r4, 256
    1df0:	10c02800 	addk	r6, r0, r5
    1df4:	90c50041 	srl	r6, r5
    1df8:	90c60041 	srl	r6, r6
    1dfc:	90c60041 	srl	r6, r6
    1e00:	90c60041 	srl	r6, r6
    1e04:	90c60041 	srl	r6, r6
    1e08:	90c60041 	srl	r6, r6
    1e0c:	90c60041 	srl	r6, r6
    1e10:	90c60041 	srl	r6, r6
    1e14:	b0000000 	imm	0
    1e18:	a463ffff 	andi	r3, r3, -1
    1e1c:	80c73000 	or	r6, r7, r6
    1e20:	10a02000 	addk	r5, r0, r4
    1e24:	90a40041 	srl	r5, r4
    1e28:	90a50041 	srl	r5, r5
    1e2c:	90a50041 	srl	r5, r5
    1e30:	90a50041 	srl	r5, r5
    1e34:	90a50041 	srl	r5, r5
    1e38:	90a50041 	srl	r5, r5
    1e3c:	90a50041 	srl	r5, r5
    1e40:	90a50041 	srl	r5, r5
    1e44:	b0000001 	imm	1
    1e48:	60860000 	muli	r4, r6, 0
    1e4c:	80632800 	or	r3, r3, r5
}
    1e50:	b60f0008 	rtsd	r15, 8
    1e54:	80632000 	or	r3, r3, r4

00001e58 <cbuffer_freespace>:

uint32_t cbuffer_freespace(const CircularBuffer* buf) {
    1e58:	3021ffe4 	addik	r1, r1, -28
    1e5c:	f9e10000 	swi	r15, r1, 0
  return IO_BUFFER_SIZE - cbuffer_size(buf) - 1;
    1e60:	b9f4fe84 	brlid	r15, -380	// 1ce4 <cbuffer_size>
    1e64:	80000000 	or	r0, r0, r0
}
    1e68:	e9e10000 	lwi	r15, r1, 0
    1e6c:	308000ff 	addik	r4, r0, 255
    1e70:	14632000 	rsubk	r3, r3, r4
    1e74:	b60f0008 	rtsd	r15, 8
    1e78:	3021001c 	addik	r1, r1, 28

00001e7c <cbuffer_append>:

int cbuffer_append(CircularBuffer* buffer, void* data, uint32_t nwords) {
    1e7c:	3021ffd4 	addik	r1, r1, -44
    1e80:	fac10020 	swi	r22, r1, 32
    1e84:	12c70000 	addk	r22, r7, r0
    1e88:	fa61001c 	swi	r19, r1, 28
    1e8c:	fb010028 	swi	r24, r1, 40
    1e90:	f9e10000 	swi	r15, r1, 0
    1e94:	fae10024 	swi	r23, r1, 36
    1e98:	12650000 	addk	r19, r5, r0
  uint32_t freespace = cbuffer_freespace(buffer);
    1e9c:	b9f4ffbc 	brlid	r15, -68	// 1e58 <cbuffer_freespace>
    1ea0:	13060000 	addk	r24, r6, r0
  if (freespace < nwords) {
    1ea4:	14761803 	cmpu	r3, r22, r3
    1ea8:	be43005c 	bltid	r3, 92		// 1f04
    1eac:	3080ffff 	addik	r4, r0, -1
  }

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  uint32_t tail_length = IO_BUFFER_SIZE - buffer->tail;
    1eb0:	e8b30004 	lwi	r5, r19, 4
    1eb4:	30600100 	addik	r3, r0, 256

  memcpy(
    1eb8:	e8930000 	lwi	r4, r19, 0
  }

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  uint32_t tail_length = IO_BUFFER_SIZE - buffer->tail;
    1ebc:	16e51800 	rsubk	r23, r5, r3

  memcpy(
      &(buffer->data[buffer->tail]),
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));
    1ec0:	1476b803 	cmpu	r3, r22, r23
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  uint32_t tail_length = IO_BUFFER_SIZE - buffer->tail;

  memcpy(
      &(buffer->data[buffer->tail]),
    1ec4:	60a50004 	muli	r5, r5, 4
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));
    1ec8:	10f60000 	addk	r7, r22, r0
    1ecc:	be430078 	bltid	r3, 120		// 1f44
    1ed0:	10a42800 	addk	r5, r4, r5
  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  uint32_t tail_length = IO_BUFFER_SIZE - buffer->tail;

  memcpy(
    1ed4:	10d80000 	addk	r6, r24, r0
    1ed8:	b0000000 	imm	0
    1edc:	b9f421dc 	brlid	r15, 8668	// 40b8 <memcpy>
    1ee0:	60e70004 	muli	r7, r7, 4
      &(buffer->data[buffer->tail]),
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));

  // if we didn't write everything, we need to wrap around to the beginning.
  if (tail_length < nwords) {
    1ee4:	1476b803 	cmpu	r3, r22, r23
    1ee8:	be43003c 	bltid	r3, 60		// 1f24
    1eec:	60d70004 	muli	r6, r23, 4
    memcpy(
        buffer->data, 
        (uint8_t*)data + sizeof(uint32_t) * tail_length,
        sizeof(uint32_t) * (nwords - tail_length));
  }
  buffer->tail = (buffer->tail + nwords) % IO_BUFFER_SIZE;
    1ef0:	e8730004 	lwi	r3, r19, 4
  return 0;
    1ef4:	10800000 	addk	r4, r0, r0
    memcpy(
        buffer->data, 
        (uint8_t*)data + sizeof(uint32_t) * tail_length,
        sizeof(uint32_t) * (nwords - tail_length));
  }
  buffer->tail = (buffer->tail + nwords) % IO_BUFFER_SIZE;
    1ef8:	12d61800 	addk	r22, r22, r3
    1efc:	a6d600ff 	andi	r22, r22, 255
    1f00:	fad30004 	swi	r22, r19, 4
  return 0;
}
    1f04:	10640000 	addk	r3, r4, r0
    1f08:	e9e10000 	lwi	r15, r1, 0
    1f0c:	ea61001c 	lwi	r19, r1, 28
    1f10:	eac10020 	lwi	r22, r1, 32
    1f14:	eae10024 	lwi	r23, r1, 36
    1f18:	eb010028 	lwi	r24, r1, 40
    1f1c:	b60f0008 	rtsd	r15, 8
    1f20:	3021002c 	addik	r1, r1, 44
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));

  // if we didn't write everything, we need to wrap around to the beginning.
  if (tail_length < nwords) {
    memcpy(
    1f24:	e8b30000 	lwi	r5, r19, 0
        buffer->data, 
        (uint8_t*)data + sizeof(uint32_t) * tail_length,
        sizeof(uint32_t) * (nwords - tail_length));
    1f28:	14f7b000 	rsubk	r7, r23, r22
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));

  // if we didn't write everything, we need to wrap around to the beginning.
  if (tail_length < nwords) {
    memcpy(
    1f2c:	10d83000 	addk	r6, r24, r6
    1f30:	b0000000 	imm	0
    1f34:	b9f42184 	brlid	r15, 8580	// 40b8 <memcpy>
    1f38:	60e70004 	muli	r7, r7, 4
        buffer->data, 
        (uint8_t*)data + sizeof(uint32_t) * tail_length,
        sizeof(uint32_t) * (nwords - tail_length));
  }
  buffer->tail = (buffer->tail + nwords) % IO_BUFFER_SIZE;
    1f3c:	b810ffb8 	brid	-72		// 1ef4
    1f40:	e8730004 	lwi	r3, r19, 4
  uint32_t tail_length = IO_BUFFER_SIZE - buffer->tail;

  memcpy(
      &(buffer->data[buffer->tail]),
      data, 
      sizeof(uint32_t) * min(nwords, tail_length));
    1f44:	b810ff90 	brid	-112		// 1ed4
    1f48:	10f70000 	addk	r7, r23, r0

00001f4c <cbuffer_push_back>:
  }
  buffer->tail = (buffer->tail + nwords) % IO_BUFFER_SIZE;
  return 0;
}

int cbuffer_push_back(CircularBuffer* buffer, uint32_t data) {
    1f4c:	3021ffdc 	addik	r1, r1, -36
    1f50:	fa61001c 	swi	r19, r1, 28
    1f54:	fac10020 	swi	r22, r1, 32
    1f58:	f9e10000 	swi	r15, r1, 0
    1f5c:	12650000 	addk	r19, r5, r0
  uint32_t freespace = cbuffer_freespace(buffer);
    1f60:	b9f4fef8 	brlid	r15, -264	// 1e58 <cbuffer_freespace>
    1f64:	12c60000 	addk	r22, r6, r0
  if (freespace < 1) {
    1f68:	be03002c 	beqid	r3, 44		// 1f94
    1f6c:	3080ffff 	addik	r4, r0, -1
    return -1;
  }
  buffer->data[buffer->tail] = data;
    1f70:	e8730004 	lwi	r3, r19, 4
    1f74:	e8b30000 	lwi	r5, r19, 0
  buffer->tail = ((uint32_t)(buffer->tail + 1)) % IO_BUFFER_SIZE;
  return 0;
    1f78:	10800000 	addk	r4, r0, r0
int cbuffer_push_back(CircularBuffer* buffer, uint32_t data) {
  uint32_t freespace = cbuffer_freespace(buffer);
  if (freespace < 1) {
    return -1;
  }
  buffer->data[buffer->tail] = data;
    1f7c:	60630004 	muli	r3, r3, 4
    1f80:	dac32800 	sw	r22, r3, r5
  buffer->tail = ((uint32_t)(buffer->tail + 1)) % IO_BUFFER_SIZE;
    1f84:	e8730004 	lwi	r3, r19, 4
    1f88:	30630001 	addik	r3, r3, 1
    1f8c:	a46300ff 	andi	r3, r3, 255
    1f90:	f8730004 	swi	r3, r19, 4
  return 0;
}
    1f94:	10640000 	addk	r3, r4, r0
    1f98:	e9e10000 	lwi	r15, r1, 0
    1f9c:	ea61001c 	lwi	r19, r1, 28
    1fa0:	eac10020 	lwi	r22, r1, 32
    1fa4:	b60f0008 	rtsd	r15, 8
    1fa8:	30210024 	addik	r1, r1, 36

00001fac <cbuffer_push_back_net>:

int cbuffer_push_back_net(CircularBuffer* buffer, uint32_t data) {
  return cbuffer_push_back(buffer, host_to_network(data));
    1fac:	b0000000 	imm	0
    1fb0:	a486ffff 	andi	r4, r6, -1
    1fb4:	61040100 	muli	r8, r4, 256
    1fb8:	10603000 	addk	r3, r0, r6
    1fbc:	90660041 	srl	r3, r6
    1fc0:	90630041 	srl	r3, r3
    1fc4:	90630041 	srl	r3, r3
    1fc8:	90630041 	srl	r3, r3
    1fcc:	90630041 	srl	r3, r3
    1fd0:	90630041 	srl	r3, r3
    1fd4:	90630041 	srl	r3, r3
    1fd8:	90630041 	srl	r3, r3
    1fdc:	90630041 	srl	r3, r3
    1fe0:	90630041 	srl	r3, r3
    1fe4:	90630041 	srl	r3, r3
    1fe8:	90630041 	srl	r3, r3
    1fec:	90630041 	srl	r3, r3
    1ff0:	90630041 	srl	r3, r3
    1ff4:	90630041 	srl	r3, r3
    1ff8:	90630041 	srl	r3, r3
    1ffc:	60c30100 	muli	r6, r3, 256
    2000:	10e02000 	addk	r7, r0, r4
    2004:	90e40041 	srl	r7, r4
    2008:	90e70041 	srl	r7, r7
    200c:	90e70041 	srl	r7, r7
    2010:	90e70041 	srl	r7, r7
    2014:	90e70041 	srl	r7, r7
    2018:	90e70041 	srl	r7, r7
    201c:	90e70041 	srl	r7, r7
    2020:	90e70041 	srl	r7, r7
    2024:	b0000000 	imm	0
    2028:	a4c6ffff 	andi	r6, r6, -1
    202c:	80e83800 	or	r7, r8, r7
    2030:	10801800 	addk	r4, r0, r3
    2034:	90830041 	srl	r4, r3
    2038:	90840041 	srl	r4, r4
    203c:	90840041 	srl	r4, r4
    2040:	90840041 	srl	r4, r4
    2044:	90840041 	srl	r4, r4
    2048:	90840041 	srl	r4, r4
    204c:	90840041 	srl	r4, r4
    2050:	90840041 	srl	r4, r4
    2054:	b0000001 	imm	1
    2058:	60670000 	muli	r3, r7, 0
    205c:	80c62000 	or	r6, r6, r4
  buffer->data[buffer->tail] = data;
  buffer->tail = ((uint32_t)(buffer->tail + 1)) % IO_BUFFER_SIZE;
  return 0;
}

int cbuffer_push_back_net(CircularBuffer* buffer, uint32_t data) {
    2060:	3021ffe4 	addik	r1, r1, -28
    2064:	f9e10000 	swi	r15, r1, 0
  return cbuffer_push_back(buffer, host_to_network(data));
    2068:	b9f4fee4 	brlid	r15, -284	// 1f4c <cbuffer_push_back>
    206c:	80c61800 	or	r6, r6, r3
}
    2070:	e9e10000 	lwi	r15, r1, 0
    2074:	b60f0008 	rtsd	r15, 8
    2078:	3021001c 	addik	r1, r1, 28

0000207c <cbuffer_read>:

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
    207c:	3021ffd0 	addik	r1, r1, -48
    2080:	fb010028 	swi	r24, r1, 40
    2084:	13070000 	addk	r24, r7, r0
    2088:	fa61001c 	swi	r19, r1, 28
    208c:	fac10020 	swi	r22, r1, 32
    2090:	fae10024 	swi	r23, r1, 36
    2094:	f9e10000 	swi	r15, r1, 0
    2098:	fb21002c 	swi	r25, r1, 44
    209c:	12c50000 	addk	r22, r5, r0
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
    20a0:	b9f4fc44 	brlid	r15, -956	// 1ce4 <cbuffer_size>
    20a4:	12e60000 	addk	r23, r6, r0
    20a8:	12630000 	addk	r19, r3, r0
    20ac:	1463c003 	cmpu	r3, r3, r24
    20b0:	bc4300c4 	blti	r3, 196		// 2174
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    20b4:	e8960008 	lwi	r4, r22, 8
    20b8:	e8760004 	lwi	r3, r22, 4
    return buffer->tail - buffer->pos;
  return IO_BUFFER_SIZE - buffer->pos;
    20bc:	30c00100 	addik	r6, r0, 256
    20c0:	14a43000 	rsubk	r5, r4, r6
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    20c4:	14c41803 	cmpu	r6, r4, r3
    20c8:	be460010 	bltid	r6, 16		// 20d8
    20cc:	14a59803 	cmpu	r5, r5, r19
    return buffer->tail - buffer->pos;
    20d0:	14a41800 	rsubk	r5, r4, r3
  return cbuffer_push_back(buffer, host_to_network(data));
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_read, cbuffer_contiguous_data_size(buffer));
    20d4:	14a59803 	cmpu	r5, r5, r19
    20d8:	be45007c 	bltid	r5, 124		// 2154
    20dc:	10b70000 	addk	r5, r23, r0
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    return buffer->tail - buffer->pos;
  return IO_BUFFER_SIZE - buffer->pos;
    20e0:	30c00100 	addik	r6, r0, 256
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    20e4:	14a41803 	cmpu	r5, r4, r3
    20e8:	be45000c 	bltid	r5, 12		// 20f4
    20ec:	17043000 	rsubk	r24, r4, r6
    return buffer->tail - buffer->pos;
    20f0:	17041800 	rsubk	r24, r4, r3
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_read, cbuffer_contiguous_data_size(buffer));
  memcpy(
    20f4:	e8d60000 	lwi	r6, r22, 0
    20f8:	63380004 	muli	r25, r24, 4
    20fc:	10b70000 	addk	r5, r23, r0
    2100:	10f90000 	addk	r7, r25, r0
      output,
      &(buffer->data[buffer->pos]),
    2104:	60840004 	muli	r4, r4, 4
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_read, cbuffer_contiguous_data_size(buffer));
  memcpy(
    2108:	10c62000 	addk	r6, r6, r4
    210c:	b0000000 	imm	0
    2110:	b9f41fa8 	brlid	r15, 8104	// 40b8 <memcpy>
    2114:	17189800 	rsubk	r24, r24, r19
      output,
      &(buffer->data[buffer->pos]),
      sizeof(uint32_t) * tail_words_to_read);
  // check if we need to wrap around.
  uint32_t remaining_words_at_head = words_to_read - tail_words_to_read;
  if (remaining_words_at_head) {
    2118:	be180018 	beqid	r24, 24		// 2130
    211c:	10b7c800 	addk	r5, r23, r25
    memcpy(
    2120:	e8d60000 	lwi	r6, r22, 0
    2124:	b0000000 	imm	0
    2128:	b9f41f90 	brlid	r15, 8080	// 40b8 <memcpy>
    212c:	60f80004 	muli	r7, r24, 4
        &(output[tail_words_to_read]), 
        buffer->data, 
        sizeof(uint32_t) * remaining_words_at_head);
  }
  return words_to_read;
}
    2130:	10730000 	addk	r3, r19, r0
    2134:	e9e10000 	lwi	r15, r1, 0
    2138:	ea61001c 	lwi	r19, r1, 28
    213c:	eac10020 	lwi	r22, r1, 32
    2140:	eae10024 	lwi	r23, r1, 36
    2144:	eb010028 	lwi	r24, r1, 40
    2148:	eb21002c 	lwi	r25, r1, 44
    214c:	b60f0008 	rtsd	r15, 8
    2150:	30210030 	addik	r1, r1, 48
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_read, cbuffer_contiguous_data_size(buffer));
  memcpy(
    2154:	e8d60000 	lwi	r6, r22, 0
      output,
      &(buffer->data[buffer->pos]),
    2158:	60840004 	muli	r4, r4, 4
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_read, cbuffer_contiguous_data_size(buffer));
  memcpy(
    215c:	10c62000 	addk	r6, r6, r4
    2160:	b0000000 	imm	0
    2164:	b9f41f54 	brlid	r15, 8020	// 40b8 <memcpy>
    2168:	60f30004 	muli	r7, r19, 4
        &(output[tail_words_to_read]), 
        buffer->data, 
        sizeof(uint32_t) * remaining_words_at_head);
  }
  return words_to_read;
}
    216c:	b810ffc8 	brid	-56		// 2134
    2170:	10730000 	addk	r3, r19, r0
int cbuffer_push_back_net(CircularBuffer* buffer, uint32_t data) {
  return cbuffer_push_back(buffer, host_to_network(data));
}

uint32_t cbuffer_read(const CircularBuffer* buffer, uint32_t* output, uint32_t nwords) {
  uint32_t words_to_read = min(nwords, cbuffer_size(buffer));
    2174:	b810ff40 	brid	-192		// 20b4
    2178:	12780000 	addk	r19, r24, r0

0000217c <cbuffer_deletefront>:
        sizeof(uint32_t) * remaining_words_at_head);
  }
  return words_to_read;
}

uint32_t cbuffer_deletefront(CircularBuffer* buffer, uint32_t nwords) {
    217c:	3021ffdc 	addik	r1, r1, -36
    2180:	fac10020 	swi	r22, r1, 32
    2184:	12c60000 	addk	r22, r6, r0
    2188:	fa61001c 	swi	r19, r1, 28
    218c:	f9e10000 	swi	r15, r1, 0
  uint32_t words_to_delete = min(nwords, cbuffer_size(buffer));
    2190:	b9f4fb54 	brlid	r15, -1196	// 1ce4 <cbuffer_size>
    2194:	12650000 	addk	r19, r5, r0
    2198:	10830000 	addk	r4, r3, r0
    219c:	1463b003 	cmpu	r3, r3, r22
    21a0:	bc43002c 	blti	r3, 44		// 21cc
  buffer->pos += words_to_delete;
    21a4:	e8b30008 	lwi	r5, r19, 8
  buffer->pos %= IO_BUFFER_SIZE;
  return words_to_delete;
}
    21a8:	10640000 	addk	r3, r4, r0
  return words_to_read;
}

uint32_t cbuffer_deletefront(CircularBuffer* buffer, uint32_t nwords) {
  uint32_t words_to_delete = min(nwords, cbuffer_size(buffer));
  buffer->pos += words_to_delete;
    21ac:	10842800 	addk	r4, r4, r5
  buffer->pos %= IO_BUFFER_SIZE;
    21b0:	a48400ff 	andi	r4, r4, 255
    21b4:	f8930008 	swi	r4, r19, 8
  return words_to_delete;
}
    21b8:	e9e10000 	lwi	r15, r1, 0
    21bc:	ea61001c 	lwi	r19, r1, 28
    21c0:	eac10020 	lwi	r22, r1, 32
    21c4:	b60f0008 	rtsd	r15, 8
    21c8:	30210024 	addik	r1, r1, 36
  }
  return words_to_read;
}

uint32_t cbuffer_deletefront(CircularBuffer* buffer, uint32_t nwords) {
  uint32_t words_to_delete = min(nwords, cbuffer_size(buffer));
    21cc:	b810ffd8 	brid	-40		// 21a4
    21d0:	10960000 	addk	r4, r22, r0

000021d4 <cbuffer_pop>:
  buffer->pos += words_to_delete;
  buffer->pos %= IO_BUFFER_SIZE;
  return words_to_delete;
}

Buffer* cbuffer_pop(CircularBuffer* buffer, uint32_t nwords) {
    21d4:	3021ffd8 	addik	r1, r1, -40
    21d8:	fac10020 	swi	r22, r1, 32
    21dc:	fae10024 	swi	r23, r1, 36
    21e0:	12c60000 	addk	r22, r6, r0
    21e4:	12e50000 	addk	r23, r5, r0
  Buffer* output = buffer_new(NULL, nwords);
    21e8:	10a00000 	addk	r5, r0, r0
  buffer->pos += words_to_delete;
  buffer->pos %= IO_BUFFER_SIZE;
  return words_to_delete;
}

Buffer* cbuffer_pop(CircularBuffer* buffer, uint32_t nwords) {
    21ec:	f9e10000 	swi	r15, r1, 0
  Buffer* output = buffer_new(NULL, nwords);
    21f0:	b000ffff 	imm	-1
    21f4:	b9f4f544 	brlid	r15, -2748	// 1738 <buffer_new>
    21f8:	fa61001c 	swi	r19, r1, 28
  uint32_t actually_read = cbuffer_read(buffer, output->data, nwords);
    21fc:	10f60000 	addk	r7, r22, r0
    2200:	10b70000 	addk	r5, r23, r0
    2204:	e8c30000 	lwi	r6, r3, 0
    2208:	b9f4fe74 	brlid	r15, -396	// 207c <cbuffer_read>
    220c:	12630000 	addk	r19, r3, r0
  buffer_resize(output, actually_read);
    2210:	10b30000 	addk	r5, r19, r0
    2214:	b000ffff 	imm	-1
    2218:	b9f4f608 	brlid	r15, -2552	// 1820 <buffer_resize>
    221c:	10c30000 	addk	r6, r3, r0
  cbuffer_deletefront(buffer, nwords);
    2220:	10b70000 	addk	r5, r23, r0
    2224:	b9f4ff58 	brlid	r15, -168	// 217c <cbuffer_deletefront>
    2228:	10d60000 	addk	r6, r22, r0
  return output;
}
    222c:	10730000 	addk	r3, r19, r0
    2230:	e9e10000 	lwi	r15, r1, 0
    2234:	ea61001c 	lwi	r19, r1, 28
    2238:	eac10020 	lwi	r22, r1, 32
    223c:	eae10024 	lwi	r23, r1, 36
    2240:	b60f0008 	rtsd	r15, 8
    2244:	30210028 	addik	r1, r1, 40

00002248 <cbuffer_pop_front>:

uint32_t cbuffer_pop_front(CircularBuffer* buffer) {
    2248:	3021ffdc 	addik	r1, r1, -36
    224c:	fa61001c 	swi	r19, r1, 28
    2250:	fac10020 	swi	r22, r1, 32
    2254:	f9e10000 	swi	r15, r1, 0
  if (!cbuffer_size(buffer)) 
    2258:	b9f4fa8c 	brlid	r15, -1396	// 1ce4 <cbuffer_size>
    225c:	12c50000 	addk	r22, r5, r0
    return 0xDEADBEEF;
    2260:	b000dead 	imm	-8531
    2264:	3260beef 	addik	r19, r0, -16657
  cbuffer_deletefront(buffer, nwords);
  return output;
}

uint32_t cbuffer_pop_front(CircularBuffer* buffer) {
  if (!cbuffer_size(buffer)) 
    2268:	be23001c 	bneid	r3, 28		// 2284
    226c:	10730000 	addk	r3, r19, r0
    return 0xDEADBEEF;
  uint32_t output = cbuffer_value_at(buffer, 0);
  cbuffer_deletefront(buffer, 1);
  return output;
}
    2270:	e9e10000 	lwi	r15, r1, 0
    2274:	ea61001c 	lwi	r19, r1, 28
    2278:	eac10020 	lwi	r22, r1, 32
    227c:	b60f0008 	rtsd	r15, 8
    2280:	30210024 	addik	r1, r1, 36
  free(tokill->data);
  free(tokill);
}

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
    2284:	e0760008 	lbui	r3, r22, 8
  return buf->data[actual_idx];
    2288:	e8960000 	lwi	r4, r22, 0

uint32_t cbuffer_pop_front(CircularBuffer* buffer) {
  if (!cbuffer_size(buffer)) 
    return 0xDEADBEEF;
  uint32_t output = cbuffer_value_at(buffer, 0);
  cbuffer_deletefront(buffer, 1);
    228c:	10b60000 	addk	r5, r22, r0
  free(tokill);
}

uint32_t cbuffer_value_at(const CircularBuffer* buf, uint32_t idx) {
  uint32_t actual_idx = (buf->pos + idx) % IO_BUFFER_SIZE;
  return buf->data[actual_idx];
    2290:	60630004 	muli	r3, r3, 4
    2294:	ca632000 	lw	r19, r3, r4

uint32_t cbuffer_pop_front(CircularBuffer* buffer) {
  if (!cbuffer_size(buffer)) 
    return 0xDEADBEEF;
  uint32_t output = cbuffer_value_at(buffer, 0);
  cbuffer_deletefront(buffer, 1);
    2298:	b9f4fee4 	brlid	r15, -284	// 217c <cbuffer_deletefront>
    229c:	30c00001 	addik	r6, r0, 1
  return output;
}
    22a0:	10730000 	addk	r3, r19, r0
    22a4:	e9e10000 	lwi	r15, r1, 0
    22a8:	ea61001c 	lwi	r19, r1, 28
    22ac:	eac10020 	lwi	r22, r1, 32
    22b0:	b60f0008 	rtsd	r15, 8
    22b4:	30210024 	addik	r1, r1, 36

000022b8 <cbuffer_write_fd>:

ssize_t cbuffer_write_fd(CircularBuffer* buffer, int fd, size_t nwords) {
    22b8:	3021ffd0 	addik	r1, r1, -48
    22bc:	fa61001c 	swi	r19, r1, 28
    22c0:	fac10020 	swi	r22, r1, 32
    22c4:	fb010028 	swi	r24, r1, 40
    22c8:	fb21002c 	swi	r25, r1, 44
    22cc:	f9e10000 	swi	r15, r1, 0
    22d0:	fae10024 	swi	r23, r1, 36
    22d4:	12670000 	addk	r19, r7, r0
    22d8:	12c50000 	addk	r22, r5, r0
    22dc:	13260000 	addk	r25, r6, r0
  if (!nwords) {
    22e0:	be0700b0 	beqid	r7, 176		// 2390
    22e4:	13070000 	addk	r24, r7, r0
    22e8:	b8100088 	brid	136		// 2370
    22ec:	13000000 	addk	r24, r0, r0
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    22f0:	e8960008 	lwi	r4, r22, 8
    22f4:	e9160004 	lwi	r8, r22, 4
    return buffer->tail - buffer->pos;
  return IO_BUFFER_SIZE - buffer->pos;
    22f8:	30c00100 	addik	r6, r0, 256
ssize_t cbuffer_write_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_write, cbuffer_contiguous_data_size(buffer));
    22fc:	10e90000 	addk	r7, r9, r0
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    2300:	15644003 	cmpu	r11, r4, r8
  if (!nwords) {
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_write, cbuffer_contiguous_data_size(buffer));
  ssize_t written = write(fd, &(buffer->data[buffer->pos]), 
    2304:	61440004 	muli	r10, r4, 4
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    2308:	15844003 	cmpu	r12, r4, r8
    230c:	be4b000c 	bltid	r11, 12		// 2318
    2310:	14643000 	rsubk	r3, r4, r6
    return buffer->tail - buffer->pos;
    2314:	14644000 	rsubk	r3, r4, r8
ssize_t cbuffer_write_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_write, cbuffer_contiguous_data_size(buffer));
    2318:	15234803 	cmpu	r9, r3, r9
    231c:	be490014 	bltid	r9, 20		// 2330
    2320:	30600100 	addik	r3, r0, 256
    return buffer->tail - buffer->pos;
  return buffer->tail + IO_BUFFER_SIZE - buffer->pos;
}

uint32_t cbuffer_contiguous_data_size(const CircularBuffer* buffer) {
  if (buffer->pos <= buffer->tail) 
    2324:	be4c000c 	bltid	r12, 12		// 2330
    2328:	14e41800 	rsubk	r7, r4, r3
    return buffer->tail - buffer->pos;
    232c:	14e44000 	rsubk	r7, r4, r8
  if (!nwords) {
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
  uint32_t tail_words_to_read = min(words_to_write, cbuffer_contiguous_data_size(buffer));
  ssize_t written = write(fd, &(buffer->data[buffer->pos]), 
    2330:	e8d60000 	lwi	r6, r22, 0
    2334:	60e70004 	muli	r7, r7, 4
    2338:	b0000000 	imm	0
    233c:	b9f402ac 	brlid	r15, 684	// 25e8 <write>
    2340:	10c65000 	addk	r6, r6, r10
      tail_words_to_read * sizeof(uint32_t)) / sizeof(uint32_t);
    2344:	12e01800 	addk	r23, r0, r3
    2348:	92e30041 	srl	r23, r3
    234c:	92f70041 	srl	r23, r23
  cbuffer_deletefront(buffer, written);
    2350:	10b60000 	addk	r5, r22, r0
    2354:	10d70000 	addk	r6, r23, r0
    2358:	b9f4fe24 	brlid	r15, -476	// 217c <cbuffer_deletefront>
    235c:	16779800 	rsubk	r19, r23, r19
  if (written == 0)
    2360:	be170034 	beqid	r23, 52		// 2394
    2364:	10780000 	addk	r3, r24, r0
  cbuffer_deletefront(buffer, 1);
  return output;
}

ssize_t cbuffer_write_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    2368:	be130028 	beqid	r19, 40		// 2390
    236c:	1318b800 	addk	r24, r24, r23
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
    2370:	b9f4f974 	brlid	r15, -1676	// 1ce4 <cbuffer_size>
    2374:	10b60000 	addk	r5, r22, r0
    2378:	14931803 	cmpu	r4, r19, r3
  uint32_t tail_words_to_read = min(words_to_write, cbuffer_contiguous_data_size(buffer));
  ssize_t written = write(fd, &(buffer->data[buffer->pos]), 
    237c:	10b90000 	addk	r5, r25, r0

ssize_t cbuffer_write_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    return 0;
  }
  uint32_t words_to_write = min(nwords, cbuffer_size(buffer));
    2380:	bea4ff70 	bgeid	r4, -144		// 22f0
    2384:	11330000 	addk	r9, r19, r0
    2388:	b810ff68 	brid	-152		// 22f0
    238c:	11230000 	addk	r9, r3, r0
      tail_words_to_read * sizeof(uint32_t)) / sizeof(uint32_t);
  cbuffer_deletefront(buffer, written);
  if (written == 0)
    return 0;
  return written + cbuffer_write_fd(buffer, fd, nwords - written);
}
    2390:	10780000 	addk	r3, r24, r0
    2394:	e9e10000 	lwi	r15, r1, 0
    2398:	ea61001c 	lwi	r19, r1, 28
    239c:	eac10020 	lwi	r22, r1, 32
    23a0:	eae10024 	lwi	r23, r1, 36
    23a4:	eb010028 	lwi	r24, r1, 40
    23a8:	eb21002c 	lwi	r25, r1, 44
    23ac:	b60f0008 	rtsd	r15, 8
    23b0:	30210030 	addik	r1, r1, 48

000023b4 <cbuffer_read_fd>:

ssize_t cbuffer_read_fd(CircularBuffer* buffer, int fd, size_t nwords) {
    23b4:	3021ffd0 	addik	r1, r1, -48
    23b8:	fa61001c 	swi	r19, r1, 28
    23bc:	fac10020 	swi	r22, r1, 32
    23c0:	fb010028 	swi	r24, r1, 40
    23c4:	fb21002c 	swi	r25, r1, 44
    23c8:	f9e10000 	swi	r15, r1, 0
    23cc:	fae10024 	swi	r23, r1, 36
    23d0:	12670000 	addk	r19, r7, r0
    23d4:	12c50000 	addk	r22, r5, r0
    23d8:	13260000 	addk	r25, r6, r0
  if (!nwords) {
    23dc:	be07009c 	beqid	r7, 156		// 2478
    23e0:	13070000 	addk	r24, r7, r0
    23e4:	eae50004 	lwi	r23, r5, 4
    23e8:	b8100050 	brid	80		// 2438
    23ec:	13000000 	addk	r24, r0, r0
  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
    23f0:	e8d60000 	lwi	r6, r22, 0
  size_t words_to_read = min(nwords, freespace);

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);
    23f4:	14672003 	cmpu	r3, r7, r4
    23f8:	be430078 	bltid	r3, 120		// 2470
    23fc:	10c6b800 	addk	r6, r6, r23

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
    2400:	b0000000 	imm	0
    2404:	b9f40278 	brlid	r15, 632	// 267c <read>
    2408:	60e70004 	muli	r7, r7, 4
      words_to_read * sizeof(uint32_t)) / sizeof(uint32_t);

  buffer->tail = (buffer->tail + words_read) % IO_BUFFER_SIZE;
    240c:	eaf60004 	lwi	r23, r22, 4
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
      words_to_read * sizeof(uint32_t)) / sizeof(uint32_t);
    2410:	10801800 	addk	r4, r0, r3
    2414:	90830041 	srl	r4, r3
    2418:	90840041 	srl	r4, r4
  buffer->tail = (buffer->tail + words_read) % IO_BUFFER_SIZE;

  if (words_read == 0) {
    return 0;
  } 
  return words_read + cbuffer_read_fd(buffer, fd, nwords - words_read);
    241c:	16649800 	rsubk	r19, r4, r19
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
      words_to_read * sizeof(uint32_t)) / sizeof(uint32_t);

  buffer->tail = (buffer->tail + words_read) % IO_BUFFER_SIZE;
    2420:	12e4b800 	addk	r23, r4, r23
    2424:	a6f700ff 	andi	r23, r23, 255

  if (words_read == 0) {
    2428:	be040050 	beqid	r4, 80		// 2478
    242c:	faf60004 	swi	r23, r22, 4
    return 0;
  return written + cbuffer_write_fd(buffer, fd, nwords - written);
}

ssize_t cbuffer_read_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    2430:	be130048 	beqid	r19, 72		// 2478
    2434:	13182000 	addk	r24, r24, r4
    return 0;
  }
  uint32_t freespace = cbuffer_freespace(buffer);
    2438:	b9f4fa20 	brlid	r15, -1504	// 1e58 <cbuffer_freespace>
    243c:	10b60000 	addk	r5, r22, r0
  size_t words_to_read = min(nwords, freespace);

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);
    2440:	30c00100 	addik	r6, r0, 256
ssize_t cbuffer_read_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    return 0;
  }
  uint32_t freespace = cbuffer_freespace(buffer);
  size_t words_to_read = min(nwords, freespace);
    2444:	15131803 	cmpu	r8, r19, r3

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);
    2448:	14973000 	rsubk	r4, r23, r6

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
    244c:	10b90000 	addk	r5, r25, r0
    2450:	62f70004 	muli	r23, r23, 4
ssize_t cbuffer_read_fd(CircularBuffer* buffer, int fd, size_t nwords) {
  if (!nwords) {
    return 0;
  }
  uint32_t freespace = cbuffer_freespace(buffer);
  size_t words_to_read = min(nwords, freespace);
    2454:	bea8ff9c 	bgeid	r8, -100		// 23f0
    2458:	10f30000 	addk	r7, r19, r0
    245c:	10e30000 	addk	r7, r3, r0
  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);

  ssize_t words_read = read(fd, &(buffer->data[buffer->tail]), 
    2460:	e8d60000 	lwi	r6, r22, 0
  size_t words_to_read = min(nwords, freespace);

  // words available on "tail" until we hit the absolute end of the memory.
  // we know from the freespace check that we can't overwrite the head with
  // only <nwords>.
  words_to_read = min(IO_BUFFER_SIZE - buffer->tail, words_to_read);
    2464:	14672003 	cmpu	r3, r7, r4
    2468:	bea3ff98 	bgeid	r3, -104		// 2400
    246c:	10c6b800 	addk	r6, r6, r23
    2470:	b810ff90 	brid	-112		// 2400
    2474:	10e40000 	addk	r7, r4, r0

  if (words_read == 0) {
    return 0;
  } 
  return words_read + cbuffer_read_fd(buffer, fd, nwords - words_read);
}
    2478:	10780000 	addk	r3, r24, r0
    247c:	e9e10000 	lwi	r15, r1, 0
    2480:	ea61001c 	lwi	r19, r1, 28
    2484:	eac10020 	lwi	r22, r1, 32
    2488:	eae10024 	lwi	r23, r1, 36
    248c:	eb010028 	lwi	r24, r1, 40
    2490:	eb21002c 	lwi	r25, r1, 44
    2494:	b60f0008 	rtsd	r15, 8
    2498:	30210030 	addik	r1, r1, 48

0000249c <cbuffer_transfer_data>:

uint32_t cbuffer_transfer_data(CircularBuffer* source, CircularBuffer* destination) {
    249c:	3021ffd4 	addik	r1, r1, -44
  // check for NULL pointers
  if (!source || !destination) {
    24a0:	10600000 	addk	r3, r0, r0
    return 0;
  } 
  return words_read + cbuffer_read_fd(buffer, fd, nwords - words_read);
}

uint32_t cbuffer_transfer_data(CircularBuffer* source, CircularBuffer* destination) {
    24a4:	fac10020 	swi	r22, r1, 32
    24a8:	fae10024 	swi	r23, r1, 36
    24ac:	f9e10000 	swi	r15, r1, 0
    24b0:	fa61001c 	swi	r19, r1, 28
    24b4:	fb010028 	swi	r24, r1, 40
  // check for NULL pointers
  if (!source || !destination) {
    24b8:	88661c00 	pcmpeq	r3, r6, r3
    return 0;
  } 
  return words_read + cbuffer_read_fd(buffer, fd, nwords - words_read);
}

uint32_t cbuffer_transfer_data(CircularBuffer* source, CircularBuffer* destination) {
    24bc:	12c60000 	addk	r22, r6, r0
  // check for NULL pointers
  if (!source || !destination) {
    24c0:	be03002c 	beqid	r3, 44		// 24ec
    24c4:	12e50000 	addk	r23, r5, r0
    return -1;
    24c8:	3260ffff 	addik	r19, r0, -1
  cbuffer_append(destination, data2transfer->data, words2transfer);
  
  buffer_free(data2transfer); /* release memory of intermediate Buffer */

  return words2transfer;
}
    24cc:	10730000 	addk	r3, r19, r0
    24d0:	e9e10000 	lwi	r15, r1, 0
    24d4:	ea61001c 	lwi	r19, r1, 28
    24d8:	eac10020 	lwi	r22, r1, 32
    24dc:	eae10024 	lwi	r23, r1, 36
    24e0:	eb010028 	lwi	r24, r1, 40
    24e4:	b60f0008 	rtsd	r15, 8
    24e8:	3021002c 	addik	r1, r1, 44
  return words_read + cbuffer_read_fd(buffer, fd, nwords - words_read);
}

uint32_t cbuffer_transfer_data(CircularBuffer* source, CircularBuffer* destination) {
  // check for NULL pointers
  if (!source || !destination) {
    24ec:	88651c00 	pcmpeq	r3, r5, r3
    24f0:	be23ffdc 	bneid	r3, -36		// 24cc
    24f4:	3260ffff 	addik	r19, r0, -1
    return -1;
  }
  uint32_t source_data_size = cbuffer_size(source);
    24f8:	b9f4f7ec 	brlid	r15, -2068	// 1ce4 <cbuffer_size>
    24fc:	80000000 	or	r0, r0, r0
  uint32_t dest_free_space  = cbuffer_freespace(destination);
    2500:	10b60000 	addk	r5, r22, r0
    2504:	b9f4f954 	brlid	r15, -1708	// 1e58 <cbuffer_freespace>
    2508:	13030000 	addk	r24, r3, r0
    250c:	12630000 	addk	r19, r3, r0

  uint32_t words2transfer = min(source_data_size, dest_free_space);
    2510:	1463c003 	cmpu	r3, r3, r24
    2514:	bc430050 	blti	r3, 80		// 2564

  Buffer* data2transfer = cbuffer_pop(source, words2transfer);
    2518:	10d30000 	addk	r6, r19, r0
    251c:	b9f4fcb8 	brlid	r15, -840	// 21d4 <cbuffer_pop>
    2520:	10b70000 	addk	r5, r23, r0
  cbuffer_append(destination, data2transfer->data, words2transfer);
    2524:	10f30000 	addk	r7, r19, r0
    2528:	10b60000 	addk	r5, r22, r0
    252c:	e8c30000 	lwi	r6, r3, 0
    2530:	b9f4f94c 	brlid	r15, -1716	// 1e7c <cbuffer_append>
    2534:	12e30000 	addk	r23, r3, r0
  
  buffer_free(data2transfer); /* release memory of intermediate Buffer */
    2538:	b000ffff 	imm	-1
    253c:	b9f4f2ac 	brlid	r15, -3412	// 17e8 <buffer_free>
    2540:	10b70000 	addk	r5, r23, r0

  return words2transfer;
}
    2544:	10730000 	addk	r3, r19, r0
    2548:	e9e10000 	lwi	r15, r1, 0
    254c:	ea61001c 	lwi	r19, r1, 28
    2550:	eac10020 	lwi	r22, r1, 32
    2554:	eae10024 	lwi	r23, r1, 36
    2558:	eb010028 	lwi	r24, r1, 40
    255c:	b60f0008 	rtsd	r15, 8
    2560:	3021002c 	addik	r1, r1, 44
    return -1;
  }
  uint32_t source_data_size = cbuffer_size(source);
  uint32_t dest_free_space  = cbuffer_freespace(destination);

  uint32_t words2transfer = min(source_data_size, dest_free_space);
    2564:	b810ffb4 	brid	-76		// 2518
    2568:	12780000 	addk	r19, r24, r0

0000256c <setup_tracer>:

static uint32_t* tracer_base;
static unsigned int tracer_slots;

void setup_tracer(uint32_t* base, unsigned int slots) {
    tracer_base = base;
    256c:	b0000000 	imm	0
    2570:	f8a05ed8 	swi	r5, r0, 24280	// 5ed8 <tracer_base>
    tracer_slots = slots;
    2574:	b0000000 	imm	0
    2578:	f8c05edc 	swi	r6, r0, 24284	// 5edc <tracer_slots>
}
    257c:	b60f0008 	rtsd	r15, 8
    2580:	80000000 	or	r0, r0, r0

00002584 <set_trace_flag>:

void set_trace_flag(uint32_t flag) {
    // move back the history
    for (int i = 0; i < tracer_slots - 1; ++i) {
    2584:	b0000000 	imm	0
    2588:	e9005edc 	lwi	r8, r0, 24284	// 5edc <tracer_slots>
    258c:	a8680001 	xori	r3, r8, 1
    2590:	bc03004c 	beqi	r3, 76		// 25dc
    2594:	10c00000 	addk	r6, r0, r0
    2598:	b0000000 	imm	0
    259c:	e8805ed8 	lwi	r4, r0, 24280	// 5ed8 <tracer_base>
    25a0:	10660000 	addk	r3, r6, r0
    25a4:	3128ffff 	addik	r9, r8, -1
        tracer_base[tracer_slots - 1 - i] = tracer_base[tracer_slots - 1 - i - 1];
    25a8:	14c64000 	rsubk	r6, r6, r8
    25ac:	30e6fffe 	addik	r7, r6, -2
    25b0:	60e70004 	muli	r7, r7, 4
    25b4:	c8e72000 	lw	r7, r7, r4
    25b8:	60c60004 	muli	r6, r6, 4
    25bc:	10c43000 	addk	r6, r4, r6
    tracer_slots = slots;
}

void set_trace_flag(uint32_t flag) {
    // move back the history
    for (int i = 0; i < tracer_slots - 1; ++i) {
    25c0:	30630001 	addik	r3, r3, 1
        tracer_base[tracer_slots - 1 - i] = tracer_base[tracer_slots - 1 - i - 1];
    25c4:	f8e6fffc 	swi	r7, r6, -4
    tracer_slots = slots;
}

void set_trace_flag(uint32_t flag) {
    // move back the history
    for (int i = 0; i < tracer_slots - 1; ++i) {
    25c8:	14e91803 	cmpu	r7, r9, r3
    25cc:	be47ffdc 	bltid	r7, -36		// 25a8
    25d0:	10c30000 	addk	r6, r3, r0
        tracer_base[tracer_slots - 1 - i] = tracer_base[tracer_slots - 1 - i - 1];
    }
    tracer_base[0] = flag;
}
    25d4:	b60f0008 	rtsd	r15, 8
    25d8:	f8a40000 	swi	r5, r4, 0
    tracer_slots = slots;
}

void set_trace_flag(uint32_t flag) {
    // move back the history
    for (int i = 0; i < tracer_slots - 1; ++i) {
    25dc:	b0000000 	imm	0
    25e0:	e8805ed8 	lwi	r4, r0, 24280	// 5ed8 <tracer_base>
    25e4:	b800fff0 	bri	-16		// 25d4

000025e8 <write>:
    25e8:	3021ffd8 	addik	r1, r1, -40
    25ec:	fac10020 	swi	r22, r1, 32
    25f0:	fae10024 	swi	r23, r1, 36
    25f4:	f9e10000 	swi	r15, r1, 0
    25f8:	fa61001c 	swi	r19, r1, 28
    25fc:	12e70000 	addk	r23, r7, r0
    2600:	be670060 	bleid	r7, 96		// 2660
    2604:	12c60000 	addk	r22, r6, r0
    2608:	b8100020 	brid	32		// 2628
    260c:	12600000 	addk	r19, r0, r0
    2610:	b0000000 	imm	0
    2614:	b9f40150 	brlid	r15, 336	// 2764 <outbyte>
    2618:	32730001 	addik	r19, r19, 1
    261c:	14979801 	cmp	r4, r23, r19
    2620:	bea40044 	bgeid	r4, 68		// 2664
    2624:	10770000 	addk	r3, r23, r0
    2628:	c0b3b000 	lbu	r5, r19, r22
    262c:	90a50060 	sext8	r5, r5
    2630:	a885000a 	xori	r4, r5, 10
    2634:	bc24ffdc 	bnei	r4, -36		// 2610
    2638:	b0000000 	imm	0
    263c:	b9f40128 	brlid	r15, 296	// 2764 <outbyte>
    2640:	30a0000d 	addik	r5, r0, 13
    2644:	c0b3b000 	lbu	r5, r19, r22
    2648:	32730001 	addik	r19, r19, 1
    264c:	b0000000 	imm	0
    2650:	b9f40114 	brlid	r15, 276	// 2764 <outbyte>
    2654:	90a50060 	sext8	r5, r5
    2658:	14979801 	cmp	r4, r23, r19
    265c:	bc44ffcc 	blti	r4, -52		// 2628
    2660:	10770000 	addk	r3, r23, r0
    2664:	e9e10000 	lwi	r15, r1, 0
    2668:	ea61001c 	lwi	r19, r1, 28
    266c:	eac10020 	lwi	r22, r1, 32
    2670:	eae10024 	lwi	r23, r1, 36
    2674:	b60f0008 	rtsd	r15, 8
    2678:	30210028 	addik	r1, r1, 40

0000267c <read>:
    267c:	3021ffd8 	addik	r1, r1, -40
    2680:	fac10020 	swi	r22, r1, 32
    2684:	fae10024 	swi	r23, r1, 36
    2688:	f9e10000 	swi	r15, r1, 0
    268c:	fa61001c 	swi	r19, r1, 28
    2690:	12c70000 	addk	r22, r7, r0
    2694:	12e60000 	addk	r23, r6, r0
    2698:	be670058 	bleid	r7, 88		// 26f0
    269c:	30600001 	addik	r3, r0, 1
    26a0:	b8100020 	brid	32		// 26c0
    26a4:	12600000 	addk	r19, r0, r0
    26a8:	be440048 	bltid	r4, 72		// 26f0
    26ac:	30730001 	addik	r3, r19, 1
    26b0:	32730001 	addik	r19, r19, 1
    26b4:	14769801 	cmp	r3, r22, r19
    26b8:	bea30038 	bgeid	r3, 56		// 26f0
    26bc:	30730001 	addik	r3, r19, 1
    26c0:	b0000000 	imm	0
    26c4:	b9f40044 	brlid	r15, 68	// 2708 <inbyte>
    26c8:	80000000 	or	r0, r0, r0
    26cc:	a8a3000d 	xori	r5, r3, 13
    26d0:	a883000a 	xori	r4, r3, 10
    26d4:	a4a500ff 	andi	r5, r5, 255
    26d8:	a48400ff 	andi	r4, r4, 255
    26dc:	d073b800 	sb	r3, r19, r23
    26e0:	3065ffff 	addik	r3, r5, -1
    26e4:	bea3ffc4 	bgeid	r3, -60		// 26a8
    26e8:	3084ffff 	addik	r4, r4, -1
    26ec:	30730001 	addik	r3, r19, 1
    26f0:	e9e10000 	lwi	r15, r1, 0
    26f4:	ea61001c 	lwi	r19, r1, 28
    26f8:	eac10020 	lwi	r22, r1, 32
    26fc:	eae10024 	lwi	r23, r1, 36
    2700:	b60f0008 	rtsd	r15, 8
    2704:	30210028 	addik	r1, r1, 40

00002708 <inbyte>:
#ifdef __cplusplus
}
#endif 

char inbyte(void) {
	 return XUartLite_RecvByte(STDIN_BASEADDRESS);
    2708:	b0005000 	imm	20480
    270c:	30a00000 	addik	r5, r0, 0
char inbyte(void);
#ifdef __cplusplus
}
#endif 

char inbyte(void) {
    2710:	3021ffe4 	addik	r1, r1, -28
    2714:	f9e10000 	swi	r15, r1, 0
	 return XUartLite_RecvByte(STDIN_BASEADDRESS);
    2718:	b0000000 	imm	0
    271c:	b9f40520 	brlid	r15, 1312	// 2c3c <XUartLite_RecvByte>
    2720:	80000000 	or	r0, r0, r0
}
    2724:	e9e10000 	lwi	r15, r1, 0
    2728:	90630060 	sext8	r3, r3
    272c:	b60f0008 	rtsd	r15, 8
    2730:	3021001c 	addik	r1, r1, 28

00002734 <microblaze_enable_dcache>:
	.globl	microblaze_enable_dcache
	.ent	microblaze_enable_dcache
	.align	2
microblaze_enable_dcache:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    2734:	2021fffc 	addi	r1, r1, -4
	#Read the MSR register
	mfs	r8, rmsr
    2738:	95008001 	mfs	r8, rmsr
	#Set the interrupt enable bit
	ori	r8, r8, 128
    273c:	a1080080 	ori	r8, r8, 128
	#Save the MSR register
	mts	rmsr, r8
    2740:	9408c001 	mts	rmsr, r8
	#Return
	rtsd	r15, 8
    2744:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    2748:	20210004 	addi	r1, r1, 4

0000274c <microblaze_enable_icache>:
	.globl	microblaze_enable_icache
	.ent	microblaze_enable_icache
	.align	2
microblaze_enable_icache:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    274c:	2021fffc 	addi	r1, r1, -4
	#Read the MSR register
	mfs	r8, rmsr
    2750:	95008001 	mfs	r8, rmsr
	#Set the interrupt enable bit
	ori	r8, r8, 32
    2754:	a1080020 	ori	r8, r8, 32
	#Save the MSR register
	mts	rmsr, r8
    2758:	9408c001 	mts	rmsr, r8
	#Return
	rtsd	r15, 8
    275c:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    2760:	20210004 	addi	r1, r1, 4

00002764 <outbyte>:
#ifdef __cplusplus
}
#endif 

void outbyte(char c) {
	 XUartLite_SendByte(STDOUT_BASEADDRESS, c);
    2764:	a4c500ff 	andi	r6, r5, 255
    2768:	b0005000 	imm	20480
    276c:	30a00000 	addik	r5, r0, 0

#ifdef __cplusplus
}
#endif 

void outbyte(char c) {
    2770:	3021ffe4 	addik	r1, r1, -28
    2774:	f9e10000 	swi	r15, r1, 0
	 XUartLite_SendByte(STDOUT_BASEADDRESS, c);
    2778:	b0000000 	imm	0
    277c:	b9f404a4 	brlid	r15, 1188	// 2c20 <XUartLite_SendByte>
    2780:	80000000 	or	r0, r0, r0
}
    2784:	e9e10000 	lwi	r15, r1, 0
    2788:	b60f0008 	rtsd	r15, 8
    278c:	3021001c 	addik	r1, r1, 28

00002790 <Xil_DCacheDisable>:
*
* @return   None.
*
****************************************************************************/
void Xil_DCacheDisable(void)
{
    2790:	3021ffe4 	addik	r1, r1, -28
    2794:	f9e10000 	swi	r15, r1, 0
        microblaze_flush_dcache();
    2798:	b0000000 	imm	0
    279c:	b9f40ea4 	brlid	r15, 3748	// 3640 <microblaze_flush_dcache>
    27a0:	80000000 	or	r0, r0, r0
	microblaze_invalidate_dcache();
    27a4:	b0000000 	imm	0
    27a8:	b9f40ec0 	brlid	r15, 3776	// 3668 <microblaze_invalidate_dcache>
    27ac:	80000000 	or	r0, r0, r0
	microblaze_disable_dcache();
    27b0:	b0000000 	imm	0
    27b4:	b9f40e1c 	brlid	r15, 3612	// 35d0 <microblaze_disable_dcache>
    27b8:	80000000 	or	r0, r0, r0
}
    27bc:	e9e10000 	lwi	r15, r1, 0
    27c0:	b60f0008 	rtsd	r15, 8
    27c4:	3021001c 	addik	r1, r1, 28

000027c8 <Xil_ICacheDisable>:
* @note     
*
*
****************************************************************************/
void Xil_ICacheDisable(void)
{
    27c8:	3021ffe4 	addik	r1, r1, -28
    27cc:	f9e10000 	swi	r15, r1, 0
	microblaze_invalidate_icache();
    27d0:	b0000000 	imm	0
    27d4:	b9f40ebc 	brlid	r15, 3772	// 3690 <microblaze_invalidate_icache>
    27d8:	80000000 	or	r0, r0, r0
	microblaze_disable_icache();
    27dc:	b0000000 	imm	0
    27e0:	b9f40e08 	brlid	r15, 3592	// 35e8 <microblaze_disable_icache>
    27e4:	80000000 	or	r0, r0, r0
}
    27e8:	e9e10000 	lwi	r15, r1, 0
    27ec:	b60f0008 	rtsd	r15, 8
    27f0:	3021001c 	addik	r1, r1, 28

000027f4 <Xil_ExceptionNullHandler>:
 *
 *****************************************************************************/
static void Xil_ExceptionNullHandler(void *Data)
{
	(void) Data;
}
    27f4:	b60f0008 	rtsd	r15, 8
    27f8:	80000000 	or	r0, r0, r0

000027fc <Xil_ExceptionInit>:
{
	/*
	 * there is no need to setup the exception table here
	 */

}
    27fc:	b60f0008 	rtsd	r15, 8
    2800:	80000000 	or	r0, r0, r0

00002804 <Xil_ExceptionEnable>:
*
* @note     None.
*
******************************************************************************/
void Xil_ExceptionEnable(void)
{
    2804:	3021ffe4 	addik	r1, r1, -28
    2808:	f9e10000 	swi	r15, r1, 0
#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
	microblaze_enable_exceptions();
#endif
	microblaze_enable_interrupts();
    280c:	b0000000 	imm	0
    2810:	b9f40e10 	brlid	r15, 3600	// 3620 <microblaze_enable_interrupts>
    2814:	80000000 	or	r0, r0, r0
}
    2818:	e9e10000 	lwi	r15, r1, 0
    281c:	b60f0008 	rtsd	r15, 8
    2820:	3021001c 	addik	r1, r1, 28

00002824 <Xil_ExceptionDisable>:
*
* @note     None.
*
******************************************************************************/
void Xil_ExceptionDisable(void)
{
    2824:	3021ffe4 	addik	r1, r1, -28
    2828:	f9e10000 	swi	r15, r1, 0
#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
	microblaze_disable_exceptions();
#endif
	microblaze_disable_interrupts();
    282c:	b0000000 	imm	0
    2830:	b9f40dd0 	brlid	r15, 3536	// 3600 <microblaze_disable_interrupts>
    2834:	80000000 	or	r0, r0, r0
}
    2838:	e9e10000 	lwi	r15, r1, 0
    283c:	b60f0008 	rtsd	r15, 8
    2840:	3021001c 	addik	r1, r1, 28

00002844 <Xil_ExceptionRegisterHandler>:
*
****************************************************************************/
void Xil_ExceptionRegisterHandler(u32 Id, Xil_ExceptionHandler Handler,
				  void *Data)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
    2844:	a8a50010 	xori	r5, r5, 16
    2848:	bc05000c 	beqi	r5, 12		// 2854
    284c:	b60f0008 	rtsd	r15, 8
    2850:	80000000 	or	r0, r0, r0
		MB_InterruptVectorTable.Handler = Handler;
    2854:	b0000000 	imm	0
    2858:	f8c05934 	swi	r6, r0, 22836	// 5934 <MB_InterruptVectorTable>
		MB_InterruptVectorTable.CallBackRef = Data;
    285c:	b0000000 	imm	0
    2860:	f8e05938 	swi	r7, r0, 22840
    2864:	b60f0008 	rtsd	r15, 8
    2868:	80000000 	or	r0, r0, r0

0000286c <Xil_ExceptionRemoveHandler>:
* None.
*
****************************************************************************/
void Xil_ExceptionRemoveHandler(u32 Id)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
    286c:	a8a50010 	xori	r5, r5, 16
    2870:	bc05000c 	beqi	r5, 12		// 287c
    2874:	b60f0008 	rtsd	r15, 8
    2878:	80000000 	or	r0, r0, r0
		MB_InterruptVectorTable.Handler = Xil_ExceptionNullHandler;
    287c:	b0000000 	imm	0
    2880:	306027f4 	addik	r3, r0, 10228	// 27f4 <Xil_ExceptionNullHandler>
		MB_InterruptVectorTable.CallBackRef = NULL;
    2884:	b0000000 	imm	0
    2888:	f8a05938 	swi	r5, r0, 22840
*
****************************************************************************/
void Xil_ExceptionRemoveHandler(u32 Id)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
		MB_InterruptVectorTable.Handler = Xil_ExceptionNullHandler;
    288c:	b0000000 	imm	0
    2890:	f8605934 	swi	r3, r0, 22836	// 5934 <MB_InterruptVectorTable>
    2894:	b60f0008 	rtsd	r15, 8
    2898:	80000000 	or	r0, r0, r0

0000289c <XUartLite_SetRecvHandler>:
*		know what it is (nor should it)
*
*****************************************************************************/
void XUartLite_SetRecvHandler(XUartLite *InstancePtr,
				XUartLite_Handler FuncPtr, void *CallBackRef)
{
    289c:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 * CallBackRef not checked, no way to know what is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    28a0:	be050064 	beqid	r5, 100		// 2904
    28a4:	f9e10000 	swi	r15, r1, 0
    28a8:	b0000000 	imm	0
    28ac:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(FuncPtr != NULL);
    28b0:	bc06007c 	beqi	r6, 124		// 292c
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    28b4:	e8650020 	lwi	r3, r5, 32
    28b8:	b0001111 	imm	4369
    28bc:	a8631111 	xori	r3, r3, 4369
    28c0:	bc030030 	beqi	r3, 48		// 28f0
    28c4:	b0000000 	imm	0
    28c8:	30a058b8 	addik	r5, r0, 22712
    28cc:	b000ffff 	imm	-1
    28d0:	b9f4e88c 	brlid	r15, -6004	// 115c <Xil_Assert>
    28d4:	30c00072 	addik	r6, r0, 114
    28d8:	30600001 	addik	r3, r0, 1
    28dc:	b0000000 	imm	0
    28e0:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>

	InstancePtr->RecvHandler = FuncPtr;
	InstancePtr->RecvCallBackRef = CallBackRef;
}
    28e4:	e9e10000 	lwi	r15, r1, 0
    28e8:	b60f0008 	rtsd	r15, 8
    28ec:	3021001c 	addik	r1, r1, 28
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(FuncPtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	InstancePtr->RecvHandler = FuncPtr;
    28f0:	f8c5003c 	swi	r6, r5, 60
	InstancePtr->RecvCallBackRef = CallBackRef;
    28f4:	f8e50040 	swi	r7, r5, 64
}
    28f8:	e9e10000 	lwi	r15, r1, 0
    28fc:	b60f0008 	rtsd	r15, 8
    2900:	3021001c 	addik	r1, r1, 28
{
	/*
	 * Assert validates the input arguments
	 * CallBackRef not checked, no way to know what is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    2904:	b0000000 	imm	0
    2908:	30a058b8 	addik	r5, r0, 22712
    290c:	b000ffff 	imm	-1
    2910:	b9f4e84c 	brlid	r15, -6068	// 115c <Xil_Assert>
    2914:	30c00070 	addik	r6, r0, 112
    2918:	30600001 	addik	r3, r0, 1
    291c:	b0000000 	imm	0
    2920:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2924:	b810ffc4 	brid	-60		// 28e8
    2928:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(FuncPtr != NULL);
    292c:	b0000000 	imm	0
    2930:	30a058b8 	addik	r5, r0, 22712
    2934:	b000ffff 	imm	-1
    2938:	b9f4e824 	brlid	r15, -6108	// 115c <Xil_Assert>
    293c:	30c00071 	addik	r6, r0, 113
    2940:	30600001 	addik	r3, r0, 1
    2944:	b0000000 	imm	0
    2948:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    294c:	b810ff9c 	brid	-100		// 28e8
    2950:	e9e10000 	lwi	r15, r1, 0

00002954 <XUartLite_SetSendHandler>:
*		know what it is (nor should it)
*
*****************************************************************************/
void XUartLite_SetSendHandler(XUartLite *InstancePtr,
				XUartLite_Handler FuncPtr, void *CallBackRef)
{
    2954:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 * CallBackRef not checked, no way to know what is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    2958:	be050064 	beqid	r5, 100		// 29bc
    295c:	f9e10000 	swi	r15, r1, 0
    2960:	b0000000 	imm	0
    2964:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(FuncPtr != NULL);
    2968:	bc06007c 	beqi	r6, 124		// 29e4
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    296c:	e8650020 	lwi	r3, r5, 32
    2970:	b0001111 	imm	4369
    2974:	a8631111 	xori	r3, r3, 4369
    2978:	bc030030 	beqi	r3, 48		// 29a8
    297c:	b0000000 	imm	0
    2980:	30a058b8 	addik	r5, r0, 22712
    2984:	b000ffff 	imm	-1
    2988:	b9f4e7d4 	brlid	r15, -6188	// 115c <Xil_Assert>
    298c:	30c00093 	addik	r6, r0, 147
    2990:	30600001 	addik	r3, r0, 1
    2994:	b0000000 	imm	0
    2998:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>

	InstancePtr->SendHandler = FuncPtr;
	InstancePtr->SendCallBackRef = CallBackRef;
}
    299c:	e9e10000 	lwi	r15, r1, 0
    29a0:	b60f0008 	rtsd	r15, 8
    29a4:	3021001c 	addik	r1, r1, 28
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(FuncPtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	InstancePtr->SendHandler = FuncPtr;
    29a8:	f8c50044 	swi	r6, r5, 68
	InstancePtr->SendCallBackRef = CallBackRef;
    29ac:	f8e50048 	swi	r7, r5, 72
}
    29b0:	e9e10000 	lwi	r15, r1, 0
    29b4:	b60f0008 	rtsd	r15, 8
    29b8:	3021001c 	addik	r1, r1, 28
{
	/*
	 * Assert validates the input arguments
	 * CallBackRef not checked, no way to know what is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    29bc:	b0000000 	imm	0
    29c0:	30a058b8 	addik	r5, r0, 22712
    29c4:	b000ffff 	imm	-1
    29c8:	b9f4e794 	brlid	r15, -6252	// 115c <Xil_Assert>
    29cc:	30c00091 	addik	r6, r0, 145
    29d0:	30600001 	addik	r3, r0, 1
    29d4:	b0000000 	imm	0
    29d8:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    29dc:	b810ffc4 	brid	-60		// 29a0
    29e0:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(FuncPtr != NULL);
    29e4:	b0000000 	imm	0
    29e8:	30a058b8 	addik	r5, r0, 22712
    29ec:	b000ffff 	imm	-1
    29f0:	b9f4e76c 	brlid	r15, -6292	// 115c <Xil_Assert>
    29f4:	30c00092 	addik	r6, r0, 146
    29f8:	30600001 	addik	r3, r0, 1
    29fc:	b0000000 	imm	0
    2a00:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2a04:	b810ff9c 	brid	-100		// 29a0
    2a08:	e9e10000 	lwi	r15, r1, 0

00002a0c <XUartLite_InterruptHandler>:
*
* @note		None.
*
******************************************************************************/
void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
    2a0c:	3021ffdc 	addik	r1, r1, -36
    2a10:	fa61001c 	swi	r19, r1, 28
    2a14:	f9e10000 	swi	r15, r1, 0
    2a18:	fac10020 	swi	r22, r1, 32
	u32 IsrStatus;

	Xil_AssertVoid(InstancePtr != NULL);
    2a1c:	be0500c0 	beqid	r5, 192		// 2adc
    2a20:	12650000 	addk	r19, r5, r0

	/*
	 * Read the status register to determine which, coulb be both
	 * interrupt is active
	 */
	IsrStatus = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    2a24:	e865001c 	lwi	r3, r5, 28
******************************************************************************/
void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
	u32 IsrStatus;

	Xil_AssertVoid(InstancePtr != NULL);
    2a28:	b0000000 	imm	0
    2a2c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>

	/*
	 * Read the status register to determine which, coulb be both
	 * interrupt is active
	 */
	IsrStatus = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    2a30:	eac30008 	lwi	r22, r3, 8
					XUL_STATUS_REG_OFFSET);

	if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
    2a34:	a4760003 	andi	r3, r22, 3
    2a38:	bc030028 	beqi	r3, 40		// 2a60
{
	/*
	 * If there are bytes still to be received in the specified buffer
	 * go ahead and receive them
	 */
	if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
    2a3c:	e8650038 	lwi	r3, r5, 56
    2a40:	bc230080 	bnei	r3, 128		// 2ac0
	 * handler, this code should not use an else from the previous check of
	 * the number of bytes to receive because the call to receive the buffer
	 * updates the bytes to receive
	 */
	if (InstancePtr->ReceiveBuffer.RemainingBytes == 0) {
		InstancePtr->RecvHandler(InstancePtr->RecvCallBackRef,
    2a44:	e873003c 	lwi	r3, r19, 60
    2a48:	e8b30040 	lwi	r5, r19, 64
    2a4c:	99fc1800 	brald	r15, r3
    2a50:	e8d30034 	lwi	r6, r19, 52
	}

	/*
	 * Update the receive stats to reflect the receive interrupt
	 */
	InstancePtr->Stats.ReceiveInterrupts++;
    2a54:	e8730004 	lwi	r3, r19, 4
    2a58:	30630001 	addik	r3, r3, 1
    2a5c:	f8730004 	swi	r3, r19, 4
	if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
		XUL_SR_RX_FIFO_VALID_DATA)) != 0) {
		ReceiveDataHandler(InstancePtr);
	}

	if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
    2a60:	a6d60004 	andi	r22, r22, 4
    2a64:	be160034 	beqid	r22, 52		// 2a98
    2a68:	e9e10000 	lwi	r15, r1, 0
		(InstancePtr->SendBuffer.RequestedBytes > 0)) {
    2a6c:	e8d30028 	lwi	r6, r19, 40
	if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
		XUL_SR_RX_FIFO_VALID_DATA)) != 0) {
		ReceiveDataHandler(InstancePtr);
	}

	if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
    2a70:	bc060028 	beqi	r6, 40		// 2a98
{
	/*
	 * If there are not bytes to be sent from the specified buffer,
	 * call the callback function
	 */
	if (InstancePtr->SendBuffer.RemainingBytes == 0) {
    2a74:	e873002c 	lwi	r3, r19, 44
    2a78:	bc030030 	beqi	r3, 48		// 2aa8
	/*
	 * Otherwise there is still more data to send in the specified buffer
	 * so go ahead and send it
	 */
	else {
		XUartLite_SendBuffer(InstancePtr);
    2a7c:	b0000000 	imm	0
    2a80:	b9f403b4 	brlid	r15, 948	// 2e34 <XUartLite_SendBuffer>
    2a84:	10b30000 	addk	r5, r19, r0
	}

	/*
	 * Update the transmit stats to reflect the transmit interrupt
	 */
	InstancePtr->Stats.TransmitInterrupts++;
    2a88:	e8730000 	lwi	r3, r19, 0
    2a8c:	30630001 	addik	r3, r3, 1
    2a90:	f8730000 	swi	r3, r19, 0

	if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
		(InstancePtr->SendBuffer.RequestedBytes > 0)) {
		SendDataHandler(InstancePtr);
	}
}
    2a94:	e9e10000 	lwi	r15, r1, 0
    2a98:	ea61001c 	lwi	r19, r1, 28
    2a9c:	eac10020 	lwi	r22, r1, 32
    2aa0:	b60f0008 	rtsd	r15, 8
    2aa4:	30210024 	addik	r1, r1, 36

		/*
		 * Call the application handler to indicate
		 * the data has been sent
		 */
		InstancePtr->SendHandler(InstancePtr->SendCallBackRef, SaveReq);
    2aa8:	e8930044 	lwi	r4, r19, 68
    2aac:	e8b30048 	lwi	r5, r19, 72
    2ab0:	99fc2000 	brald	r15, r4
    2ab4:	f8730028 	swi	r3, r19, 40
	}

	/*
	 * Update the transmit stats to reflect the transmit interrupt
	 */
	InstancePtr->Stats.TransmitInterrupts++;
    2ab8:	b810ffd4 	brid	-44		// 2a8c
    2abc:	e8730000 	lwi	r3, r19, 0
	/*
	 * If there are bytes still to be received in the specified buffer
	 * go ahead and receive them
	 */
	if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
		XUartLite_ReceiveBuffer(InstancePtr);
    2ac0:	b0000000 	imm	0
    2ac4:	b9f40564 	brlid	r15, 1380	// 3028 <XUartLite_ReceiveBuffer>
    2ac8:	80000000 	or	r0, r0, r0
	 * If the last byte of a message was received then call the application
	 * handler, this code should not use an else from the previous check of
	 * the number of bytes to receive because the call to receive the buffer
	 * updates the bytes to receive
	 */
	if (InstancePtr->ReceiveBuffer.RemainingBytes == 0) {
    2acc:	e8730038 	lwi	r3, r19, 56
    2ad0:	bc23ff84 	bnei	r3, -124		// 2a54
		InstancePtr->RecvHandler(InstancePtr->RecvCallBackRef,
    2ad4:	b810ff74 	brid	-140		// 2a48
    2ad8:	e873003c 	lwi	r3, r19, 60
******************************************************************************/
void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
	u32 IsrStatus;

	Xil_AssertVoid(InstancePtr != NULL);
    2adc:	b0000000 	imm	0
    2ae0:	30a058b8 	addik	r5, r0, 22712
    2ae4:	b000ffff 	imm	-1
    2ae8:	b9f4e674 	brlid	r15, -6540	// 115c <Xil_Assert>
    2aec:	30c000ae 	addik	r6, r0, 174
    2af0:	30600001 	addik	r3, r0, 1
    2af4:	b0000000 	imm	0
    2af8:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2afc:	b810ff9c 	brid	-100		// 2a98
    2b00:	e9e10000 	lwi	r15, r1, 0

00002b04 <XUartLite_DisableInterrupt>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
    2b04:	3021ffe4 	addik	r1, r1, -28
	Xil_AssertVoid(InstancePtr != NULL);
    2b08:	be050060 	beqid	r5, 96		// 2b68
    2b0c:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2b10:	e8650020 	lwi	r3, r5, 32
* @note		None.
*
*****************************************************************************/
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
	Xil_AssertVoid(InstancePtr != NULL);
    2b14:	b0000000 	imm	0
    2b18:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2b1c:	b0001111 	imm	4369
    2b20:	a8631111 	xori	r3, r3, 4369
    2b24:	bc030030 	beqi	r3, 48		// 2b54
    2b28:	b0000000 	imm	0
    2b2c:	30a058b8 	addik	r5, r0, 22712
    2b30:	b000ffff 	imm	-1
    2b34:	b9f4e628 	brlid	r15, -6616	// 115c <Xil_Assert>
    2b38:	30c0012e 	addik	r6, r0, 302
    2b3c:	30600001 	addik	r3, r0, 1
    2b40:	b0000000 	imm	0
    2b44:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * other bits in this register are the FIFO reset bits such that
	 * writing them to zero will not affect them.
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
				XUL_CONTROL_REG_OFFSET, 0);
}
    2b48:	e9e10000 	lwi	r15, r1, 0
    2b4c:	b60f0008 	rtsd	r15, 8
    2b50:	3021001c 	addik	r1, r1, 28
	/*
	 * Write to the control register to disable the interrupts, the only
	 * other bits in this register are the FIFO reset bits such that
	 * writing them to zero will not affect them.
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2b54:	e885001c 	lwi	r4, r5, 28
    2b58:	f864000c 	swi	r3, r4, 12
				XUL_CONTROL_REG_OFFSET, 0);
}
    2b5c:	e9e10000 	lwi	r15, r1, 0
    2b60:	b60f0008 	rtsd	r15, 8
    2b64:	3021001c 	addik	r1, r1, 28
* @note		None.
*
*****************************************************************************/
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
	Xil_AssertVoid(InstancePtr != NULL);
    2b68:	b0000000 	imm	0
    2b6c:	30a058b8 	addik	r5, r0, 22712
    2b70:	b000ffff 	imm	-1
    2b74:	b9f4e5e8 	brlid	r15, -6680	// 115c <Xil_Assert>
    2b78:	30c0012d 	addik	r6, r0, 301
    2b7c:	30600001 	addik	r3, r0, 1
    2b80:	b0000000 	imm	0
    2b84:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2b88:	b810ffc4 	brid	-60		// 2b4c
    2b8c:	e9e10000 	lwi	r15, r1, 0

00002b90 <XUartLite_EnableInterrupt>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
    2b90:	3021ffe4 	addik	r1, r1, -28
	Xil_AssertVoid(InstancePtr != NULL);
    2b94:	be050064 	beqid	r5, 100		// 2bf8
    2b98:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2b9c:	e8650020 	lwi	r3, r5, 32
* @note		None.
*
*****************************************************************************/
void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
	Xil_AssertVoid(InstancePtr != NULL);
    2ba0:	b0000000 	imm	0
    2ba4:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2ba8:	b0001111 	imm	4369
    2bac:	a8631111 	xori	r3, r3, 4369
    2bb0:	be030034 	beqid	r3, 52		// 2be4
    2bb4:	30800010 	addik	r4, r0, 16	// 10 <_vector_interrupt>
    2bb8:	b0000000 	imm	0
    2bbc:	30a058b8 	addik	r5, r0, 22712
    2bc0:	b000ffff 	imm	-1
    2bc4:	b9f4e598 	brlid	r15, -6760	// 115c <Xil_Assert>
    2bc8:	30c0014c 	addik	r6, r0, 332
    2bcc:	30600001 	addik	r3, r0, 1
    2bd0:	b0000000 	imm	0
    2bd4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * other bits in this register are the FIFO reset bits such that
	 * writing them to zero will not affect them.
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
				XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR);
}
    2bd8:	e9e10000 	lwi	r15, r1, 0
    2bdc:	b60f0008 	rtsd	r15, 8
    2be0:	3021001c 	addik	r1, r1, 28
	/*
	 * Write to the control register to enable the interrupts, the only
	 * other bits in this register are the FIFO reset bits such that
	 * writing them to zero will not affect them.
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2be4:	e865001c 	lwi	r3, r5, 28
    2be8:	f883000c 	swi	r4, r3, 12
				XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR);
}
    2bec:	e9e10000 	lwi	r15, r1, 0
    2bf0:	b60f0008 	rtsd	r15, 8
    2bf4:	3021001c 	addik	r1, r1, 28
* @note		None.
*
*****************************************************************************/
void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
	Xil_AssertVoid(InstancePtr != NULL);
    2bf8:	b0000000 	imm	0
    2bfc:	30a058b8 	addik	r5, r0, 22712
    2c00:	b000ffff 	imm	-1
    2c04:	b9f4e558 	brlid	r15, -6824	// 115c <Xil_Assert>
    2c08:	30c0014b 	addik	r6, r0, 331
    2c0c:	30600001 	addik	r3, r0, 1
    2c10:	b0000000 	imm	0
    2c14:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2c18:	b810ffc4 	brid	-60		// 2bdc
    2c1c:	e9e10000 	lwi	r15, r1, 0

00002c20 <XUartLite_SendByte>:
*
* @note		None.
*
******************************************************************************/
void XUartLite_SendByte(u32 BaseAddress, u8 Data)
{
    2c20:	30850008 	addik	r4, r5, 8
	while (XUartLite_IsTransmitFull(BaseAddress));
    2c24:	e8640000 	lwi	r3, r4, 0
    2c28:	a4630008 	andi	r3, r3, 8
    2c2c:	bc23fff8 	bnei	r3, -8		// 2c24

	XUartLite_WriteReg(BaseAddress, XUL_TX_FIFO_OFFSET, Data);
    2c30:	f8c50004 	swi	r6, r5, 4
}
    2c34:	b60f0008 	rtsd	r15, 8
    2c38:	80000000 	or	r0, r0, r0

00002c3c <XUartLite_RecvByte>:
*
* @note		None.
*
******************************************************************************/
u8 XUartLite_RecvByte(u32 BaseAddress)
{
    2c3c:	30850008 	addik	r4, r5, 8
	while (XUartLite_IsReceiveEmpty(BaseAddress));
    2c40:	e8640000 	lwi	r3, r4, 0
    2c44:	a4630001 	andi	r3, r3, 1
    2c48:	bc03fff8 	beqi	r3, -8		// 2c40

	return (u8)XUartLite_ReadReg(BaseAddress, XUL_RX_FIFO_OFFSET);
    2c4c:	e8650000 	lwi	r3, r5, 0
}
    2c50:	b60f0008 	rtsd	r15, 8
    2c54:	a46300ff 	andi	r3, r3, 255

00002c58 <StubHandler>:
static void StubHandler(void *CallBackRef, unsigned int ByteCount)
{
	/*
	 * Assert occurs always since this is a stub and should never be called
	 */
	Xil_AssertVoidAlways();
    2c58:	b0000000 	imm	0
    2c5c:	30a058cc 	addik	r5, r0, 22732
*
* @note		None.
*
*****************************************************************************/
static void StubHandler(void *CallBackRef, unsigned int ByteCount)
{
    2c60:	3021ffe4 	addik	r1, r1, -28
    2c64:	f9e10000 	swi	r15, r1, 0
	/*
	 * Assert occurs always since this is a stub and should never be called
	 */
	Xil_AssertVoidAlways();
    2c68:	b000ffff 	imm	-1
    2c6c:	b9f4e4f0 	brlid	r15, -6928	// 115c <Xil_Assert>
    2c70:	30c001bc 	addik	r6, r0, 444
}
    2c74:	e9e10000 	lwi	r15, r1, 0
static void StubHandler(void *CallBackRef, unsigned int ByteCount)
{
	/*
	 * Assert occurs always since this is a stub and should never be called
	 */
	Xil_AssertVoidAlways();
    2c78:	30600001 	addik	r3, r0, 1
    2c7c:	b0000000 	imm	0
    2c80:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
}
    2c84:	b60f0008 	rtsd	r15, 8
    2c88:	3021001c 	addik	r1, r1, 28

00002c8c <XUartLite_CfgInitialize>:
*		with other drivers.
*
*****************************************************************************/
int XUartLite_CfgInitialize(XUartLite *InstancePtr, XUartLite_Config *Config,
				u32 EffectiveAddr)
{
    2c8c:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2c90:	be050068 	beqid	r5, 104		// 2cf8
    2c94:	f9e10000 	swi	r15, r1, 0

	InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
	InstancePtr->ReceiveBuffer.RemainingBytes = 0;
	InstancePtr->ReceiveBuffer.RequestedBytes = 0;

	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
    2c98:	b0001111 	imm	4369
    2c9c:	30801111 	addik	r4, r0, 4369

	/*
	 * Set some default values, including setting the callback
	 * handlers to stubs.
	 */
	InstancePtr->SendBuffer.NextBytePtr = NULL;
    2ca0:	f8050024 	swi	r0, r5, 36
	InstancePtr->SendBuffer.RemainingBytes = 0;
    2ca4:	f805002c 	swi	r0, r5, 44

	InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
	InstancePtr->ReceiveBuffer.RemainingBytes = 0;
	InstancePtr->ReceiveBuffer.RequestedBytes = 0;

	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
    2ca8:	f8850020 	swi	r4, r5, 32
	InstancePtr->RegBaseAddress = ((EffectiveAddr >> 2)) & 0xFFF;
#else
	InstancePtr->RegBaseAddress = EffectiveAddr;
#endif

	InstancePtr->RecvHandler = StubHandler;
    2cac:	b0000000 	imm	0
    2cb0:	30802c58 	addik	r4, r0, 11352	// 2c58 <StubHandler>
	 * Set some default values, including setting the callback
	 * handlers to stubs.
	 */
	InstancePtr->SendBuffer.NextBytePtr = NULL;
	InstancePtr->SendBuffer.RemainingBytes = 0;
	InstancePtr->SendBuffer.RequestedBytes = 0;
    2cb4:	f8050028 	swi	r0, r5, 40

	InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
    2cb8:	f8050030 	swi	r0, r5, 48
	InstancePtr->RegBaseAddress = ((EffectiveAddr >> 2)) & 0xFFF;
#else
	InstancePtr->RegBaseAddress = EffectiveAddr;
#endif

	InstancePtr->RecvHandler = StubHandler;
    2cbc:	f885003c 	swi	r4, r5, 60
	InstancePtr->SendHandler = StubHandler;
    2cc0:	f8850044 	swi	r4, r5, 68
	InstancePtr->SendBuffer.NextBytePtr = NULL;
	InstancePtr->SendBuffer.RemainingBytes = 0;
	InstancePtr->SendBuffer.RequestedBytes = 0;

	InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
	InstancePtr->ReceiveBuffer.RemainingBytes = 0;
    2cc4:	f8050038 	swi	r0, r5, 56
	InstancePtr->ReceiveBuffer.RequestedBytes = 0;
    2cc8:	f8050034 	swi	r0, r5, 52
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

#if (XPAR_XUARTLITE_USE_DCR_BRIDGE != 0)
	InstancePtr->RegBaseAddress = ((EffectiveAddr >> 2)) & 0xFFF;
#else
	InstancePtr->RegBaseAddress = EffectiveAddr;
    2ccc:	f8e5001c 	swi	r7, r5, 28
				u32 EffectiveAddr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2cd0:	b0000000 	imm	0
    2cd4:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	InstancePtr->SendHandler = StubHandler;

	/* Write to the control register to disable the interrupts, don't
	 * reset the FIFOs are the user may want the data that's present
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2cd8:	f807000c 	swi	r0, r7, 12
				XUL_CONTROL_REG_OFFSET, 0);

	/*
	 * Clear the statistics for this driver
	 */
	XUartLite_ClearStats(InstancePtr);
    2cdc:	b0000000 	imm	0
    2ce0:	b9f407d4 	brlid	r15, 2004	// 34b4 <XUartLite_ClearStats>
    2ce4:	80000000 	or	r0, r0, r0

	return XST_SUCCESS;
}
    2ce8:	e9e10000 	lwi	r15, r1, 0
    2cec:	10600000 	addk	r3, r0, r0
    2cf0:	b60f0008 	rtsd	r15, 8
    2cf4:	3021001c 	addik	r1, r1, 28
				u32 EffectiveAddr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2cf8:	b0000000 	imm	0
    2cfc:	30a058cc 	addik	r5, r0, 22732
    2d00:	b000ffff 	imm	-1
    2d04:	b9f4e458 	brlid	r15, -7080	// 115c <Xil_Assert>
    2d08:	30c0008e 	addik	r6, r0, 142
	 * Clear the statistics for this driver
	 */
	XUartLite_ClearStats(InstancePtr);

	return XST_SUCCESS;
}
    2d0c:	e9e10000 	lwi	r15, r1, 0
				u32 EffectiveAddr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2d10:	30600001 	addik	r3, r0, 1
    2d14:	b0000000 	imm	0
    2d18:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * Clear the statistics for this driver
	 */
	XUartLite_ClearStats(InstancePtr);

	return XST_SUCCESS;
}
    2d1c:	10600000 	addk	r3, r0, r0
    2d20:	b60f0008 	rtsd	r15, 8
    2d24:	3021001c 	addik	r1, r1, 28

00002d28 <XUartLite_ResetFifos>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
    2d28:	3021ffe4 	addik	r1, r1, -28
	u32 Register;

	Xil_AssertVoid(InstancePtr != NULL);
    2d2c:	be05006c 	beqid	r5, 108		// 2d98
    2d30:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2d34:	e8650020 	lwi	r3, r5, 32
*****************************************************************************/
void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
	u32 Register;

	Xil_AssertVoid(InstancePtr != NULL);
    2d38:	b0000000 	imm	0
    2d3c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2d40:	b0001111 	imm	4369
    2d44:	a8631111 	xori	r3, r3, 4369
    2d48:	bc030030 	beqi	r3, 48		// 2d78
    2d4c:	b0000000 	imm	0
    2d50:	30a058cc 	addik	r5, r0, 22732
    2d54:	b000ffff 	imm	-1
    2d58:	b9f4e404 	brlid	r15, -7164	// 115c <Xil_Assert>
    2d5c:	30c0016e 	addik	r6, r0, 366
    2d60:	30600001 	addik	r3, r0, 1
    2d64:	b0000000 	imm	0
    2d68:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * Write to the control register to reset both FIFOs, these bits are
	 * self-clearing such that there's no need to clear them
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
			Register | XUL_CR_FIFO_TX_RESET | XUL_CR_FIFO_RX_RESET);
}
    2d6c:	e9e10000 	lwi	r15, r1, 0
    2d70:	b60f0008 	rtsd	r15, 8
    2d74:	3021001c 	addik	r1, r1, 28

	/*
	 * Read the status register 1st such that the next write to the control
	 * register won't destroy the state of the interrupt enable bit
	 */
	Register = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    2d78:	e865001c 	lwi	r3, r5, 28
    2d7c:	e8830008 	lwi	r4, r3, 8
					XUL_STATUS_REG_OFFSET);

	/*
	 * Mask off the interrupt enable bit to maintain it's state.
	 */
	Register &= XUL_SR_INTR_ENABLED;
    2d80:	a4840010 	andi	r4, r4, 16

	/*
	 * Write to the control register to reset both FIFOs, these bits are
	 * self-clearing such that there's no need to clear them
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
    2d84:	a0840003 	ori	r4, r4, 3
    2d88:	f883000c 	swi	r4, r3, 12
			Register | XUL_CR_FIFO_TX_RESET | XUL_CR_FIFO_RX_RESET);
}
    2d8c:	e9e10000 	lwi	r15, r1, 0
    2d90:	b60f0008 	rtsd	r15, 8
    2d94:	3021001c 	addik	r1, r1, 28
*****************************************************************************/
void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
	u32 Register;

	Xil_AssertVoid(InstancePtr != NULL);
    2d98:	b0000000 	imm	0
    2d9c:	30a058cc 	addik	r5, r0, 22732
    2da0:	b000ffff 	imm	-1
    2da4:	b9f4e3b8 	brlid	r15, -7240	// 115c <Xil_Assert>
    2da8:	30c0016d 	addik	r6, r0, 365
    2dac:	30600001 	addik	r3, r0, 1
    2db0:	b0000000 	imm	0
    2db4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2db8:	b810ffb8 	brid	-72		// 2d70
    2dbc:	e9e10000 	lwi	r15, r1, 0

00002dc0 <XUartLite_IsSending>:
*
* @note		None.
*
*****************************************************************************/
int XUartLite_IsSending(XUartLite *InstancePtr)
{
    2dc0:	3021ffe0 	addik	r1, r1, -32
    2dc4:	fa61001c 	swi	r19, r1, 28
    2dc8:	f9e10000 	swi	r15, r1, 0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2dcc:	be050034 	beqid	r5, 52		// 2e00
    2dd0:	12650000 	addk	r19, r5, r0

	/*
	 * Read the status register to determine if the transmitter is empty
	 */
	StatusRegister = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    2dd4:	e865001c 	lwi	r3, r5, 28
	/*
	 * If the transmitter is not empty then indicate that the UART is still
	 * sending some data
	 */
	return ((StatusRegister & XUL_SR_TX_FIFO_EMPTY) == 0);
}
    2dd8:	e9e10000 	lwi	r15, r1, 0
    2ddc:	ea61001c 	lwi	r19, r1, 28
	Xil_AssertNonvoid(InstancePtr != NULL);

	/*
	 * Read the status register to determine if the transmitter is empty
	 */
	StatusRegister = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    2de0:	e8630008 	lwi	r3, r3, 8

	/*
	 * If the transmitter is not empty then indicate that the UART is still
	 * sending some data
	 */
	return ((StatusRegister & XUL_SR_TX_FIFO_EMPTY) == 0);
    2de4:	10800000 	addk	r4, r0, r0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2de8:	b0000000 	imm	0
    2dec:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>

	/*
	 * If the transmitter is not empty then indicate that the UART is still
	 * sending some data
	 */
	return ((StatusRegister & XUL_SR_TX_FIFO_EMPTY) == 0);
    2df0:	a4630004 	andi	r3, r3, 4
    2df4:	88632400 	pcmpeq	r3, r3, r4
}
    2df8:	b60f0008 	rtsd	r15, 8
    2dfc:	30210020 	addik	r1, r1, 32
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2e00:	b0000000 	imm	0
    2e04:	30a058cc 	addik	r5, r0, 22732
    2e08:	b000ffff 	imm	-1
    2e0c:	b9f4e350 	brlid	r15, -7344	// 115c <Xil_Assert>
    2e10:	30c00198 	addik	r6, r0, 408
    2e14:	30600001 	addik	r3, r0, 1
    2e18:	b0000000 	imm	0
    2e1c:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	/*
	 * If the transmitter is not empty then indicate that the UART is still
	 * sending some data
	 */
	return ((StatusRegister & XUL_SR_TX_FIFO_EMPTY) == 0);
}
    2e20:	e9e10000 	lwi	r15, r1, 0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2e24:	10730000 	addk	r3, r19, r0
	/*
	 * If the transmitter is not empty then indicate that the UART is still
	 * sending some data
	 */
	return ((StatusRegister & XUL_SR_TX_FIFO_EMPTY) == 0);
}
    2e28:	ea61001c 	lwi	r19, r1, 28
    2e2c:	b60f0008 	rtsd	r15, 8
    2e30:	30210020 	addik	r1, r1, 32

00002e34 <XUartLite_SendBuffer>:
	u8 IntrEnableStatus;

	/*
	 * Read the status register to determine if the transmitter is full
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    2e34:	e865001c 	lwi	r3, r5, 28
    2e38:	e8830008 	lwi	r4, r3, 8

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    2e3c:	e9430008 	lwi	r10, r3, 8
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2e40:	f803000c 	swi	r0, r3, 12

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    2e44:	a54a00ff 	andi	r10, r10, 255

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2e48:	a46a0008 	andi	r3, r10, 8
    2e4c:	bc23006c 	bnei	r3, 108		// 2eb8
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
    2e50:	e905002c 	lwi	r8, r5, 44

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2e54:	bc080078 	beqi	r8, 120		// 2ecc
    2e58:	e885001c 	lwi	r4, r5, 28
    2e5c:	b810000c 	brid	12		// 2e68
    2e60:	e9250024 	lwi	r9, r5, 36
    2e64:	bca70024 	bgei	r7, 36		// 2e88
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
		XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2e68:	c0c34800 	lbu	r6, r3, r9
					XUL_TX_FIFO_OFFSET,
					InstancePtr->SendBuffer.NextBytePtr[
					SentCount]);

		SentCount++;
    2e6c:	30630001 	addik	r3, r3, 1

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2e70:	14e81803 	cmpu	r7, r8, r3
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
		XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2e74:	f8c40004 	swi	r6, r4, 4
					SentCount]);

		SentCount++;

		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    2e78:	e885001c 	lwi	r4, r5, 28
    2e7c:	e8c40008 	lwi	r6, r4, 8

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2e80:	a4c60008 	andi	r6, r6, 8
    2e84:	bc06ffe0 	beqi	r6, -32		// 2e64
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;
    2e88:	e8c50008 	lwi	r6, r5, 8
	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
    2e8c:	11291800 	addk	r9, r9, r3
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;
    2e90:	15034000 	rsubk	r8, r3, r8

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;
    2e94:	10c61800 	addk	r6, r6, r3

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	IntrEnableStatus &= XUL_CR_ENABLE_INTR;
    2e98:	a54a0010 	andi	r10, r10, 16
	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
    2e9c:	f9250024 	swi	r9, r5, 36
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;
    2ea0:	f905002c 	swi	r8, r5, 44

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;
    2ea4:	f8c50008 	swi	r6, r5, 8
	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	IntrEnableStatus &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
    2ea8:	a54a00ff 	andi	r10, r10, 255
    2eac:	f944000c 	swi	r10, r4, 12
	/*
	 * Return the number of bytes that were sent, althought they really were
	 * only put into the FIFO, not completely sent yet
	 */
	return SentCount;
}
    2eb0:	b60f0008 	rtsd	r15, 8
    2eb4:	80000000 	or	r0, r0, r0

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2eb8:	e9250024 	lwi	r9, r5, 36
    2ebc:	e905002c 	lwi	r8, r5, 44
    2ec0:	e885001c 	lwi	r4, r5, 28
* @note		None.
*
*****************************************************************************/
unsigned int XUartLite_SendBuffer(XUartLite *InstancePtr)
{
	unsigned int SentCount = 0;
    2ec4:	b810ffc4 	brid	-60		// 2e88
    2ec8:	10600000 	addk	r3, r0, r0

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
    2ecc:	e9250024 	lwi	r9, r5, 36
    2ed0:	e885001c 	lwi	r4, r5, 28
* @note		None.
*
*****************************************************************************/
unsigned int XUartLite_SendBuffer(XUartLite *InstancePtr)
{
	unsigned int SentCount = 0;
    2ed4:	b810ffb4 	brid	-76		// 2e88
    2ed8:	10680000 	addk	r3, r8, r0

00002edc <XUartLite_Send>:
*		already in progress.
*
******************************************************************************/
unsigned int XUartLite_Send(XUartLite *InstancePtr, u8 *DataBufferPtr,
				unsigned int NumBytes)
{
    2edc:	3021ffd8 	addik	r1, r1, -40
    2ee0:	fa61001c 	swi	r19, r1, 28
    2ee4:	fac10020 	swi	r22, r1, 32
    2ee8:	f9e10000 	swi	r15, r1, 0
    2eec:	fae10024 	swi	r23, r1, 36
    2ef0:	12650000 	addk	r19, r5, r0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2ef4:	be0500e4 	beqid	r5, 228		// 2fd8
    2ef8:	12c60000 	addk	r22, r6, r0
    2efc:	b0000000 	imm	0
    2f00:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    2f04:	bc0600fc 	beqi	r6, 252		// 3000
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2f08:	eae50020 	lwi	r23, r5, 32
    2f0c:	b0001111 	imm	4369
    2f10:	aaf71111 	xori	r23, r23, 4369
    2f14:	bc370088 	bnei	r23, 136		// 2f9c
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    2f18:	bc470048 	blti	r7, 72		// 2f60

	/*
	 * Enter a critical region by disabling the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven.
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    2f1c:	e865001c 	lwi	r3, r5, 28
    2f20:	e8830008 	lwi	r4, r3, 8

	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2f24:	fae3000c 	swi	r23, r3, 12
	 * disabled since there is only one interrupt and the receive could
	 * be filling up while interrupts are blocked.
	 */

	StatusRegister &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2f28:	e865001c 	lwi	r3, r5, 28

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
    2f2c:	f8e50028 	swi	r7, r5, 40
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
    2f30:	f8e5002c 	swi	r7, r5, 44
	InstancePtr->SendBuffer.NextBytePtr = DataBufferPtr;
    2f34:	f8d30024 	swi	r6, r19, 36
	 * This is done here to minimize the amount of time the interrupt is
	 * disabled since there is only one interrupt and the receive could
	 * be filling up while interrupts are blocked.
	 */

	StatusRegister &= XUL_CR_ENABLE_INTR;
    2f38:	a4840010 	andi	r4, r4, 16
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    2f3c:	f883000c 	swi	r4, r3, 12
				XUL_CONTROL_REG_OFFSET, StatusRegister);

	/*
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);
    2f40:	b9f4fef4 	brlid	r15, -268	// 2e34 <XUartLite_SendBuffer>
    2f44:	80000000 	or	r0, r0, r0

	return BytesSent;
}
    2f48:	e9e10000 	lwi	r15, r1, 0
    2f4c:	ea61001c 	lwi	r19, r1, 28
    2f50:	eac10020 	lwi	r22, r1, 32
    2f54:	eae10024 	lwi	r23, r1, 36
    2f58:	b60f0008 	rtsd	r15, 8
    2f5c:	30210028 	addik	r1, r1, 40
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    2f60:	b0000000 	imm	0
    2f64:	30a058cc 	addik	r5, r0, 22732
    2f68:	b000ffff 	imm	-1
    2f6c:	b9f4e1f0 	brlid	r15, -7696	// 115c <Xil_Assert>
    2f70:	30c000e0 	addik	r6, r0, 224
    2f74:	30600001 	addik	r3, r0, 1
    2f78:	b0000000 	imm	0
    2f7c:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);

	return BytesSent;
}
    2f80:	e9e10000 	lwi	r15, r1, 0
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    2f84:	10770000 	addk	r3, r23, r0
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);

	return BytesSent;
}
    2f88:	ea61001c 	lwi	r19, r1, 28
    2f8c:	eac10020 	lwi	r22, r1, 32
    2f90:	eae10024 	lwi	r23, r1, 36
    2f94:	b60f0008 	rtsd	r15, 8
    2f98:	30210028 	addik	r1, r1, 40
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2f9c:	b0000000 	imm	0
    2fa0:	30a058cc 	addik	r5, r0, 22732
    2fa4:	b000ffff 	imm	-1
    2fa8:	b9f4e1b4 	brlid	r15, -7756	// 115c <Xil_Assert>
    2fac:	30c000df 	addik	r6, r0, 223
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);

	return BytesSent;
}
    2fb0:	e9e10000 	lwi	r15, r1, 0
    2fb4:	ea61001c 	lwi	r19, r1, 28
    2fb8:	eac10020 	lwi	r22, r1, 32
    2fbc:	eae10024 	lwi	r23, r1, 36
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2fc0:	30600001 	addik	r3, r0, 1
    2fc4:	b0000000 	imm	0
    2fc8:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2fcc:	10600000 	addk	r3, r0, r0
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);

	return BytesSent;
}
    2fd0:	b60f0008 	rtsd	r15, 8
    2fd4:	30210028 	addik	r1, r1, 40
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    2fd8:	b0000000 	imm	0
    2fdc:	30a058cc 	addik	r5, r0, 22732
    2fe0:	b000ffff 	imm	-1
    2fe4:	b9f4e178 	brlid	r15, -7816	// 115c <Xil_Assert>
    2fe8:	30c000dd 	addik	r6, r0, 221
    2fec:	30600001 	addik	r3, r0, 1
    2ff0:	b0000000 	imm	0
    2ff4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    2ff8:	b810ff50 	brid	-176		// 2f48
    2ffc:	10730000 	addk	r3, r19, r0
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    3000:	b0000000 	imm	0
    3004:	30a058cc 	addik	r5, r0, 22732
    3008:	b000ffff 	imm	-1
    300c:	b9f4e150 	brlid	r15, -7856	// 115c <Xil_Assert>
    3010:	30c000de 	addik	r6, r0, 222
    3014:	30600001 	addik	r3, r0, 1
    3018:	b0000000 	imm	0
    301c:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    3020:	b810ff28 	brid	-216		// 2f48
    3024:	10760000 	addk	r3, r22, r0

00003028 <XUartLite_ReceiveBuffer>:
*
*****************************************************************************/
unsigned int XUartLite_ReceiveBuffer(XUartLite *InstancePtr)
{
	u8 StatusRegister;
	unsigned int ReceivedCount = 0;
    3028:	10600000 	addk	r3, r0, r0
	/*
	 * Loop until there is not more data buffered by the UART or the
	 * specified number of bytes is received
	 */

	while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
    302c:	e8e50038 	lwi	r7, r5, 56
    3030:	14871803 	cmpu	r4, r7, r3
    3034:	bea4006c 	bgeid	r4, 108		// 30a0
    3038:	e8c5001c 	lwi	r6, r5, 28
		/*
		 * Read the Status Register to determine if there is any data in
		 * the receiver/FIFO
		 */
		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    303c:	e8860008 	lwi	r4, r6, 8
    3040:	31660008 	addik	r11, r6, 8
	while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
		/*
		 * Read the Status Register to determine if there is any data in
		 * the receiver/FIFO
		 */
		StatusRegister =
    3044:	a48400ff 	andi	r4, r4, 255
		/*
		 * If there is data ready to be removed, then put the next byte
		 * received into the specified buffer and update the stats to
		 * reflect any receive errors for the byte
		 */
		if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
    3048:	a5040001 	andi	r8, r4, 1
			InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
				XUartLite_ReadReg(InstancePtr->RegBaseAddress,
							XUL_RX_FIFO_OFFSET);

			XUartLite_UpdateStats(InstancePtr, StatusRegister);
    304c:	a5440020 	andi	r10, r4, 32
    3050:	91240060 	sext8	r9, r4
		/*
		 * If there is data ready to be removed, then put the next byte
		 * received into the specified buffer and update the stats to
		 * reflect any receive errors for the byte
		 */
		if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
    3054:	be080050 	beqid	r8, 80		// 30a4
    3058:	a4840040 	andi	r4, r4, 64
			InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
				XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    305c:	e8c60000 	lwi	r6, r6, 0
		 * If there is data ready to be removed, then put the next byte
		 * received into the specified buffer and update the stats to
		 * reflect any receive errors for the byte
		 */
		if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
			InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
    3060:	e8e50030 	lwi	r7, r5, 48
    3064:	d0c33800 	sb	r6, r3, r7
				XUartLite_ReadReg(InstancePtr->RegBaseAddress,
							XUL_RX_FIFO_OFFSET);

			XUartLite_UpdateStats(InstancePtr, StatusRegister);
    3068:	be0a0014 	beqid	r10, 20		// 307c
    306c:	30630001 	addik	r3, r3, 1
    3070:	e8c50010 	lwi	r6, r5, 16
    3074:	30c60001 	addik	r6, r6, 1
    3078:	f8c50010 	swi	r6, r5, 16
    307c:	bc490068 	blti	r9, 104		// 30e4
    3080:	bc04ffac 	beqi	r4, -84		// 302c
    3084:	e8850018 	lwi	r4, r5, 24
	/*
	 * Loop until there is not more data buffered by the UART or the
	 * specified number of bytes is received
	 */

	while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
    3088:	e8e50038 	lwi	r7, r5, 56
		/*
		 * Read the Status Register to determine if there is any data in
		 * the receiver/FIFO
		 */
		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    308c:	e8c5001c 	lwi	r6, r5, 28
		if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
			InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
				XUartLite_ReadReg(InstancePtr->RegBaseAddress,
							XUL_RX_FIFO_OFFSET);

			XUartLite_UpdateStats(InstancePtr, StatusRegister);
    3090:	30840001 	addik	r4, r4, 1
    3094:	f8850018 	swi	r4, r5, 24
	/*
	 * Loop until there is not more data buffered by the UART or the
	 * specified number of bytes is received
	 */

	while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
    3098:	14871803 	cmpu	r4, r7, r3
    309c:	bc44ffa0 	blti	r4, -96		// 303c
    30a0:	31660008 	addik	r11, r6, 8

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    30a4:	e94b0000 	lwi	r10, r11, 0
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    30a8:	f806000c 	swi	r0, r6, 12

	/*
	 * Update the receive buffer to reflect the number of bytes that was
	 * received
	 */
	InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
    30ac:	e9250030 	lwi	r9, r5, 48
	InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;

	/*
	 * Increment associated counters in the statistics
	 */
	InstancePtr->Stats.CharactersReceived += ReceivedCount;
    30b0:	e905000c 	lwi	r8, r5, 12
	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	StatusRegister &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    30b4:	e885001c 	lwi	r4, r5, 28

	/*
	 * Update the receive buffer to reflect the number of bytes that was
	 * received
	 */
	InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
    30b8:	11291800 	addk	r9, r9, r3
	InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;
    30bc:	14e33800 	rsubk	r7, r3, r7

	/*
	 * Increment associated counters in the statistics
	 */
	InstancePtr->Stats.CharactersReceived += ReceivedCount;
    30c0:	11081800 	addk	r8, r8, r3

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	StatusRegister &= XUL_CR_ENABLE_INTR;
    30c4:	a4ca0010 	andi	r6, r10, 16

	/*
	 * Update the receive buffer to reflect the number of bytes that was
	 * received
	 */
	InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
    30c8:	f9250030 	swi	r9, r5, 48
	InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;
    30cc:	f8e50038 	swi	r7, r5, 56

	/*
	 * Increment associated counters in the statistics
	 */
	InstancePtr->Stats.CharactersReceived += ReceivedCount;
    30d0:	f905000c 	swi	r8, r5, 12
	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	StatusRegister &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    30d4:	a4a600ff 	andi	r5, r6, 255
    30d8:	f8a4000c 	swi	r5, r4, 12
				XUL_CONTROL_REG_OFFSET, StatusRegister);

	return ReceivedCount;
}
    30dc:	b60f0008 	rtsd	r15, 8
    30e0:	80000000 	or	r0, r0, r0
		if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
			InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
				XUartLite_ReadReg(InstancePtr->RegBaseAddress,
							XUL_RX_FIFO_OFFSET);

			XUartLite_UpdateStats(InstancePtr, StatusRegister);
    30e4:	e8c50014 	lwi	r6, r5, 20
    30e8:	30c60001 	addik	r6, r6, 1
    30ec:	b810ff94 	brid	-108		// 3080
    30f0:	f8c50014 	swi	r6, r5, 20

000030f4 <XUartLite_Recv>:
*		that is already in progress.
*
*****************************************************************************/
unsigned int XUartLite_Recv(XUartLite *InstancePtr, u8 *DataBufferPtr,
				unsigned int NumBytes)
{
    30f4:	3021ffd8 	addik	r1, r1, -40
    30f8:	fa61001c 	swi	r19, r1, 28
    30fc:	fac10020 	swi	r22, r1, 32
    3100:	f9e10000 	swi	r15, r1, 0
    3104:	fae10024 	swi	r23, r1, 36
    3108:	12650000 	addk	r19, r5, r0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    310c:	be0500e4 	beqid	r5, 228		// 31f0
    3110:	12c60000 	addk	r22, r6, r0
    3114:	b0000000 	imm	0
    3118:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    311c:	bc0600fc 	beqi	r6, 252		// 3218
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    3120:	eae50020 	lwi	r23, r5, 32
    3124:	b0001111 	imm	4369
    3128:	aaf71111 	xori	r23, r23, 4369
    312c:	bc370088 	bnei	r23, 136		// 31b4
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    3130:	bc470048 	blti	r7, 72		// 3178

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    3134:	e865001c 	lwi	r3, r5, 28
    3138:	e8830008 	lwi	r4, r3, 8
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    313c:	fae3000c 	swi	r23, r3, 12
	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	StatusRegister &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    3140:	e865001c 	lwi	r3, r5, 28

	/*
	 * Setup the specified buffer to be received by setting the instance
	 * variables so it can be received with polled or interrupt mode
	 */
	InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
    3144:	f8e50034 	swi	r7, r5, 52
	InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
    3148:	f8e50038 	swi	r7, r5, 56
	InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
    314c:	f8d30030 	swi	r6, r19, 48

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	StatusRegister &= XUL_CR_ENABLE_INTR;
    3150:	a4840010 	andi	r4, r4, 16
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
    3154:	f883000c 	swi	r4, r3, 12
	 * received
	 * This is done here to minimize the amount of time the interrupt is
	 * disabled since there is only one interrupt and the transmit could
	 * be emptying out while interrupts are blocked.
	 */
	ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
    3158:	b9f4fed0 	brlid	r15, -304	// 3028 <XUartLite_ReceiveBuffer>
    315c:	80000000 	or	r0, r0, r0

	return ReceivedCount;

}
    3160:	e9e10000 	lwi	r15, r1, 0
    3164:	ea61001c 	lwi	r19, r1, 28
    3168:	eac10020 	lwi	r22, r1, 32
    316c:	eae10024 	lwi	r23, r1, 36
    3170:	b60f0008 	rtsd	r15, 8
    3174:	30210028 	addik	r1, r1, 40
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    3178:	b0000000 	imm	0
    317c:	30a058cc 	addik	r5, r0, 22732
    3180:	b000ffff 	imm	-1
    3184:	b9f4dfd8 	brlid	r15, -8232	// 115c <Xil_Assert>
    3188:	30c00133 	addik	r6, r0, 307
    318c:	30600001 	addik	r3, r0, 1
    3190:	b0000000 	imm	0
    3194:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	 */
	ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

	return ReceivedCount;

}
    3198:	e9e10000 	lwi	r15, r1, 0
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(((signed)NumBytes) >= 0);
    319c:	10770000 	addk	r3, r23, r0
	 */
	ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

	return ReceivedCount;

}
    31a0:	ea61001c 	lwi	r19, r1, 28
    31a4:	eac10020 	lwi	r22, r1, 32
    31a8:	eae10024 	lwi	r23, r1, 36
    31ac:	b60f0008 	rtsd	r15, 8
    31b0:	30210028 	addik	r1, r1, 40
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    31b4:	b0000000 	imm	0
    31b8:	30a058cc 	addik	r5, r0, 22732
    31bc:	b000ffff 	imm	-1
    31c0:	b9f4df9c 	brlid	r15, -8292	// 115c <Xil_Assert>
    31c4:	30c00132 	addik	r6, r0, 306
	 */
	ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

	return ReceivedCount;

}
    31c8:	e9e10000 	lwi	r15, r1, 0
    31cc:	ea61001c 	lwi	r19, r1, 28
    31d0:	eac10020 	lwi	r22, r1, 32
    31d4:	eae10024 	lwi	r23, r1, 36
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(DataBufferPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    31d8:	30600001 	addik	r3, r0, 1
    31dc:	b0000000 	imm	0
    31e0:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    31e4:	10600000 	addk	r3, r0, r0
	 */
	ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

	return ReceivedCount;

}
    31e8:	b60f0008 	rtsd	r15, 8
    31ec:	30210028 	addik	r1, r1, 40
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    31f0:	b0000000 	imm	0
    31f4:	30a058cc 	addik	r5, r0, 22732
    31f8:	b000ffff 	imm	-1
    31fc:	b9f4df60 	brlid	r15, -8352	// 115c <Xil_Assert>
    3200:	30c00130 	addik	r6, r0, 304
    3204:	30600001 	addik	r3, r0, 1
    3208:	b0000000 	imm	0
    320c:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    3210:	b810ff50 	brid	-176		// 3160
    3214:	10730000 	addk	r3, r19, r0
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    3218:	b0000000 	imm	0
    321c:	30a058cc 	addik	r5, r0, 22732
    3220:	b000ffff 	imm	-1
    3224:	b9f4df38 	brlid	r15, -8392	// 115c <Xil_Assert>
    3228:	30c00131 	addik	r6, r0, 305
    322c:	30600001 	addik	r3, r0, 1
    3230:	b0000000 	imm	0
    3234:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    3238:	b810ff28 	brid	-216		// 3160
    323c:	10760000 	addk	r3, r22, r0

00003240 <XUartLite_SelfTest>:
*
* @note		None.
*
******************************************************************************/
int XUartLite_SelfTest(XUartLite *InstancePtr)
{
    3240:	3021ffe0 	addik	r1, r1, -32
    3244:	fa61001c 	swi	r19, r1, 28
    3248:	f9e10000 	swi	r15, r1, 0
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    324c:	be050074 	beqid	r5, 116		// 32c0
    3250:	12650000 	addk	r19, r5, r0
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    3254:	e8650020 	lwi	r3, r5, 32
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3258:	b0000000 	imm	0
    325c:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    3260:	b0001111 	imm	4369
    3264:	a8631111 	xori	r3, r3, 4369
    3268:	bc230024 	bnei	r3, 36		// 328c

	/*
	 * Read the Status register value to check if it is the correct value
	 * after a reset
	 */
	StatusRegister = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
    326c:	e865001c 	lwi	r3, r5, 28
    3270:	ea630008 	lwi	r19, r3, 8
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3274:	30600004 	addik	r3, r0, 4
    3278:	8c731c00 	pcmpne	r3, r19, r3
	if (StatusRegister != XUL_SR_TX_FIFO_EMPTY) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
    327c:	e9e10000 	lwi	r15, r1, 0
    3280:	ea61001c 	lwi	r19, r1, 28
    3284:	b60f0008 	rtsd	r15, 8
    3288:	30210020 	addik	r1, r1, 32

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    328c:	b0000000 	imm	0
    3290:	30a058d8 	addik	r5, r0, 22744
    3294:	b000ffff 	imm	-1
    3298:	b9f4dec4 	brlid	r15, -8508	// 115c <Xil_Assert>
    329c:	30c00072 	addik	r6, r0, 114
	if (StatusRegister != XUL_SR_TX_FIFO_EMPTY) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
    32a0:	e9e10000 	lwi	r15, r1, 0
    32a4:	ea61001c 	lwi	r19, r1, 28

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    32a8:	30600001 	addik	r3, r0, 1
    32ac:	b0000000 	imm	0
    32b0:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    32b4:	10600000 	addk	r3, r0, r0
	if (StatusRegister != XUL_SR_TX_FIFO_EMPTY) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
    32b8:	b60f0008 	rtsd	r15, 8
    32bc:	30210020 	addik	r1, r1, 32
	u32 StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    32c0:	b0000000 	imm	0
    32c4:	30a058d8 	addik	r5, r0, 22744
    32c8:	b000ffff 	imm	-1
    32cc:	b9f4de90 	brlid	r15, -8560	// 115c <Xil_Assert>
    32d0:	30c00071 	addik	r6, r0, 113
    32d4:	30600001 	addik	r3, r0, 1
    32d8:	b0000000 	imm	0
    32dc:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    32e0:	b810ff9c 	brid	-100		// 327c
    32e4:	10730000 	addk	r3, r19, r0

000032e8 <XUartLite_LookupConfig>:
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    32e8:	b0000000 	imm	0
    32ec:	e4605a60 	lhui	r3, r0, 23136	// 5a60 <XUartLite_ConfigTable>
    32f0:	88632800 	xor	r3, r3, r5
    32f4:	be030024 	beqid	r3, 36		// 3318
    32f8:	64630404 	bslli	r3, r3, 4
    32fc:	b0000000 	imm	0
    3300:	e4805a70 	lhui	r4, r0, 23152
    3304:	88a42800 	xor	r5, r4, r5
    3308:	be250018 	bneid	r5, 24		// 3320
    330c:	10600000 	addk	r3, r0, r0
XUartLite_Config *XUartLite_LookupConfig(u16 DeviceId)
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
    3310:	30600001 	addik	r3, r0, 1
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XUartLite_ConfigTable[Index];
    3314:	64630404 	bslli	r3, r3, 4
    3318:	b0000000 	imm	0
    331c:	30635a60 	addik	r3, r3, 23136
			break;
		}
	}

	return CfgPtr;
}
    3320:	b60f0008 	rtsd	r15, 8
    3324:	80000000 	or	r0, r0, r0

00003328 <XUartLite_Initialize>:
*
* @note		None.
*
*****************************************************************************/
int XUartLite_Initialize(XUartLite *InstancePtr, u16 DeviceId)
{
    3328:	3021ffe0 	addik	r1, r1, -32
    332c:	fa61001c 	swi	r19, r1, 28
    3330:	f9e10000 	swi	r15, r1, 0
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3334:	be050070 	beqid	r5, 112		// 33a4
    3338:	12650000 	addk	r19, r5, r0
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    333c:	b0000000 	imm	0
    3340:	e4605a60 	lhui	r3, r0, 23136	// 5a60 <XUartLite_ConfigTable>
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3344:	b0000000 	imm	0
    3348:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    334c:	88633000 	xor	r3, r3, r6
    3350:	be030034 	beqid	r3, 52		// 3384
    3354:	64630404 	bslli	r3, r3, 4
    3358:	b0000000 	imm	0
    335c:	e4805a70 	lhui	r4, r0, 23152
    3360:	88c43000 	xor	r6, r4, r6
    3364:	be060018 	beqid	r6, 24		// 337c
    3368:	30600002 	addik	r3, r0, 2
	if (ConfigPtr == (XUartLite_Config *)NULL) {
		return XST_DEVICE_NOT_FOUND;
	}
	return XUartLite_CfgInitialize(InstancePtr, ConfigPtr,
					ConfigPtr->RegBaseAddr);
}
    336c:	e9e10000 	lwi	r15, r1, 0
    3370:	ea61001c 	lwi	r19, r1, 28
    3374:	b60f0008 	rtsd	r15, 8
    3378:	30210020 	addik	r1, r1, 32
XUartLite_Config *XUartLite_LookupConfig(u16 DeviceId)
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
    337c:	30600001 	addik	r3, r0, 1
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XUartLite_ConfigTable[Index];
    3380:	64630404 	bslli	r3, r3, 4
    3384:	b0000000 	imm	0
    3388:	30c35a60 	addik	r6, r3, 23136
	ConfigPtr = XUartLite_LookupConfig(DeviceId);

	if (ConfigPtr == (XUartLite_Config *)NULL) {
		return XST_DEVICE_NOT_FOUND;
	}
	return XUartLite_CfgInitialize(InstancePtr, ConfigPtr,
    338c:	10b30000 	addk	r5, r19, r0
    3390:	b000ffff 	imm	-1
    3394:	b9f4f8f8 	brlid	r15, -1800	// 2c8c <XUartLite_CfgInitialize>
    3398:	e8e60004 	lwi	r7, r6, 4
    339c:	b810ffd4 	brid	-44		// 3370
    33a0:	e9e10000 	lwi	r15, r1, 0
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    33a4:	b0000000 	imm	0
    33a8:	30a058f0 	addik	r5, r0, 22768
    33ac:	b000ffff 	imm	-1
    33b0:	b9f4ddac 	brlid	r15, -8788	// 115c <Xil_Assert>
    33b4:	30c0008d 	addik	r6, r0, 141
    33b8:	30600001 	addik	r3, r0, 1
    33bc:	b0000000 	imm	0
    33c0:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    33c4:	b810ffa8 	brid	-88		// 336c
    33c8:	10730000 	addk	r3, r19, r0

000033cc <XUartLite_GetStats>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_GetStats(XUartLite *InstancePtr, XUartLite_Stats *StatsPtr)
{
    33cc:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    33d0:	be050094 	beqid	r5, 148		// 3464
    33d4:	f9e10000 	swi	r15, r1, 0
    33d8:	b0000000 	imm	0
    33dc:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(StatsPtr != NULL);
    33e0:	bc0600ac 	beqi	r6, 172		// 348c
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    33e4:	e8650020 	lwi	r3, r5, 32
    33e8:	b0001111 	imm	4369
    33ec:	a8631111 	xori	r3, r3, 4369
    33f0:	bc030030 	beqi	r3, 48		// 3420
    33f4:	b0000000 	imm	0
    33f8:	30a05904 	addik	r5, r0, 22788
    33fc:	b000ffff 	imm	-1
    3400:	b9f4dd5c 	brlid	r15, -8868	// 115c <Xil_Assert>
    3404:	30c0006a 	addik	r6, r0, 106
    3408:	30600001 	addik	r3, r0, 1
    340c:	b0000000 	imm	0
    3410:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	StatsPtr->ReceiveOverrunErrors =
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
}
    3414:	e9e10000 	lwi	r15, r1, 0
    3418:	b60f0008 	rtsd	r15, 8
    341c:	3021001c 	addik	r1, r1, 28
	Xil_AssertVoid(StatsPtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	/* Copy the stats from the instance to the specified stats */

	StatsPtr->TransmitInterrupts = InstancePtr->Stats.TransmitInterrupts;
    3420:	e8650000 	lwi	r3, r5, 0
    3424:	f8660000 	swi	r3, r6, 0
	StatsPtr->ReceiveInterrupts = InstancePtr->Stats.ReceiveInterrupts;
    3428:	e8650004 	lwi	r3, r5, 4
    342c:	f8660004 	swi	r3, r6, 4
	StatsPtr->CharactersTransmitted =
    3430:	e8650008 	lwi	r3, r5, 8
    3434:	f8660008 	swi	r3, r6, 8
			InstancePtr->Stats.CharactersTransmitted;
	StatsPtr->CharactersReceived = InstancePtr->Stats.CharactersReceived;
    3438:	e865000c 	lwi	r3, r5, 12
    343c:	f866000c 	swi	r3, r6, 12
	StatsPtr->ReceiveOverrunErrors =
    3440:	e8650010 	lwi	r3, r5, 16
    3444:	f8660010 	swi	r3, r6, 16
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
    3448:	e8650018 	lwi	r3, r5, 24
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
    344c:	e8a50014 	lwi	r5, r5, 20
	StatsPtr->CharactersTransmitted =
			InstancePtr->Stats.CharactersTransmitted;
	StatsPtr->CharactersReceived = InstancePtr->Stats.CharactersReceived;
	StatsPtr->ReceiveOverrunErrors =
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
    3450:	f8660018 	swi	r3, r6, 24
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
    3454:	f8a60014 	swi	r5, r6, 20
}
    3458:	e9e10000 	lwi	r15, r1, 0
    345c:	b60f0008 	rtsd	r15, 8
    3460:	3021001c 	addik	r1, r1, 28
void XUartLite_GetStats(XUartLite *InstancePtr, XUartLite_Stats *StatsPtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    3464:	b0000000 	imm	0
    3468:	30a05904 	addik	r5, r0, 22788
    346c:	b000ffff 	imm	-1
    3470:	b9f4dcec 	brlid	r15, -8980	// 115c <Xil_Assert>
    3474:	30c00068 	addik	r6, r0, 104
    3478:	30600001 	addik	r3, r0, 1
    347c:	b0000000 	imm	0
    3480:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    3484:	b810ff94 	brid	-108		// 3418
    3488:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(StatsPtr != NULL);
    348c:	b0000000 	imm	0
    3490:	30a05904 	addik	r5, r0, 22788
    3494:	b000ffff 	imm	-1
    3498:	b9f4dcc4 	brlid	r15, -9020	// 115c <Xil_Assert>
    349c:	30c00069 	addik	r6, r0, 105
    34a0:	30600001 	addik	r3, r0, 1
    34a4:	b0000000 	imm	0
    34a8:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    34ac:	b810ff6c 	brid	-148		// 3418
    34b0:	e9e10000 	lwi	r15, r1, 0

000034b4 <XUartLite_ClearStats>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
    34b4:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    34b8:	be050074 	beqid	r5, 116		// 352c
    34bc:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    34c0:	e8650020 	lwi	r3, r5, 32
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    34c4:	b0000000 	imm	0
    34c8:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    34cc:	b0001111 	imm	4369
    34d0:	a8631111 	xori	r3, r3, 4369
    34d4:	bc030030 	beqi	r3, 48		// 3504
    34d8:	b0000000 	imm	0
    34dc:	30a05904 	addik	r5, r0, 22788
    34e0:	b000ffff 	imm	-1
    34e4:	b9f4dc78 	brlid	r15, -9096	// 115c <Xil_Assert>
    34e8:	30c0008c 	addik	r6, r0, 140
    34ec:	30600001 	addik	r3, r0, 1
    34f0:	b0000000 	imm	0
    34f4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	InstancePtr->Stats.CharactersReceived = 0;
	InstancePtr->Stats.ReceiveOverrunErrors = 0;
	InstancePtr->Stats.ReceiveFramingErrors = 0;
	InstancePtr->Stats.ReceiveParityErrors = 0;

}
    34f8:	e9e10000 	lwi	r15, r1, 0
    34fc:	b60f0008 	rtsd	r15, 8
    3500:	3021001c 	addik	r1, r1, 28
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	InstancePtr->Stats.TransmitInterrupts = 0;
    3504:	f8650000 	swi	r3, r5, 0
	InstancePtr->Stats.ReceiveInterrupts = 0;
    3508:	f8650004 	swi	r3, r5, 4
	InstancePtr->Stats.CharactersTransmitted = 0;
    350c:	f8650008 	swi	r3, r5, 8
	InstancePtr->Stats.CharactersReceived = 0;
    3510:	f865000c 	swi	r3, r5, 12
	InstancePtr->Stats.ReceiveOverrunErrors = 0;
    3514:	f8650010 	swi	r3, r5, 16
	InstancePtr->Stats.ReceiveFramingErrors = 0;
    3518:	f8650018 	swi	r3, r5, 24
	InstancePtr->Stats.ReceiveParityErrors = 0;
    351c:	f8650014 	swi	r3, r5, 20

}
    3520:	e9e10000 	lwi	r15, r1, 0
    3524:	b60f0008 	rtsd	r15, 8
    3528:	3021001c 	addik	r1, r1, 28
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    352c:	b0000000 	imm	0
    3530:	30a05904 	addik	r5, r0, 22788
    3534:	b000ffff 	imm	-1
    3538:	b9f4dc24 	brlid	r15, -9180	// 115c <Xil_Assert>
    353c:	30c0008b 	addik	r6, r0, 139
    3540:	30600001 	addik	r3, r0, 1
    3544:	b0000000 	imm	0
    3548:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
    354c:	b810ffb0 	brid	-80		// 34fc
    3550:	e9e10000 	lwi	r15, r1, 0

00003554 <XIntc_VoidInterruptHandler>:
* to be included in the driver compilation.
*
******************************************************************************/
#ifdef XPAR_INTC_SINGLE_DEVICE_ID
void XIntc_VoidInterruptHandler(void)
{
    3554:	3021ffe4 	addik	r1, r1, -28
    3558:	f9e10000 	swi	r15, r1, 0
	/* Use the single instance to call the main interrupt handler */
	XIntc_DeviceInterruptHandler((void *) XPAR_INTC_SINGLE_DEVICE_ID);
    355c:	b000ffff 	imm	-1
    3560:	b9f4cdc8 	brlid	r15, -12856	// 328 <XIntc_DeviceInterruptHandler>
    3564:	10a00000 	addk	r5, r0, r0
}
    3568:	e9e10000 	lwi	r15, r1, 0
    356c:	b60f0008 	rtsd	r15, 8
    3570:	3021001c 	addik	r1, r1, 28

00003574 <XIntc_InterruptHandler>:
*
* @note		None.
*
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
    3574:	3021ffe4 	addik	r1, r1, -28
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    3578:	be05002c 	beqid	r5, 44		// 35a4
    357c:	f9e10000 	swi	r15, r1, 0

	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
    3580:	e8650010 	lwi	r3, r5, 16
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    3584:	b0000000 	imm	0
    3588:	f8005f24 	swi	r0, r0, 24356	// 5f24 <Xil_AssertStatus>

	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
    358c:	b000ffff 	imm	-1
    3590:	b9f4cd98 	brlid	r15, -12904	// 328 <XIntc_DeviceInterruptHandler>
    3594:	e4a30000 	lhui	r5, r3, 0
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    3598:	e9e10000 	lwi	r15, r1, 0
    359c:	b60f0008 	rtsd	r15, 8
    35a0:	3021001c 	addik	r1, r1, 28
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35a4:	b0000000 	imm	0
    35a8:	30a05918 	addik	r5, r0, 22808
    35ac:	b000ffff 	imm	-1
    35b0:	b9f4dbac 	brlid	r15, -9300	// 115c <Xil_Assert>
    35b4:	30c000af 	addik	r6, r0, 175
	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    35b8:	e9e10000 	lwi	r15, r1, 0
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35bc:	30600001 	addik	r3, r0, 1
    35c0:	b0000000 	imm	0
    35c4:	f8605f24 	swi	r3, r0, 24356	// 5f24 <Xil_AssertStatus>
	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    35c8:	b60f0008 	rtsd	r15, 8
    35cc:	3021001c 	addik	r1, r1, 28

000035d0 <microblaze_disable_dcache>:
	.globl	microblaze_disable_dcache
	.ent	microblaze_disable_dcache
	.align	2
microblaze_disable_dcache:

        addik   r1, r1, -28
    35d0:	3021ffe4 	addik	r1, r1, -28
#if XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK != 0
        swi     r15, r1, 0
        brlid   r15, microblaze_flush_dcache
        nop
#endif
    	mfs	r11, rmsr
    35d4:	95608001 	mfs	r11, rmsr
	andi	r11, r11, ~128
    35d8:	a56bff7f 	andi	r11, r11, -129
	mts	rmsr, r11
    35dc:	940bc001 	mts	rmsr, r11

#if XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK != 0   
        lwi     r15, r1, 0
#endif

	rtsd	r15, 8
    35e0:	b60f0008 	rtsd	r15, 8
	addi	r1, r1, 28
    35e4:	2021001c 	addi	r1, r1, 28

000035e8 <microblaze_disable_icache>:
	.globl	microblaze_disable_icache
	.ent	microblaze_disable_icache
	.align	2
microblaze_disable_icache:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    35e8:	2021fffc 	addi	r1, r1, -4
	#Read the MSR register
	mfs	r8, rmsr
    35ec:	95008001 	mfs	r8, rmsr
	#Clear the icache enable bit
	andi	r8, r8, ~32
    35f0:	a508ffdf 	andi	r8, r8, -33
	#Save the MSR register
	mts	rmsr, r8
    35f4:	9408c001 	mts	rmsr, r8
	#Return
	rtsd	r15, 8
    35f8:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    35fc:	20210004 	addi	r1, r1, 4

00003600 <microblaze_disable_interrupts>:
	.globl	microblaze_disable_interrupts
	.ent	microblaze_disable_interrupts
	.align	2
microblaze_disable_interrupts:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    3600:	2021fffc 	addi	r1, r1, -4
	#Save register r12
	swi	r12, r1, 0
    3604:	f9810000 	swi	r12, r1, 0
	#Read the MSR register
	mfs	r12, rmsr
    3608:	95808001 	mfs	r12, rmsr
	#Clear the interrupt enable bit
	andi	r12, r12, ~2
    360c:	a58cfffd 	andi	r12, r12, -3
	#Save the MSR register
	mts	rmsr, r12
    3610:	940cc001 	mts	rmsr, r12
	#Load register r12
	lwi	r12, r1, 0
    3614:	e9810000 	lwi	r12, r1, 0
	#Return
	rtsd	r15, 8
    3618:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    361c:	20210004 	addi	r1, r1, 4

00003620 <microblaze_enable_interrupts>:
	.globl	microblaze_enable_interrupts
	.ent	microblaze_enable_interrupts
	.align	2
microblaze_enable_interrupts:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    3620:	2021fffc 	addi	r1, r1, -4
	#Save register r12
	swi	r12, r1, 0
    3624:	f9810000 	swi	r12, r1, 0
	#Read the MSR register
	mfs	r12, rmsr
    3628:	95808001 	mfs	r12, rmsr
	#Set the interrupt enable bit
	ori	r12, r12, 2
    362c:	a18c0002 	ori	r12, r12, 2
	#Save the MSR register
	mts	rmsr, r12
    3630:	940cc001 	mts	rmsr, r12
	#Load register r12
	lwi	r12, r1, 0
    3634:	e9810000 	lwi	r12, r1, 0
	#Return
	rtsd	r15, 8
    3638:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    363c:	20210004 	addi	r1, r1, 4

00003640 <microblaze_flush_dcache>:
	.ent	microblaze_flush_dcache
	.align	2

microblaze_flush_dcache:

        andi    r5, r5, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3640:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_DCACHE_BYTE_SIZE        /* Compute end */
    3644:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3648:	a4c6fff0 	andi	r6, r6, -16

0000364c <L_start>:
    
L_start:
	wdc.flush r5, r0                                        /* Flush the Cache */
    364c:	90050074 	wdc.flush	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    3650:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    3654:	bc72000c 	blei	r18, 12	// 3660 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    3658:	b810fff4 	brid	-12	// 364c <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_DCACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    365c:	30a50010 	addik	r5, r5, 16

00003660 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    3660:	b60f0008 	rtsd	r15, 8
        nop
    3664:	80000000 	or	r0, r0, r0

00003668 <microblaze_invalidate_dcache>:
	mfs	r9, rmsr                                        
	andi	r10, r9, ~(MICROBLAZE_MSR_DCACHE_ENABLE | MICROBLAZE_MSR_INTR_ENABLE)
	mts	rmsr, r10
#endif
    
        andi    r5, r5, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3668:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_DCACHE_BYTE_SIZE        /* Compute end */
    366c:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3670:	a4c6fff0 	andi	r6, r6, -16

00003674 <L_start>:
    
L_start:
	wdc	r5, r0                                          /* Invalidate the Cache */
    3674:	90050064 	wdc	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    3678:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    367c:	bc72000c 	blei	r18, 12	// 3688 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    3680:	b810fff4 	brid	-12	// 3674 <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_DCACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    3684:	30a50010 	addik	r5, r5, 16

00003688 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    3688:	b60f0008 	rtsd	r15, 8
#ifdef MB_VERSION_LT_v720                                       /* restore MSR only for MB version < v7.20 */
	mts	rmsr, r9
#else
        nop
    368c:	80000000 	or	r0, r0, r0

00003690 <microblaze_invalidate_icache>:
#ifdef MB_VERSION_LT_v720                                       /* Disable Icache and interrupts before invalidating */        
	mfs	r9, rmsr
	andi	r10, r9, ~(MICROBLAZE_MSR_ICACHE_ENABLE | MICROBLAZE_MSR_INTR_ENABLE)
	mts	rmsr, r10
#endif
        andi    r5, r5, -(4 * XPAR_MICROBLAZE_ICACHE_LINE_LEN)  /* Align to cache line */
    3690:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_CACHE_BYTE_SIZE         /* Compute end */
    3694:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_ICACHE_LINE_LEN)  /* Align to cache line */
    3698:	a4c6fff0 	andi	r6, r6, -16

0000369c <L_start>:
    
L_start:
	wic	r5, r0                                          /* Invalidate the Cache */
    369c:	90050068 	wic	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    36a0:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    36a4:	bc72000c 	blei	r18, 12	// 36b0 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    36a8:	b810fff4 	brid	-12	// 369c <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_ICACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    36ac:	30a50010 	addik	r5, r5, 16

000036b0 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    36b0:	b60f0008 	rtsd	r15, 8

#ifdef MB_VERSION_LT_v720                                       /* restore MSR only for MB version < v7.20 */
	mts	rmsr, r9
#else
        nop
    36b4:	80000000 	or	r0, r0, r0

000036b8 <calloc>:
    36b8:	10650000 	addk	r3, r5, r0
    36bc:	10e60000 	addk	r7, r6, r0
    36c0:	b0000000 	imm	0
    36c4:	e8a0596c 	lwi	r5, r0, 22892	// 596c <_impure_ptr>
    36c8:	3021ffe4 	addik	r1, r1, -28
    36cc:	f9e10000 	swi	r15, r1, 0
    36d0:	b0000000 	imm	0
    36d4:	b9f40014 	brlid	r15, 20	// 36e8 <_calloc_r>
    36d8:	10c30000 	addk	r6, r3, r0
    36dc:	e9e10000 	lwi	r15, r1, 0
    36e0:	b60f0008 	rtsd	r15, 8
    36e4:	3021001c 	addik	r1, r1, 28

000036e8 <_calloc_r>:
    36e8:	3021ffe0 	addik	r1, r1, -32
    36ec:	fa61001c 	swi	r19, r1, 28
    36f0:	f9e10000 	swi	r15, r1, 0
    36f4:	b0000000 	imm	0
    36f8:	b9f40110 	brlid	r15, 272	// 3808 <_malloc_r>
    36fc:	40c73000 	mul	r6, r7, r6
    3700:	be030070 	beqid	r3, 112		// 3770
    3704:	12630000 	addk	r19, r3, r0
    3708:	e8e3fffc 	lwi	r7, r3, -4
    370c:	30600024 	addik	r3, r0, 36
    3710:	a4e7fffc 	andi	r7, r7, -4
    3714:	30e7fffc 	addik	r7, r7, -4
    3718:	14671803 	cmpu	r3, r7, r3
    371c:	be430068 	bltid	r3, 104		// 3784
    3720:	30800013 	addik	r4, r0, 19
    3724:	14872003 	cmpu	r4, r7, r4
    3728:	bea4003c 	bgeid	r4, 60		// 3764
    372c:	10730000 	addk	r3, r19, r0
    3730:	3060001b 	addik	r3, r0, 27
    3734:	f8130000 	swi	r0, r19, 0
    3738:	14671803 	cmpu	r3, r7, r3
    373c:	bea3006c 	bgeid	r3, 108		// 37a8
    3740:	f8130004 	swi	r0, r19, 4
    3744:	f8130008 	swi	r0, r19, 8
    3748:	f813000c 	swi	r0, r19, 12
    374c:	a8e70024 	xori	r7, r7, 36
    3750:	be270014 	bneid	r7, 20		// 3764
    3754:	30730010 	addik	r3, r19, 16
    3758:	f8f30010 	swi	r7, r19, 16
    375c:	f8f30014 	swi	r7, r19, 20
    3760:	30730018 	addik	r3, r19, 24
    3764:	f8030000 	swi	r0, r3, 0
    3768:	f8030004 	swi	r0, r3, 4
    376c:	f8030008 	swi	r0, r3, 8
    3770:	10730000 	addk	r3, r19, r0
    3774:	e9e10000 	lwi	r15, r1, 0
    3778:	ea61001c 	lwi	r19, r1, 28
    377c:	b60f0008 	rtsd	r15, 8
    3780:	30210020 	addik	r1, r1, 32
    3784:	10b30000 	addk	r5, r19, r0
    3788:	b0000000 	imm	0
    378c:	b9f40cf4 	brlid	r15, 3316	// 4480 <memset>
    3790:	10c00000 	addk	r6, r0, r0
    3794:	10730000 	addk	r3, r19, r0
    3798:	e9e10000 	lwi	r15, r1, 0
    379c:	ea61001c 	lwi	r19, r1, 28
    37a0:	b60f0008 	rtsd	r15, 8
    37a4:	30210020 	addik	r1, r1, 32
    37a8:	b810ffbc 	brid	-68		// 3764
    37ac:	30730008 	addik	r3, r19, 8

000037b0 <malloc>:
    37b0:	10c50000 	addk	r6, r5, r0
    37b4:	b0000000 	imm	0
    37b8:	e8a0596c 	lwi	r5, r0, 22892	// 596c <_impure_ptr>
    37bc:	3021ffe4 	addik	r1, r1, -28
    37c0:	f9e10000 	swi	r15, r1, 0
    37c4:	b0000000 	imm	0
    37c8:	b9f40040 	brlid	r15, 64	// 3808 <_malloc_r>
    37cc:	80000000 	or	r0, r0, r0
    37d0:	e9e10000 	lwi	r15, r1, 0
    37d4:	b60f0008 	rtsd	r15, 8
    37d8:	3021001c 	addik	r1, r1, 28

000037dc <free>:
    37dc:	10c50000 	addk	r6, r5, r0
    37e0:	b0000000 	imm	0
    37e4:	e8a0596c 	lwi	r5, r0, 22892	// 596c <_impure_ptr>
    37e8:	3021ffe4 	addik	r1, r1, -28
    37ec:	f9e10000 	swi	r15, r1, 0
    37f0:	b0000000 	imm	0
    37f4:	b9f416d4 	brlid	r15, 5844	// 4ec8 <_free_r>
    37f8:	80000000 	or	r0, r0, r0
    37fc:	e9e10000 	lwi	r15, r1, 0
    3800:	b60f0008 	rtsd	r15, 8
    3804:	3021001c 	addik	r1, r1, 28

00003808 <_malloc_r>:
    3808:	3021ffcc 	addik	r1, r1, -52
    380c:	fac10020 	swi	r22, r1, 32
    3810:	30600016 	addik	r3, r0, 22
    3814:	32c6000b 	addik	r22, r6, 11
    3818:	fae10024 	swi	r23, r1, 36
    381c:	f9e10000 	swi	r15, r1, 0
    3820:	fa61001c 	swi	r19, r1, 28
    3824:	fb010028 	swi	r24, r1, 40
    3828:	fb21002c 	swi	r25, r1, 44
    382c:	fb410030 	swi	r26, r1, 48
    3830:	14761803 	cmpu	r3, r22, r3
    3834:	bea300b0 	bgeid	r3, 176		// 38e4
    3838:	12e50000 	addk	r23, r5, r0
    383c:	a6d6fff8 	andi	r22, r22, -8
    3840:	14c6b003 	cmpu	r6, r6, r22
    3844:	be4600b0 	bltid	r6, 176		// 38f4
    3848:	6476001f 	bsrli	r3, r22, 31
    384c:	be2300ac 	bneid	r3, 172		// 38f8
    3850:	3060000c 	addik	r3, r0, 12
    3854:	b0000000 	imm	0
    3858:	b9f40e0c 	brlid	r15, 3596	// 4664 <__malloc_lock>
    385c:	10b70000 	addk	r5, r23, r0
    3860:	306001f7 	addik	r3, r0, 503
    3864:	14761803 	cmpu	r3, r22, r3
    3868:	be43009c 	bltid	r3, 156		// 3904
    386c:	65160009 	bsrli	r8, r22, 9
    3870:	b0000000 	imm	0
    3874:	30765a88 	addik	r3, r22, 23176
    3878:	ea63000c 	lwi	r19, r3, 12
    387c:	88731800 	xor	r3, r19, r3
    3880:	be0304f8 	beqid	r3, 1272		// 3d78
    3884:	64d60003 	bsrli	r6, r22, 3
    3888:	e8730004 	lwi	r3, r19, 4
    388c:	e893000c 	lwi	r4, r19, 12
    3890:	e8f30008 	lwi	r7, r19, 8
    3894:	a463fffc 	andi	r3, r3, -4
    3898:	10731800 	addk	r3, r19, r3
    389c:	e8c30004 	lwi	r6, r3, 4
    38a0:	f887000c 	swi	r4, r7, 12
    38a4:	10b70000 	addk	r5, r23, r0
    38a8:	a0c60001 	ori	r6, r6, 1
    38ac:	f8e40008 	swi	r7, r4, 8
    38b0:	b0000000 	imm	0
    38b4:	b9f40db8 	brlid	r15, 3512	// 466c <__malloc_unlock>
    38b8:	f8c30004 	swi	r6, r3, 4
    38bc:	30730008 	addik	r3, r19, 8
    38c0:	e9e10000 	lwi	r15, r1, 0
    38c4:	ea61001c 	lwi	r19, r1, 28
    38c8:	eac10020 	lwi	r22, r1, 32
    38cc:	eae10024 	lwi	r23, r1, 36
    38d0:	eb010028 	lwi	r24, r1, 40
    38d4:	eb21002c 	lwi	r25, r1, 44
    38d8:	eb410030 	lwi	r26, r1, 48
    38dc:	b60f0008 	rtsd	r15, 8
    38e0:	30210034 	addik	r1, r1, 52
    38e4:	32c00010 	addik	r22, r0, 16	// 10 <_vector_interrupt>
    38e8:	14c6b003 	cmpu	r6, r6, r22
    38ec:	bea6ff60 	bgeid	r6, -160		// 384c
    38f0:	10600000 	addk	r3, r0, r0
    38f4:	3060000c 	addik	r3, r0, 12
    38f8:	f8770000 	swi	r3, r23, 0
    38fc:	b810ffc4 	brid	-60		// 38c0
    3900:	10600000 	addk	r3, r0, r0
    3904:	be08020c 	beqid	r8, 524		// 3b10
    3908:	30600004 	addik	r3, r0, 4
    390c:	14681803 	cmpu	r3, r8, r3
    3910:	be430318 	bltid	r3, 792		// 3c28
    3914:	30600014 	addik	r3, r0, 20
    3918:	65160006 	bsrli	r8, r22, 6
    391c:	31080038 	addik	r8, r8, 56
    3920:	64e80403 	bslli	r7, r8, 3
    3924:	b0000000 	imm	0
    3928:	30e75a88 	addik	r7, r7, 23176
    392c:	ea67000c 	lwi	r19, r7, 12
    3930:	88679800 	xor	r3, r7, r19
    3934:	be030054 	beqid	r3, 84		// 3988
    3938:	30c80001 	addik	r6, r8, 1
    393c:	e8730004 	lwi	r3, r19, 4
    3940:	30a0000f 	addik	r5, r0, 15
    3944:	a463fffc 	andi	r3, r3, -4
    3948:	14961800 	rsubk	r4, r22, r3
    394c:	14c42801 	cmp	r6, r4, r5
    3950:	bc460030 	blti	r6, 48		// 3980
    3954:	bea401c8 	bgeid	r4, 456		// 3b1c
    3958:	10731800 	addk	r3, r19, r3
    395c:	ea73000c 	lwi	r19, r19, 12
    3960:	88679800 	xor	r3, r7, r19
    3964:	be030024 	beqid	r3, 36		// 3988
    3968:	30c80001 	addik	r6, r8, 1
    396c:	e8730004 	lwi	r3, r19, 4
    3970:	a463fffc 	andi	r3, r3, -4
    3974:	14961800 	rsubk	r4, r22, r3
    3978:	14c42801 	cmp	r6, r4, r5
    397c:	bca6ffd8 	bgei	r6, -40		// 3954
    3980:	3108ffff 	addik	r8, r8, -1
    3984:	30c80001 	addik	r6, r8, 1
    3988:	b0000000 	imm	0
    398c:	30e05a98 	addik	r7, r0, 23192
    3990:	b0000000 	imm	0
    3994:	ea605a98 	lwi	r19, r0, 23192
    3998:	3087fff8 	addik	r4, r7, -8
    399c:	88732000 	xor	r3, r19, r4
    39a0:	be030374 	beqid	r3, 884		// 3d14
    39a4:	30a0000f 	addik	r5, r0, 15
    39a8:	e8730004 	lwi	r3, r19, 4
    39ac:	a463fffc 	andi	r3, r3, -4
    39b0:	15161800 	rsubk	r8, r22, r3
    39b4:	14a82801 	cmp	r5, r8, r5
    39b8:	bc45031c 	blti	r5, 796		// 3cd4
    39bc:	f8870004 	swi	r4, r7, 4
    39c0:	b0000000 	imm	0
    39c4:	f8805a98 	swi	r4, r0, 23192
    39c8:	bea80184 	bgeid	r8, 388		// 3b4c
    39cc:	308001ff 	addik	r4, r0, 511
    39d0:	14832003 	cmpu	r4, r3, r4
    39d4:	be44027c 	bltid	r4, 636		// 3c50
    39d8:	64830009 	bsrli	r4, r3, 9
    39dc:	64630003 	bsrli	r3, r3, 3
    39e0:	64830403 	bslli	r4, r3, 3
    39e4:	64630202 	bsrai	r3, r3, 2
    39e8:	b0000000 	imm	0
    39ec:	30845a88 	addik	r4, r4, 23176
    39f0:	31200001 	addik	r9, r0, 1
    39f4:	e8a40008 	lwi	r5, r4, 8
    39f8:	44691c00 	bsll	r3, r9, r3
    39fc:	b0000000 	imm	0
    3a00:	e9205a8c 	lwi	r9, r0, 23180
    3a04:	f893000c 	swi	r4, r19, 12
    3a08:	f8b30008 	swi	r5, r19, 8
    3a0c:	81234800 	or	r9, r3, r9
    3a10:	f927fff4 	swi	r9, r7, -12
    3a14:	fa640008 	swi	r19, r4, 8
    3a18:	fa65000c 	swi	r19, r5, 12
    3a1c:	64660202 	bsrai	r3, r6, 2
    3a20:	30800001 	addik	r4, r0, 1
    3a24:	44841c00 	bsll	r4, r4, r3
    3a28:	14644803 	cmpu	r3, r4, r9
    3a2c:	be430144 	bltid	r3, 324		// 3b70
    3a30:	84692000 	and	r3, r9, r4
    3a34:	be230030 	bneid	r3, 48		// 3a64
    3a38:	3140000f 	addik	r10, r0, 15
    3a3c:	10842000 	addk	r4, r4, r4
    3a40:	a4c6fffc 	andi	r6, r6, -4
    3a44:	84692000 	and	r3, r9, r4
    3a48:	be23001c 	bneid	r3, 28		// 3a64
    3a4c:	30c60004 	addik	r6, r6, 4
    3a50:	10842000 	addk	r4, r4, r4
    3a54:	84644800 	and	r3, r4, r9
    3a58:	be03fff8 	beqid	r3, -8		// 3a50
    3a5c:	30c60004 	addik	r6, r6, 4
    3a60:	3140000f 	addik	r10, r0, 15
    3a64:	65860403 	bslli	r12, r6, 3
    3a68:	b0000000 	imm	0
    3a6c:	318c5a88 	addik	r12, r12, 23176
    3a70:	10ec0000 	addk	r7, r12, r0
    3a74:	11660000 	addk	r11, r6, r0
    3a78:	ea67000c 	lwi	r19, r7, 12
    3a7c:	88679800 	xor	r3, r7, r19
    3a80:	bc230020 	bnei	r3, 32		// 3aa0
    3a84:	b81002a4 	brid	676		// 3d28
    3a88:	316b0001 	addik	r11, r11, 1
    3a8c:	bea30308 	bgeid	r3, 776		// 3d94
    3a90:	10732800 	addk	r3, r19, r5
    3a94:	ea73000c 	lwi	r19, r19, 12
    3a98:	88679800 	xor	r3, r7, r19
    3a9c:	bc030288 	beqi	r3, 648		// 3d24
    3aa0:	e8b30004 	lwi	r5, r19, 4
    3aa4:	a4a5fffc 	andi	r5, r5, -4
    3aa8:	14762800 	rsubk	r3, r22, r5
    3aac:	15035001 	cmp	r8, r3, r10
    3ab0:	bca8ffdc 	bgei	r8, -36		// 3a8c
    3ab4:	e8b3000c 	lwi	r5, r19, 12
    3ab8:	e8d30008 	lwi	r6, r19, 8
    3abc:	1093b000 	addk	r4, r19, r22
    3ac0:	a2d60001 	ori	r22, r22, 1
    3ac4:	f8a6000c 	swi	r5, r6, 12
    3ac8:	f8c50008 	swi	r6, r5, 8
    3acc:	b0000000 	imm	0
    3ad0:	30a05a90 	addik	r5, r0, 23184
    3ad4:	b0000000 	imm	0
    3ad8:	f8805a9c 	swi	r4, r0, 23196
    3adc:	b0000000 	imm	0
    3ae0:	f8805a98 	swi	r4, r0, 23192
    3ae4:	f8a4000c 	swi	r5, r4, 12
    3ae8:	f8a40008 	swi	r5, r4, 8
    3aec:	10b70000 	addk	r5, r23, r0
    3af0:	a0c30001 	ori	r6, r3, 1
    3af4:	fad30004 	swi	r22, r19, 4
    3af8:	d8632000 	sw	r3, r3, r4
    3afc:	b0000000 	imm	0
    3b00:	b9f40b6c 	brlid	r15, 2924	// 466c <__malloc_unlock>
    3b04:	f8c40004 	swi	r6, r4, 4
    3b08:	b810fdb8 	brid	-584		// 38c0
    3b0c:	30730008 	addik	r3, r19, 8
    3b10:	65160003 	bsrli	r8, r22, 3
    3b14:	b810fe10 	brid	-496		// 3924
    3b18:	64e80403 	bslli	r7, r8, 3
    3b1c:	e893000c 	lwi	r4, r19, 12
    3b20:	e8f30008 	lwi	r7, r19, 8
    3b24:	e8c30004 	lwi	r6, r3, 4
    3b28:	10b70000 	addk	r5, r23, r0
    3b2c:	f887000c 	swi	r4, r7, 12
    3b30:	a0c60001 	ori	r6, r6, 1
    3b34:	f8e40008 	swi	r7, r4, 8
    3b38:	b0000000 	imm	0
    3b3c:	b9f40b30 	brlid	r15, 2864	// 466c <__malloc_unlock>
    3b40:	f8c30004 	swi	r6, r3, 4
    3b44:	b810fd7c 	brid	-644		// 38c0
    3b48:	30730008 	addik	r3, r19, 8
    3b4c:	10731800 	addk	r3, r19, r3
    3b50:	e8830004 	lwi	r4, r3, 4
    3b54:	10b70000 	addk	r5, r23, r0
    3b58:	a0840001 	ori	r4, r4, 1
    3b5c:	b0000000 	imm	0
    3b60:	b9f40b0c 	brlid	r15, 2828	// 466c <__malloc_unlock>
    3b64:	f8830004 	swi	r4, r3, 4
    3b68:	b810fd58 	brid	-680		// 38c0
    3b6c:	30730008 	addik	r3, r19, 8
    3b70:	b0000000 	imm	0
    3b74:	ea605a90 	lwi	r19, r0, 23184
    3b78:	3080000f 	addik	r4, r0, 15
    3b7c:	eb330004 	lwi	r25, r19, 4
    3b80:	a739fffc 	andi	r25, r25, -4
    3b84:	1476c800 	rsubk	r3, r22, r25
    3b88:	14832001 	cmp	r4, r3, r4
    3b8c:	be4403c8 	bltid	r4, 968		// 3f54
    3b90:	1496c803 	cmpu	r4, r22, r25
    3b94:	b0000000 	imm	0
    3b98:	e8605a80 	lwi	r3, r0, 23168	// 5a80 <__malloc_sbrk_base>
    3b9c:	b0000000 	imm	0
    3ba0:	eb405f10 	lwi	r26, r0, 24336	// 5f10 <__malloc_top_pad>
    3ba4:	a863ffff 	xori	r3, r3, -1
    3ba8:	be030234 	beqid	r3, 564		// 3ddc
    3bac:	1356d000 	addk	r26, r22, r26
    3bb0:	335a008f 	addik	r26, r26, 143
    3bb4:	a75aff80 	andi	r26, r26, -128
    3bb8:	10b70000 	addk	r5, r23, r0
    3bbc:	b0000000 	imm	0
    3bc0:	b9f41160 	brlid	r15, 4448	// 4d20 <_sbrk_r>
    3bc4:	10da0000 	addk	r6, r26, r0
    3bc8:	13030000 	addk	r24, r3, r0
    3bcc:	a863ffff 	xori	r3, r3, -1
    3bd0:	be030020 	beqid	r3, 32		// 3bf0
    3bd4:	1093c800 	addk	r4, r19, r25
    3bd8:	1464c003 	cmpu	r3, r4, r24
    3bdc:	bca30220 	bgei	r3, 544		// 3dfc
    3be0:	b0000000 	imm	0
    3be4:	30605a88 	addik	r3, r0, 23176	// 5a88 <__malloc_av_>
    3be8:	88731800 	xor	r3, r19, r3
    3bec:	bc030210 	beqi	r3, 528		// 3dfc
    3bf0:	b0000000 	imm	0
    3bf4:	ea605a90 	lwi	r19, r0, 23184
    3bf8:	e8930004 	lwi	r4, r19, 4
    3bfc:	a484fffc 	andi	r4, r4, -4
    3c00:	14762000 	rsubk	r3, r22, r4
    3c04:	30a0000f 	addik	r5, r0, 15
    3c08:	14a32801 	cmp	r5, r3, r5
    3c0c:	be45039c 	bltid	r5, 924		// 3fa8
    3c10:	14962003 	cmpu	r4, r22, r4
    3c14:	b0000000 	imm	0
    3c18:	b9f40a54 	brlid	r15, 2644	// 466c <__malloc_unlock>
    3c1c:	10b70000 	addk	r5, r23, r0
    3c20:	b810fca0 	brid	-864		// 38c0
    3c24:	10600000 	addk	r3, r0, r0
    3c28:	14681803 	cmpu	r3, r8, r3
    3c2c:	bea30198 	bgeid	r3, 408		// 3dc4
    3c30:	30600054 	addik	r3, r0, 84
    3c34:	14681803 	cmpu	r3, r8, r3
    3c38:	be430300 	bltid	r3, 768		// 3f38
    3c3c:	30600154 	addik	r3, r0, 340
    3c40:	6516000c 	bsrli	r8, r22, 12
    3c44:	3108006e 	addik	r8, r8, 110
    3c48:	b810fcdc 	brid	-804		// 3924
    3c4c:	64e80403 	bslli	r7, r8, 3
    3c50:	30a00004 	addik	r5, r0, 4
    3c54:	14a42803 	cmpu	r5, r4, r5
    3c58:	bea50178 	bgeid	r5, 376		// 3dd0
    3c5c:	64a30006 	bsrli	r5, r3, 6
    3c60:	30a00014 	addik	r5, r0, 20
    3c64:	14a42803 	cmpu	r5, r4, r5
    3c68:	be450360 	bltid	r5, 864		// 3fc8
    3c6c:	30a00054 	addik	r5, r0, 84
    3c70:	30a4005b 	addik	r5, r4, 91
    3c74:	64e50403 	bslli	r7, r5, 3
    3c78:	b0000000 	imm	0
    3c7c:	30e75a88 	addik	r7, r7, 23176
    3c80:	e8870008 	lwi	r4, r7, 8
    3c84:	89043800 	xor	r8, r4, r7
    3c88:	be28001c 	bneid	r8, 28		// 3ca4
    3c8c:	64a50202 	bsrai	r5, r5, 2
    3c90:	b81002f8 	brid	760		// 3f88
    3c94:	30600001 	addik	r3, r0, 1
    3c98:	e8840008 	lwi	r4, r4, 8
    3c9c:	88a72000 	xor	r5, r7, r4
    3ca0:	bc050014 	beqi	r5, 20		// 3cb4
    3ca4:	e8a40004 	lwi	r5, r4, 4
    3ca8:	a4a5fffc 	andi	r5, r5, -4
    3cac:	14a51803 	cmpu	r5, r5, r3
    3cb0:	bc45ffe8 	blti	r5, -24		// 3c98
    3cb4:	e864000c 	lwi	r3, r4, 12
    3cb8:	b0000000 	imm	0
    3cbc:	e9205a8c 	lwi	r9, r0, 23180
    3cc0:	f873000c 	swi	r3, r19, 12
    3cc4:	f8930008 	swi	r4, r19, 8
    3cc8:	fa630008 	swi	r19, r3, 8
    3ccc:	b810fd50 	brid	-688		// 3a1c
    3cd0:	fa64000c 	swi	r19, r4, 12
    3cd4:	1073b000 	addk	r3, r19, r22
    3cd8:	10b70000 	addk	r5, r23, r0
    3cdc:	a2d60001 	ori	r22, r22, 1
    3ce0:	f8670004 	swi	r3, r7, 4
    3ce4:	b0000000 	imm	0
    3ce8:	f8605a98 	swi	r3, r0, 23192
    3cec:	fad30004 	swi	r22, r19, 4
    3cf0:	a0c80001 	ori	r6, r8, 1
    3cf4:	f883000c 	swi	r4, r3, 12
    3cf8:	f8830008 	swi	r4, r3, 8
    3cfc:	f8c30004 	swi	r6, r3, 4
    3d00:	b0000000 	imm	0
    3d04:	b9f40968 	brlid	r15, 2408	// 466c <__malloc_unlock>
    3d08:	d9081800 	sw	r8, r8, r3
    3d0c:	b810fbb4 	brid	-1100		// 38c0
    3d10:	30730008 	addik	r3, r19, 8
    3d14:	b0000000 	imm	0
    3d18:	e9205a8c 	lwi	r9, r0, 23180
    3d1c:	b810fd04 	brid	-764		// 3a20
    3d20:	64660202 	bsrai	r3, r6, 2
    3d24:	316b0001 	addik	r11, r11, 1
    3d28:	a46b0003 	andi	r3, r11, 3
    3d2c:	be23fd4c 	bneid	r3, -692		// 3a78
    3d30:	30e70008 	addik	r7, r7, 8
    3d34:	106c0000 	addk	r3, r12, r0
    3d38:	a4e60003 	andi	r7, r6, 3
    3d3c:	be070358 	beqid	r7, 856		// 4094
    3d40:	30a3fff8 	addik	r5, r3, -8
    3d44:	e8630000 	lwi	r3, r3, 0
    3d48:	88a32800 	xor	r5, r3, r5
    3d4c:	be05ffec 	beqid	r5, -20		// 3d38
    3d50:	30c6ffff 	addik	r6, r6, -1
    3d54:	10842000 	addk	r4, r4, r4
    3d58:	14644803 	cmpu	r3, r4, r9
    3d5c:	bc43fe14 	blti	r3, -492		// 3b70
    3d60:	be04fe10 	beqid	r4, -496		// 3b70
    3d64:	84692000 	and	r3, r9, r4
    3d68:	be03007c 	beqid	r3, 124		// 3de4
    3d6c:	10cb0000 	addk	r6, r11, r0
    3d70:	b810fcf8 	brid	-776		// 3a68
    3d74:	65860403 	bslli	r12, r6, 3
    3d78:	30730008 	addik	r3, r19, 8
    3d7c:	ea730014 	lwi	r19, r19, 20
    3d80:	88639800 	xor	r3, r3, r19
    3d84:	be03fc04 	beqid	r3, -1020		// 3988
    3d88:	30c60002 	addik	r6, r6, 2
    3d8c:	b810fb00 	brid	-1280		// 388c
    3d90:	e8730004 	lwi	r3, r19, 4
    3d94:	e8e30004 	lwi	r7, r3, 4
    3d98:	e893000c 	lwi	r4, r19, 12
    3d9c:	e8d30008 	lwi	r6, r19, 8
    3da0:	10b70000 	addk	r5, r23, r0
    3da4:	a0e70001 	ori	r7, r7, 1
    3da8:	f8e30004 	swi	r7, r3, 4
    3dac:	f886000c 	swi	r4, r6, 12
    3db0:	b0000000 	imm	0
    3db4:	b9f408b8 	brlid	r15, 2232	// 466c <__malloc_unlock>
    3db8:	f8c40008 	swi	r6, r4, 8
    3dbc:	b810fb04 	brid	-1276		// 38c0
    3dc0:	30730008 	addik	r3, r19, 8
    3dc4:	3108005b 	addik	r8, r8, 91
    3dc8:	b810fb5c 	brid	-1188		// 3924
    3dcc:	64e80403 	bslli	r7, r8, 3
    3dd0:	30a50038 	addik	r5, r5, 56
    3dd4:	b810fea4 	brid	-348		// 3c78
    3dd8:	64e50403 	bslli	r7, r5, 3
    3ddc:	b810fddc 	brid	-548		// 3bb8
    3de0:	335a0010 	addik	r26, r26, 16
    3de4:	10842000 	addk	r4, r4, r4
    3de8:	84644800 	and	r3, r4, r9
    3dec:	be03fff8 	beqid	r3, -8		// 3de4
    3df0:	316b0004 	addik	r11, r11, 4
    3df4:	b810fc70 	brid	-912		// 3a64
    3df8:	10cb0000 	addk	r6, r11, r0
    3dfc:	b0000000 	imm	0
    3e00:	e8605ee0 	lwi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    3e04:	88a4c000 	xor	r5, r4, r24
    3e08:	107a1800 	addk	r3, r26, r3
    3e0c:	b0000000 	imm	0
    3e10:	f8605ee0 	swi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    3e14:	be050208 	beqid	r5, 520		// 401c
    3e18:	a4a4007f 	andi	r5, r4, 127
    3e1c:	b0000000 	imm	0
    3e20:	e8a05a80 	lwi	r5, r0, 23168	// 5a80 <__malloc_sbrk_base>
    3e24:	a8a5ffff 	xori	r5, r5, -1
    3e28:	be050240 	beqid	r5, 576		// 4068
    3e2c:	1484c000 	rsubk	r4, r4, r24
    3e30:	10632000 	addk	r3, r3, r4
    3e34:	b0000000 	imm	0
    3e38:	f8605ee0 	swi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    3e3c:	a4780007 	andi	r3, r24, 7
    3e40:	be03001c 	beqid	r3, 28		// 3e5c
    3e44:	30800080 	addik	r4, r0, 128	// 80 <_exit>
    3e48:	30e00008 	addik	r7, r0, 8	// 8 <_vector_sw_exception>
    3e4c:	14833800 	rsubk	r4, r3, r7
    3e50:	30a00088 	addik	r5, r0, 136
    3e54:	13182000 	addk	r24, r24, r4
    3e58:	14832800 	rsubk	r4, r3, r5
    3e5c:	1358d000 	addk	r26, r24, r26
    3e60:	a75a007f 	andi	r26, r26, 127
    3e64:	175a2000 	rsubk	r26, r26, r4
    3e68:	10b70000 	addk	r5, r23, r0
    3e6c:	b0000000 	imm	0
    3e70:	b9f40eb0 	brlid	r15, 3760	// 4d20 <_sbrk_r>
    3e74:	10da0000 	addk	r6, r26, r0
    3e78:	a883ffff 	xori	r4, r3, -1
    3e7c:	be0401e0 	beqid	r4, 480		// 405c
    3e80:	14781800 	rsubk	r3, r24, r3
    3e84:	1083d000 	addk	r4, r3, r26
    3e88:	a0840001 	ori	r4, r4, 1
    3e8c:	b0000000 	imm	0
    3e90:	e8605ee0 	lwi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    3e94:	f8980004 	swi	r4, r24, 4
    3e98:	b0000000 	imm	0
    3e9c:	30805a88 	addik	r4, r0, 23176	// 5a88 <__malloc_av_>
    3ea0:	107a1800 	addk	r3, r26, r3
    3ea4:	b0000000 	imm	0
    3ea8:	fb005a90 	swi	r24, r0, 23184
    3eac:	b0000000 	imm	0
    3eb0:	f8605ee0 	swi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    3eb4:	88932000 	xor	r4, r19, r4
    3eb8:	be040040 	beqid	r4, 64		// 3ef8
    3ebc:	30a0000f 	addik	r5, r0, 15
    3ec0:	14992803 	cmpu	r4, r25, r5
    3ec4:	bea4011c 	bgeid	r4, 284		// 3fe0
    3ec8:	30e00005 	addik	r7, r0, 5
    3ecc:	e8d30004 	lwi	r6, r19, 4
    3ed0:	3099fff4 	addik	r4, r25, -12
    3ed4:	a484fff8 	andi	r4, r4, -8
    3ed8:	a4c60001 	andi	r6, r6, 1
    3edc:	80c43000 	or	r6, r4, r6
    3ee0:	f8d30004 	swi	r6, r19, 4
    3ee4:	10d32000 	addk	r6, r19, r4
    3ee8:	f8e60004 	swi	r7, r6, 4
    3eec:	14842803 	cmpu	r4, r4, r5
    3ef0:	be440148 	bltid	r4, 328		// 4038
    3ef4:	f8e60008 	swi	r7, r6, 8
    3ef8:	b0000000 	imm	0
    3efc:	e8805f0c 	lwi	r4, r0, 24332	// 5f0c <__malloc_max_sbrked_mem>
    3f00:	14832003 	cmpu	r4, r3, r4
    3f04:	bca4000c 	bgei	r4, 12		// 3f10
    3f08:	b0000000 	imm	0
    3f0c:	f8605f0c 	swi	r3, r0, 24332	// 5f0c <__malloc_max_sbrked_mem>
    3f10:	b0000000 	imm	0
    3f14:	e8805f08 	lwi	r4, r0, 24328	// 5f08 <__malloc_max_total_mem>
    3f18:	14832003 	cmpu	r4, r3, r4
    3f1c:	bea40010 	bgeid	r4, 16		// 3f2c
    3f20:	12780000 	addk	r19, r24, r0
    3f24:	b0000000 	imm	0
    3f28:	f8605f08 	swi	r3, r0, 24328	// 5f08 <__malloc_max_total_mem>
    3f2c:	e8930004 	lwi	r4, r19, 4
    3f30:	b810fcd0 	brid	-816		// 3c00
    3f34:	a484fffc 	andi	r4, r4, -4
    3f38:	14681803 	cmpu	r3, r8, r3
    3f3c:	be430074 	bltid	r3, 116		// 3fb0
    3f40:	30600554 	addik	r3, r0, 1364
    3f44:	6516000f 	bsrli	r8, r22, 15
    3f48:	31080077 	addik	r8, r8, 119
    3f4c:	b810f9d8 	brid	-1576		// 3924
    3f50:	64e80403 	bslli	r7, r8, 3
    3f54:	bc44fc40 	blti	r4, -960		// 3b94
    3f58:	a0960001 	ori	r4, r22, 1
    3f5c:	a0630001 	ori	r3, r3, 1
    3f60:	f8930004 	swi	r4, r19, 4
    3f64:	12d3b000 	addk	r22, r19, r22
    3f68:	f8760004 	swi	r3, r22, 4
    3f6c:	b0000000 	imm	0
    3f70:	fac05a90 	swi	r22, r0, 23184
    3f74:	b0000000 	imm	0
    3f78:	b9f406f4 	brlid	r15, 1780	// 466c <__malloc_unlock>
    3f7c:	10b70000 	addk	r5, r23, r0
    3f80:	b810f940 	brid	-1728		// 38c0
    3f84:	30730008 	addik	r3, r19, 8
    3f88:	b0000000 	imm	0
    3f8c:	e9205a8c 	lwi	r9, r0, 23180
    3f90:	44632c00 	bsll	r3, r3, r5
    3f94:	81234800 	or	r9, r3, r9
    3f98:	b0000000 	imm	0
    3f9c:	f9205a8c 	swi	r9, r0, 23180
    3fa0:	b810fd20 	brid	-736		// 3cc0
    3fa4:	10640000 	addk	r3, r4, r0
    3fa8:	bca4ffb0 	bgei	r4, -80		// 3f58
    3fac:	b800fc68 	bri	-920		// 3c14
    3fb0:	15081803 	cmpu	r8, r8, r3
    3fb4:	bc480040 	blti	r8, 64		// 3ff4
    3fb8:	65160012 	bsrli	r8, r22, 18
    3fbc:	3108007c 	addik	r8, r8, 124
    3fc0:	b810f964 	brid	-1692		// 3924
    3fc4:	64e80403 	bslli	r7, r8, 3
    3fc8:	14a42803 	cmpu	r5, r4, r5
    3fcc:	be450034 	bltid	r5, 52		// 4000
    3fd0:	64a3000c 	bsrli	r5, r3, 12
    3fd4:	30a5006e 	addik	r5, r5, 110
    3fd8:	b810fca0 	brid	-864		// 3c78
    3fdc:	64e50403 	bslli	r7, r5, 3
    3fe0:	30e00001 	addik	r7, r0, 1
    3fe4:	f8f80004 	swi	r7, r24, 4
    3fe8:	12780000 	addk	r19, r24, r0
    3fec:	b810fc14 	brid	-1004		// 3c00
    3ff0:	10800000 	addk	r4, r0, r0
    3ff4:	30e003f0 	addik	r7, r0, 1008
    3ff8:	b810f92c 	brid	-1748		// 3924
    3ffc:	3100007e 	addik	r8, r0, 126
    4000:	30a00154 	addik	r5, r0, 340
    4004:	14a42803 	cmpu	r5, r4, r5
    4008:	be450070 	bltid	r5, 112		// 4078
    400c:	64a3000f 	bsrli	r5, r3, 15
    4010:	30a50077 	addik	r5, r5, 119
    4014:	b810fc64 	brid	-924		// 3c78
    4018:	64e50403 	bslli	r7, r5, 3
    401c:	bc25fe00 	bnei	r5, -512		// 3e1c
    4020:	b0000000 	imm	0
    4024:	eb005a90 	lwi	r24, r0, 23184
    4028:	109ac800 	addk	r4, r26, r25
    402c:	a0840001 	ori	r4, r4, 1
    4030:	b810fec8 	brid	-312		// 3ef8
    4034:	f8980004 	swi	r4, r24, 4
    4038:	10b70000 	addk	r5, r23, r0
    403c:	b0000000 	imm	0
    4040:	b9f40e88 	brlid	r15, 3720	// 4ec8 <_free_r>
    4044:	30d30008 	addik	r6, r19, 8
    4048:	b0000000 	imm	0
    404c:	e8605ee0 	lwi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    4050:	b0000000 	imm	0
    4054:	eb005a90 	lwi	r24, r0, 23184
    4058:	b800fea0 	bri	-352		// 3ef8
    405c:	13440000 	addk	r26, r4, r0
    4060:	b810fe2c 	brid	-468		// 3e8c
    4064:	30800001 	addik	r4, r0, 1
    4068:	b0000000 	imm	0
    406c:	fb005a80 	swi	r24, r0, 23168	// 5a80 <__malloc_sbrk_base>
    4070:	b810fdd0 	brid	-560		// 3e40
    4074:	a4780007 	andi	r3, r24, 7
    4078:	30a00554 	addik	r5, r0, 1364
    407c:	14842803 	cmpu	r4, r4, r5
    4080:	bc44002c 	blti	r4, 44		// 40ac
    4084:	64a30012 	bsrli	r5, r3, 18
    4088:	30a5007c 	addik	r5, r5, 124
    408c:	b810fbec 	brid	-1044		// 3c78
    4090:	64e50403 	bslli	r7, r5, 3
    4094:	a864ffff 	xori	r3, r4, -1
    4098:	85291800 	and	r9, r9, r3
    409c:	b0000000 	imm	0
    40a0:	f9205a8c 	swi	r9, r0, 23180
    40a4:	b810fcb4 	brid	-844		// 3d58
    40a8:	10842000 	addk	r4, r4, r4
    40ac:	30e003f0 	addik	r7, r0, 1008
    40b0:	b810fbc8 	brid	-1080		// 3c78
    40b4:	30a0007e 	addik	r5, r0, 126

000040b8 <memcpy>:
    40b8:	3021fff4 	addik	r1, r1, -12
    40bc:	3140000f 	addik	r10, r0, 15
    40c0:	fa610004 	swi	r19, r1, 4
    40c4:	fac10008 	swi	r22, r1, 8
    40c8:	14875003 	cmpu	r4, r7, r10
    40cc:	bea4016c 	bgeid	r4, 364		// 4238
    40d0:	10650000 	addk	r3, r5, r0
    40d4:	80862800 	or	r4, r6, r5
    40d8:	a4840003 	andi	r4, r4, 3
    40dc:	be240190 	bneid	r4, 400		// 426c
    40e0:	11060000 	addk	r8, r6, r0
    40e4:	10850000 	addk	r4, r5, r0
    40e8:	11270000 	addk	r9, r7, r0
    40ec:	e8a80000 	lwi	r5, r8, 0
    40f0:	3129fff0 	addik	r9, r9, -16
    40f4:	f8a40000 	swi	r5, r4, 0
    40f8:	e9680004 	lwi	r11, r8, 4
    40fc:	14a95003 	cmpu	r5, r9, r10
    4100:	f9640004 	swi	r11, r4, 4
    4104:	e9680008 	lwi	r11, r8, 8
    4108:	f9640008 	swi	r11, r4, 8
    410c:	e968000c 	lwi	r11, r8, 12
    4110:	31080010 	addik	r8, r8, 16
    4114:	f964000c 	swi	r11, r4, 12
    4118:	be45ffd4 	bltid	r5, -44		// 40ec
    411c:	30840010 	addik	r4, r4, 16
    4120:	30a7fff0 	addik	r5, r7, -16
    4124:	a4a5fff0 	andi	r5, r5, -16
    4128:	a4e7000f 	andi	r7, r7, 15
    412c:	31600003 	addik	r11, r0, 3
    4130:	30a50010 	addik	r5, r5, 16
    4134:	15075803 	cmpu	r8, r7, r11
    4138:	10832800 	addk	r4, r3, r5
    413c:	bea80048 	bgeid	r8, 72		// 4184
    4140:	10c62800 	addk	r6, r6, r5
    4144:	11460000 	addk	r10, r6, r0
    4148:	11240000 	addk	r9, r4, r0
    414c:	11070000 	addk	r8, r7, r0
    4150:	e8aa0000 	lwi	r5, r10, 0
    4154:	3108fffc 	addik	r8, r8, -4
    4158:	314a0004 	addik	r10, r10, 4
    415c:	f8a90000 	swi	r5, r9, 0
    4160:	14a85803 	cmpu	r5, r8, r11
    4164:	be45ffec 	bltid	r5, -20		// 4150
    4168:	31290004 	addik	r9, r9, 4
    416c:	30a7fffc 	addik	r5, r7, -4
    4170:	a4a5fffc 	andi	r5, r5, -4
    4174:	30a50004 	addik	r5, r5, 4
    4178:	a4e70003 	andi	r7, r7, 3
    417c:	10c62800 	addk	r6, r6, r5
    4180:	10842800 	addk	r4, r4, r5
    4184:	be0700a8 	beqid	r7, 168		// 422c
    4188:	ea610004 	lwi	r19, r1, 4
    418c:	66670002 	bsrli	r19, r7, 2
    4190:	66d30402 	bslli	r22, r19, 2
    4194:	11200000 	addk	r9, r0, r0
    4198:	89364c00 	pcmpeq	r9, r22, r9
    419c:	be2900a8 	bneid	r9, 168		// 4244
    41a0:	3107ffff 	addik	r8, r7, -1
    41a4:	31400003 	addik	r10, r0, 3
    41a8:	15475003 	cmpu	r10, r7, r10
    41ac:	be4a000c 	bltid	r10, 12		// 41b8
    41b0:	30a00001 	addik	r5, r0, 1
    41b4:	10a90000 	addk	r5, r9, r0
    41b8:	31660004 	addik	r11, r6, 4
    41bc:	31440004 	addik	r10, r4, 4
    41c0:	15645803 	cmpu	r11, r4, r11
    41c4:	81243000 	or	r9, r4, r6
    41c8:	15465003 	cmpu	r10, r6, r10
    41cc:	814a5800 	or	r10, r10, r11
    41d0:	a5290003 	andi	r9, r9, 3
    41d4:	11600000 	addk	r11, r0, r0
    41d8:	89295c00 	pcmpeq	r9, r9, r11
    41dc:	654a001f 	bsrli	r10, r10, 31
    41e0:	85254800 	and	r9, r5, r9
    41e4:	85295000 	and	r9, r9, r10
    41e8:	a9290001 	xori	r9, r9, 1
    41ec:	be290058 	bneid	r9, 88		// 4244
    41f0:	11640000 	addk	r11, r4, r0
    41f4:	11460000 	addk	r10, r6, r0
    41f8:	e8aa0000 	lwi	r5, r10, 0
    41fc:	31290001 	addik	r9, r9, 1
    4200:	15934803 	cmpu	r12, r19, r9
    4204:	f8ab0000 	swi	r5, r11, 0
    4208:	314a0004 	addik	r10, r10, 4
    420c:	be4cffec 	bltid	r12, -20		// 41f8
    4210:	316b0004 	addik	r11, r11, 4
    4214:	88f63800 	xor	r7, r22, r7
    4218:	1084b000 	addk	r4, r4, r22
    421c:	10c6b000 	addk	r6, r6, r22
    4220:	be270024 	bneid	r7, 36		// 4244
    4224:	15164000 	rsubk	r8, r22, r8
    4228:	ea610004 	lwi	r19, r1, 4
    422c:	eac10008 	lwi	r22, r1, 8
    4230:	b60f0008 	rtsd	r15, 8
    4234:	3021000c 	addik	r1, r1, 12
    4238:	b810ff4c 	brid	-180		// 4184
    423c:	10850000 	addk	r4, r5, r0
    4240:	11070000 	addk	r8, r7, r0
    4244:	e1660000 	lbui	r11, r6, 0
    4248:	30e8ffff 	addik	r7, r8, -1
    424c:	30c60001 	addik	r6, r6, 1
    4250:	f1640000 	sbi	r11, r4, 0
    4254:	be28ffec 	bneid	r8, -20		// 4240
    4258:	30840001 	addik	r4, r4, 1
    425c:	ea610004 	lwi	r19, r1, 4
    4260:	eac10008 	lwi	r22, r1, 8
    4264:	b60f0008 	rtsd	r15, 8
    4268:	3021000c 	addik	r1, r1, 12
    426c:	b810ff20 	brid	-224		// 418c
    4270:	10850000 	addk	r4, r5, r0

00004274 <memmove>:
    4274:	3021fff8 	addik	r1, r1, -8
    4278:	fa610004 	swi	r19, r1, 4
    427c:	14853003 	cmpu	r4, r5, r6
    4280:	bea40054 	bgeid	r4, 84		// 42d4
    4284:	10650000 	addk	r3, r5, r0
    4288:	10863800 	addk	r4, r6, r7
    428c:	14a42803 	cmpu	r5, r4, r5
    4290:	bea50048 	bgeid	r5, 72		// 42d8
    4294:	3140000f 	addik	r10, r0, 15
    4298:	be070034 	beqid	r7, 52		// 42cc
    429c:	ea610004 	lwi	r19, r1, 4
    42a0:	10a33800 	addk	r5, r3, r7
    42a4:	b810000c 	brid	12		// 42b0
    42a8:	30e7ffff 	addik	r7, r7, -1
    42ac:	10e60000 	addk	r7, r6, r0
    42b0:	e0c4ffff 	lbui	r6, r4, -1
    42b4:	3084ffff 	addik	r4, r4, -1
    42b8:	f0c5ffff 	sbi	r6, r5, -1
    42bc:	30a5ffff 	addik	r5, r5, -1
    42c0:	be27ffec 	bneid	r7, -20		// 42ac
    42c4:	30c7ffff 	addik	r6, r7, -1
    42c8:	ea610004 	lwi	r19, r1, 4
    42cc:	b60f0008 	rtsd	r15, 8
    42d0:	30210008 	addik	r1, r1, 8
    42d4:	3140000f 	addik	r10, r0, 15
    42d8:	14875003 	cmpu	r4, r7, r10
    42dc:	bea400b8 	bgeid	r4, 184		// 4394
    42e0:	10830000 	addk	r4, r3, r0
    42e4:	80861800 	or	r4, r6, r3
    42e8:	a4840003 	andi	r4, r4, 3
    42ec:	be24018c 	bneid	r4, 396		// 4478
    42f0:	11060000 	addk	r8, r6, r0
    42f4:	10830000 	addk	r4, r3, r0
    42f8:	10a70000 	addk	r5, r7, r0
    42fc:	e9280000 	lwi	r9, r8, 0
    4300:	30a5fff0 	addik	r5, r5, -16
    4304:	f9240000 	swi	r9, r4, 0
    4308:	e9680004 	lwi	r11, r8, 4
    430c:	15255003 	cmpu	r9, r5, r10
    4310:	f9640004 	swi	r11, r4, 4
    4314:	e9880008 	lwi	r12, r8, 8
    4318:	f9840008 	swi	r12, r4, 8
    431c:	e968000c 	lwi	r11, r8, 12
    4320:	31080010 	addik	r8, r8, 16
    4324:	f964000c 	swi	r11, r4, 12
    4328:	be49ffd4 	bltid	r9, -44		// 42fc
    432c:	30840010 	addik	r4, r4, 16
    4330:	30a7fff0 	addik	r5, r7, -16
    4334:	a4a5fff0 	andi	r5, r5, -16
    4338:	a4e7000f 	andi	r7, r7, 15
    433c:	31600003 	addik	r11, r0, 3
    4340:	30a50010 	addik	r5, r5, 16
    4344:	15075803 	cmpu	r8, r7, r11
    4348:	10832800 	addk	r4, r3, r5
    434c:	bea80048 	bgeid	r8, 72		// 4394
    4350:	10c62800 	addk	r6, r6, r5
    4354:	11260000 	addk	r9, r6, r0
    4358:	11040000 	addk	r8, r4, r0
    435c:	10a70000 	addk	r5, r7, r0
    4360:	e9890000 	lwi	r12, r9, 0
    4364:	30a5fffc 	addik	r5, r5, -4
    4368:	15455803 	cmpu	r10, r5, r11
    436c:	f9880000 	swi	r12, r8, 0
    4370:	31290004 	addik	r9, r9, 4
    4374:	be4affec 	bltid	r10, -20		// 4360
    4378:	31080004 	addik	r8, r8, 4
    437c:	30a7fffc 	addik	r5, r7, -4
    4380:	a4a5fffc 	andi	r5, r5, -4
    4384:	30a50004 	addik	r5, r5, 4
    4388:	a4e70003 	andi	r7, r7, 3
    438c:	10c62800 	addk	r6, r6, r5
    4390:	10842800 	addk	r4, r4, r5
    4394:	be07ff38 	beqid	r7, -200		// 42cc
    4398:	ea610004 	lwi	r19, r1, 4
    439c:	64a70002 	bsrli	r5, r7, 2
    43a0:	66650402 	bslli	r19, r5, 2
    43a4:	11200000 	addk	r9, r0, r0
    43a8:	89334c00 	pcmpeq	r9, r19, r9
    43ac:	be2900a8 	bneid	r9, 168		// 4454
    43b0:	3107ffff 	addik	r8, r7, -1
    43b4:	31600003 	addik	r11, r0, 3
    43b8:	15675803 	cmpu	r11, r7, r11
    43bc:	be4b000c 	bltid	r11, 12		// 43c8
    43c0:	31400001 	addik	r10, r0, 1
    43c4:	11490000 	addk	r10, r9, r0
    43c8:	31860004 	addik	r12, r6, 4
    43cc:	31640004 	addik	r11, r4, 4
    43d0:	15846003 	cmpu	r12, r4, r12
    43d4:	81243000 	or	r9, r4, r6
    43d8:	15665803 	cmpu	r11, r6, r11
    43dc:	816b6000 	or	r11, r11, r12
    43e0:	a5290003 	andi	r9, r9, 3
    43e4:	11800000 	addk	r12, r0, r0
    43e8:	89296400 	pcmpeq	r9, r9, r12
    43ec:	656b001f 	bsrli	r11, r11, 31
    43f0:	852a4800 	and	r9, r10, r9
    43f4:	85295800 	and	r9, r9, r11
    43f8:	a9290001 	xori	r9, r9, 1
    43fc:	bc290058 	bnei	r9, 88		// 4454
    4400:	11640000 	addk	r11, r4, r0
    4404:	11460000 	addk	r10, r6, r0
    4408:	e98a0000 	lwi	r12, r10, 0
    440c:	31290001 	addik	r9, r9, 1
    4410:	314a0004 	addik	r10, r10, 4
    4414:	f98b0000 	swi	r12, r11, 0
    4418:	15854803 	cmpu	r12, r5, r9
    441c:	be4cffec 	bltid	r12, -20		// 4408
    4420:	316b0004 	addik	r11, r11, 4
    4424:	88f33800 	xor	r7, r19, r7
    4428:	10849800 	addk	r4, r4, r19
    442c:	10c69800 	addk	r6, r6, r19
    4430:	be07fe98 	beqid	r7, -360		// 42c8
    4434:	15134000 	rsubk	r8, r19, r8
    4438:	e0a60000 	lbui	r5, r6, 0
    443c:	30e8ffff 	addik	r7, r8, -1
    4440:	30c60001 	addik	r6, r6, 1
    4444:	f0a40000 	sbi	r5, r4, 0
    4448:	be08fe80 	beqid	r8, -384		// 42c8
    444c:	30840001 	addik	r4, r4, 1
    4450:	11070000 	addk	r8, r7, r0
    4454:	e0a60000 	lbui	r5, r6, 0
    4458:	30e8ffff 	addik	r7, r8, -1
    445c:	30c60001 	addik	r6, r6, 1
    4460:	f0a40000 	sbi	r5, r4, 0
    4464:	be28ffec 	bneid	r8, -20		// 4450
    4468:	30840001 	addik	r4, r4, 1
    446c:	ea610004 	lwi	r19, r1, 4
    4470:	b60f0008 	rtsd	r15, 8
    4474:	30210008 	addik	r1, r1, 8
    4478:	b810ff24 	brid	-220		// 439c
    447c:	10830000 	addk	r4, r3, r0

00004480 <memset>:
    4480:	3021fff0 	addik	r1, r1, -16
    4484:	fa610004 	swi	r19, r1, 4
    4488:	fac10008 	swi	r22, r1, 8
    448c:	fae1000c 	swi	r23, r1, 12
    4490:	a4850003 	andi	r4, r5, 3
    4494:	be0401c8 	beqid	r4, 456		// 465c
    4498:	10650000 	addk	r3, r5, r0
    449c:	be07017c 	beqid	r7, 380		// 4618
    44a0:	30e7ffff 	addik	r7, r7, -1
    44a4:	91260060 	sext8	r9, r6
    44a8:	b8100014 	brid	20		// 44bc
    44ac:	10850000 	addk	r4, r5, r0
    44b0:	be070168 	beqid	r7, 360		// 4618
    44b4:	3107ffff 	addik	r8, r7, -1
    44b8:	10e80000 	addk	r7, r8, r0
    44bc:	f1240000 	sbi	r9, r4, 0
    44c0:	30840001 	addik	r4, r4, 1
    44c4:	a5040003 	andi	r8, r4, 3
    44c8:	bc28ffe8 	bnei	r8, -24		// 44b0
    44cc:	30a00003 	addik	r5, r0, 3
    44d0:	14a72803 	cmpu	r5, r7, r5
    44d4:	bea500a0 	bgeid	r5, 160		// 4574
    44d8:	a4a600ff 	andi	r5, r6, 255
    44dc:	65250408 	bslli	r9, r5, 8
    44e0:	80a92800 	or	r5, r9, r5
    44e4:	65250410 	bslli	r9, r5, 16
    44e8:	3160000f 	addik	r11, r0, 15
    44ec:	15075803 	cmpu	r8, r7, r11
    44f0:	bea80050 	bgeid	r8, 80		// 4540
    44f4:	81292800 	or	r9, r9, r5
    44f8:	11040000 	addk	r8, r4, r0
    44fc:	11470000 	addk	r10, r7, r0
    4500:	314afff0 	addik	r10, r10, -16
    4504:	f9280000 	swi	r9, r8, 0
    4508:	f9280004 	swi	r9, r8, 4
    450c:	f9280008 	swi	r9, r8, 8
    4510:	f928000c 	swi	r9, r8, 12
    4514:	14aa5803 	cmpu	r5, r10, r11
    4518:	be45ffe8 	bltid	r5, -24		// 4500
    451c:	31080010 	addik	r8, r8, 16
    4520:	3107fff0 	addik	r8, r7, -16
    4524:	a508fff0 	andi	r8, r8, -16
    4528:	a4e7000f 	andi	r7, r7, 15
    452c:	30a00003 	addik	r5, r0, 3
    4530:	31080010 	addik	r8, r8, 16
    4534:	14a72803 	cmpu	r5, r7, r5
    4538:	bea5003c 	bgeid	r5, 60		// 4574
    453c:	10844000 	addk	r4, r4, r8
    4540:	11440000 	addk	r10, r4, r0
    4544:	11070000 	addk	r8, r7, r0
    4548:	31600003 	addik	r11, r0, 3
    454c:	3108fffc 	addik	r8, r8, -4
    4550:	f92a0000 	swi	r9, r10, 0
    4554:	14a85803 	cmpu	r5, r8, r11
    4558:	be45fff4 	bltid	r5, -12		// 454c
    455c:	314a0004 	addik	r10, r10, 4
    4560:	30a7fffc 	addik	r5, r7, -4
    4564:	a4a5fffc 	andi	r5, r5, -4
    4568:	30a50004 	addik	r5, r5, 4
    456c:	a4e70003 	andi	r7, r7, 3
    4570:	10842800 	addk	r4, r4, r5
    4574:	be0700a4 	beqid	r7, 164		// 4618
    4578:	15640000 	rsubk	r11, r4, r0
    457c:	a56b0003 	andi	r11, r11, 3
    4580:	14ab3803 	cmpu	r5, r11, r7
    4584:	3127ffff 	addik	r9, r7, -1
    4588:	be4500cc 	bltid	r5, 204		// 4654
    458c:	90c60060 	sext8	r6, r6
    4590:	be0b0030 	beqid	r11, 48		// 45c0
    4594:	11040000 	addk	r8, r4, r0
    4598:	11400000 	addk	r10, r0, r0
    459c:	314a0001 	addik	r10, r10, 1
    45a0:	f0c80000 	sbi	r6, r8, 0
    45a4:	158b5003 	cmpu	r12, r11, r10
    45a8:	31080001 	addik	r8, r8, 1
    45ac:	be4cfff0 	bltid	r12, -16		// 459c
    45b0:	3129ffff 	addik	r9, r9, -1
    45b4:	88a75800 	xor	r5, r7, r11
    45b8:	be050064 	beqid	r5, 100		// 461c
    45bc:	ea610004 	lwi	r19, r1, 4
    45c0:	14eb3800 	rsubk	r7, r11, r7
    45c4:	64a70002 	bsrli	r5, r7, 2
    45c8:	66650402 	bslli	r19, r5, 2
    45cc:	be130064 	beqid	r19, 100		// 4630
    45d0:	a54600ff 	andi	r10, r6, 255
    45d4:	66ea0408 	bslli	r23, r10, 8
    45d8:	66ca0410 	bslli	r22, r10, 16
    45dc:	658a0418 	bslli	r12, r10, 24
    45e0:	814ab800 	or	r10, r10, r23
    45e4:	814ab000 	or	r10, r10, r22
    45e8:	818a6000 	or	r12, r10, r12
    45ec:	10845800 	addk	r4, r4, r11
    45f0:	11400000 	addk	r10, r0, r0
    45f4:	314a0001 	addik	r10, r10, 1
    45f8:	f9840000 	swi	r12, r4, 0
    45fc:	15655003 	cmpu	r11, r5, r10
    4600:	be4bfff4 	bltid	r11, -12		// 45f4
    4604:	30840004 	addik	r4, r4, 4
    4608:	88e79800 	xor	r7, r7, r19
    460c:	11089800 	addk	r8, r8, r19
    4610:	be270020 	bneid	r7, 32		// 4630
    4614:	15334800 	rsubk	r9, r19, r9
    4618:	ea610004 	lwi	r19, r1, 4
    461c:	eac10008 	lwi	r22, r1, 8
    4620:	eae1000c 	lwi	r23, r1, 12
    4624:	b60f0008 	rtsd	r15, 8
    4628:	30210010 	addik	r1, r1, 16
    462c:	11240000 	addk	r9, r4, r0
    4630:	f0c80000 	sbi	r6, r8, 0
    4634:	3089ffff 	addik	r4, r9, -1
    4638:	be29fff4 	bneid	r9, -12		// 462c
    463c:	31080001 	addik	r8, r8, 1
    4640:	ea610004 	lwi	r19, r1, 4
    4644:	eac10008 	lwi	r22, r1, 8
    4648:	eae1000c 	lwi	r23, r1, 12
    464c:	b60f0008 	rtsd	r15, 8
    4650:	30210010 	addik	r1, r1, 16
    4654:	b810ff3c 	brid	-196		// 4590
    4658:	11670000 	addk	r11, r7, r0
    465c:	b810fe70 	brid	-400		// 44cc
    4660:	10850000 	addk	r4, r5, r0

00004664 <__malloc_lock>:
    4664:	b60f0008 	rtsd	r15, 8
    4668:	80000000 	or	r0, r0, r0

0000466c <__malloc_unlock>:
    466c:	b60f0008 	rtsd	r15, 8
    4670:	80000000 	or	r0, r0, r0

00004674 <realloc>:
    4674:	10650000 	addk	r3, r5, r0
    4678:	10e60000 	addk	r7, r6, r0
    467c:	b0000000 	imm	0
    4680:	e8a0596c 	lwi	r5, r0, 22892	// 596c <_impure_ptr>
    4684:	3021ffe4 	addik	r1, r1, -28
    4688:	f9e10000 	swi	r15, r1, 0
    468c:	b0000000 	imm	0
    4690:	b9f40014 	brlid	r15, 20	// 46a4 <_realloc_r>
    4694:	10c30000 	addk	r6, r3, r0
    4698:	e9e10000 	lwi	r15, r1, 0
    469c:	b60f0008 	rtsd	r15, 8
    46a0:	3021001c 	addik	r1, r1, 28

000046a4 <_realloc_r>:
    46a4:	3021ffc0 	addik	r1, r1, -64
    46a8:	fa61001c 	swi	r19, r1, 28
    46ac:	fb410030 	swi	r26, r1, 48
    46b0:	fb610034 	swi	r27, r1, 52
    46b4:	f9e10000 	swi	r15, r1, 0
    46b8:	fac10020 	swi	r22, r1, 32
    46bc:	fae10024 	swi	r23, r1, 36
    46c0:	fb010028 	swi	r24, r1, 40
    46c4:	fb21002c 	swi	r25, r1, 44
    46c8:	fb810038 	swi	r28, r1, 56
    46cc:	fba1003c 	swi	r29, r1, 60
    46d0:	12660000 	addk	r19, r6, r0
    46d4:	13450000 	addk	r26, r5, r0
    46d8:	be06033c 	beqid	r6, 828		// 4a14
    46dc:	13670000 	addk	r27, r7, r0
    46e0:	b000ffff 	imm	-1
    46e4:	b9f4ff80 	brlid	r15, -128	// 4664 <__malloc_lock>
    46e8:	32db000b 	addik	r22, r27, 11
    46ec:	30800016 	addik	r4, r0, 22
    46f0:	14962003 	cmpu	r4, r22, r4
    46f4:	be44010c 	bltid	r4, 268		// 4800
    46f8:	e873fffc 	lwi	r3, r19, -4
    46fc:	30a00010 	addik	r5, r0, 16	// 10 <_vector_interrupt>
    4700:	12c50000 	addk	r22, r5, r0
    4704:	149bb003 	cmpu	r4, r27, r22
    4708:	be44010c 	bltid	r4, 268		// 4814
    470c:	10c00000 	addk	r6, r0, r0
    4710:	be260104 	bneid	r6, 260		// 4814
    4714:	a703fffc 	andi	r24, r3, -4
    4718:	1485c001 	cmp	r4, r5, r24
    471c:	3393fff8 	addik	r28, r19, -8
    4720:	bea40194 	bgeid	r4, 404		// 48b4
    4724:	12f80000 	addk	r23, r24, r0
    4728:	b0000000 	imm	0
    472c:	e8e05a90 	lwi	r7, r0, 23184
    4730:	109cc000 	addk	r4, r28, r24
    4734:	89072000 	xor	r8, r7, r4
    4738:	be0802f0 	beqid	r8, 752		// 4a28
    473c:	31360010 	addik	r9, r22, 16
    4740:	e9040004 	lwi	r8, r4, 4
    4744:	a528fffe 	andi	r9, r8, -2
    4748:	11244800 	addk	r9, r4, r9
    474c:	e9290004 	lwi	r9, r9, 4
    4750:	a5290001 	andi	r9, r9, 1
    4754:	bc0901d0 	beqi	r9, 464		// 4924
    4758:	10860000 	addk	r4, r6, r0
    475c:	a4630001 	andi	r3, r3, 1
    4760:	bc230224 	bnei	r3, 548		// 4984
    4764:	eb33fff8 	lwi	r25, r19, -8
    4768:	1739e000 	rsubk	r25, r25, r28
    476c:	e8790004 	lwi	r3, r25, 4
    4770:	be0400b4 	beqid	r4, 180		// 4824
    4774:	a463fffc 	andi	r3, r3, -4
    4778:	88e43800 	xor	r7, r4, r7
    477c:	be070390 	beqid	r7, 912		// 4b0c
    4780:	1063c000 	addk	r3, r3, r24
    4784:	12e61800 	addk	r23, r6, r3
    4788:	14c5b801 	cmp	r6, r5, r23
    478c:	be4600a0 	bltid	r6, 160		// 482c
    4790:	14a51801 	cmp	r5, r5, r3
    4794:	e864000c 	lwi	r3, r4, 12
    4798:	e8840008 	lwi	r4, r4, 8
    479c:	30f8fffc 	addik	r7, r24, -4
    47a0:	31190008 	addik	r8, r25, 8
    47a4:	f8830008 	swi	r4, r3, 8
    47a8:	f864000c 	swi	r3, r4, 12
    47ac:	e879000c 	lwi	r3, r25, 12
    47b0:	e8b90008 	lwi	r5, r25, 8
    47b4:	30800024 	addik	r4, r0, 36
    47b8:	14872003 	cmpu	r4, r7, r4
    47bc:	f865000c 	swi	r3, r5, 12
    47c0:	be44043c 	bltid	r4, 1084		// 4bfc
    47c4:	f8a30008 	swi	r5, r3, 8
    47c8:	30600013 	addik	r3, r0, 19
    47cc:	14671803 	cmpu	r3, r7, r3
    47d0:	bea302d4 	bgeid	r3, 724		// 4aa4
    47d4:	10680000 	addk	r3, r8, r0
    47d8:	e8730000 	lwi	r3, r19, 0
    47dc:	f8790008 	swi	r3, r25, 8
    47e0:	e8930004 	lwi	r4, r19, 4
    47e4:	3060001b 	addik	r3, r0, 27
    47e8:	14671803 	cmpu	r3, r7, r3
    47ec:	be430438 	bltid	r3, 1080		// 4c24
    47f0:	f899000c 	swi	r4, r25, 12
    47f4:	30790010 	addik	r3, r25, 16
    47f8:	b81002b0 	brid	688		// 4aa8
    47fc:	30930008 	addik	r4, r19, 8
    4800:	a6d6fff8 	andi	r22, r22, -8
    4804:	149bb003 	cmpu	r4, r27, r22
    4808:	10b60000 	addk	r5, r22, r0
    480c:	bea4ff04 	bgeid	r4, -252		// 4710
    4810:	64d6001f 	bsrli	r6, r22, 31
    4814:	3060000c 	addik	r3, r0, 12
    4818:	f87a0000 	swi	r3, r26, 0
    481c:	b81000d4 	brid	212		// 48f0
    4820:	12e00000 	addk	r23, r0, r0
    4824:	1063c000 	addk	r3, r3, r24
    4828:	14a51801 	cmp	r5, r5, r3
    482c:	be45015c 	bltid	r5, 348		// 4988
    4830:	10ba0000 	addk	r5, r26, r0
    4834:	e899000c 	lwi	r4, r25, 12
    4838:	e8b90008 	lwi	r5, r25, 8
    483c:	30f8fffc 	addik	r7, r24, -4
    4840:	f885000c 	swi	r4, r5, 12
    4844:	f8a40008 	swi	r5, r4, 8
    4848:	30800024 	addik	r4, r0, 36
    484c:	14872003 	cmpu	r4, r7, r4
    4850:	be440280 	bltid	r4, 640		// 4ad0
    4854:	31190008 	addik	r8, r25, 8
    4858:	30800013 	addik	r4, r0, 19
    485c:	14872003 	cmpu	r4, r7, r4
    4860:	bea403bc 	bgeid	r4, 956		// 4c1c
    4864:	10880000 	addk	r4, r8, r0
    4868:	e8930000 	lwi	r4, r19, 0
    486c:	f8990008 	swi	r4, r25, 8
    4870:	e8b30004 	lwi	r5, r19, 4
    4874:	3080001b 	addik	r4, r0, 27
    4878:	14872003 	cmpu	r4, r7, r4
    487c:	be4403e8 	bltid	r4, 1000		// 4c64
    4880:	f8b9000c 	swi	r5, r25, 12
    4884:	30990010 	addik	r4, r25, 16
    4888:	30d30008 	addik	r6, r19, 8
    488c:	e8a60000 	lwi	r5, r6, 0
    4890:	12e30000 	addk	r23, r3, r0
    4894:	12680000 	addk	r19, r8, r0
    4898:	f8a40000 	swi	r5, r4, 0
    489c:	e8660004 	lwi	r3, r6, 4
    48a0:	13990000 	addk	r28, r25, r0
    48a4:	f8640004 	swi	r3, r4, 4
    48a8:	e8c60008 	lwi	r6, r6, 8
    48ac:	f8c40008 	swi	r6, r4, 8
    48b0:	e8790004 	lwi	r3, r25, 4
    48b4:	1496b800 	rsubk	r4, r22, r23
    48b8:	30a0000f 	addik	r5, r0, 15
    48bc:	14a42803 	cmpu	r5, r4, r5
    48c0:	be450088 	bltid	r5, 136		// 4948
    48c4:	a4630001 	andi	r3, r3, 1
    48c8:	8063b800 	or	r3, r3, r23
    48cc:	f87c0004 	swi	r3, r28, 4
    48d0:	139cb800 	addk	r28, r28, r23
    48d4:	e87c0004 	lwi	r3, r28, 4
    48d8:	a0630001 	ori	r3, r3, 1
    48dc:	f87c0004 	swi	r3, r28, 4
    48e0:	10ba0000 	addk	r5, r26, r0
    48e4:	b000ffff 	imm	-1
    48e8:	b9f4fd84 	brlid	r15, -636	// 466c <__malloc_unlock>
    48ec:	12f30000 	addk	r23, r19, r0
    48f0:	10770000 	addk	r3, r23, r0
    48f4:	e9e10000 	lwi	r15, r1, 0
    48f8:	ea61001c 	lwi	r19, r1, 28
    48fc:	eac10020 	lwi	r22, r1, 32
    4900:	eae10024 	lwi	r23, r1, 36
    4904:	eb010028 	lwi	r24, r1, 40
    4908:	eb21002c 	lwi	r25, r1, 44
    490c:	eb410030 	lwi	r26, r1, 48
    4910:	eb610034 	lwi	r27, r1, 52
    4914:	eb810038 	lwi	r28, r1, 56
    4918:	eba1003c 	lwi	r29, r1, 60
    491c:	b60f0008 	rtsd	r15, 8
    4920:	30210040 	addik	r1, r1, 64
    4924:	a4c8fffc 	andi	r6, r8, -4
    4928:	12e6c000 	addk	r23, r6, r24
    492c:	1505b801 	cmp	r8, r5, r23
    4930:	bc48fe2c 	blti	r8, -468		// 475c
    4934:	e8a4000c 	lwi	r5, r4, 12
    4938:	e8840008 	lwi	r4, r4, 8
    493c:	f8a4000c 	swi	r5, r4, 12
    4940:	b810ff74 	brid	-140		// 48b4
    4944:	f8850008 	swi	r4, r5, 8
    4948:	8063b000 	or	r3, r3, r22
    494c:	f87c0004 	swi	r3, r28, 4
    4950:	10dcb000 	addk	r6, r28, r22
    4954:	a0640001 	ori	r3, r4, 1
    4958:	f8660004 	swi	r3, r6, 4
    495c:	10862000 	addk	r4, r6, r4
    4960:	e8640004 	lwi	r3, r4, 4
    4964:	10ba0000 	addk	r5, r26, r0
    4968:	30c60008 	addik	r6, r6, 8
    496c:	a0630001 	ori	r3, r3, 1
    4970:	b0000000 	imm	0
    4974:	b9f40554 	brlid	r15, 1364	// 4ec8 <_free_r>
    4978:	f8640004 	swi	r3, r4, 4
    497c:	b810ff68 	brid	-152		// 48e4
    4980:	10ba0000 	addk	r5, r26, r0
    4984:	10ba0000 	addk	r5, r26, r0
    4988:	b000ffff 	imm	-1
    498c:	b9f4ee7c 	brlid	r15, -4484	// 3808 <_malloc_r>
    4990:	10db0000 	addk	r6, r27, r0
    4994:	be03006c 	beqid	r3, 108		// 4a00
    4998:	12e30000 	addk	r23, r3, r0
    499c:	e873fffc 	lwi	r3, r19, -4
    49a0:	30b7fff8 	addik	r5, r23, -8
    49a4:	a483fffe 	andi	r4, r3, -2
    49a8:	109c2000 	addk	r4, r28, r4
    49ac:	88852000 	xor	r4, r5, r4
    49b0:	be04023c 	beqid	r4, 572		// 4bec
    49b4:	30f8fffc 	addik	r7, r24, -4
    49b8:	30600024 	addik	r3, r0, 36
    49bc:	14671803 	cmpu	r3, r7, r3
    49c0:	bc430134 	blti	r3, 308		// 4af4
    49c4:	30600013 	addik	r3, r0, 19
    49c8:	14671803 	cmpu	r3, r7, r3
    49cc:	be4300b0 	bltid	r3, 176		// 4a7c
    49d0:	10770000 	addk	r3, r23, r0
    49d4:	10930000 	addk	r4, r19, r0
    49d8:	e8a40000 	lwi	r5, r4, 0
    49dc:	f8a30000 	swi	r5, r3, 0
    49e0:	e8a40004 	lwi	r5, r4, 4
    49e4:	f8a30004 	swi	r5, r3, 4
    49e8:	e8840008 	lwi	r4, r4, 8
    49ec:	f8830008 	swi	r4, r3, 8
    49f0:	10ba0000 	addk	r5, r26, r0
    49f4:	b0000000 	imm	0
    49f8:	b9f404d0 	brlid	r15, 1232	// 4ec8 <_free_r>
    49fc:	10d30000 	addk	r6, r19, r0
    4a00:	b000ffff 	imm	-1
    4a04:	b9f4fc68 	brlid	r15, -920	// 466c <__malloc_unlock>
    4a08:	10ba0000 	addk	r5, r26, r0
    4a0c:	b810fee8 	brid	-280		// 48f4
    4a10:	10770000 	addk	r3, r23, r0
    4a14:	b000ffff 	imm	-1
    4a18:	b9f4edf0 	brlid	r15, -4624	// 3808 <_malloc_r>
    4a1c:	10c70000 	addk	r6, r7, r0
    4a20:	b810fed0 	brid	-304		// 48f0
    4a24:	12e30000 	addk	r23, r3, r0
    4a28:	e8c70004 	lwi	r6, r7, 4
    4a2c:	a4c6fffc 	andi	r6, r6, -4
    4a30:	1106c000 	addk	r8, r6, r24
    4a34:	15294001 	cmp	r9, r9, r8
    4a38:	be49fd24 	bltid	r9, -732		// 475c
    4a3c:	10870000 	addk	r4, r7, r0
    4a40:	14764000 	rsubk	r3, r22, r8
    4a44:	139cb000 	addk	r28, r28, r22
    4a48:	a0630001 	ori	r3, r3, 1
    4a4c:	f87c0004 	swi	r3, r28, 4
    4a50:	e873fffc 	lwi	r3, r19, -4
    4a54:	10ba0000 	addk	r5, r26, r0
    4a58:	b0000000 	imm	0
    4a5c:	fb805a90 	swi	r28, r0, 23184
    4a60:	a4630001 	andi	r3, r3, 1
    4a64:	82d61800 	or	r22, r22, r3
    4a68:	b000ffff 	imm	-1
    4a6c:	b9f4fc00 	brlid	r15, -1024	// 466c <__malloc_unlock>
    4a70:	fad3fffc 	swi	r22, r19, -4
    4a74:	b810fe7c 	brid	-388		// 48f0
    4a78:	12f30000 	addk	r23, r19, r0
    4a7c:	e8930000 	lwi	r4, r19, 0
    4a80:	3060001b 	addik	r3, r0, 27
    4a84:	14671803 	cmpu	r3, r7, r3
    4a88:	f8970000 	swi	r4, r23, 0
    4a8c:	e8b30004 	lwi	r5, r19, 4
    4a90:	be430138 	bltid	r3, 312		// 4bc8
    4a94:	f8b70004 	swi	r5, r23, 4
    4a98:	30770008 	addik	r3, r23, 8
    4a9c:	b810ff3c 	brid	-196		// 49d8
    4aa0:	30930008 	addik	r4, r19, 8
    4aa4:	10930000 	addk	r4, r19, r0
    4aa8:	e8a40000 	lwi	r5, r4, 0
    4aac:	12680000 	addk	r19, r8, r0
    4ab0:	13990000 	addk	r28, r25, r0
    4ab4:	f8a30000 	swi	r5, r3, 0
    4ab8:	e8a40004 	lwi	r5, r4, 4
    4abc:	f8a30004 	swi	r5, r3, 4
    4ac0:	e8840008 	lwi	r4, r4, 8
    4ac4:	f8830008 	swi	r4, r3, 8
    4ac8:	b810fdec 	brid	-532		// 48b4
    4acc:	e8790004 	lwi	r3, r25, 4
    4ad0:	10d30000 	addk	r6, r19, r0
    4ad4:	10a80000 	addk	r5, r8, r0
    4ad8:	12680000 	addk	r19, r8, r0
    4adc:	b000ffff 	imm	-1
    4ae0:	b9f4f794 	brlid	r15, -2156	// 4274 <memmove>
    4ae4:	12e30000 	addk	r23, r3, r0
    4ae8:	e8790004 	lwi	r3, r25, 4
    4aec:	b810fdc8 	brid	-568		// 48b4
    4af0:	13990000 	addk	r28, r25, r0
    4af4:	10b70000 	addk	r5, r23, r0
    4af8:	b000ffff 	imm	-1
    4afc:	b9f4f778 	brlid	r15, -2184	// 4274 <memmove>
    4b00:	10d30000 	addk	r6, r19, r0
    4b04:	b810fef0 	brid	-272		// 49f4
    4b08:	10ba0000 	addk	r5, r26, r0
    4b0c:	13a61800 	addk	r29, r6, r3
    4b10:	30960010 	addik	r4, r22, 16
    4b14:	1484e801 	cmp	r4, r4, r29
    4b18:	be44fd10 	bltid	r4, -752		// 4828
    4b1c:	30f8fffc 	addik	r7, r24, -4
    4b20:	e879000c 	lwi	r3, r25, 12
    4b24:	e8990008 	lwi	r4, r25, 8
    4b28:	f864000c 	swi	r3, r4, 12
    4b2c:	f8830008 	swi	r4, r3, 8
    4b30:	30600024 	addik	r3, r0, 36
    4b34:	14671803 	cmpu	r3, r7, r3
    4b38:	be430190 	bltid	r3, 400		// 4cc8
    4b3c:	32f90008 	addik	r23, r25, 8
    4b40:	30600013 	addik	r3, r0, 19
    4b44:	14671803 	cmpu	r3, r7, r3
    4b48:	bea3015c 	bgeid	r3, 348		// 4ca4
    4b4c:	10770000 	addk	r3, r23, r0
    4b50:	e8930000 	lwi	r4, r19, 0
    4b54:	3060001b 	addik	r3, r0, 27
    4b58:	14671803 	cmpu	r3, r7, r3
    4b5c:	f8990008 	swi	r4, r25, 8
    4b60:	e8b30004 	lwi	r5, r19, 4
    4b64:	be43017c 	bltid	r3, 380		// 4ce0
    4b68:	f8b9000c 	swi	r5, r25, 12
    4b6c:	30790010 	addik	r3, r25, 16
    4b70:	30930008 	addik	r4, r19, 8
    4b74:	e8a40000 	lwi	r5, r4, 0
    4b78:	f8a30000 	swi	r5, r3, 0
    4b7c:	e8a40004 	lwi	r5, r4, 4
    4b80:	f8a30004 	swi	r5, r3, 4
    4b84:	e8840008 	lwi	r4, r4, 8
    4b88:	f8830008 	swi	r4, r3, 8
    4b8c:	1496e800 	rsubk	r4, r22, r29
    4b90:	1079b000 	addk	r3, r25, r22
    4b94:	a0840001 	ori	r4, r4, 1
    4b98:	f8830004 	swi	r4, r3, 4
    4b9c:	e8990004 	lwi	r4, r25, 4
    4ba0:	10ba0000 	addk	r5, r26, r0
    4ba4:	b0000000 	imm	0
    4ba8:	f8605a90 	swi	r3, r0, 23184
    4bac:	a4640001 	andi	r3, r4, 1
    4bb0:	82d61800 	or	r22, r22, r3
    4bb4:	b000ffff 	imm	-1
    4bb8:	b9f4fab4 	brlid	r15, -1356	// 466c <__malloc_unlock>
    4bbc:	fad90004 	swi	r22, r25, 4
    4bc0:	b810fd34 	brid	-716		// 48f4
    4bc4:	10770000 	addk	r3, r23, r0
    4bc8:	e8730008 	lwi	r3, r19, 8
    4bcc:	a8e70024 	xori	r7, r7, 36
    4bd0:	f8770008 	swi	r3, r23, 8
    4bd4:	e893000c 	lwi	r4, r19, 12
    4bd8:	be070070 	beqid	r7, 112		// 4c48
    4bdc:	f897000c 	swi	r4, r23, 12
    4be0:	30770010 	addik	r3, r23, 16
    4be4:	b810fdf4 	brid	-524		// 49d8
    4be8:	30930010 	addik	r4, r19, 16
    4bec:	eaf7fffc 	lwi	r23, r23, -4
    4bf0:	a6f7fffc 	andi	r23, r23, -4
    4bf4:	b810fcc0 	brid	-832		// 48b4
    4bf8:	12f7c000 	addk	r23, r23, r24
    4bfc:	10d30000 	addk	r6, r19, r0
    4c00:	10a80000 	addk	r5, r8, r0
    4c04:	12680000 	addk	r19, r8, r0
    4c08:	b000ffff 	imm	-1
    4c0c:	b9f4f668 	brlid	r15, -2456	// 4274 <memmove>
    4c10:	13990000 	addk	r28, r25, r0
    4c14:	b810fca0 	brid	-864		// 48b4
    4c18:	e8790004 	lwi	r3, r25, 4
    4c1c:	b810fc70 	brid	-912		// 488c
    4c20:	10d30000 	addk	r6, r19, r0
    4c24:	e8b30008 	lwi	r5, r19, 8
    4c28:	a8e70024 	xori	r7, r7, 36
    4c2c:	f8b90010 	swi	r5, r25, 16
    4c30:	e873000c 	lwi	r3, r19, 12
    4c34:	be070054 	beqid	r7, 84		// 4c88
    4c38:	f8790014 	swi	r3, r25, 20
    4c3c:	30790018 	addik	r3, r25, 24
    4c40:	b810fe68 	brid	-408		// 4aa8
    4c44:	30930010 	addik	r4, r19, 16
    4c48:	e8b30010 	lwi	r5, r19, 16
    4c4c:	30770018 	addik	r3, r23, 24
    4c50:	30930018 	addik	r4, r19, 24
    4c54:	f8b70010 	swi	r5, r23, 16
    4c58:	e8b30014 	lwi	r5, r19, 20
    4c5c:	b810fd7c 	brid	-644		// 49d8
    4c60:	f8b70014 	swi	r5, r23, 20
    4c64:	e8930008 	lwi	r4, r19, 8
    4c68:	a8e70024 	xori	r7, r7, 36
    4c6c:	f8990010 	swi	r4, r25, 16
    4c70:	e8b3000c 	lwi	r5, r19, 12
    4c74:	be070038 	beqid	r7, 56		// 4cac
    4c78:	f8b90014 	swi	r5, r25, 20
    4c7c:	30990018 	addik	r4, r25, 24
    4c80:	b810fc0c 	brid	-1012		// 488c
    4c84:	30d30010 	addik	r6, r19, 16
    4c88:	e8930010 	lwi	r4, r19, 16
    4c8c:	30790020 	addik	r3, r25, 32
    4c90:	f8990018 	swi	r4, r25, 24
    4c94:	30930018 	addik	r4, r19, 24
    4c98:	ea730014 	lwi	r19, r19, 20
    4c9c:	b810fe0c 	brid	-500		// 4aa8
    4ca0:	fa79001c 	swi	r19, r25, 28
    4ca4:	b810fed0 	brid	-304		// 4b74
    4ca8:	10930000 	addk	r4, r19, r0
    4cac:	e8930010 	lwi	r4, r19, 16
    4cb0:	30d30018 	addik	r6, r19, 24
    4cb4:	f8990018 	swi	r4, r25, 24
    4cb8:	ea730014 	lwi	r19, r19, 20
    4cbc:	30990020 	addik	r4, r25, 32
    4cc0:	b810fbcc 	brid	-1076		// 488c
    4cc4:	fa79001c 	swi	r19, r25, 28
    4cc8:	10b70000 	addk	r5, r23, r0
    4ccc:	b000ffff 	imm	-1
    4cd0:	b9f4f5a4 	brlid	r15, -2652	// 4274 <memmove>
    4cd4:	10d30000 	addk	r6, r19, r0
    4cd8:	b810feb8 	brid	-328		// 4b90
    4cdc:	1496e800 	rsubk	r4, r22, r29
    4ce0:	e8730008 	lwi	r3, r19, 8
    4ce4:	a8e70024 	xori	r7, r7, 36
    4ce8:	f8790010 	swi	r3, r25, 16
    4cec:	e893000c 	lwi	r4, r19, 12
    4cf0:	be070014 	beqid	r7, 20		// 4d04
    4cf4:	f8990014 	swi	r4, r25, 20
    4cf8:	30790018 	addik	r3, r25, 24
    4cfc:	b810fe78 	brid	-392		// 4b74
    4d00:	30930010 	addik	r4, r19, 16
    4d04:	e8b30010 	lwi	r5, r19, 16
    4d08:	30930018 	addik	r4, r19, 24
    4d0c:	30790020 	addik	r3, r25, 32
    4d10:	f8b90018 	swi	r5, r25, 24
    4d14:	ea730014 	lwi	r19, r19, 20
    4d18:	b810fe5c 	brid	-420		// 4b74
    4d1c:	fa79001c 	swi	r19, r25, 28

00004d20 <_sbrk_r>:
    4d20:	3021ffe0 	addik	r1, r1, -32
    4d24:	fa61001c 	swi	r19, r1, 28
    4d28:	12650000 	addk	r19, r5, r0
    4d2c:	f9e10000 	swi	r15, r1, 0
    4d30:	b0000000 	imm	0
    4d34:	f8005f88 	swi	r0, r0, 24456	// 5f88 <errno>
    4d38:	b0000000 	imm	0
    4d3c:	b9f407e4 	brlid	r15, 2020	// 5520 <sbrk>
    4d40:	10a60000 	addk	r5, r6, r0
    4d44:	a883ffff 	xori	r4, r3, -1
    4d48:	be040014 	beqid	r4, 20		// 4d5c
    4d4c:	e9e10000 	lwi	r15, r1, 0
    4d50:	ea61001c 	lwi	r19, r1, 28
    4d54:	b60f0008 	rtsd	r15, 8
    4d58:	30210020 	addik	r1, r1, 32
    4d5c:	b0000000 	imm	0
    4d60:	e8805f88 	lwi	r4, r0, 24456	// 5f88 <errno>
    4d64:	bc04ffec 	beqi	r4, -20		// 4d50
    4d68:	f8930000 	swi	r4, r19, 0
    4d6c:	e9e10000 	lwi	r15, r1, 0
    4d70:	ea61001c 	lwi	r19, r1, 28
    4d74:	b60f0008 	rtsd	r15, 8
    4d78:	30210020 	addik	r1, r1, 32

00004d7c <_malloc_trim_r>:
    4d7c:	3021ffd8 	addik	r1, r1, -40
    4d80:	fa61001c 	swi	r19, r1, 28
    4d84:	fac10020 	swi	r22, r1, 32
    4d88:	fae10024 	swi	r23, r1, 36
    4d8c:	12650000 	addk	r19, r5, r0
    4d90:	f9e10000 	swi	r15, r1, 0
    4d94:	b000ffff 	imm	-1
    4d98:	b9f4f8cc 	brlid	r15, -1844	// 4664 <__malloc_lock>
    4d9c:	12e60000 	addk	r23, r6, r0
    4da0:	b0000000 	imm	0
    4da4:	e8605a90 	lwi	r3, r0, 23184
    4da8:	eac30004 	lwi	r22, r3, 4
    4dac:	a6d6fffc 	andi	r22, r22, -4
    4db0:	3076006f 	addik	r3, r22, 111
    4db4:	16f71800 	rsubk	r23, r23, r3
    4db8:	a6f7ff80 	andi	r23, r23, -128
    4dbc:	32f7ff80 	addik	r23, r23, -128
    4dc0:	3060007f 	addik	r3, r0, 127
    4dc4:	14771801 	cmp	r3, r23, r3
    4dc8:	bea3002c 	bgeid	r3, 44		// 4df4
    4dcc:	10b30000 	addk	r5, r19, r0
    4dd0:	b000ffff 	imm	-1
    4dd4:	b9f4ff4c 	brlid	r15, -180	// 4d20 <_sbrk_r>
    4dd8:	10c00000 	addk	r6, r0, r0
    4ddc:	b0000000 	imm	0
    4de0:	e8805a90 	lwi	r4, r0, 23184
    4de4:	1084b000 	addk	r4, r4, r22
    4de8:	88632000 	xor	r3, r3, r4
    4dec:	be030030 	beqid	r3, 48		// 4e1c
    4df0:	10b30000 	addk	r5, r19, r0
    4df4:	b000ffff 	imm	-1
    4df8:	b9f4f874 	brlid	r15, -1932	// 466c <__malloc_unlock>
    4dfc:	80000000 	or	r0, r0, r0
    4e00:	e9e10000 	lwi	r15, r1, 0
    4e04:	ea61001c 	lwi	r19, r1, 28
    4e08:	eac10020 	lwi	r22, r1, 32
    4e0c:	eae10024 	lwi	r23, r1, 36
    4e10:	10600000 	addk	r3, r0, r0
    4e14:	b60f0008 	rtsd	r15, 8
    4e18:	30210028 	addik	r1, r1, 40
    4e1c:	b000ffff 	imm	-1
    4e20:	b9f4ff00 	brlid	r15, -256	// 4d20 <_sbrk_r>
    4e24:	14d70000 	rsubk	r6, r23, r0
    4e28:	a8c3ffff 	xori	r6, r3, -1
    4e2c:	be060054 	beqid	r6, 84		// 4e80
    4e30:	16d7b000 	rsubk	r22, r23, r22
    4e34:	b0000000 	imm	0
    4e38:	e8605ee0 	lwi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    4e3c:	10b30000 	addk	r5, r19, r0
    4e40:	16f71800 	rsubk	r23, r23, r3
    4e44:	b0000000 	imm	0
    4e48:	e8605a90 	lwi	r3, r0, 23184
    4e4c:	a2d60001 	ori	r22, r22, 1
    4e50:	b0000000 	imm	0
    4e54:	fae05ee0 	swi	r23, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    4e58:	b000ffff 	imm	-1
    4e5c:	b9f4f810 	brlid	r15, -2032	// 466c <__malloc_unlock>
    4e60:	fac30004 	swi	r22, r3, 4
    4e64:	e9e10000 	lwi	r15, r1, 0
    4e68:	ea61001c 	lwi	r19, r1, 28
    4e6c:	eac10020 	lwi	r22, r1, 32
    4e70:	eae10024 	lwi	r23, r1, 36
    4e74:	30600001 	addik	r3, r0, 1
    4e78:	b60f0008 	rtsd	r15, 8
    4e7c:	30210028 	addik	r1, r1, 40
    4e80:	b000ffff 	imm	-1
    4e84:	b9f4fe9c 	brlid	r15, -356	// 4d20 <_sbrk_r>
    4e88:	10b30000 	addk	r5, r19, r0
    4e8c:	b0000000 	imm	0
    4e90:	e8805a90 	lwi	r4, r0, 23184
    4e94:	30c0000f 	addik	r6, r0, 15
    4e98:	14a41800 	rsubk	r5, r4, r3
    4e9c:	14c53001 	cmp	r6, r5, r6
    4ea0:	bca60020 	bgei	r6, 32		// 4ec0
    4ea4:	a0a50001 	ori	r5, r5, 1
    4ea8:	f8a40004 	swi	r5, r4, 4
    4eac:	b0000000 	imm	0
    4eb0:	e8805a80 	lwi	r4, r0, 23168	// 5a80 <__malloc_sbrk_base>
    4eb4:	14641800 	rsubk	r3, r4, r3
    4eb8:	b0000000 	imm	0
    4ebc:	f8605ee0 	swi	r3, r0, 24288	// 5ee0 <__malloc_current_mallinfo>
    4ec0:	b810ff34 	brid	-204		// 4df4
    4ec4:	10b30000 	addk	r5, r19, r0

00004ec8 <_free_r>:
    4ec8:	3021ffdc 	addik	r1, r1, -36
    4ecc:	fa61001c 	swi	r19, r1, 28
    4ed0:	fac10020 	swi	r22, r1, 32
    4ed4:	f9e10000 	swi	r15, r1, 0
    4ed8:	12660000 	addk	r19, r6, r0
    4edc:	be060160 	beqid	r6, 352		// 503c
    4ee0:	12c50000 	addk	r22, r5, r0
    4ee4:	b000ffff 	imm	-1
    4ee8:	b9f4f77c 	brlid	r15, -2180	// 4664 <__malloc_lock>
    4eec:	80000000 	or	r0, r0, r0
    4ef0:	e913fffc 	lwi	r8, r19, -4
    4ef4:	30f3fff8 	addik	r7, r19, -8
    4ef8:	b0000000 	imm	0
    4efc:	e8a05a90 	lwi	r5, r0, 23184
    4f00:	a468fffe 	andi	r3, r8, -2
    4f04:	10871800 	addk	r4, r7, r3
    4f08:	e8c40004 	lwi	r6, r4, 4
    4f0c:	88a52000 	xor	r5, r5, r4
    4f10:	b0000000 	imm	0
    4f14:	31405a90 	addik	r10, r0, 23184
    4f18:	be050180 	beqid	r5, 384		// 5098
    4f1c:	a4c6fffc 	andi	r6, r6, -4
    4f20:	f8c40004 	swi	r6, r4, 4
    4f24:	a5080001 	andi	r8, r8, 1
    4f28:	be280034 	bneid	r8, 52		// 4f5c
    4f2c:	11200000 	addk	r9, r0, r0
    4f30:	e973fff8 	lwi	r11, r19, -8
    4f34:	14eb3800 	rsubk	r7, r11, r7
    4f38:	e8a70008 	lwi	r5, r7, 8
    4f3c:	10635800 	addk	r3, r3, r11
    4f40:	89655000 	xor	r11, r5, r10
    4f44:	be0b0018 	beqid	r11, 24		// 4f5c
    4f48:	31200001 	addik	r9, r0, 1
    4f4c:	e967000c 	lwi	r11, r7, 12
    4f50:	11280000 	addk	r9, r8, r0
    4f54:	f965000c 	swi	r11, r5, 12
    4f58:	f8ab0008 	swi	r5, r11, 8
    4f5c:	10a43000 	addk	r5, r4, r6
    4f60:	e8a50004 	lwi	r5, r5, 4
    4f64:	a4a50001 	andi	r5, r5, 1
    4f68:	bc25002c 	bnei	r5, 44		// 4f94
    4f6c:	10633000 	addk	r3, r3, r6
    4f70:	be290018 	bneid	r9, 24		// 4f88
    4f74:	e8a40008 	lwi	r5, r4, 8
    4f78:	89455000 	xor	r10, r5, r10
    4f7c:	b0000000 	imm	0
    4f80:	30c05a90 	addik	r6, r0, 23184
    4f84:	bc0a0170 	beqi	r10, 368		// 50f4
    4f88:	e884000c 	lwi	r4, r4, 12
    4f8c:	f885000c 	swi	r4, r5, 12
    4f90:	f8a40008 	swi	r5, r4, 8
    4f94:	a0830001 	ori	r4, r3, 1
    4f98:	f8870004 	swi	r4, r7, 4
    4f9c:	be290094 	bneid	r9, 148		// 5030
    4fa0:	d8633800 	sw	r3, r3, r7
    4fa4:	308001ff 	addik	r4, r0, 511
    4fa8:	14832003 	cmpu	r4, r3, r4
    4fac:	bea400a4 	bgeid	r4, 164		// 5050
    4fb0:	64830009 	bsrli	r4, r3, 9
    4fb4:	30a00004 	addik	r5, r0, 4
    4fb8:	14a42803 	cmpu	r5, r4, r5
    4fbc:	be450158 	bltid	r5, 344		// 5114
    4fc0:	30a00014 	addik	r5, r0, 20
    4fc4:	64a30006 	bsrli	r5, r3, 6
    4fc8:	30a50038 	addik	r5, r5, 56
    4fcc:	64c50403 	bslli	r6, r5, 3
    4fd0:	b0000000 	imm	0
    4fd4:	30c65a88 	addik	r6, r6, 23176
    4fd8:	e8860008 	lwi	r4, r6, 8
    4fdc:	89043000 	xor	r8, r4, r6
    4fe0:	be080148 	beqid	r8, 328		// 5128
    4fe4:	64a50202 	bsrai	r5, r5, 2
    4fe8:	e8a40004 	lwi	r5, r4, 4
    4fec:	a4a5fffc 	andi	r5, r5, -4
    4ff0:	14a51803 	cmpu	r5, r5, r3
    4ff4:	bc45001c 	blti	r5, 28		// 5010
    4ff8:	b8100028 	brid	40		// 5020
    4ffc:	e864000c 	lwi	r3, r4, 12
    5000:	e9040004 	lwi	r8, r4, 4
    5004:	a508fffc 	andi	r8, r8, -4
    5008:	15081803 	cmpu	r8, r8, r3
    500c:	bca80010 	bgei	r8, 16		// 501c
    5010:	e8840008 	lwi	r4, r4, 8
    5014:	89062000 	xor	r8, r6, r4
    5018:	bc28ffe8 	bnei	r8, -24		// 5000
    501c:	e864000c 	lwi	r3, r4, 12
    5020:	f867000c 	swi	r3, r7, 12
    5024:	f8870008 	swi	r4, r7, 8
    5028:	f8e30008 	swi	r7, r3, 8
    502c:	f8e4000c 	swi	r7, r4, 12
    5030:	b000ffff 	imm	-1
    5034:	b9f4f638 	brlid	r15, -2504	// 466c <__malloc_unlock>
    5038:	10b60000 	addk	r5, r22, r0
    503c:	e9e10000 	lwi	r15, r1, 0
    5040:	ea61001c 	lwi	r19, r1, 28
    5044:	eac10020 	lwi	r22, r1, 32
    5048:	b60f0008 	rtsd	r15, 8
    504c:	30210024 	addik	r1, r1, 36
    5050:	64630003 	bsrli	r3, r3, 3
    5054:	64830403 	bslli	r4, r3, 3
    5058:	64630202 	bsrai	r3, r3, 2
    505c:	b0000000 	imm	0
    5060:	30845a88 	addik	r4, r4, 23176
    5064:	30c00001 	addik	r6, r0, 1
    5068:	e8a40008 	lwi	r5, r4, 8
    506c:	44661c00 	bsll	r3, r6, r3
    5070:	b0000000 	imm	0
    5074:	e8c05a8c 	lwi	r6, r0, 23180
    5078:	f887000c 	swi	r4, r7, 12
    507c:	f8a70008 	swi	r5, r7, 8
    5080:	80633000 	or	r3, r3, r6
    5084:	b0000000 	imm	0
    5088:	f8605a8c 	swi	r3, r0, 23180
    508c:	f8e40008 	swi	r7, r4, 8
    5090:	b810ffa0 	brid	-96		// 5030
    5094:	f8e5000c 	swi	r7, r5, 12
    5098:	a5080001 	andi	r8, r8, 1
    509c:	be280024 	bneid	r8, 36		// 50c0
    50a0:	10661800 	addk	r3, r6, r3
    50a4:	e8b3fff8 	lwi	r5, r19, -8
    50a8:	14e53800 	rsubk	r7, r5, r7
    50ac:	e887000c 	lwi	r4, r7, 12
    50b0:	e8c70008 	lwi	r6, r7, 8
    50b4:	10632800 	addk	r3, r3, r5
    50b8:	f886000c 	swi	r4, r6, 12
    50bc:	f8c40008 	swi	r6, r4, 8
    50c0:	b0000000 	imm	0
    50c4:	e8c05a84 	lwi	r6, r0, 23172	// 5a84 <__malloc_trim_threshold>
    50c8:	a0830001 	ori	r4, r3, 1
    50cc:	f8870004 	swi	r4, r7, 4
    50d0:	b0000000 	imm	0
    50d4:	f8e05a90 	swi	r7, r0, 23184
    50d8:	14661803 	cmpu	r3, r6, r3
    50dc:	bc43ff54 	blti	r3, -172		// 5030
    50e0:	b0000000 	imm	0
    50e4:	e8c05f10 	lwi	r6, r0, 24336	// 5f10 <__malloc_top_pad>
    50e8:	b9f4fc94 	brlid	r15, -876	// 4d7c <_malloc_trim_r>
    50ec:	10b60000 	addk	r5, r22, r0
    50f0:	b800ff40 	bri	-192		// 5030
    50f4:	f8e6000c 	swi	r7, r6, 12
    50f8:	f8e60008 	swi	r7, r6, 8
    50fc:	a0830001 	ori	r4, r3, 1
    5100:	f8c7000c 	swi	r6, r7, 12
    5104:	f8c70008 	swi	r6, r7, 8
    5108:	f8870004 	swi	r4, r7, 4
    510c:	b810ff24 	brid	-220		// 5030
    5110:	d8633800 	sw	r3, r3, r7
    5114:	14a42803 	cmpu	r5, r4, r5
    5118:	be450034 	bltid	r5, 52		// 514c
    511c:	30a4005b 	addik	r5, r4, 91
    5120:	b810feb0 	brid	-336		// 4fd0
    5124:	64c50403 	bslli	r6, r5, 3
    5128:	30600001 	addik	r3, r0, 1
    512c:	44632c00 	bsll	r3, r3, r5
    5130:	b0000000 	imm	0
    5134:	e8a05a8c 	lwi	r5, r0, 23180
    5138:	80632800 	or	r3, r3, r5
    513c:	b0000000 	imm	0
    5140:	f8605a8c 	swi	r3, r0, 23180
    5144:	b810fedc 	brid	-292		// 5020
    5148:	10640000 	addk	r3, r4, r0
    514c:	30a00054 	addik	r5, r0, 84
    5150:	14a42803 	cmpu	r5, r4, r5
    5154:	be450014 	bltid	r5, 20		// 5168
    5158:	64a3000c 	bsrli	r5, r3, 12
    515c:	30a5006e 	addik	r5, r5, 110
    5160:	b810fe70 	brid	-400		// 4fd0
    5164:	64c50403 	bslli	r6, r5, 3
    5168:	30a00154 	addik	r5, r0, 340
    516c:	14a42803 	cmpu	r5, r4, r5
    5170:	be450014 	bltid	r5, 20		// 5184
    5174:	64a3000f 	bsrli	r5, r3, 15
    5178:	30a50077 	addik	r5, r5, 119
    517c:	b810fe54 	brid	-428		// 4fd0
    5180:	64c50403 	bslli	r6, r5, 3
    5184:	30a00554 	addik	r5, r0, 1364
    5188:	14842803 	cmpu	r4, r4, r5
    518c:	bc440014 	blti	r4, 20		// 51a0
    5190:	64a30012 	bsrli	r5, r3, 18
    5194:	30a5007c 	addik	r5, r5, 124
    5198:	b810fe38 	brid	-456		// 4fd0
    519c:	64c50403 	bslli	r6, r5, 3
    51a0:	30c003f0 	addik	r6, r0, 1008
    51a4:	b810fe2c 	brid	-468		// 4fd0
    51a8:	30a0007e 	addik	r5, r0, 126

000051ac <cleanup_glue>:
    51ac:	3021ffbc 	addik	r1, r1, -68
    51b0:	fa61001c 	swi	r19, r1, 28
    51b4:	fb21002c 	swi	r25, r1, 44
    51b8:	f9e10000 	swi	r15, r1, 0
    51bc:	fac10020 	swi	r22, r1, 32
    51c0:	fae10024 	swi	r23, r1, 36
    51c4:	fb010028 	swi	r24, r1, 40
    51c8:	fb410030 	swi	r26, r1, 48
    51cc:	fb610034 	swi	r27, r1, 52
    51d0:	fb810038 	swi	r28, r1, 56
    51d4:	fba1003c 	swi	r29, r1, 60
    51d8:	fbc10040 	swi	r30, r1, 64
    51dc:	eac60000 	lwi	r22, r6, 0
    51e0:	13260000 	addk	r25, r6, r0
    51e4:	be1600d0 	beqid	r22, 208		// 52b4
    51e8:	12650000 	addk	r19, r5, r0
    51ec:	eaf60000 	lwi	r23, r22, 0
    51f0:	bc1700b4 	beqi	r23, 180		// 52a4
    51f4:	eb170000 	lwi	r24, r23, 0
    51f8:	bc18009c 	beqi	r24, 156		// 5294
    51fc:	eb580000 	lwi	r26, r24, 0
    5200:	bc1a0084 	beqi	r26, 132		// 5284
    5204:	eb7a0000 	lwi	r27, r26, 0
    5208:	bc1b006c 	beqi	r27, 108		// 5274
    520c:	eb9b0000 	lwi	r28, r27, 0
    5210:	bc1c0054 	beqi	r28, 84		// 5264
    5214:	ebbc0000 	lwi	r29, r28, 0
    5218:	bc1d003c 	beqi	r29, 60		// 5254
    521c:	ebdd0000 	lwi	r30, r29, 0
    5220:	bc1e0024 	beqi	r30, 36		// 5244
    5224:	e8de0000 	lwi	r6, r30, 0
    5228:	bc06000c 	beqi	r6, 12		// 5234
    522c:	b9f4ff80 	brlid	r15, -128	// 51ac <cleanup_glue>
    5230:	80000000 	or	r0, r0, r0
    5234:	10b30000 	addk	r5, r19, r0
    5238:	b000ffff 	imm	-1
    523c:	b9f4fc8c 	brlid	r15, -884	// 4ec8 <_free_r>
    5240:	10de0000 	addk	r6, r30, r0
    5244:	10b30000 	addk	r5, r19, r0
    5248:	b000ffff 	imm	-1
    524c:	b9f4fc7c 	brlid	r15, -900	// 4ec8 <_free_r>
    5250:	10dd0000 	addk	r6, r29, r0
    5254:	10b30000 	addk	r5, r19, r0
    5258:	b000ffff 	imm	-1
    525c:	b9f4fc6c 	brlid	r15, -916	// 4ec8 <_free_r>
    5260:	10dc0000 	addk	r6, r28, r0
    5264:	10b30000 	addk	r5, r19, r0
    5268:	b000ffff 	imm	-1
    526c:	b9f4fc5c 	brlid	r15, -932	// 4ec8 <_free_r>
    5270:	10db0000 	addk	r6, r27, r0
    5274:	10b30000 	addk	r5, r19, r0
    5278:	b000ffff 	imm	-1
    527c:	b9f4fc4c 	brlid	r15, -948	// 4ec8 <_free_r>
    5280:	10da0000 	addk	r6, r26, r0
    5284:	10b30000 	addk	r5, r19, r0
    5288:	b000ffff 	imm	-1
    528c:	b9f4fc3c 	brlid	r15, -964	// 4ec8 <_free_r>
    5290:	10d80000 	addk	r6, r24, r0
    5294:	10b30000 	addk	r5, r19, r0
    5298:	b000ffff 	imm	-1
    529c:	b9f4fc2c 	brlid	r15, -980	// 4ec8 <_free_r>
    52a0:	10d70000 	addk	r6, r23, r0
    52a4:	10b30000 	addk	r5, r19, r0
    52a8:	b000ffff 	imm	-1
    52ac:	b9f4fc1c 	brlid	r15, -996	// 4ec8 <_free_r>
    52b0:	10d60000 	addk	r6, r22, r0
    52b4:	10b30000 	addk	r5, r19, r0
    52b8:	b000ffff 	imm	-1
    52bc:	b9f4fc0c 	brlid	r15, -1012	// 4ec8 <_free_r>
    52c0:	10d90000 	addk	r6, r25, r0
    52c4:	e9e10000 	lwi	r15, r1, 0
    52c8:	ea61001c 	lwi	r19, r1, 28
    52cc:	eac10020 	lwi	r22, r1, 32
    52d0:	eae10024 	lwi	r23, r1, 36
    52d4:	eb010028 	lwi	r24, r1, 40
    52d8:	eb21002c 	lwi	r25, r1, 44
    52dc:	eb410030 	lwi	r26, r1, 48
    52e0:	eb610034 	lwi	r27, r1, 52
    52e4:	eb810038 	lwi	r28, r1, 56
    52e8:	eba1003c 	lwi	r29, r1, 60
    52ec:	ebc10040 	lwi	r30, r1, 64
    52f0:	b60f0008 	rtsd	r15, 8
    52f4:	30210044 	addik	r1, r1, 68

000052f8 <_reclaim_reent>:
    52f8:	b0000000 	imm	0
    52fc:	e860596c 	lwi	r3, r0, 22892	// 596c <_impure_ptr>
    5300:	3021ffd4 	addik	r1, r1, -44
    5304:	fa61001c 	swi	r19, r1, 28
    5308:	f9e10000 	swi	r15, r1, 0
    530c:	fac10020 	swi	r22, r1, 32
    5310:	fae10024 	swi	r23, r1, 36
    5314:	fb010028 	swi	r24, r1, 40
    5318:	88651800 	xor	r3, r5, r3
    531c:	be030124 	beqid	r3, 292		// 5440
    5320:	12650000 	addk	r19, r5, r0
    5324:	e8650024 	lwi	r3, r5, 36
    5328:	bc03007c 	beqi	r3, 124		// 53a4
    532c:	e883000c 	lwi	r4, r3, 12
    5330:	bc040060 	beqi	r4, 96		// 5390
    5334:	10600000 	addk	r3, r0, r0
    5338:	13030000 	addk	r24, r3, r0
    533c:	32e00020 	addik	r23, r0, 32	// 20 <_vector_hw_exception>
    5340:	64630402 	bslli	r3, r3, 2
    5344:	c8c32000 	lw	r6, r3, r4
    5348:	bc060024 	beqi	r6, 36		// 536c
    534c:	10b30000 	addk	r5, r19, r0
    5350:	b000ffff 	imm	-1
    5354:	b9f4fb74 	brlid	r15, -1164	// 4ec8 <_free_r>
    5358:	eac60000 	lwi	r22, r6, 0
    535c:	be36fff0 	bneid	r22, -16		// 534c
    5360:	10d60000 	addk	r6, r22, r0
    5364:	e8730024 	lwi	r3, r19, 36
    5368:	e883000c 	lwi	r4, r3, 12
    536c:	33180001 	addik	r24, r24, 1
    5370:	32f7ffff 	addik	r23, r23, -1
    5374:	be37ffcc 	bneid	r23, -52		// 5340
    5378:	10780000 	addk	r3, r24, r0
    537c:	10b30000 	addk	r5, r19, r0
    5380:	b000ffff 	imm	-1
    5384:	b9f4fb44 	brlid	r15, -1212	// 4ec8 <_free_r>
    5388:	10c40000 	addk	r6, r4, r0
    538c:	e8730024 	lwi	r3, r19, 36
    5390:	e8c30000 	lwi	r6, r3, 0
    5394:	bc060010 	beqi	r6, 16		// 53a4
    5398:	b000ffff 	imm	-1
    539c:	b9f4fb2c 	brlid	r15, -1236	// 4ec8 <_free_r>
    53a0:	10b30000 	addk	r5, r19, r0
    53a4:	e8d30014 	lwi	r6, r19, 20
    53a8:	bc060010 	beqi	r6, 16		// 53b8
    53ac:	b000ffff 	imm	-1
    53b0:	b9f4fb18 	brlid	r15, -1256	// 4ec8 <_free_r>
    53b4:	10b30000 	addk	r5, r19, r0
    53b8:	e8d30024 	lwi	r6, r19, 36
    53bc:	bc060010 	beqi	r6, 16		// 53cc
    53c0:	b000ffff 	imm	-1
    53c4:	b9f4fb04 	brlid	r15, -1276	// 4ec8 <_free_r>
    53c8:	10b30000 	addk	r5, r19, r0
    53cc:	e8d30038 	lwi	r6, r19, 56
    53d0:	bc060010 	beqi	r6, 16		// 53e0
    53d4:	b000ffff 	imm	-1
    53d8:	b9f4faf0 	brlid	r15, -1296	// 4ec8 <_free_r>
    53dc:	10b30000 	addk	r5, r19, r0
    53e0:	e8d3003c 	lwi	r6, r19, 60
    53e4:	bc060010 	beqi	r6, 16		// 53f4
    53e8:	b000ffff 	imm	-1
    53ec:	b9f4fadc 	brlid	r15, -1316	// 4ec8 <_free_r>
    53f0:	10b30000 	addk	r5, r19, r0
    53f4:	e8d30040 	lwi	r6, r19, 64
    53f8:	bc060010 	beqi	r6, 16		// 5408
    53fc:	b000ffff 	imm	-1
    5400:	b9f4fac8 	brlid	r15, -1336	// 4ec8 <_free_r>
    5404:	10b30000 	addk	r5, r19, r0
    5408:	e8730048 	lwi	r3, r19, 72
    540c:	bc030018 	beqi	r3, 24		// 5424
    5410:	e8c30088 	lwi	r6, r3, 136
    5414:	bc060010 	beqi	r6, 16		// 5424
    5418:	b000ffff 	imm	-1
    541c:	b9f4faac 	brlid	r15, -1364	// 4ec8 <_free_r>
    5420:	10b30000 	addk	r5, r19, r0
    5424:	e8d30034 	lwi	r6, r19, 52
    5428:	bc060010 	beqi	r6, 16		// 5438
    542c:	b000ffff 	imm	-1
    5430:	b9f4fa98 	brlid	r15, -1384	// 4ec8 <_free_r>
    5434:	10b30000 	addk	r5, r19, r0
    5438:	e8730018 	lwi	r3, r19, 24
    543c:	bc230020 	bnei	r3, 32		// 545c
    5440:	e9e10000 	lwi	r15, r1, 0
    5444:	ea61001c 	lwi	r19, r1, 28
    5448:	eac10020 	lwi	r22, r1, 32
    544c:	eae10024 	lwi	r23, r1, 36
    5450:	eb010028 	lwi	r24, r1, 40
    5454:	b60f0008 	rtsd	r15, 8
    5458:	3021002c 	addik	r1, r1, 44
    545c:	e8730028 	lwi	r3, r19, 40
    5460:	99fc1800 	brald	r15, r3
    5464:	10b30000 	addk	r5, r19, r0
    5468:	e8d300d8 	lwi	r6, r19, 216
    546c:	be06ffd8 	beqid	r6, -40		// 5444
    5470:	e9e10000 	lwi	r15, r1, 0
    5474:	b9f4fd38 	brlid	r15, -712	// 51ac <cleanup_glue>
    5478:	10b30000 	addk	r5, r19, r0
    547c:	e9e10000 	lwi	r15, r1, 0
    5480:	ea61001c 	lwi	r19, r1, 28
    5484:	eac10020 	lwi	r22, r1, 32
    5488:	eae10024 	lwi	r23, r1, 36
    548c:	eb010028 	lwi	r24, r1, 40
    5490:	b60f0008 	rtsd	r15, 8
    5494:	3021002c 	addik	r1, r1, 44

00005498 <_wrapup_reent>:
    5498:	3021ffd8 	addik	r1, r1, -40
    549c:	fae10024 	swi	r23, r1, 36
    54a0:	f9e10000 	swi	r15, r1, 0
    54a4:	fa61001c 	swi	r19, r1, 28
    54a8:	fac10020 	swi	r22, r1, 32
    54ac:	be050064 	beqid	r5, 100		// 5510
    54b0:	12e50000 	addk	r23, r5, r0
    54b4:	ead70048 	lwi	r22, r23, 72
    54b8:	bc16002c 	beqi	r22, 44		// 54e4
    54bc:	ea760004 	lwi	r19, r22, 4
    54c0:	3273ffff 	addik	r19, r19, -1
    54c4:	be530020 	bltid	r19, 32		// 54e4
    54c8:	30730002 	addik	r3, r19, 2
    54cc:	64630402 	bslli	r3, r3, 2
    54d0:	c863b000 	lw	r3, r3, r22
    54d4:	99fc1800 	brald	r15, r3
    54d8:	3273ffff 	addik	r19, r19, -1
    54dc:	beb3fff0 	bgeid	r19, -16		// 54cc
    54e0:	30730002 	addik	r3, r19, 2
    54e4:	e8770028 	lwi	r3, r23, 40
    54e8:	be030014 	beqid	r3, 20		// 54fc
    54ec:	e9e10000 	lwi	r15, r1, 0
    54f0:	99fc1800 	brald	r15, r3
    54f4:	10b70000 	addk	r5, r23, r0
    54f8:	e9e10000 	lwi	r15, r1, 0
    54fc:	ea61001c 	lwi	r19, r1, 28
    5500:	eac10020 	lwi	r22, r1, 32
    5504:	eae10024 	lwi	r23, r1, 36
    5508:	b60f0008 	rtsd	r15, 8
    550c:	30210028 	addik	r1, r1, 40
    5510:	b0000000 	imm	0
    5514:	eae0596c 	lwi	r23, r0, 22892	// 596c <_impure_ptr>
    5518:	b810ffa0 	brid	-96		// 54b8
    551c:	ead70048 	lwi	r22, r23, 72

00005520 <sbrk>:
    5520:	b0000000 	imm	0
    5524:	e8605f14 	lwi	r3, r0, 24340	// 5f14 <heap_ptr>
    5528:	3021ffe4 	addik	r1, r1, -28
    552c:	be03004c 	beqid	r3, 76		// 5578
    5530:	f9e10000 	swi	r15, r1, 0
    5534:	b0000000 	imm	0
    5538:	30807f91 	addik	r4, r0, 32657
    553c:	10a32800 	addk	r5, r3, r5
    5540:	b0000000 	imm	0
    5544:	f8a05f14 	swi	r5, r0, 24340	// 5f14 <heap_ptr>
    5548:	14a52003 	cmpu	r5, r5, r4
    554c:	bea50024 	bgeid	r5, 36		// 5570
    5550:	e9e10000 	lwi	r15, r1, 0
    5554:	b0000000 	imm	0
    5558:	b9f4002c 	brlid	r15, 44	// 5584 <__errno>
    555c:	80000000 	or	r0, r0, r0
    5560:	3080000c 	addik	r4, r0, 12
    5564:	f8830000 	swi	r4, r3, 0
    5568:	3060ffff 	addik	r3, r0, -1
    556c:	e9e10000 	lwi	r15, r1, 0
    5570:	b60f0008 	rtsd	r15, 8
    5574:	3021001c 	addik	r1, r1, 28
    5578:	b0000000 	imm	0
    557c:	30605f90 	addik	r3, r0, 24464	// 5f90 <_heap>
    5580:	b800ffb4 	bri	-76		// 5534

00005584 <__errno>:

int *
__errno ()
{
  return &_REENT->_errno;
}
    5584:	b0000000 	imm	0
    5588:	e860596c 	lwi	r3, r0, 22892	// 596c <_impure_ptr>
    558c:	b60f0008 	rtsd	r15, 8
    5590:	80000000 	or	r0, r0, r0

00005594 <__do_global_ctors_aux>:
    5594:	b0000000 	imm	0
    5598:	e8605898 	lwi	r3, r0, 22680	// 5898 <__CTOR_LIST__>
    559c:	3021ffe0 	addik	r1, r1, -32
    55a0:	f9e10000 	swi	r15, r1, 0
    55a4:	a883ffff 	xori	r4, r3, -1
    55a8:	be040028 	beqid	r4, 40		// 55d0
    55ac:	fa61001c 	swi	r19, r1, 28
    55b0:	b0000000 	imm	0
    55b4:	32605898 	addik	r19, r0, 22680	// 5898 <__CTOR_LIST__>
    55b8:	99fc1800 	brald	r15, r3
    55bc:	80000000 	or	r0, r0, r0
    55c0:	e873fffc 	lwi	r3, r19, -4
    55c4:	a883ffff 	xori	r4, r3, -1
    55c8:	be24fff0 	bneid	r4, -16		// 55b8
    55cc:	3273fffc 	addik	r19, r19, -4
    55d0:	e9e10000 	lwi	r15, r1, 0
    55d4:	ea61001c 	lwi	r19, r1, 28
    55d8:	b60f0008 	rtsd	r15, 8
    55dc:	30210020 	addik	r1, r1, 32

000055e0 <main>:
  }
  cbuffer_push_back(rx_buffer, rx_tmp_buffer);
  XUartLite_Recv(&UartLite, (u8*)&rx_tmp_buffer, sizeof(uint32_t));
}

int main(void) {
    55e0:	3021ffe4 	addik	r1, r1, -28
    55e4:	f9e10000 	swi	r15, r1, 0
  init_platform();
    55e8:	b000ffff 	imm	-1
    55ec:	b9f4bf3c 	brlid	r15, -16580	// 1528 <init_platform>
    55f0:	80000000 	or	r0, r0, r0

  setup_tracer((uint32_t*)0xF0000004, 4); 
    55f4:	b000f000 	imm	-4096
    55f8:	30a00004 	addik	r5, r0, 4
    55fc:	b000ffff 	imm	-1
    5600:	b9f4cf6c 	brlid	r15, -12436	// 256c <setup_tracer>
    5604:	30c00004 	addik	r6, r0, 4
  
  LOG_INFO("UART oRSC FE echo test\n");

  tx_buffer = cbuffer_new();
    5608:	b000ffff 	imm	-1
    560c:	b9f4c61c 	brlid	r15, -14820	// 1c28 <cbuffer_new>
    5610:	80000000 	or	r0, r0, r0
    5614:	b0000000 	imm	0
    5618:	f8605ed0 	swi	r3, r0, 24272	// 5ed0 <tx_buffer>
  rx_buffer = cbuffer_new();
    561c:	b000ffff 	imm	-1
    5620:	b9f4c608 	brlid	r15, -14840	// 1c28 <cbuffer_new>
    5624:	80000000 	or	r0, r0, r0
    5628:	b0000000 	imm	0
    562c:	f8605ed4 	swi	r3, r0, 24276	// 5ed4 <rx_buffer>

  int Status;
  u16 DeviceId = UARTLITE_DEVICE_ID;     

  LOG_INFO("wtf1\n");
  set_trace_flag(1);
    5630:	b000ffff 	imm	-1
    5634:	b9f4cf50 	brlid	r15, -12464	// 2584 <set_trace_flag>
    5638:	30a00001 	addik	r5, r0, 1

  /*
   * Initialize the UartLite driver so that it's ready to use.
   */
  Status = XUartLite_Initialize(&UartLite, DeviceId);
    563c:	b0000000 	imm	0
    5640:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    5644:	b000ffff 	imm	-1
    5648:	b9f4dce0 	brlid	r15, -8992	// 3328 <XUartLite_Initialize>
    564c:	10c00000 	addk	r6, r0, r0
  if (Status != XST_SUCCESS) {
    5650:	be030014 	beqid	r3, 20		// 5664
    5654:	e9e10000 	lwi	r15, r1, 0
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    }
  }

}
    5658:	30600001 	addik	r3, r0, 1
    565c:	b60f0008 	rtsd	r15, 8
    5660:	3021001c 	addik	r1, r1, 28
  if (Status != XST_SUCCESS) {
    LOG_ERROR ("Error: could not initialize UART\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf2\n");
  set_trace_flag(2);
    5664:	b000ffff 	imm	-1
    5668:	b9f4cf1c 	brlid	r15, -12516	// 2584 <set_trace_flag>
    566c:	30a00002 	addik	r5, r0, 2

  XUartLite_ResetFifos(&UartLite);
    5670:	b0000000 	imm	0
    5674:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    5678:	b000ffff 	imm	-1
    567c:	b9f4d6ac 	brlid	r15, -10580	// 2d28 <XUartLite_ResetFifos>
    5680:	80000000 	or	r0, r0, r0

  /*
   * Perform a self-test to ensure that the hardware was built correctly.
   */
  Status = XUartLite_SelfTest(&UartLite);
    5684:	b0000000 	imm	0
    5688:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    568c:	b000ffff 	imm	-1
    5690:	b9f4dbb0 	brlid	r15, -9296	// 3240 <XUartLite_SelfTest>
    5694:	80000000 	or	r0, r0, r0
  if (Status != XST_SUCCESS) {
    5698:	be23ffc0 	bneid	r3, -64		// 5658
    569c:	e9e10000 	lwi	r15, r1, 0
    LOG_ERROR ("Error: self test failed\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf3 - help\n");
  set_trace_flag(3);
    56a0:	b000ffff 	imm	-1
    56a4:	b9f4cee0 	brlid	r15, -12576	// 2584 <set_trace_flag>
    56a8:	30a00003 	addik	r5, r0, 3

  /*
   * Connect the UartLite to the interrupt subsystem such that interrupts can
   * occur. This function is application specific.
   */
  Status = SetupInterruptSystem(&UartLite);
    56ac:	b0000000 	imm	0
    56b0:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    56b4:	b000ffff 	imm	-1
    56b8:	b9f4bfa4 	brlid	r15, -16476	// 165c <SetupInterruptSystem>
    56bc:	80000000 	or	r0, r0, r0
  if (Status != XST_SUCCESS) {
    56c0:	be23ff98 	bneid	r3, -104		// 5658
    56c4:	e9e10000 	lwi	r15, r1, 0
    LOG_ERROR ("Error: could not setup interrupts\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf4\n");
  set_trace_flag(4);
    56c8:	b000ffff 	imm	-1
    56cc:	b9f4ceb8 	brlid	r15, -12616	// 2584 <set_trace_flag>
    56d0:	30a00004 	addik	r5, r0, 4
   * Setup the handlers for the UartLite that will be called from the
   * interrupt context when data has been sent and received, specify a
   * pointer to the UartLite driver instance as the callback reference so
   * that the handlers are able to access the instance data.
   */
  XUartLite_SetSendHandler(&UartLite, SendHandler, &UartLite);
    56d4:	b0000000 	imm	0
    56d8:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    56dc:	b0000000 	imm	0
    56e0:	30c015ac 	addik	r6, r0, 5548	// 15ac <SendHandler>
    56e4:	b000ffff 	imm	-1
    56e8:	b9f4d26c 	brlid	r15, -11668	// 2954 <XUartLite_SetSendHandler>
    56ec:	10e50000 	addk	r7, r5, r0
  XUartLite_SetRecvHandler(&UartLite, RecvHandler, &UartLite);
    56f0:	b0000000 	imm	0
    56f4:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    56f8:	b0000000 	imm	0
    56fc:	30c01560 	addik	r6, r0, 5472	// 1560 <RecvHandler>
    5700:	b000ffff 	imm	-1
    5704:	b9f4d198 	brlid	r15, -11880	// 289c <XUartLite_SetRecvHandler>
    5708:	10e50000 	addk	r7, r5, r0

  set_trace_flag(5);
    570c:	b000ffff 	imm	-1
    5710:	b9f4ce74 	brlid	r15, -12684	// 2584 <set_trace_flag>
    5714:	30a00005 	addik	r5, r0, 5
  /*
   * Enable the interrupt of the UartLite so that interrupts will occur.
   */
  XUartLite_EnableInterrupt(&UartLite);
    5718:	b0000000 	imm	0
    571c:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    5720:	b000ffff 	imm	-1
    5724:	b9f4d46c 	brlid	r15, -11156	// 2b90 <XUartLite_EnableInterrupt>
    5728:	80000000 	or	r0, r0, r0

  set_trace_flag(6);
    572c:	b000ffff 	imm	-1
    5730:	b9f4ce54 	brlid	r15, -12716	// 2584 <set_trace_flag>
    5734:	30a00006 	addik	r5, r0, 6

  // bootstrap the READ
  LOG_DEBUG("Bootstrapping READ\n");
  XUartLite_Recv(&UartLite, (u8*)&rx_tmp_buffer, sizeof(uint32_t));
    5738:	b0000000 	imm	0
    573c:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
    5740:	b0000000 	imm	0
    5744:	30c05ecc 	addik	r6, r0, 24268	// 5ecc <rx_tmp_buffer>
    5748:	b000ffff 	imm	-1
    574c:	b9f4d9a8 	brlid	r15, -9816	// 30f4 <XUartLite_Recv>
    5750:	30e00004 	addik	r7, r0, 4

  set_trace_flag(7);
    5754:	b000ffff 	imm	-1
    5758:	b9f4ce2c 	brlid	r15, -12756	// 2584 <set_trace_flag>
    575c:	30a00007 	addik	r5, r0, 7
  unsigned int heartbeat = 0;
  while (1) {
    if (heartbeat++ % (1 << 8)) {
      //LOG_DEBUG("bump %x\n", heartbeat);
    }
    set_trace_flag(8);
    5760:	b000ffff 	imm	-1
    5764:	b9f4ce20 	brlid	r15, -12768	// 2584 <set_trace_flag>
    5768:	30a00008 	addik	r5, r0, 8	// 8 <_vector_sw_exception>
    while (cbuffer_size(rx_buffer) && cbuffer_freespace(tx_buffer)) {
    576c:	b8000044 	bri	68		// 57b0
    5770:	b0000000 	imm	0
    5774:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    5778:	b000ffff 	imm	-1
    577c:	b9f4c6dc 	brlid	r15, -14628	// 1e58 <cbuffer_freespace>
    5780:	80000000 	or	r0, r0, r0
    5784:	bc030044 	beqi	r3, 68		// 57c8
      uint32_t data = cbuffer_pop_front(rx_buffer);
    5788:	b0000000 	imm	0
    578c:	e8a05ed4 	lwi	r5, r0, 24276	// 5ed4 <rx_buffer>
    5790:	b000ffff 	imm	-1
    5794:	b9f4cab4 	brlid	r15, -13644	// 2248 <cbuffer_pop_front>
    5798:	80000000 	or	r0, r0, r0
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    579c:	b0000000 	imm	0
    57a0:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    57a4:	b000ffff 	imm	-1
    57a8:	b9f4c7a4 	brlid	r15, -14428	// 1f4c <cbuffer_push_back>
    57ac:	10c30000 	addk	r6, r3, r0
  while (1) {
    if (heartbeat++ % (1 << 8)) {
      //LOG_DEBUG("bump %x\n", heartbeat);
    }
    set_trace_flag(8);
    while (cbuffer_size(rx_buffer) && cbuffer_freespace(tx_buffer)) {
    57b0:	b0000000 	imm	0
    57b4:	e8a05ed4 	lwi	r5, r0, 24276	// 5ed4 <rx_buffer>
    57b8:	b000ffff 	imm	-1
    57bc:	b9f4c528 	brlid	r15, -15064	// 1ce4 <cbuffer_size>
    57c0:	80000000 	or	r0, r0, r0
    57c4:	bc23ffac 	bnei	r3, -84		// 5770
      uint32_t data = cbuffer_pop_front(rx_buffer);
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    }
    if (!currently_sending && cbuffer_size(tx_buffer)) {
    57c8:	b0000000 	imm	0
    57cc:	e8605ec8 	lwi	r3, r0, 24264	// 5ec8 <currently_sending>
    57d0:	bc23ff90 	bnei	r3, -112		// 5760
    57d4:	b0000000 	imm	0
    57d8:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
    57dc:	b000ffff 	imm	-1
    57e0:	b9f4c504 	brlid	r15, -15100	// 1ce4 <cbuffer_size>
    57e4:	80000000 	or	r0, r0, r0
    57e8:	be03ff78 	beqid	r3, -136		// 5760
    57ec:	30600001 	addik	r3, r0, 1
      } else {
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    57f0:	b0000000 	imm	0
    57f4:	e8a05ed0 	lwi	r5, r0, 24272	// 5ed0 <tx_buffer>
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    }
    if (!currently_sending && cbuffer_size(tx_buffer)) {
      LOG_DEBUG("\nREINT SEND\n");
      currently_sending = 1;
    57f8:	b0000000 	imm	0
    57fc:	f8605ec8 	swi	r3, r0, 24264	// 5ec8 <currently_sending>
      } else {
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    5800:	b000ffff 	imm	-1
    5804:	b9f4c504 	brlid	r15, -15100	// 1d08 <cbuffer_contiguous_data_size>
    5808:	80000000 	or	r0, r0, r0
      u8* output_ptr = (u8*)&(tx_buffer->data[tx_buffer->pos]);
    580c:	b0000000 	imm	0
    5810:	e8805ed0 	lwi	r4, r0, 24272	// 5ed0 <tx_buffer>
      //LOG_DEBUG("REINIT %x\n", to_send);
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    5814:	60e30004 	muli	r7, r3, 4
    5818:	b0000000 	imm	0
    581c:	30a05f28 	addik	r5, r0, 24360	// 5f28 <UartLite>
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
      u8* output_ptr = (u8*)&(tx_buffer->data[tx_buffer->pos]);
    5820:	e8640008 	lwi	r3, r4, 8
    5824:	e8c40000 	lwi	r6, r4, 0
    5828:	60630004 	muli	r3, r3, 4
      //LOG_DEBUG("REINIT %x\n", to_send);
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    582c:	b000ffff 	imm	-1
    5830:	b9f4d6ac 	brlid	r15, -10580	// 2edc <XUartLite_Send>
    5834:	10c61800 	addk	r6, r6, r3
    5838:	b800ff28 	bri	-216		// 5760

Disassembly of section .init:

0000583c <__init>:
    583c:	3021fff8 	addik	r1, r1, -8
    5840:	d9e00800 	sw	r15, r0, r1
    5844:	3160ffff 	addik	r11, r0, -1
    5848:	940bc802 	mts	rshr, r11
    584c:	31600000 	addik	r11, r0, 0
    5850:	940bc800 	mts	rslr, r11
    5854:	b000ffff 	imm	-1
    5858:	b9f4a8e8 	brlid	r15, -22296	// 140 <frame_dummy>
    585c:	80000000 	or	r0, r0, r0
    5860:	b000ffff 	imm	-1
    5864:	b9f4fd30 	brlid	r15, -720	// 5594 <__do_global_ctors_aux>
    5868:	80000000 	or	r0, r0, r0
    586c:	c9e00800 	lw	r15, r0, r1
    5870:	b60f0008 	rtsd	r15, 8
    5874:	30210008 	addik	r1, r1, 8

Disassembly of section .fini:

00005878 <__fini>:
    5878:	3021fff8 	addik	r1, r1, -8
    587c:	d9e00800 	sw	r15, r0, r1
    5880:	b000ffff 	imm	-1
    5884:	b9f4a800 	brlid	r15, -22528	// 84 <__do_global_dtors_aux>
    5888:	80000000 	or	r0, r0, r0
    588c:	c9e00800 	lw	r15, r0, r1
    5890:	b60f0008 	rtsd	r15, 8
    5894:	30210008 	addik	r1, r1, 8
