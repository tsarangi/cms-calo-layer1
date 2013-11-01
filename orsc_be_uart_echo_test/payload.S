
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
      54:	31a05f08 	addik	r13, r0, 24328	// 5f08 <_SDA_BASE_>
      58:	b0000000 	imm	0
      5c:	30405961 	addik	r2, r0, 22881	// 5961 <_SDA2_BASE_>
      60:	b0000000 	imm	0
      64:	302072f8 	addik	r1, r0, 29432
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
      88:	e0605f08 	lbui	r3, r0, 24328	// 5f08 <_SDA_BASE_>
      8c:	3021ffe0 	addik	r1, r1, -32
      90:	f9e10000 	swi	r15, r1, 0
      94:	be23009c 	bneid	r3, 156		// 130
      98:	fa61001c 	swi	r19, r1, 28
      9c:	b0000000 	imm	0
      a0:	308058d8 	addik	r4, r0, 22744	// 58d8 <__CTOR_END__>
      a4:	b0000000 	imm	0
      a8:	30a058dc 	addik	r5, r0, 22748	// 58dc <__DTOR_END__>
      ac:	b0000000 	imm	0
      b0:	e8605f0c 	lwi	r3, r0, 24332	// 5f0c <dtor_idx.2337>
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
      dc:	308458d8 	addik	r4, r4, 22744
      e0:	e8840000 	lwi	r4, r4, 0
      e4:	b0000000 	imm	0
      e8:	f8605f0c 	swi	r3, r0, 24332	// 5f0c <dtor_idx.2337>
      ec:	99fc2000 	brald	r15, r4
      f0:	80000000 	or	r0, r0, r0
      f4:	b0000000 	imm	0
      f8:	e8605f0c 	lwi	r3, r0, 24332	// 5f0c <dtor_idx.2337>
      fc:	14931803 	cmpu	r4, r19, r3
     100:	be44ffd4 	bltid	r4, -44		// d4
     104:	30630001 	addik	r3, r3, 1
     108:	b0000000 	imm	0
     10c:	30600000 	addik	r3, r0, 0
     110:	bc030014 	beqi	r3, 20		// 124
     114:	b0000000 	imm	0
     118:	30a05efc 	addik	r5, r0, 24316	// 5efc <__data_end>
     11c:	99fc1800 	brald	r15, r3
     120:	80000000 	or	r0, r0, r0
     124:	30600001 	addik	r3, r0, 1
     128:	b0000000 	imm	0
     12c:	f0605f08 	sbi	r3, r0, 24328	// 5f08 <_SDA_BASE_>
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
     158:	30a05efc 	addik	r5, r0, 24316	// 5efc <__data_end>
     15c:	b0000000 	imm	0
     160:	30c05f10 	addik	r6, r0, 24336	// 5f10 <object.2347>
     164:	99fc1800 	brald	r15, r3
     168:	80000000 	or	r0, r0, r0
     16c:	b0000000 	imm	0
     170:	e8605f00 	lwi	r3, r0, 24320	// 5f00 <__JCR_END__>
     174:	be030028 	beqid	r3, 40		// 19c
     178:	e9e10000 	lwi	r15, r1, 0
     17c:	b0000000 	imm	0
     180:	30600000 	addik	r3, r0, 0
     184:	bc030018 	beqi	r3, 24		// 19c
     188:	b0000000 	imm	0
     18c:	30a05f00 	addik	r5, r0, 24320	// 5f00 <__JCR_END__>
     190:	99fc1800 	brald	r15, r3
     194:	80000000 	or	r0, r0, r0
     198:	e9e10000 	lwi	r15, r1, 0
     19c:	b60f0008 	rtsd	r15, 8
     1a0:	3021001c 	addik	r1, r1, 28

000001a4 <_crtinit>:
     1a4:	2021ffec 	addi	r1, r1, -20
     1a8:	f9e10000 	swi	r15, r1, 0
     1ac:	b0000000 	imm	0
     1b0:	20c05f08 	addi	r6, r0, 24328	// 5f08 <_SDA_BASE_>
     1b4:	b0000000 	imm	0
     1b8:	20e05f08 	addi	r7, r0, 24328	// 5f08 <_SDA_BASE_>
     1bc:	06463800 	rsub	r18, r6, r7
     1c0:	bc720014 	blei	r18, 20		// 1d4
     1c4:	f8060000 	swi	r0, r6, 0
     1c8:	20c60004 	addi	r6, r6, 4
     1cc:	06463800 	rsub	r18, r6, r7
     1d0:	bc92fff4 	bgti	r18, -12		// 1c4
     1d4:	b0000000 	imm	0
     1d8:	20c05f08 	addi	r6, r0, 24328	// 5f08 <_SDA_BASE_>
     1dc:	b0000000 	imm	0
     1e0:	20e06004 	addi	r7, r0, 24580	// 6004 <__bss_end>
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
     20c:	b9f45668 	brlid	r15, 22120	// 5874 <__init>
     210:	80000000 	or	r0, r0, r0
     214:	20c00000 	addi	r6, r0, 0
     218:	20e00000 	addi	r7, r0, 0
     21c:	b0000000 	imm	0
     220:	b9f453f8 	brlid	r15, 21496	// 5618 <main>
     224:	20a00000 	addi	r5, r0, 0
     228:	32630000 	addik	r19, r3, 0
     22c:	b0000000 	imm	0
     230:	b9f45680 	brlid	r15, 22144	// 58b0 <__fini>
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
     2a0:	3060596c 	addik	r3, r0, 22892	// 596c <MB_InterruptVectorTable>
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
     318:	3060596c 	addik	r3, r0, 22892	// 596c <MB_InterruptVectorTable>
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
     328:	60a50048 	muli	r5, r5, 72
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
     34c:	3265597c 	addik	r19, r5, 22908

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
     364:	be0400ac 	beqid	r4, 172		// 410
     368:	86d62800 	and	r22, r22, r5
* for the interrupt controller. XPAR_INTC_MAX_NUM_INTR_INPUTS specifies the
* highest numbered interrupt input signal that is used.
*
******************************************************************************/
void XIntc_DeviceInterruptHandler(void *DeviceId)
{
     36c:	33000006 	addik	r24, r0, 6
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
     38c:	be050054 	beqid	r5, 84		// 3e0
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
     3b8:	bc23000c 	bnei	r3, 12		// 3c4
				XIntc_AckIntr(CfgPtr->BaseAddress, IntrMask);
     3bc:	e8730004 	lwi	r3, r19, 4
     3c0:	fae3000c 	swi	r23, r3, 12

			/*
			 * Read the ISR again to handle architectures with posted write
			 * bus access issues.
			 */
			 XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     3c4:	e8730004 	lwi	r3, r19, 4
			/*
			 * If only the highest priority interrupt is to be
			 * serviced, exit loop and return after servicing
			 * the interrupt
			 */
			if (CfgPtr->Options == XIN_SVC_SGL_ISR_OPTION) {
     3c8:	e8930014 	lwi	r4, r19, 20

			/*
			 * Read the ISR again to handle architectures with posted write
			 * bus access issues.
			 */
			 XIntc_GetIntrStatus(CfgPtr->BaseAddress);
     3cc:	e8a30000 	lwi	r5, r3, 0
     3d0:	e8a30008 	lwi	r5, r3, 8
			/*
			 * If only the highest priority interrupt is to be
			 * serviced, exit loop and return after servicing
			 * the interrupt
			 */
			if (CfgPtr->Options == XIN_SVC_SGL_ISR_OPTION) {
     3d4:	a8840001 	xori	r4, r4, 1
     3d8:	be04001c 	beqid	r4, 28		// 3f4
     3dc:	e9e10000 	lwi	r15, r1, 0
		IntrStatus >>= 1;

		/* If there are no other bits set indicating that all interrupts
		 * have been serviced, then exit the loop
		 */
		if (IntrStatus == 0) {
     3e0:	be160010 	beqid	r22, 16		// 3f0
     3e4:	12f7b800 	addk	r23, r23, r23
	}
	/* Service each interrupt that is active and enabled by checking each
	 * bit in the register from LSB to MSB which corresponds to an interrupt
	 * intput signal
	 */
	for (IntrNumber = 0; IntrNumber < XPAR_INTC_MAX_NUM_INTR_INPUTS;
     3e8:	be38ff90 	bneid	r24, -112		// 378
     3ec:	33390001 	addik	r25, r25, 1
		 */
		if (IntrStatus == 0) {
			break;
		}
	}
}
     3f0:	e9e10000 	lwi	r15, r1, 0
     3f4:	ea61001c 	lwi	r19, r1, 28
     3f8:	eac10020 	lwi	r22, r1, 32
     3fc:	eae10024 	lwi	r23, r1, 36
     400:	eb010028 	lwi	r24, r1, 40
     404:	eb21002c 	lwi	r25, r1, 44
     408:	b60f0008 	rtsd	r15, 8
     40c:	30210030 	addik	r1, r1, 48
	/* Get the interrupts that are waiting to be serviced */
	IntrStatus = XIntc_GetIntrStatus(CfgPtr->BaseAddress);

	/* Mask the Fast Interrupts */
	if (CfgPtr->FastIntr == TRUE) {
		Imr = XIntc_In32(CfgPtr->BaseAddress + XIN_IMR_OFFSET);
     410:	e8830020 	lwi	r4, r3, 32
		IntrStatus &=  ~Imr;
     414:	a884ffff 	xori	r4, r4, -1
     418:	b810ff54 	brid	-172		// 36c
     41c:	86d62000 	and	r22, r22, r4

00000420 <XIntc_LowLevelInterruptHandler>:
* to be included in the driver compilation.
*
******************************************************************************/
#ifdef XPAR_INTC_SINGLE_DEVICE_ID
void XIntc_LowLevelInterruptHandler(void)
{
     420:	3021ffe4 	addik	r1, r1, -28
     424:	f9e10000 	swi	r15, r1, 0
	 * A level of indirection here because the interrupt handler used with
	 * the driver interface given in this file needs to remain void - no
	 * arguments.  So we need the globally defined device ID of THE
	 * interrupt controller.
	 */
	XIntc_DeviceInterruptHandler((void *) XPAR_INTC_SINGLE_DEVICE_ID);
     428:	b9f4ff00 	brlid	r15, -256	// 328 <XIntc_DeviceInterruptHandler>
     42c:	10a00000 	addk	r5, r0, r0
}
     430:	e9e10000 	lwi	r15, r1, 0
     434:	b60f0008 	rtsd	r15, 8
     438:	3021001c 	addik	r1, r1, 28

0000043c <XIntc_SetIntrSvcOption>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].BaseAddress == BaseAddress) {
     43c:	b0000000 	imm	0
     440:	e8605980 	lwi	r3, r0, 22912
     444:	88a51800 	xor	r5, r5, r3
     448:	bc05000c 	beqi	r5, 12		// 454
     44c:	b60f0008 	rtsd	r15, 8
     450:	80000000 	or	r0, r0, r0
{
	XIntc_Config *CfgPtr;

	CfgPtr = LookupConfigByBaseAddress(BaseAddress);
	if (CfgPtr != NULL) {
		CfgPtr->Options = Option;
     454:	b0000000 	imm	0
     458:	30605980 	addik	r3, r0, 22912
     45c:	b60f0008 	rtsd	r15, 8
     460:	f8c30010 	swi	r6, r3, 16

00000464 <XIntc_RegisterHandler>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].BaseAddress == BaseAddress) {
     464:	b0000000 	imm	0
     468:	e8605980 	lwi	r3, r0, 22912
     46c:	88a51800 	xor	r5, r5, r3
     470:	bc05000c 	beqi	r5, 12		// 47c
     474:	b60f0008 	rtsd	r15, 8
     478:	80000000 	or	r0, r0, r0
{
	XIntc_Config *CfgPtr;

	CfgPtr = LookupConfigByBaseAddress(BaseAddress);
	if (CfgPtr != NULL) {
		CfgPtr->HandlerTable[InterruptId].Handler = Handler;
     47c:	64660403 	bslli	r3, r6, 3
     480:	b0000000 	imm	0
     484:	f8e35994 	swi	r7, r3, 22932
		CfgPtr->HandlerTable[InterruptId].CallBackRef = CallBackRef;
     488:	b0000000 	imm	0
     48c:	f9035998 	swi	r8, r3, 22936
     490:	b60f0008 	rtsd	r15, 8
     494:	80000000 	or	r0, r0, r0

00000498 <XIntc_RegisterFastHandler>:
	u32 Imr;

	CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);

	/* Convert from integer id to bit mask */
	Mask = XIntc_BitPosMask[Id];
     498:	64c60402 	bslli	r6, r6, 2
     49c:	b0000000 	imm	0
     4a0:	30665f80 	addik	r3, r6, 24448
{
	u32 CurrentIER;
	u32 Mask;
	u32 Imr;

	CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4a4:	e8850008 	lwi	r4, r5, 8

	/* Convert from integer id to bit mask */
	Mask = XIntc_BitPosMask[Id];
     4a8:	e8630000 	lwi	r3, r3, 0

	if (CurrentIER & Mask) {
     4ac:	84832000 	and	r4, r3, r4
     4b0:	be040048 	beqid	r4, 72		// 4f8
     4b4:	30850100 	addik	r4, r5, 256
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4b8:	e8850008 	lwi	r4, r5, 8
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
     4bc:	a923ffff 	xori	r9, r3, -1
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     4c0:	31050100 	addik	r8, r5, 256
	Mask = XIntc_BitPosMask[Id];

	if (CurrentIER & Mask) {
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
     4c4:	85292000 	and	r9, r9, r4
     4c8:	f9250008 	swi	r9, r5, 8
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     4cc:	d8e64000 	sw	r7, r6, r8
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
     4d0:	e8c50020 	lwi	r6, r5, 32
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);


	/* Enable Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     4d4:	84841800 	and	r4, r4, r3

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);
     4d8:	80c61800 	or	r6, r6, r3
     4dc:	f8c50020 	swi	r6, r5, 32


	/* Enable Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     4e0:	bc040028 	beqi	r4, 40		// 508
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
     4e4:	e8850008 	lwi	r4, r5, 8
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER | Mask));
     4e8:	80641800 	or	r3, r4, r3
     4ec:	f8650008 	swi	r3, r5, 8
     4f0:	b60f0008 	rtsd	r15, 8
     4f4:	80000000 	or	r0, r0, r0
		/* Disable Interrupt if it was enabled */
		CurrentIER = XIntc_In32(BaseAddress + XIN_IER_OFFSET);
		XIntc_Out32(BaseAddress + XIN_IER_OFFSET,(CurrentIER & ~Mask));
	}

	XIntc_Out32(BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     4f8:	d8e62000 	sw	r7, r6, r4
				    	(u32) FastHandler);

	Imr = XIntc_In32(BaseAddress + XIN_IMR_OFFSET);
     4fc:	e8850020 	lwi	r4, r5, 32
	XIntc_Out32(BaseAddress + XIN_IMR_OFFSET, Imr | Mask);
     500:	80641800 	or	r3, r4, r3
     504:	f8650020 	swi	r3, r5, 32
     508:	b60f0008 	rtsd	r15, 8
     50c:	80000000 	or	r0, r0, r0

00000510 <StubHandler>:
*
* @note		None.
*
******************************************************************************/
static void StubHandler(void *CallBackRef)
{
     510:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     514:	be050028 	beqid	r5, 40		// 53c
     518:	f9e10000 	swi	r15, r1, 0

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
     51c:	e865000c 	lwi	r3, r5, 12
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     520:	b0000000 	imm	0
     524:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
     528:	30630001 	addik	r3, r3, 1
     52c:	f865000c 	swi	r3, r5, 12
}
     530:	e9e10000 	lwi	r15, r1, 0
     534:	b60f0008 	rtsd	r15, 8
     538:	3021001c 	addik	r1, r1, 28
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     53c:	b0000000 	imm	0
     540:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     544:	b0000000 	imm	0
     548:	b9f40c14 	brlid	r15, 3092	// 115c <Xil_Assert>
     54c:	30c0023f 	addik	r6, r0, 575

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
}
     550:	e9e10000 	lwi	r15, r1, 0
static void StubHandler(void *CallBackRef)
{
	/*
	 * Verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);
     554:	30600001 	addik	r3, r0, 1
     558:	b0000000 	imm	0
     55c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XIntc *) CallBackRef)->UnhandledInterrupts++;
}
     560:	b60f0008 	rtsd	r15, 8
     564:	3021001c 	addik	r1, r1, 28

00000568 <XIntc_Initialize>:
*
* @note		None.
*
******************************************************************************/
int XIntc_Initialize(XIntc * InstancePtr, u16 DeviceId)
{
     568:	3021ffe0 	addik	r1, r1, -32
     56c:	fa61001c 	swi	r19, r1, 28
     570:	f9e10000 	swi	r15, r1, 0
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     574:	be050050 	beqid	r5, 80		// 5c4
     578:	12650000 	addk	r19, r5, r0
	/*
	 * If the device is started, disallow the initialize and return a status
	 * indicating it is started.  This allows the user to stop the device
	 * and reinitialize, but prevents a user from inadvertently initializing
	 */
	if (InstancePtr->IsStarted == XIL_COMPONENT_IS_STARTED) {
     57c:	e8850008 	lwi	r4, r5, 8
{
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     580:	b0000000 	imm	0
     584:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	/*
	 * If the device is started, disallow the initialize and return a status
	 * indicating it is started.  This allows the user to stop the device
	 * and reinitialize, but prevents a user from inadvertently initializing
	 */
	if (InstancePtr->IsStarted == XIL_COMPONENT_IS_STARTED) {
     588:	b0002222 	imm	8738
     58c:	a8842222 	xori	r4, r4, 8738
     590:	be040024 	beqid	r4, 36		// 5b4
     594:	30600005 	addik	r3, r0, 5
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].DeviceId == DeviceId) {
     598:	b0000000 	imm	0
     59c:	e460597c 	lhui	r3, r0, 22908	// 597c <XIntc_ConfigTable>
     5a0:	b0000000 	imm	0
     5a4:	3080597c 	addik	r4, r0, 22908	// 597c <XIntc_ConfigTable>
     5a8:	88c33000 	xor	r6, r3, r6
     5ac:	be060040 	beqid	r6, 64		// 5ec
     5b0:	30600002 	addik	r3, r0, 2
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
}
     5b4:	e9e10000 	lwi	r15, r1, 0
     5b8:	ea61001c 	lwi	r19, r1, 28
     5bc:	b60f0008 	rtsd	r15, 8
     5c0:	30210020 	addik	r1, r1, 32
{
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;

	Xil_AssertNonvoid(InstancePtr != NULL);
     5c4:	b0000000 	imm	0
     5c8:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     5cc:	b0000000 	imm	0
     5d0:	b9f40b8c 	brlid	r15, 2956	// 115c <Xil_Assert>
     5d4:	30c0008b 	addik	r6, r0, 139
     5d8:	30600001 	addik	r3, r0, 1
     5dc:	b0000000 	imm	0
     5e0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     5e4:	b810ffd0 	brid	-48		// 5b4
     5e8:	10730000 	addk	r3, r19, r0
	}

	/*
	 * Set some default values
	 */
	InstancePtr->IsReady = 0;
     5ec:	f8c50004 	swi	r6, r5, 4
	InstancePtr->IsStarted = 0;	/* not started */
     5f0:	f8c50008 	swi	r6, r5, 8
	InstancePtr->CfgPtr = CfgPtr;
     5f4:	f8850010 	swi	r4, r5, 16
	 * interrupt can be accessed
	 */
#if (XPAR_XINTC_USE_DCR_BRIDGE != 0)
	InstancePtr->BaseAddress = ((CfgPtr->BaseAddress >> 2)) & 0xFFF;
#else
	InstancePtr->BaseAddress = CfgPtr->BaseAddress;
     5f8:	b0000000 	imm	0
     5fc:	e8605980 	lwi	r3, r0, 22912
	 */
	InstancePtr->IsReady = 0;
	InstancePtr->IsStarted = 0;	/* not started */
	InstancePtr->CfgPtr = CfgPtr;

	InstancePtr->CfgPtr->Options = XIN_SVC_SGL_ISR_OPTION;
     600:	30a00001 	addik	r5, r0, 1
     604:	f8a40014 	swi	r5, r4, 20
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     608:	b0000000 	imm	0
     60c:	31601154 	addik	r11, r0, 4436	// 1154 <XNullHandler>
******************************************************************************/
int XIntc_Initialize(XIntc * InstancePtr, u16 DeviceId)
{
	u8 Id;
	XIntc_Config *CfgPtr;
	u32 NextBitMask = 1;
     610:	10850000 	addk	r4, r5, r0
	 * interrupt can be accessed
	 */
#if (XPAR_XINTC_USE_DCR_BRIDGE != 0)
	InstancePtr->BaseAddress = ((CfgPtr->BaseAddress >> 2)) & 0xFFF;
#else
	InstancePtr->BaseAddress = CfgPtr->BaseAddress;
     614:	f8730000 	swi	r3, r19, 0
     618:	30600006 	addik	r3, r0, 6
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     61c:	30e60003 	addik	r7, r6, 3
     620:	64a70403 	bslli	r5, r7, 3
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
				StubHandler;
		}
		InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     624:	65060403 	bslli	r8, r6, 3
		 * Initialize the bit position mask table such that bit
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
     628:	65260402 	bslli	r9, r6, 2
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     62c:	b0000000 	imm	0
     630:	30a5597c 	addik	r5, r5, 22908
     634:	e8a50000 	lwi	r5, r5, 0

	/*
	 * Initialize all the data needed to perform interrupt processing for
	 * each interrupt ID up to the maximum used
	 */
	for (Id = 0; Id < XPAR_INTC_MAX_NUM_INTR_INPUTS; Id++) {
     638:	3063ffff 	addik	r3, r3, -1
     63c:	30c60001 	addik	r6, r6, 1
     640:	a46300ff 	andi	r3, r3, 255
		 * initialize it if the handler is 0 or XNullHandler, which
		 * means it was not initialized statically by the tools/user.
		 * Set the callback reference to this instance so that unhandled
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
     644:	be050074 	beqid	r5, 116		// 6b8
     648:	89455800 	xor	r10, r5, r11
     64c:	bc0a006c 	beqi	r10, 108		// 6b8
		 * Initialize the bit position mask table such that bit
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
     650:	b0000000 	imm	0
     654:	f8895f80 	swi	r4, r9, 24448
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
				StubHandler;
		}
		InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     658:	b0000000 	imm	0
     65c:	fa685998 	swi	r19, r8, 22936
		 * positions are lookups only for each interrupt id, with 0
		 * being a special case
		 * (XIntc_BitPosMask[] = { 1, 2, 4, 8, ... })
		 */
		XIntc_BitPosMask[Id] = NextBitMask;
		NextBitMask *= 2;
     660:	10842000 	addk	r4, r4, r4

	/*
	 * Initialize all the data needed to perform interrupt processing for
	 * each interrupt ID up to the maximum used
	 */
	for (Id = 0; Id < XPAR_INTC_MAX_NUM_INTR_INPUTS; Id++) {
     664:	be23ffb8 	bneid	r3, -72		// 61c
     668:	a4c600ff 	andi	r6, r6, 255
	/*
	 * Disable IRQ output signal
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
     66c:	e8930000 	lwi	r4, r19, 0
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     670:	30c0ffff 	addik	r6, r0, -1
	/*
	 * Disable IRQ output signal
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
     674:	f864001c 	swi	r3, r4, 28
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
     678:	e8b30000 	lwi	r5, r19, 0

	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
     67c:	b0000000 	imm	0
     680:	e8805988 	lwi	r4, r0, 22920
	 * Disable IRQ output signal
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
     684:	f8650008 	swi	r3, r5, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     688:	e8b30000 	lwi	r5, r19, 0

	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
     68c:	a8840001 	xori	r4, r4, 1
	 * Disable all interrupt sources
	 * Acknowledge all sources
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET, 0);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, 0xFFFFFFFF);
     690:	f8c5000c 	swi	r6, r5, 12

	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
     694:	bc04003c 	beqi	r4, 60		// 6d0


	/*
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
     698:	b0001111 	imm	4369
     69c:	30601111 	addik	r3, r0, 4369
     6a0:	f8730004 	swi	r3, r19, 4

	return XST_SUCCESS;
}
     6a4:	e9e10000 	lwi	r15, r1, 0
     6a8:	ea61001c 	lwi	r19, r1, 28
	/*
	 * Indicate the instance is now ready to use, successfully initialized
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	return XST_SUCCESS;
     6ac:	10600000 	addk	r3, r0, r0
}
     6b0:	b60f0008 	rtsd	r15, 8
     6b4:	30210020 	addik	r1, r1, 32
		 * interrupts can be tracked.
		 */
		if ((InstancePtr->CfgPtr->HandlerTable[Id].Handler == 0) ||
		    (InstancePtr->CfgPtr->HandlerTable[Id].Handler ==
		     XNullHandler)) {
			InstancePtr->CfgPtr->HandlerTable[Id].Handler =
     6b8:	b0000000 	imm	0
     6bc:	30a00510 	addik	r5, r0, 1296	// 510 <StubHandler>
     6c0:	64e70403 	bslli	r7, r7, 3
     6c4:	b0000000 	imm	0
     6c8:	f8a7597c 	swi	r5, r7, 22908
     6cc:	b800ff84 	bri	-124		// 650
	/*
	 * If the fast Interrupt mode is enabled then set all the
	 * interrupts as normal mode.
	 */
	if(InstancePtr->CfgPtr->FastIntr == TRUE) {
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET, 0);
     6d0:	e8930000 	lwi	r4, r19, 0
     6d4:	f8640020 	swi	r3, r4, 32
     6d8:	b800ffc0 	bri	-64		// 698

000006dc <XIntc_Start>:
*
* @note 	Must be called after XIntc initialization is completed.
*
******************************************************************************/
int XIntc_Start(XIntc * InstancePtr, u8 Mode)
{
     6dc:	3021ffe0 	addik	r1, r1, -32
     6e0:	f9e10000 	swi	r15, r1, 0
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     6e4:	be0500c0 	beqid	r5, 192		// 7a4
     6e8:	fa61001c 	swi	r19, r1, 28
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     6ec:	32600001 	addik	r19, r0, 1
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     6f0:	b0000000 	imm	0
     6f4:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     6f8:	14669803 	cmpu	r3, r6, r19
     6fc:	bc430078 	blti	r3, 120		// 774
			(Mode == XIN_REAL_MODE))
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     700:	e8650004 	lwi	r3, r5, 4
     704:	b0001111 	imm	4369
     708:	a8631111 	xori	r3, r3, 4369
     70c:	bc230038 	bnei	r3, 56		// 744

	/*
	 * Check for simulation mode
	 */
	if (Mode == XIN_SIMULATION_MODE) {
     710:	be26000c 	bneid	r6, 12		// 71c
     714:	30600003 	addik	r3, r0, 3
* @note 	Must be called after XIntc initialization is completed.
*
******************************************************************************/
int XIntc_Start(XIntc * InstancePtr, u8 Mode)
{
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;
     718:	10730000 	addk	r3, r19, r0

	/*
	 * Indicate the instance is ready to be used and is started before we
	 * enable the device.
	 */
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;
     71c:	b0002222 	imm	8738
     720:	30c02222 	addik	r6, r0, 8738

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);
     724:	e8850000 	lwi	r4, r5, 0

	/*
	 * Indicate the instance is ready to be used and is started before we
	 * enable the device.
	 */
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;
     728:	f8c50008 	swi	r6, r5, 8

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);
     72c:	f864001c 	swi	r3, r4, 28

	return XST_SUCCESS;
}
     730:	e9e10000 	lwi	r15, r1, 0
     734:	ea61001c 	lwi	r19, r1, 28
     738:	10600000 	addk	r3, r0, r0
     73c:	b60f0008 	rtsd	r15, 8
     740:	30210020 	addik	r1, r1, 32
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
			(Mode == XIN_REAL_MODE))
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     744:	b0000000 	imm	0
     748:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     74c:	b0000000 	imm	0
     750:	b9f40a0c 	brlid	r15, 2572	// 115c <Xil_Assert>
     754:	30c00112 	addik	r6, r0, 274
     758:	b0000000 	imm	0
     75c:	fa605f9c 	swi	r19, r0, 24476	// 5f9c <Xil_AssertStatus>
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     760:	e9e10000 	lwi	r15, r1, 0
     764:	ea61001c 	lwi	r19, r1, 28
     768:	10600000 	addk	r3, r0, r0
     76c:	b60f0008 	rtsd	r15, 8
     770:	30210020 	addik	r1, r1, 32

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     774:	b0000000 	imm	0
     778:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     77c:	b0000000 	imm	0
     780:	b9f409dc 	brlid	r15, 2524	// 115c <Xil_Assert>
     784:	30c00111 	addik	r6, r0, 273
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     788:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid((Mode == XIN_SIMULATION_MODE) ||
     78c:	b0000000 	imm	0
     790:	fa605f9c 	swi	r19, r0, 24476	// 5f9c <Xil_AssertStatus>
	InstancePtr->IsStarted = XIL_COMPONENT_IS_STARTED;

	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, MasterEnable);

	return XST_SUCCESS;
}
     794:	ea61001c 	lwi	r19, r1, 28
     798:	10600000 	addk	r3, r0, r0
     79c:	b60f0008 	rtsd	r15, 8
     7a0:	30210020 	addik	r1, r1, 32
	u32 MasterEnable = XIN_INT_MASTER_ENABLE_MASK;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     7a4:	b0000000 	imm	0
     7a8:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     7ac:	b0000000 	imm	0
     7b0:	b9f409ac 	brlid	r15, 2476	// 115c <Xil_Assert>
     7b4:	30c0010f 	addik	r6, r0, 271
     7b8:	30600001 	addik	r3, r0, 1
     7bc:	b0000000 	imm	0
     7c0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     7c4:	b810ffa0 	brid	-96		// 764
     7c8:	e9e10000 	lwi	r15, r1, 0

000007cc <XIntc_Stop>:
*
* @note		None.
*
******************************************************************************/
void XIntc_Stop(XIntc * InstancePtr)
{
     7cc:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     7d0:	be050064 	beqid	r5, 100		// 834
     7d4:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     7d8:	e8650004 	lwi	r3, r5, 4
void XIntc_Stop(XIntc * InstancePtr)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     7dc:	b0000000 	imm	0
     7e0:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     7e4:	b0001111 	imm	4369
     7e8:	a8631111 	xori	r3, r3, 4369
     7ec:	bc030030 	beqi	r3, 48		// 81c
     7f0:	b0000000 	imm	0
     7f4:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     7f8:	b0000000 	imm	0
     7fc:	b9f40960 	brlid	r15, 2400	// 115c <Xil_Assert>
     800:	30c0013e 	addik	r6, r0, 318
     804:	30600001 	addik	r3, r0, 1
     808:	b0000000 	imm	0
     80c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * disabling all interrupts in the MER register
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);

	InstancePtr->IsStarted = 0;
}
     810:	e9e10000 	lwi	r15, r1, 0
     814:	b60f0008 	rtsd	r15, 8
     818:	3021001c 	addik	r1, r1, 28

	/*
	 * Stop all interrupts from occurring thru the interrupt controller by
	 * disabling all interrupts in the MER register
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_MER_OFFSET, 0);
     81c:	e8850000 	lwi	r4, r5, 0
     820:	f864001c 	swi	r3, r4, 28

	InstancePtr->IsStarted = 0;
     824:	f8650008 	swi	r3, r5, 8
}
     828:	e9e10000 	lwi	r15, r1, 0
     82c:	b60f0008 	rtsd	r15, 8
     830:	3021001c 	addik	r1, r1, 28
void XIntc_Stop(XIntc * InstancePtr)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     834:	b0000000 	imm	0
     838:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     83c:	b0000000 	imm	0
     840:	b9f4091c 	brlid	r15, 2332	// 115c <Xil_Assert>
     844:	30c0013d 	addik	r6, r0, 317
     848:	30600001 	addik	r3, r0, 1
     84c:	b0000000 	imm	0
     850:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     854:	b810ffc0 	brid	-64		// 814
     858:	e9e10000 	lwi	r15, r1, 0

0000085c <XIntc_Connect>:
* that was previously connected.
*
****************************************************************************/
int XIntc_Connect(XIntc * InstancePtr, u8 Id,
		  XInterruptHandler Handler, void *CallBackRef)
{
     85c:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     860:	be0500bc 	beqid	r5, 188		// 91c
     864:	f9e10000 	swi	r15, r1, 0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     868:	30600005 	addik	r3, r0, 5
		  XInterruptHandler Handler, void *CallBackRef)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     86c:	b0000000 	imm	0
     870:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     874:	14661803 	cmpu	r3, r6, r3
     878:	bc430074 	blti	r3, 116		// 8ec
	Xil_AssertNonvoid(Handler != NULL);
     87c:	bc0700c8 	beqi	r7, 200		// 944
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     880:	e8650004 	lwi	r3, r5, 4
     884:	b0001111 	imm	4369
     888:	a8631111 	xori	r3, r3, 4369
     88c:	be030038 	beqid	r3, 56		// 8c4
     890:	30860003 	addik	r4, r6, 3
     894:	b0000000 	imm	0
     898:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     89c:	b0000000 	imm	0
     8a0:	b9f408bc 	brlid	r15, 2236	// 115c <Xil_Assert>
     8a4:	30c0016c 	addik	r6, r0, 364
     8a8:	30600001 	addik	r3, r0, 1
     8ac:	b0000000 	imm	0
     8b0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     8b4:	e9e10000 	lwi	r15, r1, 0
     8b8:	10600000 	addk	r3, r0, r0
     8bc:	b60f0008 	rtsd	r15, 8
     8c0:	3021001c 	addik	r1, r1, 28

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8c4:	e8650010 	lwi	r3, r5, 16
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8c8:	64c60403 	bslli	r6, r6, 3

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8cc:	64840403 	bslli	r4, r4, 3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8d0:	10c33000 	addk	r6, r3, r6

	/*
	 * The Id is used as an index into the table to select the proper
	 * handler
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
     8d4:	d8e41800 	sw	r7, r4, r3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;
     8d8:	f906001c 	swi	r8, r6, 28

	return XST_SUCCESS;
}
     8dc:	e9e10000 	lwi	r15, r1, 0
     8e0:	10600000 	addk	r3, r0, r0
     8e4:	b60f0008 	rtsd	r15, 8
     8e8:	3021001c 	addik	r1, r1, 28
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     8ec:	b0000000 	imm	0
     8f0:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     8f4:	b0000000 	imm	0
     8f8:	b9f40864 	brlid	r15, 2148	// 115c <Xil_Assert>
     8fc:	30c0016a 	addik	r6, r0, 362
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     900:	e9e10000 	lwi	r15, r1, 0
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     904:	30600001 	addik	r3, r0, 1
     908:	b0000000 	imm	0
     90c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = Handler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = CallBackRef;

	return XST_SUCCESS;
}
     910:	10600000 	addk	r3, r0, r0
     914:	b60f0008 	rtsd	r15, 8
     918:	3021001c 	addik	r1, r1, 28
		  XInterruptHandler Handler, void *CallBackRef)
{
	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     91c:	b0000000 	imm	0
     920:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     924:	b0000000 	imm	0
     928:	b9f40834 	brlid	r15, 2100	// 115c <Xil_Assert>
     92c:	30c00169 	addik	r6, r0, 361
     930:	30600001 	addik	r3, r0, 1
     934:	b0000000 	imm	0
     938:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     93c:	b810ff7c 	brid	-132		// 8b8
     940:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
     944:	b0000000 	imm	0
     948:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     94c:	b0000000 	imm	0
     950:	b9f4080c 	brlid	r15, 2060	// 115c <Xil_Assert>
     954:	30c0016b 	addik	r6, r0, 363
     958:	30600001 	addik	r3, r0, 1
     95c:	b0000000 	imm	0
     960:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     964:	b810ff54 	brid	-172		// 8b8
     968:	e9e10000 	lwi	r15, r1, 0

0000096c <XIntc_Disconnect>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Disconnect(XIntc * InstancePtr, u8 Id)
{
     96c:	3021ffe4 	addik	r1, r1, -28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     970:	be0500d8 	beqid	r5, 216		// a48
     974:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     978:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     97c:	b0000000 	imm	0
     980:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     984:	14661803 	cmpu	r3, r6, r3
     988:	bc430094 	blti	r3, 148		// a1c
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     98c:	e8650004 	lwi	r3, r5, 4
     990:	b0001111 	imm	4369
     994:	a8631111 	xori	r3, r3, 4369
     998:	be030034 	beqid	r3, 52		// 9cc
     99c:	64860402 	bslli	r4, r6, 2
     9a0:	b0000000 	imm	0
     9a4:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     9a8:	b0000000 	imm	0
     9ac:	b9f407b0 	brlid	r15, 1968	// 115c <Xil_Assert>
     9b0:	30c00193 	addik	r6, r0, 403
     9b4:	30600001 	addik	r3, r0, 1
     9b8:	b0000000 	imm	0
     9bc:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     9c0:	e9e10000 	lwi	r15, r1, 0
     9c4:	b60f0008 	rtsd	r15, 8
     9c8:	3021001c 	addik	r1, r1, 28
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     9cc:	64660403 	bslli	r3, r6, 3
	/*
	 * Disable the interrupt such that it won't occur while disconnecting
	 * the handler, only disable the specified interrupt id without
	 * modifying the other interrupt ids
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     9d0:	e8e50000 	lwi	r7, r5, 0

	Mask = XIntc_BitPosMask[Id];/* convert from integer id to bit mask */
     9d4:	b0000000 	imm	0
     9d8:	30845f80 	addik	r4, r4, 24448

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     9dc:	e9040000 	lwi	r8, r4, 0
	/*
	 * Disable the interrupt such that it won't occur while disconnecting
	 * the handler, only disable the specified interrupt id without
	 * modifying the other interrupt ids
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     9e0:	e9270008 	lwi	r9, r7, 8
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     9e4:	e8850010 	lwi	r4, r5, 16
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);

	Mask = XIntc_BitPosMask[Id];/* convert from integer id to bit mask */

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     9e8:	a908ffff 	xori	r8, r8, -1
     9ec:	85084800 	and	r8, r8, r9
     9f0:	f9070008 	swi	r8, r7, 8
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     9f4:	30c60003 	addik	r6, r6, 3
     9f8:	b0000000 	imm	0
     9fc:	30e00510 	addik	r7, r0, 1296	// 510 <StubHandler>
     a00:	64c60403 	bslli	r6, r6, 3
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     a04:	10641800 	addk	r3, r4, r3
	/*
	 * Disconnect the handler and connect a stub, the callback reference
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
     a08:	d8e62000 	sw	r7, r6, r4
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
     a0c:	f8a3001c 	swi	r5, r3, 28
}
     a10:	e9e10000 	lwi	r15, r1, 0
     a14:	b60f0008 	rtsd	r15, 8
     a18:	3021001c 	addik	r1, r1, 28

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a1c:	b0000000 	imm	0
     a20:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     a24:	b0000000 	imm	0
     a28:	b9f40734 	brlid	r15, 1844	// 115c <Xil_Assert>
     a2c:	30c00192 	addik	r6, r0, 402
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     a30:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a34:	30e00001 	addik	r7, r0, 1
     a38:	b0000000 	imm	0
     a3c:	f8e05f9c 	swi	r7, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * must be set to this instance to allow unhandled interrupts to be
	 * tracked
	 */
	InstancePtr->CfgPtr->HandlerTable[Id].Handler = StubHandler;
	InstancePtr->CfgPtr->HandlerTable[Id].CallBackRef = InstancePtr;
}
     a40:	b60f0008 	rtsd	r15, 8
     a44:	3021001c 	addik	r1, r1, 28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     a48:	b0000000 	imm	0
     a4c:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     a50:	b0000000 	imm	0
     a54:	b9f40708 	brlid	r15, 1800	// 115c <Xil_Assert>
     a58:	30c00191 	addik	r6, r0, 401
     a5c:	30600001 	addik	r3, r0, 1
     a60:	b0000000 	imm	0
     a64:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     a68:	b810ff5c 	brid	-164		// 9c4
     a6c:	e9e10000 	lwi	r15, r1, 0

00000a70 <XIntc_Enable>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Enable(XIntc * InstancePtr, u8 Id)
{
     a70:	3021ffe4 	addik	r1, r1, -28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     a74:	be0500b0 	beqid	r5, 176		// b24
     a78:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a7c:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     a80:	b0000000 	imm	0
     a84:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     a88:	14661803 	cmpu	r3, r6, r3
     a8c:	bc43006c 	blti	r3, 108		// af8
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     a90:	e8650004 	lwi	r3, r5, 4
     a94:	b0001111 	imm	4369
     a98:	a8631111 	xori	r3, r3, 4369
     a9c:	be030034 	beqid	r3, 52		// ad0
     aa0:	64c60402 	bslli	r6, r6, 2
     aa4:	b0000000 	imm	0
     aa8:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     aac:	b0000000 	imm	0
     ab0:	b9f406ac 	brlid	r15, 1708	// 115c <Xil_Assert>
     ab4:	30c001c5 	addik	r6, r0, 453
     ab8:	30600001 	addik	r3, r0, 1
     abc:	b0000000 	imm	0
     ac0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     ac4:	e9e10000 	lwi	r15, r1, 0
     ac8:	b60f0008 	rtsd	r15, 8
     acc:	3021001c 	addik	r1, r1, 28

	/*
	 * Enable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     ad0:	e8650000 	lwi	r3, r5, 0

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     ad4:	b0000000 	imm	0
     ad8:	30c65f80 	addik	r6, r6, 24448

	/*
	 * Enable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     adc:	e8a30008 	lwi	r5, r3, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     ae0:	e8860000 	lwi	r4, r6, 0
     ae4:	80852000 	or	r4, r5, r4
     ae8:	f8830008 	swi	r4, r3, 8
		    (CurrentIER | Mask));
}
     aec:	e9e10000 	lwi	r15, r1, 0
     af0:	b60f0008 	rtsd	r15, 8
     af4:	3021001c 	addik	r1, r1, 28

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     af8:	b0000000 	imm	0
     afc:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     b00:	b0000000 	imm	0
     b04:	b9f40658 	brlid	r15, 1624	// 115c <Xil_Assert>
     b08:	30c001c4 	addik	r6, r0, 452
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b0c:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b10:	30600001 	addik	r3, r0, 1
     b14:	b0000000 	imm	0
     b18:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b1c:	b60f0008 	rtsd	r15, 8
     b20:	3021001c 	addik	r1, r1, 28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b24:	b0000000 	imm	0
     b28:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     b2c:	b0000000 	imm	0
     b30:	b9f4062c 	brlid	r15, 1580	// 115c <Xil_Assert>
     b34:	30c001c3 	addik	r6, r0, 451
     b38:	30600001 	addik	r3, r0, 1
     b3c:	b0000000 	imm	0
     b40:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id enable
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER | Mask));
}
     b44:	b810ff84 	brid	-124		// ac8
     b48:	e9e10000 	lwi	r15, r1, 0

00000b4c <XIntc_Disable>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Disable(XIntc * InstancePtr, u8 Id)
{
     b4c:	3021ffe4 	addik	r1, r1, -28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b50:	be0500b4 	beqid	r5, 180		// c04
     b54:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b58:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     b5c:	b0000000 	imm	0
     b60:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     b64:	14661803 	cmpu	r3, r6, r3
     b68:	bc430070 	blti	r3, 112		// bd8
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     b6c:	e8650004 	lwi	r3, r5, 4
     b70:	b0001111 	imm	4369
     b74:	a8631111 	xori	r3, r3, 4369
     b78:	be030034 	beqid	r3, 52		// bac
     b7c:	64c60402 	bslli	r6, r6, 2
     b80:	b0000000 	imm	0
     b84:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     b88:	b0000000 	imm	0
     b8c:	b9f405d0 	brlid	r15, 1488	// 115c <Xil_Assert>
     b90:	30c001f2 	addik	r6, r0, 498
     b94:	30600001 	addik	r3, r0, 1
     b98:	b0000000 	imm	0
     b9c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     ba0:	e9e10000 	lwi	r15, r1, 0
     ba4:	b60f0008 	rtsd	r15, 8
     ba8:	3021001c 	addik	r1, r1, 28

	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     bac:	e8650000 	lwi	r3, r5, 0

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     bb0:	b0000000 	imm	0
     bb4:	30c65f80 	addik	r6, r6, 24448
	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     bb8:	e8860000 	lwi	r4, r6, 0

	/*
	 * Disable the selected interrupt source by reading the interrupt enable
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     bbc:	e8a30008 	lwi	r5, r3, 8
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
     bc0:	a884ffff 	xori	r4, r4, -1
     bc4:	84842800 	and	r4, r4, r5
     bc8:	f8830008 	swi	r4, r3, 8
		    (CurrentIER & ~Mask));
}
     bcc:	e9e10000 	lwi	r15, r1, 0
     bd0:	b60f0008 	rtsd	r15, 8
     bd4:	3021001c 	addik	r1, r1, 28

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     bd8:	b0000000 	imm	0
     bdc:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     be0:	b0000000 	imm	0
     be4:	b9f40578 	brlid	r15, 1400	// 115c <Xil_Assert>
     be8:	30c001f1 	addik	r6, r0, 497
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     bec:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     bf0:	30600001 	addik	r3, r0, 1
     bf4:	b0000000 	imm	0
     bf8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     bfc:	b60f0008 	rtsd	r15, 8
     c00:	3021001c 	addik	r1, r1, 28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c04:	b0000000 	imm	0
     c08:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     c0c:	b0000000 	imm	0
     c10:	b9f4054c 	brlid	r15, 1356	// 115c <Xil_Assert>
     c14:	30c001f0 	addik	r6, r0, 496
     c18:	30600001 	addik	r3, r0, 1
     c1c:	b0000000 	imm	0
     c20:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * register and then modifying only the specified interrupt id
	 */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IER_OFFSET,
		    (CurrentIER & ~Mask));
}
     c24:	b810ff80 	brid	-128		// ba4
     c28:	e9e10000 	lwi	r15, r1, 0

00000c2c <XIntc_Acknowledge>:
*
* @note		None.
*
****************************************************************************/
void XIntc_Acknowledge(XIntc * InstancePtr, u8 Id)
{
     c2c:	3021ffe4 	addik	r1, r1, -28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c30:	be0500a8 	beqid	r5, 168		// cd8
     c34:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c38:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     c3c:	b0000000 	imm	0
     c40:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     c44:	14661803 	cmpu	r3, r6, r3
     c48:	bc430064 	blti	r3, 100		// cac
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     c4c:	e8650004 	lwi	r3, r5, 4
     c50:	b0001111 	imm	4369
     c54:	a8631111 	xori	r3, r3, 4369
     c58:	be030034 	beqid	r3, 52		// c8c
     c5c:	64c60402 	bslli	r6, r6, 2
     c60:	b0000000 	imm	0
     c64:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     c68:	b0000000 	imm	0
     c6c:	b9f404f0 	brlid	r15, 1264	// 115c <Xil_Assert>
     c70:	30c0021d 	addik	r6, r0, 541
     c74:	30600001 	addik	r3, r0, 1
     c78:	b0000000 	imm	0
     c7c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     c80:	e9e10000 	lwi	r15, r1, 0
     c84:	b60f0008 	rtsd	r15, 8
     c88:	3021001c 	addik	r1, r1, 28

	/*
	 * The Id is used to create the appropriate mask for the
	 * desired bit position. Id currently limited to 0 - 31
	 */
	Mask = XIntc_BitPosMask[Id];
     c8c:	b0000000 	imm	0
     c90:	30c65f80 	addik	r6, r6, 24448
     c94:	e8860000 	lwi	r4, r6, 0
	/*
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
     c98:	e8650000 	lwi	r3, r5, 0
     c9c:	f883000c 	swi	r4, r3, 12
}
     ca0:	e9e10000 	lwi	r15, r1, 0
     ca4:	b60f0008 	rtsd	r15, 8
     ca8:	3021001c 	addik	r1, r1, 28

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     cac:	b0000000 	imm	0
     cb0:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     cb4:	b0000000 	imm	0
     cb8:	b9f404a4 	brlid	r15, 1188	// 115c <Xil_Assert>
     cbc:	30c0021c 	addik	r6, r0, 540
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     cc0:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     cc4:	30600001 	addik	r3, r0, 1
     cc8:	b0000000 	imm	0
     ccc:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	 * Acknowledge the selected interrupt source, no read of the acknowledge
	 * register is necessary since only the bits set in the mask will be
	 * affected by the write
	 */
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IAR_OFFSET, Mask);
}
     cd0:	b60f0008 	rtsd	r15, 8
     cd4:	3021001c 	addik	r1, r1, 28
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     cd8:	b0000000 	imm	0
     cdc:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     ce0:	b0000000 	imm	0
     ce4:	b9f40478 	brlid	r15, 1144	// 115c <Xil_Assert>
     ce8:	30c0021b 	addik	r6, r0, 539
     cec:	30600001 	addik	r3, r0, 1
     cf0:	b0000000 	imm	0
     cf4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     cf8:	b810ff8c 	brid	-116		// c84
     cfc:	e9e10000 	lwi	r15, r1, 0

00000d00 <XIntc_LookupConfig>:
{
	XIntc_Config *CfgPtr = NULL;
	int Index;

	for (Index = 0; Index < XPAR_XINTC_NUM_INSTANCES; Index++) {
		if (XIntc_ConfigTable[Index].DeviceId == DeviceId) {
     d00:	b0000000 	imm	0
     d04:	e480597c 	lhui	r4, r0, 22908	// 597c <XIntc_ConfigTable>
     d08:	88a42800 	xor	r5, r4, r5
     d0c:	be250010 	bneid	r5, 16		// d1c
     d10:	10600000 	addk	r3, r0, r0
			CfgPtr = &XIntc_ConfigTable[Index];
     d14:	b0000000 	imm	0
     d18:	3060597c 	addik	r3, r0, 22908	// 597c <XIntc_ConfigTable>
			break;
		}
	}

	return CfgPtr;
}
     d1c:	b60f0008 	rtsd	r15, 8
     d20:	80000000 	or	r0, r0, r0

00000d24 <XIntc_ConnectFastHandler>:
* that was previously connected.
*
****************************************************************************/
int XIntc_ConnectFastHandler(XIntc *InstancePtr, u8 Id,
				XFastInterruptHandler Handler)
{
     d24:	3021ffd0 	addik	r1, r1, -48
     d28:	fa610020 	swi	r19, r1, 32
     d2c:	fac10024 	swi	r22, r1, 36
     d30:	f9e10000 	swi	r15, r1, 0
     d34:	fae10028 	swi	r23, r1, 40
     d38:	fb01002c 	swi	r24, r1, 44
     d3c:	12650000 	addk	r19, r5, r0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     d40:	be050198 	beqid	r5, 408		// ed8
     d44:	12c60000 	addk	r22, r6, r0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     d48:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     d4c:	b0000000 	imm	0
     d50:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     d54:	14661803 	cmpu	r3, r6, r3
     d58:	bc430100 	blti	r3, 256		// e58
	Xil_AssertNonvoid(Handler != NULL);
     d5c:	bc0701a4 	beqi	r7, 420	// f00 <_HEAP_SIZE>
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     d60:	e8650004 	lwi	r3, r5, 4
     d64:	b0001111 	imm	4369
     d68:	a8631111 	xori	r3, r3, 4369
     d6c:	bc23006c 	bnei	r3, 108		// dd8
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     d70:	e8650010 	lwi	r3, r5, 16
     d74:	e863000c 	lwi	r3, r3, 12
     d78:	a8630001 	xori	r3, r3, 1
     d7c:	be23011c 	bneid	r3, 284		// e98
     d80:	67060402 	bslli	r24, r6, 2


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     d84:	e8650000 	lwi	r3, r5, 0
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     d88:	b0000000 	imm	0
     d8c:	31185f80 	addik	r8, r24, 24448
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     d90:	e8830008 	lwi	r4, r3, 8
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     d94:	eae80000 	lwi	r23, r8, 0


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     d98:	84972000 	and	r4, r23, r4
     d9c:	be24007c 	bneid	r4, 124		// e18
     da0:	30630100 	addik	r3, r3, 256
		XIntc_Disable(InstancePtr, Id);
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     da4:	d8f81800 	sw	r7, r24, r3
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     da8:	e8650000 	lwi	r3, r5, 0
     dac:	e8830020 	lwi	r4, r3, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     db0:	82f72000 	or	r23, r23, r4
     db4:	fae30020 	swi	r23, r3, 32
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     db8:	e9e10000 	lwi	r15, r1, 0
     dbc:	ea610020 	lwi	r19, r1, 32
     dc0:	eac10024 	lwi	r22, r1, 36
     dc4:	eae10028 	lwi	r23, r1, 40
     dc8:	eb01002c 	lwi	r24, r1, 44
     dcc:	10600000 	addk	r3, r0, r0
     dd0:	b60f0008 	rtsd	r15, 8
     dd4:	30210030 	addik	r1, r1, 48
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     dd8:	b0000000 	imm	0
     ddc:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     de0:	b0000000 	imm	0
     de4:	b9f40378 	brlid	r15, 888	// 115c <Xil_Assert>
     de8:	30c00289 	addik	r6, r0, 649
     dec:	30600001 	addik	r3, r0, 1
     df0:	b0000000 	imm	0
     df4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     df8:	e9e10000 	lwi	r15, r1, 0
     dfc:	ea610020 	lwi	r19, r1, 32
     e00:	eac10024 	lwi	r22, r1, 36
     e04:	eae10028 	lwi	r23, r1, 40
     e08:	eb01002c 	lwi	r24, r1, 44
     e0c:	10600000 	addk	r3, r0, r0
     e10:	b60f0008 	rtsd	r15, 8
     e14:	30210030 	addik	r1, r1, 48
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
     e18:	b9f4fd34 	brlid	r15, -716	// b4c <XIntc_Disable>
     e1c:	f8e1001c 	swi	r7, r1, 28
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     e20:	e8730000 	lwi	r3, r19, 0
     e24:	e8e1001c 	lwi	r7, r1, 28
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     e28:	10b30000 	addk	r5, r19, r0
	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     e2c:	30630100 	addik	r3, r3, 256
     e30:	d8f81800 	sw	r7, r24, r3
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     e34:	e8730000 	lwi	r3, r19, 0
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     e38:	10d60000 	addk	r6, r22, r0
	}

	XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    	(u32) Handler);

	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     e3c:	e8830020 	lwi	r4, r3, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     e40:	82f72000 	or	r23, r23, r4
     e44:	fae30020 	swi	r23, r3, 32
		    Imr | Mask);


	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
     e48:	b9f4fc28 	brlid	r15, -984	// a70 <XIntc_Enable>
     e4c:	80000000 	or	r0, r0, r0
	}
	return XST_SUCCESS;

}
     e50:	b810ffac 	brid	-84		// dfc
     e54:	e9e10000 	lwi	r15, r1, 0

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     e58:	b0000000 	imm	0
     e5c:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     e60:	b0000000 	imm	0
     e64:	b9f402f8 	brlid	r15, 760	// 115c <Xil_Assert>
     e68:	30c00287 	addik	r6, r0, 647
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e6c:	e9e10000 	lwi	r15, r1, 0
     e70:	ea610020 	lwi	r19, r1, 32
     e74:	eac10024 	lwi	r22, r1, 36
     e78:	eae10028 	lwi	r23, r1, 40
     e7c:	eb01002c 	lwi	r24, r1, 44

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     e80:	30600001 	addik	r3, r0, 1
     e84:	b0000000 	imm	0
     e88:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     e8c:	10600000 	addk	r3, r0, r0
     e90:	b60f0008 	rtsd	r15, 8
     e94:	30210030 	addik	r1, r1, 48
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     e98:	b0000000 	imm	0
     e9c:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     ea0:	b0000000 	imm	0
     ea4:	b9f402b8 	brlid	r15, 696	// 115c <Xil_Assert>
     ea8:	30c0028a 	addik	r6, r0, 650
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     eac:	e9e10000 	lwi	r15, r1, 0
     eb0:	ea610020 	lwi	r19, r1, 32
     eb4:	eac10024 	lwi	r22, r1, 36
     eb8:	eae10028 	lwi	r23, r1, 40
     ebc:	eb01002c 	lwi	r24, r1, 44
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     ec0:	30600001 	addik	r3, r0, 1
     ec4:	b0000000 	imm	0
     ec8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
	return XST_SUCCESS;

}
     ecc:	10600000 	addk	r3, r0, r0
     ed0:	b60f0008 	rtsd	r15, 8
     ed4:	30210030 	addik	r1, r1, 48
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
     ed8:	b0000000 	imm	0
     edc:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     ee0:	b0000000 	imm	0
     ee4:	b9f40278 	brlid	r15, 632	// 115c <Xil_Assert>
     ee8:	30c00286 	addik	r6, r0, 646
     eec:	30600001 	addik	r3, r0, 1
     ef0:	b0000000 	imm	0
     ef4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     ef8:	b810ff04 	brid	-252		// dfc
     efc:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertNonvoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertNonvoid(Handler != NULL);
     f00:	b0000000 	imm	0
     f04:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
     f08:	b0000000 	imm	0
     f0c:	b9f40250 	brlid	r15, 592	// 115c <Xil_Assert>
     f10:	30c00288 	addik	r6, r0, 648
     f14:	30600001 	addik	r3, r0, 1
     f18:	b0000000 	imm	0
     f1c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
     f20:	b810fedc 	brid	-292		// dfc
     f24:	e9e10000 	lwi	r15, r1, 0

00000f28 <XIntc_SetNormalIntrMode>:
*
* @note		None.
*
****************************************************************************/
void XIntc_SetNormalIntrMode(XIntc *InstancePtr, u8 Id)
{
     f28:	3021ffd0 	addik	r1, r1, -48
     f2c:	fa61001c 	swi	r19, r1, 28
     f30:	fac10020 	swi	r22, r1, 32
     f34:	f9e10000 	swi	r15, r1, 0
     f38:	fae10024 	swi	r23, r1, 36
     f3c:	fb010028 	swi	r24, r1, 40
     f40:	fb21002c 	swi	r25, r1, 44
     f44:	12650000 	addk	r19, r5, r0
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     f48:	be05019c 	beqid	r5, 412		// 10e4
     f4c:	12c60000 	addk	r22, r6, r0
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     f50:	30600005 	addik	r3, r0, 5
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
     f54:	b0000000 	imm	0
     f58:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
     f5c:	14661803 	cmpu	r3, r6, r3
     f60:	bc430104 	blti	r3, 260		// 1064
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
     f64:	e8650004 	lwi	r3, r5, 4
     f68:	b0001111 	imm	4369
     f6c:	a8631111 	xori	r3, r3, 4369
     f70:	bc230090 	bnei	r3, 144		// 1000
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
     f74:	e8650010 	lwi	r3, r5, 16
     f78:	e883000c 	lwi	r4, r3, 12
     f7c:	a8840001 	xori	r4, r4, 1
     f80:	be240124 	bneid	r4, 292		// 10a4
     f84:	66e60402 	bslli	r23, r6, 2


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     f88:	e8850000 	lwi	r4, r5, 0
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     f8c:	b0000000 	imm	0
     f90:	30f75f80 	addik	r7, r23, 24448
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);


	/* Get the Enabled Interrupts */
	CurrentIER = XIntc_In32(InstancePtr->BaseAddress + XIN_IER_OFFSET);
     f94:	eb040008 	lwi	r24, r4, 8
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */
     f98:	eb270000 	lwi	r25, r7, 0


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     f9c:	8719c000 	and	r24, r25, r24
     fa0:	bc3800b0 	bnei	r24, 176		// 1050
	/*
	 * Disable the selected interrupt as Fast Interrupt by reading the
	 * interrupt mode register and then modifying only the
	 * specified interrupt id
	 */
	Imr = XIntc_In32(InstancePtr->BaseAddress + XIN_IMR_OFFSET);
     fa4:	e8a40020 	lwi	r5, r4, 32
	XIntc_Out32(InstancePtr->BaseAddress + XIN_IMR_OFFSET,
     fa8:	ab39ffff 	xori	r25, r25, -1
     fac:	8725c800 	and	r25, r5, r25
     fb0:	fb240020 	swi	r25, r4, 32
		    Imr & ~Mask);

	if (InstancePtr->CfgPtr->IntVectorAddr == 0x0) {
     fb4:	e8630010 	lwi	r3, r3, 16
     fb8:	be230088 	bneid	r3, 136		// 1040
     fbc:	30800010 	addik	r4, r0, 16	// 10 <_vector_interrupt>
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
     fc0:	e8730000 	lwi	r3, r19, 0
     fc4:	30630100 	addik	r3, r3, 256
     fc8:	d8971800 	sw	r4, r23, r3
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    	InstancePtr->CfgPtr->IntVectorAddr);
	}

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
     fcc:	be180058 	beqid	r24, 88		// 1024
     fd0:	e9e10000 	lwi	r15, r1, 0
		XIntc_Enable(InstancePtr, Id);
     fd4:	10b30000 	addk	r5, r19, r0
     fd8:	b9f4fa98 	brlid	r15, -1384	// a70 <XIntc_Enable>
     fdc:	10d60000 	addk	r6, r22, r0
	}
}
     fe0:	e9e10000 	lwi	r15, r1, 0
     fe4:	ea61001c 	lwi	r19, r1, 28
     fe8:	eac10020 	lwi	r22, r1, 32
     fec:	eae10024 	lwi	r23, r1, 36
     ff0:	eb010028 	lwi	r24, r1, 40
     ff4:	eb21002c 	lwi	r25, r1, 44
     ff8:	b60f0008 	rtsd	r15, 8
     ffc:	30210030 	addik	r1, r1, 48
	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    1000:	b0000000 	imm	0
    1004:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
    1008:	b0000000 	imm	0
    100c:	b9f40150 	brlid	r15, 336	// 115c <Xil_Assert>
    1010:	30c002c5 	addik	r6, r0, 709
    1014:	30600001 	addik	r3, r0, 1
    1018:	b0000000 	imm	0
    101c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    1020:	e9e10000 	lwi	r15, r1, 0
    1024:	ea61001c 	lwi	r19, r1, 28
    1028:	eac10020 	lwi	r22, r1, 32
    102c:	eae10024 	lwi	r23, r1, 36
    1030:	eb010028 	lwi	r24, r1, 40
    1034:	eb21002c 	lwi	r25, r1, 44
    1038:	b60f0008 	rtsd	r15, 8
    103c:	30210030 	addik	r1, r1, 48
	if (InstancePtr->CfgPtr->IntVectorAddr == 0x0) {
		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
		    			0x10);
	} else {

		XIntc_Out32(InstancePtr->BaseAddress + XIN_IVAR_OFFSET + (Id * 4),
    1040:	e8930000 	lwi	r4, r19, 0
    1044:	30840100 	addik	r4, r4, 256
    1048:	d8772000 	sw	r3, r23, r4
    104c:	b800ff80 	bri	-128		// fcc
	Mask = XIntc_BitPosMask[Id];/* Convert from integer id to bit mask */


	/* Disable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Disable(InstancePtr, Id);
    1050:	b9f4fafc 	brlid	r15, -1284	// b4c <XIntc_Disable>
    1054:	80000000 	or	r0, r0, r0
    1058:	e8930000 	lwi	r4, r19, 0
    105c:	b810ff48 	brid	-184		// fa4
    1060:	e8730010 	lwi	r3, r19, 16

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
    1064:	b0000000 	imm	0
    1068:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
    106c:	b0000000 	imm	0
    1070:	b9f400ec 	brlid	r15, 236	// 115c <Xil_Assert>
    1074:	30c002c4 	addik	r6, r0, 708

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    1078:	e9e10000 	lwi	r15, r1, 0
    107c:	ea61001c 	lwi	r19, r1, 28
    1080:	eac10020 	lwi	r22, r1, 32
    1084:	eae10024 	lwi	r23, r1, 36
    1088:	eb010028 	lwi	r24, r1, 40
    108c:	eb21002c 	lwi	r25, r1, 44

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
    1090:	30800001 	addik	r4, r0, 1
    1094:	b0000000 	imm	0
    1098:	f8805f9c 	swi	r4, r0, 24476	// 5f9c <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    109c:	b60f0008 	rtsd	r15, 8
    10a0:	30210030 	addik	r1, r1, 48
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
    10a4:	b0000000 	imm	0
    10a8:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
    10ac:	b0000000 	imm	0
    10b0:	b9f400ac 	brlid	r15, 172	// 115c <Xil_Assert>
    10b4:	30c002c6 	addik	r6, r0, 710

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    10b8:	e9e10000 	lwi	r15, r1, 0
    10bc:	ea61001c 	lwi	r19, r1, 28
    10c0:	eac10020 	lwi	r22, r1, 32
    10c4:	eae10024 	lwi	r23, r1, 36
    10c8:	eb010028 	lwi	r24, r1, 40
    10cc:	eb21002c 	lwi	r25, r1, 44
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(Id < XPAR_INTC_MAX_NUM_INTR_INPUTS);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertVoid(InstancePtr->CfgPtr->FastIntr == TRUE);
    10d0:	30800001 	addik	r4, r0, 1
    10d4:	b0000000 	imm	0
    10d8:	f8805f9c 	swi	r4, r0, 24476	// 5f9c <Xil_AssertStatus>

	/* Enable the Interrupt if it was enabled before calling this function */
	if (CurrentIER & Mask) {
		XIntc_Enable(InstancePtr, Id);
	}
}
    10dc:	b60f0008 	rtsd	r15, 8
    10e0:	30210030 	addik	r1, r1, 48
	u32 Mask;

	/*
	 * Assert the arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    10e4:	b0000000 	imm	0
    10e8:	30a058e0 	addik	r5, r0, 22752	// 58e0 <__rodata_start>
    10ec:	b0000000 	imm	0
    10f0:	b9f4006c 	brlid	r15, 108	// 115c <Xil_Assert>
    10f4:	30c002c3 	addik	r6, r0, 707
    10f8:	30600001 	addik	r3, r0, 1
    10fc:	b0000000 	imm	0
    1100:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    1104:	b810ff20 	brid	-224		// 1024
    1108:	e9e10000 	lwi	r15, r1, 0

0000110c <XAssert>:
*
******************************************************************************/
void XAssert(char *File, int Line)
{
	/* if the callback has been set then invoke it */
	if (XAssertCallbackRoutine != NULL) {
    110c:	b0000000 	imm	0
    1110:	e8605f28 	lwi	r3, r0, 24360	// 5f28 <XAssertCallbackRoutine>
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
    112c:	e8605974 	lwi	r3, r0, 22900	// 5974 <XWaitInAssert>
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
    1148:	f8a05f28 	swi	r5, r0, 24360	// 5f28 <XAssertCallbackRoutine>
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
    1160:	e8605f2c 	lwi	r3, r0, 24364	// 5f2c <Xil_AssertCallbackRoutine>
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
    117c:	e8605978 	lwi	r3, r0, 22904	// 5978 <Xil_AssertWait>
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
    1198:	f8a05f2c 	swi	r5, r0, 24364	// 5f2c <Xil_AssertCallbackRoutine>
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
    11c4:	e88058e8 	lwi	r4, r0, 22760	// 58e8 <_global_impure_ptr>
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
    11f0:	eb8058e8 	lwi	r28, r0, 22760	// 58e8 <_global_impure_ptr>
    11f4:	fb21002c 	swi	r25, r1, 44
    11f8:	fbc10040 	swi	r30, r1, 64
    11fc:	fbe10044 	swi	r31, r1, 68
    1200:	13c50000 	addk	r30, r5, r0
    1204:	13260000 	addk	r25, r6, r0
    1208:	b0000000 	imm	0
    120c:	33e03814 	addik	r31, r0, 14356	// 3814 <free>
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
    1490:	b9f42384 	brlid	r15, 9092	// 3814 <free>
    1494:	10b70000 	addk	r5, r23, r0
    1498:	b0000000 	imm	0
    149c:	b9f42378 	brlid	r15, 9080	// 3814 <free>
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
    1564:	e8c05f34 	lwi	r6, r0, 24372	// 5f34 <rx_tmp_buffer>
    1568:	b0000000 	imm	0
    156c:	e8a05f3c 	lwi	r5, r0, 24380	// 5f3c <rx_buffer>
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
    1588:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    158c:	b0000000 	imm	0
    1590:	30c05f34 	addik	r6, r0, 24372	// 5f34 <rx_tmp_buffer>
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
    15bc:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
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
    15dc:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
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
    15f8:	f8605f30 	swi	r3, r0, 24368	// 5f30 <currently_sending>
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
    1608:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
    160c:	b0000000 	imm	0
    1610:	b9f406f8 	brlid	r15, 1784	// 1d08 <cbuffer_contiguous_data_size>
    1614:	80000000 	or	r0, r0, r0
    XUartLite_Send(&UartLite, (u8*)&(tx_buffer->data[tx_buffer->pos]), to_send);
    1618:	b0000000 	imm	0
    161c:	e8805f38 	lwi	r4, r0, 24376	// 5f38 <tx_buffer>
    1620:	60e30004 	muli	r7, r3, 4
    1624:	b0000000 	imm	0
    1628:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
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
    1650:	f8605f30 	swi	r3, r0, 24368	// 5f30 <currently_sending>
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
    166c:	30a05fec 	addik	r5, r0, 24556	// 5fec <InterruptController>
    1670:	10c00000 	addk	r6, r0, r0
    }
  }

}

int SetupInterruptSystem(XUartLite *UartLitePtr) {
    1674:	fa61001c 	swi	r19, r1, 28
    1678:	f9e10000 	swi	r15, r1, 0
  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  LOG_INFO("shiiit 1\n");
  Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
    167c:	b000ffff 	imm	-1
    1680:	b9f4eee8 	brlid	r15, -4376	// 568 <XIntc_Initialize>
    1684:	32600001 	addik	r19, r0, 1
  if (Status != XST_SUCCESS) {
    1688:	be030020 	beqid	r3, 32		// 16a8
    168c:	11160000 	addk	r8, r22, r0
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
    16ac:	30a05fec 	addik	r5, r0, 24556	// 5fec <InterruptController>
    16b0:	b0000000 	imm	0
    16b4:	30e02a0c 	addik	r7, r0, 10764	// 2a0c <XUartLite_InterruptHandler>
    16b8:	b000ffff 	imm	-1
    16bc:	b9f4f1a0 	brlid	r15, -3680	// 85c <XIntc_Connect>
    16c0:	30c00002 	addik	r6, r0, 2
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
    16d0:	30a05fec 	addik	r5, r0, 24556	// 5fec <InterruptController>
    16d4:	b000ffff 	imm	-1
    16d8:	b9f4f004 	brlid	r15, -4092	// 6dc <XIntc_Start>
    16dc:	10d30000 	addk	r6, r19, r0
  if (Status != XST_SUCCESS) {
    16e0:	be23ffb0 	bneid	r3, -80		// 1690
    16e4:	30c00002 	addik	r6, r0, 2
  LOG_INFO("wtf6\n");

  /*
   * Enable the interrupt for the UartLite device.
   */
  XIntc_Enable(&InterruptController, UARTLITE_INT_IRQ_ID);
    16e8:	b0000000 	imm	0
    16ec:	30a05fec 	addik	r5, r0, 24556	// 5fec <InterruptController>
    16f0:	b000ffff 	imm	-1
    16f4:	b9f4f37c 	brlid	r15, -3204	// a70 <XIntc_Enable>
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
    170c:	30c035ac 	addik	r6, r0, 13740	// 35ac <XIntc_InterruptHandler>
    1710:	b0000000 	imm	0
    1714:	30e05fec 	addik	r7, r0, 24556	// 5fec <InterruptController>
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
    175c:	b9f4208c 	brlid	r15, 8332	// 37e8 <malloc>
    1760:	fac10020 	swi	r22, r1, 32
  output->data = (uint32_t*)malloc(size * sizeof(uint32_t));
    1764:	62d80004 	muli	r22, r24, 4
    1768:	10b60000 	addk	r5, r22, r0
    176c:	b0000000 	imm	0
    1770:	b9f42078 	brlid	r15, 8312	// 37e8 <malloc>
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
    1794:	b9f4295c 	brlid	r15, 10588	// 40f0 <memcpy>
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
    17c0:	b9f42cf8 	brlid	r15, 11512	// 44b8 <memset>
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
    17fc:	b9f42018 	brlid	r15, 8216	// 3814 <free>
    1800:	e8a50000 	lwi	r5, r5, 0
  free(buf);
    1804:	b0000000 	imm	0
    1808:	b9f4200c 	brlid	r15, 8204	// 3814 <free>
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
    1840:	b9f42e6c 	brlid	r15, 11884	// 46ac <realloc>
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
    1894:	b9f41f54 	brlid	r15, 8020	// 37e8 <malloc>
    1898:	f8c1001c 	swi	r6, r1, 28
      memcpy(output.buf, data, n);
    189c:	10a30000 	addk	r5, r3, r0
    18a0:	e8c1001c 	lwi	r6, r1, 28
    18a4:	10f30000 	addk	r7, r19, r0
    18a8:	b0000000 	imm	0
    18ac:	b9f42844 	brlid	r15, 10308	// 40f0 <memcpy>
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
    18dc:	b9f41e14 	brlid	r15, 7700	// 36f0 <calloc>
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
    1900:	b9f41f14 	brlid	r15, 7956	// 3814 <free>
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
    1944:	b9f42d68 	brlid	r15, 11624	// 46ac <realloc>
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
    19b4:	b9f4273c 	brlid	r15, 10044	// 40f0 <memcpy>
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
    19d8:	b9f42ae0 	brlid	r15, 10976	// 44b8 <memset>
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
    1a24:	b9f42c88 	brlid	r15, 11400	// 46ac <realloc>
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
    1a88:	b9f42824 	brlid	r15, 10276	// 42ac <memmove>
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
    1b00:	b9f41ce8 	brlid	r15, 7400	// 37e8 <malloc>
    1b04:	10a70000 	addk	r5, r7, r0
  output.bufsize = n;
  memcpy(output.buf, buffer->buf, n);
    1b08:	10f60000 	addk	r7, r22, r0
    1b0c:	e8d70004 	lwi	r6, r23, 4
    1b10:	10a30000 	addk	r5, r3, r0
    1b14:	b0000000 	imm	0
    1b18:	b9f425d8 	brlid	r15, 9688	// 40f0 <memcpy>
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
    1b58:	b9f41c90 	brlid	r15, 7312	// 37e8 <malloc>
    1b5c:	10b80000 	addk	r5, r24, r0
    memcpy(output.buf, buffer->buf, buffer->bufsize);
    1b60:	e8d70004 	lwi	r6, r23, 4
    1b64:	10f80000 	addk	r7, r24, r0
    1b68:	10a30000 	addk	r5, r3, r0
    1b6c:	b0000000 	imm	0
    1b70:	b9f42580 	brlid	r15, 9600	// 40f0 <memcpy>
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
    1c38:	b9f41bb0 	brlid	r15, 7088	// 37e8 <malloc>
    1c3c:	fa61001c 	swi	r19, r1, 28
    1c40:	12630000 	addk	r19, r3, r0
  output->data = (uint32_t*)calloc(IO_BUFFER_SIZE, sizeof(uint32_t));
    1c44:	30a00100 	addik	r5, r0, 256
    1c48:	b0000000 	imm	0
    1c4c:	b9f41aa4 	brlid	r15, 6820	// 36f0 <calloc>
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
    1c8c:	b9f41b5c 	brlid	r15, 7004	// 37e8 <malloc>
    1c90:	fa61001c 	swi	r19, r1, 28
  output->data = (uint32_t*)malloc(IO_BUFFER_SIZE * sizeof(uint32_t));
    1c94:	30a00400 	addik	r5, r0, 1024	// 400 <_STACK_SIZE>
    1c98:	b0000000 	imm	0
    1c9c:	b9f41b4c 	brlid	r15, 6988	// 37e8 <malloc>
    1ca0:	12630000 	addk	r19, r3, r0
  memcpy(output->data, from->data, IO_BUFFER_SIZE * sizeof(uint32_t));
    1ca4:	e8d60000 	lwi	r6, r22, 0
    1ca8:	10a30000 	addk	r5, r3, r0
    1cac:	30e00400 	addik	r7, r0, 1024	// 400 <_STACK_SIZE>
    1cb0:	b0000000 	imm	0
    1cb4:	b9f4243c 	brlid	r15, 9276	// 40f0 <memcpy>
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
    1d44:	b9f41ad0 	brlid	r15, 6864	// 3814 <free>
    1d48:	e8a50000 	lwi	r5, r5, 0
  free(tokill);
    1d4c:	b0000000 	imm	0
    1d50:	b9f41ac4 	brlid	r15, 6852	// 3814 <free>
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
    1edc:	b9f42214 	brlid	r15, 8724	// 40f0 <memcpy>
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
    1f34:	b9f421bc 	brlid	r15, 8636	// 40f0 <memcpy>
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
    2110:	b9f41fe0 	brlid	r15, 8160	// 40f0 <memcpy>
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
    2128:	b9f41fc8 	brlid	r15, 8136	// 40f0 <memcpy>
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
    2164:	b9f41f8c 	brlid	r15, 8076	// 40f0 <memcpy>
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
    2570:	f8a05f40 	swi	r5, r0, 24384	// 5f40 <tracer_base>
    tracer_slots = slots;
    2574:	b0000000 	imm	0
    2578:	f8c05f44 	swi	r6, r0, 24388	// 5f44 <tracer_slots>
}
    257c:	b60f0008 	rtsd	r15, 8
    2580:	80000000 	or	r0, r0, r0

00002584 <set_trace_flag>:

void set_trace_flag(uint32_t flag) {
    // move back the history
    for (int i = 0; i < tracer_slots - 1; ++i) {
    2584:	b0000000 	imm	0
    2588:	e9005f44 	lwi	r8, r0, 24388	// 5f44 <tracer_slots>
    258c:	a8680001 	xori	r3, r8, 1
    2590:	bc03004c 	beqi	r3, 76		// 25dc
    2594:	10c00000 	addk	r6, r0, r0
    2598:	b0000000 	imm	0
    259c:	e8805f40 	lwi	r4, r0, 24384	// 5f40 <tracer_base>
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
    25e0:	e8805f40 	lwi	r4, r0, 24384	// 5f40 <tracer_base>
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
    2708:	b0002000 	imm	8192
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
    2768:	b0002000 	imm	8192
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
    279c:	b9f40edc 	brlid	r15, 3804	// 3678 <microblaze_flush_dcache>
    27a0:	80000000 	or	r0, r0, r0
	microblaze_invalidate_dcache();
    27a4:	b0000000 	imm	0
    27a8:	b9f40ef8 	brlid	r15, 3832	// 36a0 <microblaze_invalidate_dcache>
    27ac:	80000000 	or	r0, r0, r0
	microblaze_disable_dcache();
    27b0:	b0000000 	imm	0
    27b4:	b9f40e54 	brlid	r15, 3668	// 3608 <microblaze_disable_dcache>
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
    27d4:	b9f40ef4 	brlid	r15, 3828	// 36c8 <microblaze_invalidate_icache>
    27d8:	80000000 	or	r0, r0, r0
	microblaze_disable_icache();
    27dc:	b0000000 	imm	0
    27e0:	b9f40e40 	brlid	r15, 3648	// 3620 <microblaze_disable_icache>
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
    2810:	b9f40e48 	brlid	r15, 3656	// 3658 <microblaze_enable_interrupts>
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
    2830:	b9f40e08 	brlid	r15, 3592	// 3638 <microblaze_disable_interrupts>
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
    2858:	f8c0596c 	swi	r6, r0, 22892	// 596c <MB_InterruptVectorTable>
		MB_InterruptVectorTable.CallBackRef = Data;
    285c:	b0000000 	imm	0
    2860:	f8e05970 	swi	r7, r0, 22896
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
    2888:	f8a05970 	swi	r5, r0, 22896
*
****************************************************************************/
void Xil_ExceptionRemoveHandler(u32 Id)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
		MB_InterruptVectorTable.Handler = Xil_ExceptionNullHandler;
    288c:	b0000000 	imm	0
    2890:	f860596c 	swi	r3, r0, 22892	// 596c <MB_InterruptVectorTable>
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
    28ac:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(FuncPtr != NULL);
    28b0:	bc06007c 	beqi	r6, 124		// 292c
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    28b4:	e8650020 	lwi	r3, r5, 32
    28b8:	b0001111 	imm	4369
    28bc:	a8631111 	xori	r3, r3, 4369
    28c0:	bc030030 	beqi	r3, 48		// 28f0
    28c4:	b0000000 	imm	0
    28c8:	30a058f0 	addik	r5, r0, 22768
    28cc:	b000ffff 	imm	-1
    28d0:	b9f4e88c 	brlid	r15, -6004	// 115c <Xil_Assert>
    28d4:	30c00072 	addik	r6, r0, 114
    28d8:	30600001 	addik	r3, r0, 1
    28dc:	b0000000 	imm	0
    28e0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>

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
    2908:	30a058f0 	addik	r5, r0, 22768
    290c:	b000ffff 	imm	-1
    2910:	b9f4e84c 	brlid	r15, -6068	// 115c <Xil_Assert>
    2914:	30c00070 	addik	r6, r0, 112
    2918:	30600001 	addik	r3, r0, 1
    291c:	b0000000 	imm	0
    2920:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    2924:	b810ffc4 	brid	-60		// 28e8
    2928:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(FuncPtr != NULL);
    292c:	b0000000 	imm	0
    2930:	30a058f0 	addik	r5, r0, 22768
    2934:	b000ffff 	imm	-1
    2938:	b9f4e824 	brlid	r15, -6108	// 115c <Xil_Assert>
    293c:	30c00071 	addik	r6, r0, 113
    2940:	30600001 	addik	r3, r0, 1
    2944:	b0000000 	imm	0
    2948:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2964:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(FuncPtr != NULL);
    2968:	bc06007c 	beqi	r6, 124		// 29e4
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    296c:	e8650020 	lwi	r3, r5, 32
    2970:	b0001111 	imm	4369
    2974:	a8631111 	xori	r3, r3, 4369
    2978:	bc030030 	beqi	r3, 48		// 29a8
    297c:	b0000000 	imm	0
    2980:	30a058f0 	addik	r5, r0, 22768
    2984:	b000ffff 	imm	-1
    2988:	b9f4e7d4 	brlid	r15, -6188	// 115c <Xil_Assert>
    298c:	30c00093 	addik	r6, r0, 147
    2990:	30600001 	addik	r3, r0, 1
    2994:	b0000000 	imm	0
    2998:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>

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
    29c0:	30a058f0 	addik	r5, r0, 22768
    29c4:	b000ffff 	imm	-1
    29c8:	b9f4e794 	brlid	r15, -6252	// 115c <Xil_Assert>
    29cc:	30c00091 	addik	r6, r0, 145
    29d0:	30600001 	addik	r3, r0, 1
    29d4:	b0000000 	imm	0
    29d8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    29dc:	b810ffc4 	brid	-60		// 29a0
    29e0:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(FuncPtr != NULL);
    29e4:	b0000000 	imm	0
    29e8:	30a058f0 	addik	r5, r0, 22768
    29ec:	b000ffff 	imm	-1
    29f0:	b9f4e76c 	brlid	r15, -6292	// 115c <Xil_Assert>
    29f4:	30c00092 	addik	r6, r0, 146
    29f8:	30600001 	addik	r3, r0, 1
    29fc:	b0000000 	imm	0
    2a00:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2a2c:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>

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
    2ae0:	30a058f0 	addik	r5, r0, 22768
    2ae4:	b000ffff 	imm	-1
    2ae8:	b9f4e674 	brlid	r15, -6540	// 115c <Xil_Assert>
    2aec:	30c000ae 	addik	r6, r0, 174
    2af0:	30600001 	addik	r3, r0, 1
    2af4:	b0000000 	imm	0
    2af8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2b18:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2b1c:	b0001111 	imm	4369
    2b20:	a8631111 	xori	r3, r3, 4369
    2b24:	bc030030 	beqi	r3, 48		// 2b54
    2b28:	b0000000 	imm	0
    2b2c:	30a058f0 	addik	r5, r0, 22768
    2b30:	b000ffff 	imm	-1
    2b34:	b9f4e628 	brlid	r15, -6616	// 115c <Xil_Assert>
    2b38:	30c0012e 	addik	r6, r0, 302
    2b3c:	30600001 	addik	r3, r0, 1
    2b40:	b0000000 	imm	0
    2b44:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2b6c:	30a058f0 	addik	r5, r0, 22768
    2b70:	b000ffff 	imm	-1
    2b74:	b9f4e5e8 	brlid	r15, -6680	// 115c <Xil_Assert>
    2b78:	30c0012d 	addik	r6, r0, 301
    2b7c:	30600001 	addik	r3, r0, 1
    2b80:	b0000000 	imm	0
    2b84:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2ba4:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2ba8:	b0001111 	imm	4369
    2bac:	a8631111 	xori	r3, r3, 4369
    2bb0:	be030034 	beqid	r3, 52		// 2be4
    2bb4:	30800010 	addik	r4, r0, 16	// 10 <_vector_interrupt>
    2bb8:	b0000000 	imm	0
    2bbc:	30a058f0 	addik	r5, r0, 22768
    2bc0:	b000ffff 	imm	-1
    2bc4:	b9f4e598 	brlid	r15, -6760	// 115c <Xil_Assert>
    2bc8:	30c0014c 	addik	r6, r0, 332
    2bcc:	30600001 	addik	r3, r0, 1
    2bd0:	b0000000 	imm	0
    2bd4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2bfc:	30a058f0 	addik	r5, r0, 22768
    2c00:	b000ffff 	imm	-1
    2c04:	b9f4e558 	brlid	r15, -6824	// 115c <Xil_Assert>
    2c08:	30c0014b 	addik	r6, r0, 331
    2c0c:	30600001 	addik	r3, r0, 1
    2c10:	b0000000 	imm	0
    2c14:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2c5c:	30a05904 	addik	r5, r0, 22788
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
    2c80:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2cd4:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2ce0:	b9f4080c 	brlid	r15, 2060	// 34ec <XUartLite_ClearStats>
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
    2cfc:	30a05904 	addik	r5, r0, 22788
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
    2d18:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2d3c:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    2d40:	b0001111 	imm	4369
    2d44:	a8631111 	xori	r3, r3, 4369
    2d48:	bc030030 	beqi	r3, 48		// 2d78
    2d4c:	b0000000 	imm	0
    2d50:	30a05904 	addik	r5, r0, 22788
    2d54:	b000ffff 	imm	-1
    2d58:	b9f4e404 	brlid	r15, -7164	// 115c <Xil_Assert>
    2d5c:	30c0016e 	addik	r6, r0, 366
    2d60:	30600001 	addik	r3, r0, 1
    2d64:	b0000000 	imm	0
    2d68:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2d9c:	30a05904 	addik	r5, r0, 22788
    2da0:	b000ffff 	imm	-1
    2da4:	b9f4e3b8 	brlid	r15, -7240	// 115c <Xil_Assert>
    2da8:	30c0016d 	addik	r6, r0, 365
    2dac:	30600001 	addik	r3, r0, 1
    2db0:	b0000000 	imm	0
    2db4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2dec:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>

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
    2e04:	30a05904 	addik	r5, r0, 22788
    2e08:	b000ffff 	imm	-1
    2e0c:	b9f4e350 	brlid	r15, -7344	// 115c <Xil_Assert>
    2e10:	30c00198 	addik	r6, r0, 408
    2e14:	30600001 	addik	r3, r0, 1
    2e18:	b0000000 	imm	0
    2e1c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2f00:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2f64:	30a05904 	addik	r5, r0, 22788
    2f68:	b000ffff 	imm	-1
    2f6c:	b9f4e1f0 	brlid	r15, -7696	// 115c <Xil_Assert>
    2f70:	30c000e0 	addik	r6, r0, 224
    2f74:	30600001 	addik	r3, r0, 1
    2f78:	b0000000 	imm	0
    2f7c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2fa0:	30a05904 	addik	r5, r0, 22788
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
    2fc8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    2fdc:	30a05904 	addik	r5, r0, 22788
    2fe0:	b000ffff 	imm	-1
    2fe4:	b9f4e178 	brlid	r15, -7816	// 115c <Xil_Assert>
    2fe8:	30c000dd 	addik	r6, r0, 221
    2fec:	30600001 	addik	r3, r0, 1
    2ff0:	b0000000 	imm	0
    2ff4:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    2ff8:	b810ff50 	brid	-176		// 2f48
    2ffc:	10730000 	addk	r3, r19, r0
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    3000:	b0000000 	imm	0
    3004:	30a05904 	addik	r5, r0, 22788
    3008:	b000ffff 	imm	-1
    300c:	b9f4e150 	brlid	r15, -7856	// 115c <Xil_Assert>
    3010:	30c000de 	addik	r6, r0, 222
    3014:	30600001 	addik	r3, r0, 1
    3018:	b0000000 	imm	0
    301c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    3118:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    317c:	30a05904 	addik	r5, r0, 22788
    3180:	b000ffff 	imm	-1
    3184:	b9f4dfd8 	brlid	r15, -8232	// 115c <Xil_Assert>
    3188:	30c00133 	addik	r6, r0, 307
    318c:	30600001 	addik	r3, r0, 1
    3190:	b0000000 	imm	0
    3194:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    31b8:	30a05904 	addik	r5, r0, 22788
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
    31e0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    31f4:	30a05904 	addik	r5, r0, 22788
    31f8:	b000ffff 	imm	-1
    31fc:	b9f4df60 	brlid	r15, -8352	// 115c <Xil_Assert>
    3200:	30c00130 	addik	r6, r0, 304
    3204:	30600001 	addik	r3, r0, 1
    3208:	b0000000 	imm	0
    320c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    3210:	b810ff50 	brid	-176		// 3160
    3214:	10730000 	addk	r3, r19, r0
	Xil_AssertNonvoid(DataBufferPtr != NULL);
    3218:	b0000000 	imm	0
    321c:	30a05904 	addik	r5, r0, 22788
    3220:	b000ffff 	imm	-1
    3224:	b9f4df38 	brlid	r15, -8392	// 115c <Xil_Assert>
    3228:	30c00131 	addik	r6, r0, 305
    322c:	30600001 	addik	r3, r0, 1
    3230:	b0000000 	imm	0
    3234:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    325c:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    3290:	30a05910 	addik	r5, r0, 22800
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
    32b0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
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
    32c4:	30a05910 	addik	r5, r0, 22800
    32c8:	b000ffff 	imm	-1
    32cc:	b9f4de90 	brlid	r15, -8560	// 115c <Xil_Assert>
    32d0:	30c00071 	addik	r6, r0, 113
    32d4:	30600001 	addik	r3, r0, 1
    32d8:	b0000000 	imm	0
    32dc:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    32e0:	b810ff9c 	brid	-100		// 327c
    32e4:	10730000 	addk	r3, r19, r0

000032e8 <XUartLite_LookupConfig>:
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    32e8:	b0000000 	imm	0
    32ec:	e4605ab8 	lhui	r3, r0, 23224	// 5ab8 <XUartLite_ConfigTable>
    32f0:	88632800 	xor	r3, r3, r5
    32f4:	be03003c 	beqid	r3, 60		// 3330
    32f8:	64630404 	bslli	r3, r3, 4
    32fc:	b0000000 	imm	0
    3300:	e4605ac8 	lhui	r3, r0, 23240
    3304:	88632800 	xor	r3, r3, r5
    3308:	be030024 	beqid	r3, 36		// 332c
    330c:	30600001 	addik	r3, r0, 1
    3310:	b0000000 	imm	0
    3314:	e4805ad8 	lhui	r4, r0, 23256
    3318:	88a42800 	xor	r5, r4, r5
    331c:	be050024 	beqid	r5, 36		// 3340
    3320:	10600000 	addk	r3, r0, r0
			break;
		}
	}

	return CfgPtr;
}
    3324:	b60f0008 	rtsd	r15, 8
    3328:	80000000 	or	r0, r0, r0
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XUartLite_ConfigTable[Index];
    332c:	64630404 	bslli	r3, r3, 4
    3330:	b0000000 	imm	0
    3334:	30635ab8 	addik	r3, r3, 23224
			break;
		}
	}

	return CfgPtr;
}
    3338:	b60f0008 	rtsd	r15, 8
    333c:	80000000 	or	r0, r0, r0
XUartLite_Config *XUartLite_LookupConfig(u16 DeviceId)
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
    3340:	b810ffec 	brid	-20		// 332c
    3344:	30600002 	addik	r3, r0, 2

00003348 <XUartLite_Initialize>:
*
* @note		None.
*
*****************************************************************************/
int XUartLite_Initialize(XUartLite *InstancePtr, u16 DeviceId)
{
    3348:	3021ffe0 	addik	r1, r1, -32
    334c:	fa61001c 	swi	r19, r1, 28
    3350:	f9e10000 	swi	r15, r1, 0
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3354:	be050088 	beqid	r5, 136		// 33dc
    3358:	12650000 	addk	r19, r5, r0
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    335c:	b0000000 	imm	0
    3360:	e4605ab8 	lhui	r3, r0, 23224	// 5ab8 <XUartLite_ConfigTable>
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    3364:	b0000000 	imm	0
    3368:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
{
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
    336c:	88633000 	xor	r3, r3, r6
    3370:	be030044 	beqid	r3, 68		// 33b4
    3374:	64630404 	bslli	r3, r3, 4
    3378:	b0000000 	imm	0
    337c:	e4605ac8 	lhui	r3, r0, 23240
    3380:	88633000 	xor	r3, r3, r6
    3384:	be03002c 	beqid	r3, 44		// 33b0
    3388:	30600001 	addik	r3, r0, 1
    338c:	b0000000 	imm	0
    3390:	e4805ad8 	lhui	r4, r0, 23256
    3394:	88c43000 	xor	r6, r4, r6
    3398:	be060018 	beqid	r6, 24		// 33b0
    339c:	30600002 	addik	r3, r0, 2
	if (ConfigPtr == (XUartLite_Config *)NULL) {
		return XST_DEVICE_NOT_FOUND;
	}
	return XUartLite_CfgInitialize(InstancePtr, ConfigPtr,
					ConfigPtr->RegBaseAddr);
}
    33a0:	e9e10000 	lwi	r15, r1, 0
    33a4:	ea61001c 	lwi	r19, r1, 28
    33a8:	b60f0008 	rtsd	r15, 8
    33ac:	30210020 	addik	r1, r1, 32
	XUartLite_Config *CfgPtr = NULL;
	u32 Index;

	for (Index=0; Index < XPAR_XUARTLITE_NUM_INSTANCES; Index++) {
		if (XUartLite_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XUartLite_ConfigTable[Index];
    33b0:	64630404 	bslli	r3, r3, 4
    33b4:	b0000000 	imm	0
    33b8:	30c35ab8 	addik	r6, r3, 23224
	ConfigPtr = XUartLite_LookupConfig(DeviceId);

	if (ConfigPtr == (XUartLite_Config *)NULL) {
		return XST_DEVICE_NOT_FOUND;
	}
	return XUartLite_CfgInitialize(InstancePtr, ConfigPtr,
    33bc:	10b30000 	addk	r5, r19, r0
    33c0:	b000ffff 	imm	-1
    33c4:	b9f4f8c8 	brlid	r15, -1848	// 2c8c <XUartLite_CfgInitialize>
    33c8:	e8e60004 	lwi	r7, r6, 4
					ConfigPtr->RegBaseAddr);
}
    33cc:	e9e10000 	lwi	r15, r1, 0
    33d0:	ea61001c 	lwi	r19, r1, 28
    33d4:	b60f0008 	rtsd	r15, 8
    33d8:	30210020 	addik	r1, r1, 32
	XUartLite_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
    33dc:	b0000000 	imm	0
    33e0:	30a05928 	addik	r5, r0, 22824
    33e4:	b000ffff 	imm	-1
    33e8:	b9f4dd74 	brlid	r15, -8844	// 115c <Xil_Assert>
    33ec:	30c0008d 	addik	r6, r0, 141
    33f0:	30600001 	addik	r3, r0, 1
    33f4:	b0000000 	imm	0
    33f8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    33fc:	b810ffa4 	brid	-92		// 33a0
    3400:	10730000 	addk	r3, r19, r0

00003404 <XUartLite_GetStats>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_GetStats(XUartLite *InstancePtr, XUartLite_Stats *StatsPtr)
{
    3404:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    3408:	be050094 	beqid	r5, 148		// 349c
    340c:	f9e10000 	swi	r15, r1, 0
    3410:	b0000000 	imm	0
    3414:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(StatsPtr != NULL);
    3418:	bc0600ac 	beqi	r6, 172		// 34c4
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    341c:	e8650020 	lwi	r3, r5, 32
    3420:	b0001111 	imm	4369
    3424:	a8631111 	xori	r3, r3, 4369
    3428:	bc030030 	beqi	r3, 48		// 3458
    342c:	b0000000 	imm	0
    3430:	30a0593c 	addik	r5, r0, 22844
    3434:	b000ffff 	imm	-1
    3438:	b9f4dd24 	brlid	r15, -8924	// 115c <Xil_Assert>
    343c:	30c0006a 	addik	r6, r0, 106
    3440:	30600001 	addik	r3, r0, 1
    3444:	b0000000 	imm	0
    3448:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	StatsPtr->ReceiveOverrunErrors =
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
}
    344c:	e9e10000 	lwi	r15, r1, 0
    3450:	b60f0008 	rtsd	r15, 8
    3454:	3021001c 	addik	r1, r1, 28
	Xil_AssertVoid(StatsPtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	/* Copy the stats from the instance to the specified stats */

	StatsPtr->TransmitInterrupts = InstancePtr->Stats.TransmitInterrupts;
    3458:	e8650000 	lwi	r3, r5, 0
    345c:	f8660000 	swi	r3, r6, 0
	StatsPtr->ReceiveInterrupts = InstancePtr->Stats.ReceiveInterrupts;
    3460:	e8650004 	lwi	r3, r5, 4
    3464:	f8660004 	swi	r3, r6, 4
	StatsPtr->CharactersTransmitted =
    3468:	e8650008 	lwi	r3, r5, 8
    346c:	f8660008 	swi	r3, r6, 8
			InstancePtr->Stats.CharactersTransmitted;
	StatsPtr->CharactersReceived = InstancePtr->Stats.CharactersReceived;
    3470:	e865000c 	lwi	r3, r5, 12
    3474:	f866000c 	swi	r3, r6, 12
	StatsPtr->ReceiveOverrunErrors =
    3478:	e8650010 	lwi	r3, r5, 16
    347c:	f8660010 	swi	r3, r6, 16
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
    3480:	e8650018 	lwi	r3, r5, 24
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
    3484:	e8a50014 	lwi	r5, r5, 20
	StatsPtr->CharactersTransmitted =
			InstancePtr->Stats.CharactersTransmitted;
	StatsPtr->CharactersReceived = InstancePtr->Stats.CharactersReceived;
	StatsPtr->ReceiveOverrunErrors =
			InstancePtr->Stats.ReceiveOverrunErrors;
	StatsPtr->ReceiveFramingErrors =
    3488:	f8660018 	swi	r3, r6, 24
			InstancePtr->Stats.ReceiveFramingErrors;
	StatsPtr->ReceiveParityErrors = InstancePtr->Stats.ReceiveParityErrors;
    348c:	f8a60014 	swi	r5, r6, 20
}
    3490:	e9e10000 	lwi	r15, r1, 0
    3494:	b60f0008 	rtsd	r15, 8
    3498:	3021001c 	addik	r1, r1, 28
void XUartLite_GetStats(XUartLite *InstancePtr, XUartLite_Stats *StatsPtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    349c:	b0000000 	imm	0
    34a0:	30a0593c 	addik	r5, r0, 22844
    34a4:	b000ffff 	imm	-1
    34a8:	b9f4dcb4 	brlid	r15, -9036	// 115c <Xil_Assert>
    34ac:	30c00068 	addik	r6, r0, 104
    34b0:	30600001 	addik	r3, r0, 1
    34b4:	b0000000 	imm	0
    34b8:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    34bc:	b810ff94 	brid	-108		// 3450
    34c0:	e9e10000 	lwi	r15, r1, 0
	Xil_AssertVoid(StatsPtr != NULL);
    34c4:	b0000000 	imm	0
    34c8:	30a0593c 	addik	r5, r0, 22844
    34cc:	b000ffff 	imm	-1
    34d0:	b9f4dc8c 	brlid	r15, -9076	// 115c <Xil_Assert>
    34d4:	30c00069 	addik	r6, r0, 105
    34d8:	30600001 	addik	r3, r0, 1
    34dc:	b0000000 	imm	0
    34e0:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    34e4:	b810ff6c 	brid	-148		// 3450
    34e8:	e9e10000 	lwi	r15, r1, 0

000034ec <XUartLite_ClearStats>:
*
* @note		None.
*
*****************************************************************************/
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
    34ec:	3021ffe4 	addik	r1, r1, -28
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    34f0:	be050074 	beqid	r5, 116		// 3564
    34f4:	f9e10000 	swi	r15, r1, 0
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    34f8:	e8650020 	lwi	r3, r5, 32
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    34fc:	b0000000 	imm	0
    3500:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    3504:	b0001111 	imm	4369
    3508:	a8631111 	xori	r3, r3, 4369
    350c:	bc030030 	beqi	r3, 48		// 353c
    3510:	b0000000 	imm	0
    3514:	30a0593c 	addik	r5, r0, 22844
    3518:	b000ffff 	imm	-1
    351c:	b9f4dc40 	brlid	r15, -9152	// 115c <Xil_Assert>
    3520:	30c0008c 	addik	r6, r0, 140
    3524:	30600001 	addik	r3, r0, 1
    3528:	b0000000 	imm	0
    352c:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	InstancePtr->Stats.CharactersReceived = 0;
	InstancePtr->Stats.ReceiveOverrunErrors = 0;
	InstancePtr->Stats.ReceiveFramingErrors = 0;
	InstancePtr->Stats.ReceiveParityErrors = 0;

}
    3530:	e9e10000 	lwi	r15, r1, 0
    3534:	b60f0008 	rtsd	r15, 8
    3538:	3021001c 	addik	r1, r1, 28
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

	InstancePtr->Stats.TransmitInterrupts = 0;
    353c:	f8650000 	swi	r3, r5, 0
	InstancePtr->Stats.ReceiveInterrupts = 0;
    3540:	f8650004 	swi	r3, r5, 4
	InstancePtr->Stats.CharactersTransmitted = 0;
    3544:	f8650008 	swi	r3, r5, 8
	InstancePtr->Stats.CharactersReceived = 0;
    3548:	f865000c 	swi	r3, r5, 12
	InstancePtr->Stats.ReceiveOverrunErrors = 0;
    354c:	f8650010 	swi	r3, r5, 16
	InstancePtr->Stats.ReceiveFramingErrors = 0;
    3550:	f8650018 	swi	r3, r5, 24
	InstancePtr->Stats.ReceiveParityErrors = 0;
    3554:	f8650014 	swi	r3, r5, 20

}
    3558:	e9e10000 	lwi	r15, r1, 0
    355c:	b60f0008 	rtsd	r15, 8
    3560:	3021001c 	addik	r1, r1, 28
void XUartLite_ClearStats(XUartLite *InstancePtr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    3564:	b0000000 	imm	0
    3568:	30a0593c 	addik	r5, r0, 22844
    356c:	b000ffff 	imm	-1
    3570:	b9f4dbec 	brlid	r15, -9236	// 115c <Xil_Assert>
    3574:	30c0008b 	addik	r6, r0, 139
    3578:	30600001 	addik	r3, r0, 1
    357c:	b0000000 	imm	0
    3580:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
    3584:	b810ffb0 	brid	-80		// 3534
    3588:	e9e10000 	lwi	r15, r1, 0

0000358c <XIntc_VoidInterruptHandler>:
* to be included in the driver compilation.
*
******************************************************************************/
#ifdef XPAR_INTC_SINGLE_DEVICE_ID
void XIntc_VoidInterruptHandler(void)
{
    358c:	3021ffe4 	addik	r1, r1, -28
    3590:	f9e10000 	swi	r15, r1, 0
	/* Use the single instance to call the main interrupt handler */
	XIntc_DeviceInterruptHandler((void *) XPAR_INTC_SINGLE_DEVICE_ID);
    3594:	b000ffff 	imm	-1
    3598:	b9f4cd90 	brlid	r15, -12912	// 328 <XIntc_DeviceInterruptHandler>
    359c:	10a00000 	addk	r5, r0, r0
}
    35a0:	e9e10000 	lwi	r15, r1, 0
    35a4:	b60f0008 	rtsd	r15, 8
    35a8:	3021001c 	addik	r1, r1, 28

000035ac <XIntc_InterruptHandler>:
*
* @note		None.
*
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
    35ac:	3021ffe4 	addik	r1, r1, -28
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35b0:	be05002c 	beqid	r5, 44		// 35dc
    35b4:	f9e10000 	swi	r15, r1, 0

	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
    35b8:	e8650010 	lwi	r3, r5, 16
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35bc:	b0000000 	imm	0
    35c0:	f8005f9c 	swi	r0, r0, 24476	// 5f9c <Xil_AssertStatus>

	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
    35c4:	b000ffff 	imm	-1
    35c8:	b9f4cd60 	brlid	r15, -12960	// 328 <XIntc_DeviceInterruptHandler>
    35cc:	e4a30000 	lhui	r5, r3, 0
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    35d0:	e9e10000 	lwi	r15, r1, 0
    35d4:	b60f0008 	rtsd	r15, 8
    35d8:	3021001c 	addik	r1, r1, 28
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35dc:	b0000000 	imm	0
    35e0:	30a05950 	addik	r5, r0, 22864
    35e4:	b000ffff 	imm	-1
    35e8:	b9f4db74 	brlid	r15, -9356	// 115c <Xil_Assert>
    35ec:	30c000af 	addik	r6, r0, 175
	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    35f0:	e9e10000 	lwi	r15, r1, 0
******************************************************************************/
void XIntc_InterruptHandler(XIntc * InstancePtr)
{
	/* Assert that the pointer to the instance is valid
	 */
	Xil_AssertVoid(InstancePtr != NULL);
    35f4:	30600001 	addik	r3, r0, 1
    35f8:	b0000000 	imm	0
    35fc:	f8605f9c 	swi	r3, r0, 24476	// 5f9c <Xil_AssertStatus>
	/* Use the instance's device ID to call the main interrupt handler.
	 * (the casts are to avoid a compiler warning)
	 */
	XIntc_DeviceInterruptHandler((void *)
				     ((u32) (InstancePtr->CfgPtr->DeviceId)));
}
    3600:	b60f0008 	rtsd	r15, 8
    3604:	3021001c 	addik	r1, r1, 28

00003608 <microblaze_disable_dcache>:
	.globl	microblaze_disable_dcache
	.ent	microblaze_disable_dcache
	.align	2
microblaze_disable_dcache:

        addik   r1, r1, -28
    3608:	3021ffe4 	addik	r1, r1, -28
#if XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK != 0
        swi     r15, r1, 0
        brlid   r15, microblaze_flush_dcache
        nop
#endif
    	mfs	r11, rmsr
    360c:	95608001 	mfs	r11, rmsr
	andi	r11, r11, ~128
    3610:	a56bff7f 	andi	r11, r11, -129
	mts	rmsr, r11
    3614:	940bc001 	mts	rmsr, r11

#if XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK != 0   
        lwi     r15, r1, 0
#endif

	rtsd	r15, 8
    3618:	b60f0008 	rtsd	r15, 8
	addi	r1, r1, 28
    361c:	2021001c 	addi	r1, r1, 28

00003620 <microblaze_disable_icache>:
	.globl	microblaze_disable_icache
	.ent	microblaze_disable_icache
	.align	2
microblaze_disable_icache:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    3620:	2021fffc 	addi	r1, r1, -4
	#Read the MSR register
	mfs	r8, rmsr
    3624:	95008001 	mfs	r8, rmsr
	#Clear the icache enable bit
	andi	r8, r8, ~32
    3628:	a508ffdf 	andi	r8, r8, -33
	#Save the MSR register
	mts	rmsr, r8
    362c:	9408c001 	mts	rmsr, r8
	#Return
	rtsd	r15, 8
    3630:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    3634:	20210004 	addi	r1, r1, 4

00003638 <microblaze_disable_interrupts>:
	.globl	microblaze_disable_interrupts
	.ent	microblaze_disable_interrupts
	.align	2
microblaze_disable_interrupts:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    3638:	2021fffc 	addi	r1, r1, -4
	#Save register r12
	swi	r12, r1, 0
    363c:	f9810000 	swi	r12, r1, 0
	#Read the MSR register
	mfs	r12, rmsr
    3640:	95808001 	mfs	r12, rmsr
	#Clear the interrupt enable bit
	andi	r12, r12, ~2
    3644:	a58cfffd 	andi	r12, r12, -3
	#Save the MSR register
	mts	rmsr, r12
    3648:	940cc001 	mts	rmsr, r12
	#Load register r12
	lwi	r12, r1, 0
    364c:	e9810000 	lwi	r12, r1, 0
	#Return
	rtsd	r15, 8
    3650:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    3654:	20210004 	addi	r1, r1, 4

00003658 <microblaze_enable_interrupts>:
	.globl	microblaze_enable_interrupts
	.ent	microblaze_enable_interrupts
	.align	2
microblaze_enable_interrupts:	
	#Make space on stack for a temporary
	addi	r1, r1, -4
    3658:	2021fffc 	addi	r1, r1, -4
	#Save register r12
	swi	r12, r1, 0
    365c:	f9810000 	swi	r12, r1, 0
	#Read the MSR register
	mfs	r12, rmsr
    3660:	95808001 	mfs	r12, rmsr
	#Set the interrupt enable bit
	ori	r12, r12, 2
    3664:	a18c0002 	ori	r12, r12, 2
	#Save the MSR register
	mts	rmsr, r12
    3668:	940cc001 	mts	rmsr, r12
	#Load register r12
	lwi	r12, r1, 0
    366c:	e9810000 	lwi	r12, r1, 0
	#Return
	rtsd	r15, 8
    3670:	b60f0008 	rtsd	r15, 8
	#Update stack in the delay slot
	addi	r1, r1, 4
    3674:	20210004 	addi	r1, r1, 4

00003678 <microblaze_flush_dcache>:
	.ent	microblaze_flush_dcache
	.align	2

microblaze_flush_dcache:

        andi    r5, r5, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3678:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_DCACHE_BYTE_SIZE        /* Compute end */
    367c:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    3680:	a4c6fff0 	andi	r6, r6, -16

00003684 <L_start>:
    
L_start:
	wdc.flush r5, r0                                        /* Flush the Cache */
    3684:	90050074 	wdc.flush	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    3688:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    368c:	bc72000c 	blei	r18, 12	// 3698 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    3690:	b810fff4 	brid	-12	// 3684 <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_DCACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    3694:	30a50010 	addik	r5, r5, 16

00003698 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    3698:	b60f0008 	rtsd	r15, 8
        nop
    369c:	80000000 	or	r0, r0, r0

000036a0 <microblaze_invalidate_dcache>:
	mfs	r9, rmsr                                        
	andi	r10, r9, ~(MICROBLAZE_MSR_DCACHE_ENABLE | MICROBLAZE_MSR_INTR_ENABLE)
	mts	rmsr, r10
#endif
    
        andi    r5, r5, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    36a0:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_DCACHE_BYTE_SIZE        /* Compute end */
    36a4:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_DCACHE_LINE_LEN)  /* Align to cache line */
    36a8:	a4c6fff0 	andi	r6, r6, -16

000036ac <L_start>:
    
L_start:
	wdc	r5, r0                                          /* Invalidate the Cache */
    36ac:	90050064 	wdc	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    36b0:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    36b4:	bc72000c 	blei	r18, 12	// 36c0 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    36b8:	b810fff4 	brid	-12	// 36ac <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_DCACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    36bc:	30a50010 	addik	r5, r5, 16

000036c0 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    36c0:	b60f0008 	rtsd	r15, 8
#ifdef MB_VERSION_LT_v720                                       /* restore MSR only for MB version < v7.20 */
	mts	rmsr, r9
#else
        nop
    36c4:	80000000 	or	r0, r0, r0

000036c8 <microblaze_invalidate_icache>:
#ifdef MB_VERSION_LT_v720                                       /* Disable Icache and interrupts before invalidating */        
	mfs	r9, rmsr
	andi	r10, r9, ~(MICROBLAZE_MSR_ICACHE_ENABLE | MICROBLAZE_MSR_INTR_ENABLE)
	mts	rmsr, r10
#endif
        andi    r5, r5, -(4 * XPAR_MICROBLAZE_ICACHE_LINE_LEN)  /* Align to cache line */
    36c8:	a4a5fff0 	andi	r5, r5, -16

    	addik	r6, r5, XPAR_MICROBLAZE_CACHE_BYTE_SIZE         /* Compute end */
    36cc:	30c52000 	addik	r6, r5, 8192
        andi    r6, r6, -(4 * XPAR_MICROBLAZE_ICACHE_LINE_LEN)  /* Align to cache line */
    36d0:	a4c6fff0 	andi	r6, r6, -16

000036d4 <L_start>:
    
L_start:
	wic	r5, r0                                          /* Invalidate the Cache */
    36d4:	90050068 	wic	r5, r0
    
    	cmpu	r18, r5, r6                                     /* Are we at the end? */
    36d8:	16453003 	cmpu	r18, r5, r6
	blei	r18, L_done                                     
    36dc:	bc72000c 	blei	r18, 12	// 36e8 <L_done>

     	brid	L_start                                         /* Branch to the beginning of the loop */
    36e0:	b810fff4 	brid	-12	// 36d4 <L_start>
	addik	r5, r5, (XPAR_MICROBLAZE_ICACHE_LINE_LEN * 4)   /* Increment the addrees by 4 (delay slot) */
    36e4:	30a50010 	addik	r5, r5, 16

000036e8 <L_done>:

L_done:	
	rtsd	r15, 8                                          /* Return */
    36e8:	b60f0008 	rtsd	r15, 8

#ifdef MB_VERSION_LT_v720                                       /* restore MSR only for MB version < v7.20 */
	mts	rmsr, r9
#else
        nop
    36ec:	80000000 	or	r0, r0, r0

000036f0 <calloc>:
    36f0:	10650000 	addk	r3, r5, r0
    36f4:	10e60000 	addk	r7, r6, r0
    36f8:	b0000000 	imm	0
    36fc:	e8a059c4 	lwi	r5, r0, 22980	// 59c4 <_impure_ptr>
    3700:	3021ffe4 	addik	r1, r1, -28
    3704:	f9e10000 	swi	r15, r1, 0
    3708:	b0000000 	imm	0
    370c:	b9f40014 	brlid	r15, 20	// 3720 <_calloc_r>
    3710:	10c30000 	addk	r6, r3, r0
    3714:	e9e10000 	lwi	r15, r1, 0
    3718:	b60f0008 	rtsd	r15, 8
    371c:	3021001c 	addik	r1, r1, 28

00003720 <_calloc_r>:
    3720:	3021ffe0 	addik	r1, r1, -32
    3724:	fa61001c 	swi	r19, r1, 28
    3728:	f9e10000 	swi	r15, r1, 0
    372c:	b0000000 	imm	0
    3730:	b9f40110 	brlid	r15, 272	// 3840 <_malloc_r>
    3734:	40c73000 	mul	r6, r7, r6
    3738:	be030070 	beqid	r3, 112		// 37a8
    373c:	12630000 	addk	r19, r3, r0
    3740:	e8e3fffc 	lwi	r7, r3, -4
    3744:	30600024 	addik	r3, r0, 36
    3748:	a4e7fffc 	andi	r7, r7, -4
    374c:	30e7fffc 	addik	r7, r7, -4
    3750:	14671803 	cmpu	r3, r7, r3
    3754:	be430068 	bltid	r3, 104		// 37bc
    3758:	30800013 	addik	r4, r0, 19
    375c:	14872003 	cmpu	r4, r7, r4
    3760:	bea4003c 	bgeid	r4, 60		// 379c
    3764:	10730000 	addk	r3, r19, r0
    3768:	3060001b 	addik	r3, r0, 27
    376c:	f8130000 	swi	r0, r19, 0
    3770:	14671803 	cmpu	r3, r7, r3
    3774:	bea3006c 	bgeid	r3, 108		// 37e0
    3778:	f8130004 	swi	r0, r19, 4
    377c:	f8130008 	swi	r0, r19, 8
    3780:	f813000c 	swi	r0, r19, 12
    3784:	a8e70024 	xori	r7, r7, 36
    3788:	be270014 	bneid	r7, 20		// 379c
    378c:	30730010 	addik	r3, r19, 16
    3790:	f8f30010 	swi	r7, r19, 16
    3794:	f8f30014 	swi	r7, r19, 20
    3798:	30730018 	addik	r3, r19, 24
    379c:	f8030000 	swi	r0, r3, 0
    37a0:	f8030004 	swi	r0, r3, 4
    37a4:	f8030008 	swi	r0, r3, 8
    37a8:	10730000 	addk	r3, r19, r0
    37ac:	e9e10000 	lwi	r15, r1, 0
    37b0:	ea61001c 	lwi	r19, r1, 28
    37b4:	b60f0008 	rtsd	r15, 8
    37b8:	30210020 	addik	r1, r1, 32
    37bc:	10b30000 	addk	r5, r19, r0
    37c0:	b0000000 	imm	0
    37c4:	b9f40cf4 	brlid	r15, 3316	// 44b8 <memset>
    37c8:	10c00000 	addk	r6, r0, r0
    37cc:	10730000 	addk	r3, r19, r0
    37d0:	e9e10000 	lwi	r15, r1, 0
    37d4:	ea61001c 	lwi	r19, r1, 28
    37d8:	b60f0008 	rtsd	r15, 8
    37dc:	30210020 	addik	r1, r1, 32
    37e0:	b810ffbc 	brid	-68		// 379c
    37e4:	30730008 	addik	r3, r19, 8

000037e8 <malloc>:
    37e8:	10c50000 	addk	r6, r5, r0
    37ec:	b0000000 	imm	0
    37f0:	e8a059c4 	lwi	r5, r0, 22980	// 59c4 <_impure_ptr>
    37f4:	3021ffe4 	addik	r1, r1, -28
    37f8:	f9e10000 	swi	r15, r1, 0
    37fc:	b0000000 	imm	0
    3800:	b9f40040 	brlid	r15, 64	// 3840 <_malloc_r>
    3804:	80000000 	or	r0, r0, r0
    3808:	e9e10000 	lwi	r15, r1, 0
    380c:	b60f0008 	rtsd	r15, 8
    3810:	3021001c 	addik	r1, r1, 28

00003814 <free>:
    3814:	10c50000 	addk	r6, r5, r0
    3818:	b0000000 	imm	0
    381c:	e8a059c4 	lwi	r5, r0, 22980	// 59c4 <_impure_ptr>
    3820:	3021ffe4 	addik	r1, r1, -28
    3824:	f9e10000 	swi	r15, r1, 0
    3828:	b0000000 	imm	0
    382c:	b9f416d4 	brlid	r15, 5844	// 4f00 <_free_r>
    3830:	80000000 	or	r0, r0, r0
    3834:	e9e10000 	lwi	r15, r1, 0
    3838:	b60f0008 	rtsd	r15, 8
    383c:	3021001c 	addik	r1, r1, 28

00003840 <_malloc_r>:
    3840:	3021ffcc 	addik	r1, r1, -52
    3844:	fac10020 	swi	r22, r1, 32
    3848:	30600016 	addik	r3, r0, 22
    384c:	32c6000b 	addik	r22, r6, 11
    3850:	fae10024 	swi	r23, r1, 36
    3854:	f9e10000 	swi	r15, r1, 0
    3858:	fa61001c 	swi	r19, r1, 28
    385c:	fb010028 	swi	r24, r1, 40
    3860:	fb21002c 	swi	r25, r1, 44
    3864:	fb410030 	swi	r26, r1, 48
    3868:	14761803 	cmpu	r3, r22, r3
    386c:	bea300b0 	bgeid	r3, 176		// 391c
    3870:	12e50000 	addk	r23, r5, r0
    3874:	a6d6fff8 	andi	r22, r22, -8
    3878:	14c6b003 	cmpu	r6, r6, r22
    387c:	be4600b0 	bltid	r6, 176		// 392c
    3880:	6476001f 	bsrli	r3, r22, 31
    3884:	be2300ac 	bneid	r3, 172		// 3930
    3888:	3060000c 	addik	r3, r0, 12
    388c:	b0000000 	imm	0
    3890:	b9f40e0c 	brlid	r15, 3596	// 469c <__malloc_lock>
    3894:	10b70000 	addk	r5, r23, r0
    3898:	306001f7 	addik	r3, r0, 503
    389c:	14761803 	cmpu	r3, r22, r3
    38a0:	be43009c 	bltid	r3, 156		// 393c
    38a4:	65160009 	bsrli	r8, r22, 9
    38a8:	b0000000 	imm	0
    38ac:	30765af0 	addik	r3, r22, 23280
    38b0:	ea63000c 	lwi	r19, r3, 12
    38b4:	88731800 	xor	r3, r19, r3
    38b8:	be0304f8 	beqid	r3, 1272		// 3db0
    38bc:	64d60003 	bsrli	r6, r22, 3
    38c0:	e8730004 	lwi	r3, r19, 4
    38c4:	e893000c 	lwi	r4, r19, 12
    38c8:	e8f30008 	lwi	r7, r19, 8
    38cc:	a463fffc 	andi	r3, r3, -4
    38d0:	10731800 	addk	r3, r19, r3
    38d4:	e8c30004 	lwi	r6, r3, 4
    38d8:	f887000c 	swi	r4, r7, 12
    38dc:	10b70000 	addk	r5, r23, r0
    38e0:	a0c60001 	ori	r6, r6, 1
    38e4:	f8e40008 	swi	r7, r4, 8
    38e8:	b0000000 	imm	0
    38ec:	b9f40db8 	brlid	r15, 3512	// 46a4 <__malloc_unlock>
    38f0:	f8c30004 	swi	r6, r3, 4
    38f4:	30730008 	addik	r3, r19, 8
    38f8:	e9e10000 	lwi	r15, r1, 0
    38fc:	ea61001c 	lwi	r19, r1, 28
    3900:	eac10020 	lwi	r22, r1, 32
    3904:	eae10024 	lwi	r23, r1, 36
    3908:	eb010028 	lwi	r24, r1, 40
    390c:	eb21002c 	lwi	r25, r1, 44
    3910:	eb410030 	lwi	r26, r1, 48
    3914:	b60f0008 	rtsd	r15, 8
    3918:	30210034 	addik	r1, r1, 52
    391c:	32c00010 	addik	r22, r0, 16	// 10 <_vector_interrupt>
    3920:	14c6b003 	cmpu	r6, r6, r22
    3924:	bea6ff60 	bgeid	r6, -160		// 3884
    3928:	10600000 	addk	r3, r0, r0
    392c:	3060000c 	addik	r3, r0, 12
    3930:	f8770000 	swi	r3, r23, 0
    3934:	b810ffc4 	brid	-60		// 38f8
    3938:	10600000 	addk	r3, r0, r0
    393c:	be08020c 	beqid	r8, 524		// 3b48
    3940:	30600004 	addik	r3, r0, 4
    3944:	14681803 	cmpu	r3, r8, r3
    3948:	be430318 	bltid	r3, 792		// 3c60
    394c:	30600014 	addik	r3, r0, 20
    3950:	65160006 	bsrli	r8, r22, 6
    3954:	31080038 	addik	r8, r8, 56
    3958:	64e80403 	bslli	r7, r8, 3
    395c:	b0000000 	imm	0
    3960:	30e75af0 	addik	r7, r7, 23280
    3964:	ea67000c 	lwi	r19, r7, 12
    3968:	88679800 	xor	r3, r7, r19
    396c:	be030054 	beqid	r3, 84		// 39c0
    3970:	30c80001 	addik	r6, r8, 1
    3974:	e8730004 	lwi	r3, r19, 4
    3978:	30a0000f 	addik	r5, r0, 15
    397c:	a463fffc 	andi	r3, r3, -4
    3980:	14961800 	rsubk	r4, r22, r3
    3984:	14c42801 	cmp	r6, r4, r5
    3988:	bc460030 	blti	r6, 48		// 39b8
    398c:	bea401c8 	bgeid	r4, 456		// 3b54
    3990:	10731800 	addk	r3, r19, r3
    3994:	ea73000c 	lwi	r19, r19, 12
    3998:	88679800 	xor	r3, r7, r19
    399c:	be030024 	beqid	r3, 36		// 39c0
    39a0:	30c80001 	addik	r6, r8, 1
    39a4:	e8730004 	lwi	r3, r19, 4
    39a8:	a463fffc 	andi	r3, r3, -4
    39ac:	14961800 	rsubk	r4, r22, r3
    39b0:	14c42801 	cmp	r6, r4, r5
    39b4:	bca6ffd8 	bgei	r6, -40		// 398c
    39b8:	3108ffff 	addik	r8, r8, -1
    39bc:	30c80001 	addik	r6, r8, 1
    39c0:	b0000000 	imm	0
    39c4:	30e05b00 	addik	r7, r0, 23296
    39c8:	b0000000 	imm	0
    39cc:	ea605b00 	lwi	r19, r0, 23296
    39d0:	3087fff8 	addik	r4, r7, -8
    39d4:	88732000 	xor	r3, r19, r4
    39d8:	be030374 	beqid	r3, 884		// 3d4c
    39dc:	30a0000f 	addik	r5, r0, 15
    39e0:	e8730004 	lwi	r3, r19, 4
    39e4:	a463fffc 	andi	r3, r3, -4
    39e8:	15161800 	rsubk	r8, r22, r3
    39ec:	14a82801 	cmp	r5, r8, r5
    39f0:	bc45031c 	blti	r5, 796		// 3d0c
    39f4:	f8870004 	swi	r4, r7, 4
    39f8:	b0000000 	imm	0
    39fc:	f8805b00 	swi	r4, r0, 23296
    3a00:	bea80184 	bgeid	r8, 388		// 3b84
    3a04:	308001ff 	addik	r4, r0, 511
    3a08:	14832003 	cmpu	r4, r3, r4
    3a0c:	be44027c 	bltid	r4, 636		// 3c88
    3a10:	64830009 	bsrli	r4, r3, 9
    3a14:	64630003 	bsrli	r3, r3, 3
    3a18:	64830403 	bslli	r4, r3, 3
    3a1c:	64630202 	bsrai	r3, r3, 2
    3a20:	b0000000 	imm	0
    3a24:	30845af0 	addik	r4, r4, 23280
    3a28:	31200001 	addik	r9, r0, 1
    3a2c:	e8a40008 	lwi	r5, r4, 8
    3a30:	44691c00 	bsll	r3, r9, r3
    3a34:	b0000000 	imm	0
    3a38:	e9205af4 	lwi	r9, r0, 23284
    3a3c:	f893000c 	swi	r4, r19, 12
    3a40:	f8b30008 	swi	r5, r19, 8
    3a44:	81234800 	or	r9, r3, r9
    3a48:	f927fff4 	swi	r9, r7, -12
    3a4c:	fa640008 	swi	r19, r4, 8
    3a50:	fa65000c 	swi	r19, r5, 12
    3a54:	64660202 	bsrai	r3, r6, 2
    3a58:	30800001 	addik	r4, r0, 1
    3a5c:	44841c00 	bsll	r4, r4, r3
    3a60:	14644803 	cmpu	r3, r4, r9
    3a64:	be430144 	bltid	r3, 324		// 3ba8
    3a68:	84692000 	and	r3, r9, r4
    3a6c:	be230030 	bneid	r3, 48		// 3a9c
    3a70:	3140000f 	addik	r10, r0, 15
    3a74:	10842000 	addk	r4, r4, r4
    3a78:	a4c6fffc 	andi	r6, r6, -4
    3a7c:	84692000 	and	r3, r9, r4
    3a80:	be23001c 	bneid	r3, 28		// 3a9c
    3a84:	30c60004 	addik	r6, r6, 4
    3a88:	10842000 	addk	r4, r4, r4
    3a8c:	84644800 	and	r3, r4, r9
    3a90:	be03fff8 	beqid	r3, -8		// 3a88
    3a94:	30c60004 	addik	r6, r6, 4
    3a98:	3140000f 	addik	r10, r0, 15
    3a9c:	65860403 	bslli	r12, r6, 3
    3aa0:	b0000000 	imm	0
    3aa4:	318c5af0 	addik	r12, r12, 23280
    3aa8:	10ec0000 	addk	r7, r12, r0
    3aac:	11660000 	addk	r11, r6, r0
    3ab0:	ea67000c 	lwi	r19, r7, 12
    3ab4:	88679800 	xor	r3, r7, r19
    3ab8:	bc230020 	bnei	r3, 32		// 3ad8
    3abc:	b81002a4 	brid	676		// 3d60
    3ac0:	316b0001 	addik	r11, r11, 1
    3ac4:	bea30308 	bgeid	r3, 776		// 3dcc
    3ac8:	10732800 	addk	r3, r19, r5
    3acc:	ea73000c 	lwi	r19, r19, 12
    3ad0:	88679800 	xor	r3, r7, r19
    3ad4:	bc030288 	beqi	r3, 648		// 3d5c
    3ad8:	e8b30004 	lwi	r5, r19, 4
    3adc:	a4a5fffc 	andi	r5, r5, -4
    3ae0:	14762800 	rsubk	r3, r22, r5
    3ae4:	15035001 	cmp	r8, r3, r10
    3ae8:	bca8ffdc 	bgei	r8, -36		// 3ac4
    3aec:	e8b3000c 	lwi	r5, r19, 12
    3af0:	e8d30008 	lwi	r6, r19, 8
    3af4:	1093b000 	addk	r4, r19, r22
    3af8:	a2d60001 	ori	r22, r22, 1
    3afc:	f8a6000c 	swi	r5, r6, 12
    3b00:	f8c50008 	swi	r6, r5, 8
    3b04:	b0000000 	imm	0
    3b08:	30a05af8 	addik	r5, r0, 23288
    3b0c:	b0000000 	imm	0
    3b10:	f8805b04 	swi	r4, r0, 23300
    3b14:	b0000000 	imm	0
    3b18:	f8805b00 	swi	r4, r0, 23296
    3b1c:	f8a4000c 	swi	r5, r4, 12
    3b20:	f8a40008 	swi	r5, r4, 8
    3b24:	10b70000 	addk	r5, r23, r0
    3b28:	a0c30001 	ori	r6, r3, 1
    3b2c:	fad30004 	swi	r22, r19, 4
    3b30:	d8632000 	sw	r3, r3, r4
    3b34:	b0000000 	imm	0
    3b38:	b9f40b6c 	brlid	r15, 2924	// 46a4 <__malloc_unlock>
    3b3c:	f8c40004 	swi	r6, r4, 4
    3b40:	b810fdb8 	brid	-584		// 38f8
    3b44:	30730008 	addik	r3, r19, 8
    3b48:	65160003 	bsrli	r8, r22, 3
    3b4c:	b810fe10 	brid	-496		// 395c
    3b50:	64e80403 	bslli	r7, r8, 3
    3b54:	e893000c 	lwi	r4, r19, 12
    3b58:	e8f30008 	lwi	r7, r19, 8
    3b5c:	e8c30004 	lwi	r6, r3, 4
    3b60:	10b70000 	addk	r5, r23, r0
    3b64:	f887000c 	swi	r4, r7, 12
    3b68:	a0c60001 	ori	r6, r6, 1
    3b6c:	f8e40008 	swi	r7, r4, 8
    3b70:	b0000000 	imm	0
    3b74:	b9f40b30 	brlid	r15, 2864	// 46a4 <__malloc_unlock>
    3b78:	f8c30004 	swi	r6, r3, 4
    3b7c:	b810fd7c 	brid	-644		// 38f8
    3b80:	30730008 	addik	r3, r19, 8
    3b84:	10731800 	addk	r3, r19, r3
    3b88:	e8830004 	lwi	r4, r3, 4
    3b8c:	10b70000 	addk	r5, r23, r0
    3b90:	a0840001 	ori	r4, r4, 1
    3b94:	b0000000 	imm	0
    3b98:	b9f40b0c 	brlid	r15, 2828	// 46a4 <__malloc_unlock>
    3b9c:	f8830004 	swi	r4, r3, 4
    3ba0:	b810fd58 	brid	-680		// 38f8
    3ba4:	30730008 	addik	r3, r19, 8
    3ba8:	b0000000 	imm	0
    3bac:	ea605af8 	lwi	r19, r0, 23288
    3bb0:	3080000f 	addik	r4, r0, 15
    3bb4:	eb330004 	lwi	r25, r19, 4
    3bb8:	a739fffc 	andi	r25, r25, -4
    3bbc:	1476c800 	rsubk	r3, r22, r25
    3bc0:	14832001 	cmp	r4, r3, r4
    3bc4:	be4403c8 	bltid	r4, 968		// 3f8c
    3bc8:	1496c803 	cmpu	r4, r22, r25
    3bcc:	b0000000 	imm	0
    3bd0:	e8605ae8 	lwi	r3, r0, 23272	// 5ae8 <__malloc_sbrk_base>
    3bd4:	b0000000 	imm	0
    3bd8:	eb405f78 	lwi	r26, r0, 24440	// 5f78 <__malloc_top_pad>
    3bdc:	a863ffff 	xori	r3, r3, -1
    3be0:	be030234 	beqid	r3, 564		// 3e14
    3be4:	1356d000 	addk	r26, r22, r26
    3be8:	335a008f 	addik	r26, r26, 143
    3bec:	a75aff80 	andi	r26, r26, -128
    3bf0:	10b70000 	addk	r5, r23, r0
    3bf4:	b0000000 	imm	0
    3bf8:	b9f41160 	brlid	r15, 4448	// 4d58 <_sbrk_r>
    3bfc:	10da0000 	addk	r6, r26, r0
    3c00:	13030000 	addk	r24, r3, r0
    3c04:	a863ffff 	xori	r3, r3, -1
    3c08:	be030020 	beqid	r3, 32		// 3c28
    3c0c:	1093c800 	addk	r4, r19, r25
    3c10:	1464c003 	cmpu	r3, r4, r24
    3c14:	bca30220 	bgei	r3, 544		// 3e34
    3c18:	b0000000 	imm	0
    3c1c:	30605af0 	addik	r3, r0, 23280	// 5af0 <__malloc_av_>
    3c20:	88731800 	xor	r3, r19, r3
    3c24:	bc030210 	beqi	r3, 528		// 3e34
    3c28:	b0000000 	imm	0
    3c2c:	ea605af8 	lwi	r19, r0, 23288
    3c30:	e8930004 	lwi	r4, r19, 4
    3c34:	a484fffc 	andi	r4, r4, -4
    3c38:	14762000 	rsubk	r3, r22, r4
    3c3c:	30a0000f 	addik	r5, r0, 15
    3c40:	14a32801 	cmp	r5, r3, r5
    3c44:	be45039c 	bltid	r5, 924		// 3fe0
    3c48:	14962003 	cmpu	r4, r22, r4
    3c4c:	b0000000 	imm	0
    3c50:	b9f40a54 	brlid	r15, 2644	// 46a4 <__malloc_unlock>
    3c54:	10b70000 	addk	r5, r23, r0
    3c58:	b810fca0 	brid	-864		// 38f8
    3c5c:	10600000 	addk	r3, r0, r0
    3c60:	14681803 	cmpu	r3, r8, r3
    3c64:	bea30198 	bgeid	r3, 408		// 3dfc
    3c68:	30600054 	addik	r3, r0, 84
    3c6c:	14681803 	cmpu	r3, r8, r3
    3c70:	be430300 	bltid	r3, 768		// 3f70
    3c74:	30600154 	addik	r3, r0, 340
    3c78:	6516000c 	bsrli	r8, r22, 12
    3c7c:	3108006e 	addik	r8, r8, 110
    3c80:	b810fcdc 	brid	-804		// 395c
    3c84:	64e80403 	bslli	r7, r8, 3
    3c88:	30a00004 	addik	r5, r0, 4
    3c8c:	14a42803 	cmpu	r5, r4, r5
    3c90:	bea50178 	bgeid	r5, 376		// 3e08
    3c94:	64a30006 	bsrli	r5, r3, 6
    3c98:	30a00014 	addik	r5, r0, 20
    3c9c:	14a42803 	cmpu	r5, r4, r5
    3ca0:	be450360 	bltid	r5, 864		// 4000
    3ca4:	30a00054 	addik	r5, r0, 84
    3ca8:	30a4005b 	addik	r5, r4, 91
    3cac:	64e50403 	bslli	r7, r5, 3
    3cb0:	b0000000 	imm	0
    3cb4:	30e75af0 	addik	r7, r7, 23280
    3cb8:	e8870008 	lwi	r4, r7, 8
    3cbc:	89043800 	xor	r8, r4, r7
    3cc0:	be28001c 	bneid	r8, 28		// 3cdc
    3cc4:	64a50202 	bsrai	r5, r5, 2
    3cc8:	b81002f8 	brid	760		// 3fc0
    3ccc:	30600001 	addik	r3, r0, 1
    3cd0:	e8840008 	lwi	r4, r4, 8
    3cd4:	88a72000 	xor	r5, r7, r4
    3cd8:	bc050014 	beqi	r5, 20		// 3cec
    3cdc:	e8a40004 	lwi	r5, r4, 4
    3ce0:	a4a5fffc 	andi	r5, r5, -4
    3ce4:	14a51803 	cmpu	r5, r5, r3
    3ce8:	bc45ffe8 	blti	r5, -24		// 3cd0
    3cec:	e864000c 	lwi	r3, r4, 12
    3cf0:	b0000000 	imm	0
    3cf4:	e9205af4 	lwi	r9, r0, 23284
    3cf8:	f873000c 	swi	r3, r19, 12
    3cfc:	f8930008 	swi	r4, r19, 8
    3d00:	fa630008 	swi	r19, r3, 8
    3d04:	b810fd50 	brid	-688		// 3a54
    3d08:	fa64000c 	swi	r19, r4, 12
    3d0c:	1073b000 	addk	r3, r19, r22
    3d10:	10b70000 	addk	r5, r23, r0
    3d14:	a2d60001 	ori	r22, r22, 1
    3d18:	f8670004 	swi	r3, r7, 4
    3d1c:	b0000000 	imm	0
    3d20:	f8605b00 	swi	r3, r0, 23296
    3d24:	fad30004 	swi	r22, r19, 4
    3d28:	a0c80001 	ori	r6, r8, 1
    3d2c:	f883000c 	swi	r4, r3, 12
    3d30:	f8830008 	swi	r4, r3, 8
    3d34:	f8c30004 	swi	r6, r3, 4
    3d38:	b0000000 	imm	0
    3d3c:	b9f40968 	brlid	r15, 2408	// 46a4 <__malloc_unlock>
    3d40:	d9081800 	sw	r8, r8, r3
    3d44:	b810fbb4 	brid	-1100		// 38f8
    3d48:	30730008 	addik	r3, r19, 8
    3d4c:	b0000000 	imm	0
    3d50:	e9205af4 	lwi	r9, r0, 23284
    3d54:	b810fd04 	brid	-764		// 3a58
    3d58:	64660202 	bsrai	r3, r6, 2
    3d5c:	316b0001 	addik	r11, r11, 1
    3d60:	a46b0003 	andi	r3, r11, 3
    3d64:	be23fd4c 	bneid	r3, -692		// 3ab0
    3d68:	30e70008 	addik	r7, r7, 8
    3d6c:	106c0000 	addk	r3, r12, r0
    3d70:	a4e60003 	andi	r7, r6, 3
    3d74:	be070358 	beqid	r7, 856		// 40cc
    3d78:	30a3fff8 	addik	r5, r3, -8
    3d7c:	e8630000 	lwi	r3, r3, 0
    3d80:	88a32800 	xor	r5, r3, r5
    3d84:	be05ffec 	beqid	r5, -20		// 3d70
    3d88:	30c6ffff 	addik	r6, r6, -1
    3d8c:	10842000 	addk	r4, r4, r4
    3d90:	14644803 	cmpu	r3, r4, r9
    3d94:	bc43fe14 	blti	r3, -492		// 3ba8
    3d98:	be04fe10 	beqid	r4, -496		// 3ba8
    3d9c:	84692000 	and	r3, r9, r4
    3da0:	be03007c 	beqid	r3, 124		// 3e1c
    3da4:	10cb0000 	addk	r6, r11, r0
    3da8:	b810fcf8 	brid	-776		// 3aa0
    3dac:	65860403 	bslli	r12, r6, 3
    3db0:	30730008 	addik	r3, r19, 8
    3db4:	ea730014 	lwi	r19, r19, 20
    3db8:	88639800 	xor	r3, r3, r19
    3dbc:	be03fc04 	beqid	r3, -1020		// 39c0
    3dc0:	30c60002 	addik	r6, r6, 2
    3dc4:	b810fb00 	brid	-1280		// 38c4
    3dc8:	e8730004 	lwi	r3, r19, 4
    3dcc:	e8e30004 	lwi	r7, r3, 4
    3dd0:	e893000c 	lwi	r4, r19, 12
    3dd4:	e8d30008 	lwi	r6, r19, 8
    3dd8:	10b70000 	addk	r5, r23, r0
    3ddc:	a0e70001 	ori	r7, r7, 1
    3de0:	f8e30004 	swi	r7, r3, 4
    3de4:	f886000c 	swi	r4, r6, 12
    3de8:	b0000000 	imm	0
    3dec:	b9f408b8 	brlid	r15, 2232	// 46a4 <__malloc_unlock>
    3df0:	f8c40008 	swi	r6, r4, 8
    3df4:	b810fb04 	brid	-1276		// 38f8
    3df8:	30730008 	addik	r3, r19, 8
    3dfc:	3108005b 	addik	r8, r8, 91
    3e00:	b810fb5c 	brid	-1188		// 395c
    3e04:	64e80403 	bslli	r7, r8, 3
    3e08:	30a50038 	addik	r5, r5, 56
    3e0c:	b810fea4 	brid	-348		// 3cb0
    3e10:	64e50403 	bslli	r7, r5, 3
    3e14:	b810fddc 	brid	-548		// 3bf0
    3e18:	335a0010 	addik	r26, r26, 16
    3e1c:	10842000 	addk	r4, r4, r4
    3e20:	84644800 	and	r3, r4, r9
    3e24:	be03fff8 	beqid	r3, -8		// 3e1c
    3e28:	316b0004 	addik	r11, r11, 4
    3e2c:	b810fc70 	brid	-912		// 3a9c
    3e30:	10cb0000 	addk	r6, r11, r0
    3e34:	b0000000 	imm	0
    3e38:	e8605f48 	lwi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    3e3c:	88a4c000 	xor	r5, r4, r24
    3e40:	107a1800 	addk	r3, r26, r3
    3e44:	b0000000 	imm	0
    3e48:	f8605f48 	swi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    3e4c:	be050208 	beqid	r5, 520		// 4054
    3e50:	a4a4007f 	andi	r5, r4, 127
    3e54:	b0000000 	imm	0
    3e58:	e8a05ae8 	lwi	r5, r0, 23272	// 5ae8 <__malloc_sbrk_base>
    3e5c:	a8a5ffff 	xori	r5, r5, -1
    3e60:	be050240 	beqid	r5, 576		// 40a0
    3e64:	1484c000 	rsubk	r4, r4, r24
    3e68:	10632000 	addk	r3, r3, r4
    3e6c:	b0000000 	imm	0
    3e70:	f8605f48 	swi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    3e74:	a4780007 	andi	r3, r24, 7
    3e78:	be03001c 	beqid	r3, 28		// 3e94
    3e7c:	30800080 	addik	r4, r0, 128	// 80 <_exit>
    3e80:	30e00008 	addik	r7, r0, 8	// 8 <_vector_sw_exception>
    3e84:	14833800 	rsubk	r4, r3, r7
    3e88:	30a00088 	addik	r5, r0, 136
    3e8c:	13182000 	addk	r24, r24, r4
    3e90:	14832800 	rsubk	r4, r3, r5
    3e94:	1358d000 	addk	r26, r24, r26
    3e98:	a75a007f 	andi	r26, r26, 127
    3e9c:	175a2000 	rsubk	r26, r26, r4
    3ea0:	10b70000 	addk	r5, r23, r0
    3ea4:	b0000000 	imm	0
    3ea8:	b9f40eb0 	brlid	r15, 3760	// 4d58 <_sbrk_r>
    3eac:	10da0000 	addk	r6, r26, r0
    3eb0:	a883ffff 	xori	r4, r3, -1
    3eb4:	be0401e0 	beqid	r4, 480		// 4094
    3eb8:	14781800 	rsubk	r3, r24, r3
    3ebc:	1083d000 	addk	r4, r3, r26
    3ec0:	a0840001 	ori	r4, r4, 1
    3ec4:	b0000000 	imm	0
    3ec8:	e8605f48 	lwi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    3ecc:	f8980004 	swi	r4, r24, 4
    3ed0:	b0000000 	imm	0
    3ed4:	30805af0 	addik	r4, r0, 23280	// 5af0 <__malloc_av_>
    3ed8:	107a1800 	addk	r3, r26, r3
    3edc:	b0000000 	imm	0
    3ee0:	fb005af8 	swi	r24, r0, 23288
    3ee4:	b0000000 	imm	0
    3ee8:	f8605f48 	swi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    3eec:	88932000 	xor	r4, r19, r4
    3ef0:	be040040 	beqid	r4, 64		// 3f30
    3ef4:	30a0000f 	addik	r5, r0, 15
    3ef8:	14992803 	cmpu	r4, r25, r5
    3efc:	bea4011c 	bgeid	r4, 284		// 4018
    3f00:	30e00005 	addik	r7, r0, 5
    3f04:	e8d30004 	lwi	r6, r19, 4
    3f08:	3099fff4 	addik	r4, r25, -12
    3f0c:	a484fff8 	andi	r4, r4, -8
    3f10:	a4c60001 	andi	r6, r6, 1
    3f14:	80c43000 	or	r6, r4, r6
    3f18:	f8d30004 	swi	r6, r19, 4
    3f1c:	10d32000 	addk	r6, r19, r4
    3f20:	f8e60004 	swi	r7, r6, 4
    3f24:	14842803 	cmpu	r4, r4, r5
    3f28:	be440148 	bltid	r4, 328		// 4070
    3f2c:	f8e60008 	swi	r7, r6, 8
    3f30:	b0000000 	imm	0
    3f34:	e8805f74 	lwi	r4, r0, 24436	// 5f74 <__malloc_max_sbrked_mem>
    3f38:	14832003 	cmpu	r4, r3, r4
    3f3c:	bca4000c 	bgei	r4, 12		// 3f48
    3f40:	b0000000 	imm	0
    3f44:	f8605f74 	swi	r3, r0, 24436	// 5f74 <__malloc_max_sbrked_mem>
    3f48:	b0000000 	imm	0
    3f4c:	e8805f70 	lwi	r4, r0, 24432	// 5f70 <__malloc_max_total_mem>
    3f50:	14832003 	cmpu	r4, r3, r4
    3f54:	bea40010 	bgeid	r4, 16		// 3f64
    3f58:	12780000 	addk	r19, r24, r0
    3f5c:	b0000000 	imm	0
    3f60:	f8605f70 	swi	r3, r0, 24432	// 5f70 <__malloc_max_total_mem>
    3f64:	e8930004 	lwi	r4, r19, 4
    3f68:	b810fcd0 	brid	-816		// 3c38
    3f6c:	a484fffc 	andi	r4, r4, -4
    3f70:	14681803 	cmpu	r3, r8, r3
    3f74:	be430074 	bltid	r3, 116		// 3fe8
    3f78:	30600554 	addik	r3, r0, 1364
    3f7c:	6516000f 	bsrli	r8, r22, 15
    3f80:	31080077 	addik	r8, r8, 119
    3f84:	b810f9d8 	brid	-1576		// 395c
    3f88:	64e80403 	bslli	r7, r8, 3
    3f8c:	bc44fc40 	blti	r4, -960		// 3bcc
    3f90:	a0960001 	ori	r4, r22, 1
    3f94:	a0630001 	ori	r3, r3, 1
    3f98:	f8930004 	swi	r4, r19, 4
    3f9c:	12d3b000 	addk	r22, r19, r22
    3fa0:	f8760004 	swi	r3, r22, 4
    3fa4:	b0000000 	imm	0
    3fa8:	fac05af8 	swi	r22, r0, 23288
    3fac:	b0000000 	imm	0
    3fb0:	b9f406f4 	brlid	r15, 1780	// 46a4 <__malloc_unlock>
    3fb4:	10b70000 	addk	r5, r23, r0
    3fb8:	b810f940 	brid	-1728		// 38f8
    3fbc:	30730008 	addik	r3, r19, 8
    3fc0:	b0000000 	imm	0
    3fc4:	e9205af4 	lwi	r9, r0, 23284
    3fc8:	44632c00 	bsll	r3, r3, r5
    3fcc:	81234800 	or	r9, r3, r9
    3fd0:	b0000000 	imm	0
    3fd4:	f9205af4 	swi	r9, r0, 23284
    3fd8:	b810fd20 	brid	-736		// 3cf8
    3fdc:	10640000 	addk	r3, r4, r0
    3fe0:	bca4ffb0 	bgei	r4, -80		// 3f90
    3fe4:	b800fc68 	bri	-920		// 3c4c
    3fe8:	15081803 	cmpu	r8, r8, r3
    3fec:	bc480040 	blti	r8, 64		// 402c
    3ff0:	65160012 	bsrli	r8, r22, 18
    3ff4:	3108007c 	addik	r8, r8, 124
    3ff8:	b810f964 	brid	-1692		// 395c
    3ffc:	64e80403 	bslli	r7, r8, 3
    4000:	14a42803 	cmpu	r5, r4, r5
    4004:	be450034 	bltid	r5, 52		// 4038
    4008:	64a3000c 	bsrli	r5, r3, 12
    400c:	30a5006e 	addik	r5, r5, 110
    4010:	b810fca0 	brid	-864		// 3cb0
    4014:	64e50403 	bslli	r7, r5, 3
    4018:	30e00001 	addik	r7, r0, 1
    401c:	f8f80004 	swi	r7, r24, 4
    4020:	12780000 	addk	r19, r24, r0
    4024:	b810fc14 	brid	-1004		// 3c38
    4028:	10800000 	addk	r4, r0, r0
    402c:	30e003f0 	addik	r7, r0, 1008
    4030:	b810f92c 	brid	-1748		// 395c
    4034:	3100007e 	addik	r8, r0, 126
    4038:	30a00154 	addik	r5, r0, 340
    403c:	14a42803 	cmpu	r5, r4, r5
    4040:	be450070 	bltid	r5, 112		// 40b0
    4044:	64a3000f 	bsrli	r5, r3, 15
    4048:	30a50077 	addik	r5, r5, 119
    404c:	b810fc64 	brid	-924		// 3cb0
    4050:	64e50403 	bslli	r7, r5, 3
    4054:	bc25fe00 	bnei	r5, -512		// 3e54
    4058:	b0000000 	imm	0
    405c:	eb005af8 	lwi	r24, r0, 23288
    4060:	109ac800 	addk	r4, r26, r25
    4064:	a0840001 	ori	r4, r4, 1
    4068:	b810fec8 	brid	-312		// 3f30
    406c:	f8980004 	swi	r4, r24, 4
    4070:	10b70000 	addk	r5, r23, r0
    4074:	b0000000 	imm	0
    4078:	b9f40e88 	brlid	r15, 3720	// 4f00 <_free_r>
    407c:	30d30008 	addik	r6, r19, 8
    4080:	b0000000 	imm	0
    4084:	e8605f48 	lwi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    4088:	b0000000 	imm	0
    408c:	eb005af8 	lwi	r24, r0, 23288
    4090:	b800fea0 	bri	-352		// 3f30
    4094:	13440000 	addk	r26, r4, r0
    4098:	b810fe2c 	brid	-468		// 3ec4
    409c:	30800001 	addik	r4, r0, 1
    40a0:	b0000000 	imm	0
    40a4:	fb005ae8 	swi	r24, r0, 23272	// 5ae8 <__malloc_sbrk_base>
    40a8:	b810fdd0 	brid	-560		// 3e78
    40ac:	a4780007 	andi	r3, r24, 7
    40b0:	30a00554 	addik	r5, r0, 1364
    40b4:	14842803 	cmpu	r4, r4, r5
    40b8:	bc44002c 	blti	r4, 44		// 40e4
    40bc:	64a30012 	bsrli	r5, r3, 18
    40c0:	30a5007c 	addik	r5, r5, 124
    40c4:	b810fbec 	brid	-1044		// 3cb0
    40c8:	64e50403 	bslli	r7, r5, 3
    40cc:	a864ffff 	xori	r3, r4, -1
    40d0:	85291800 	and	r9, r9, r3
    40d4:	b0000000 	imm	0
    40d8:	f9205af4 	swi	r9, r0, 23284
    40dc:	b810fcb4 	brid	-844		// 3d90
    40e0:	10842000 	addk	r4, r4, r4
    40e4:	30e003f0 	addik	r7, r0, 1008
    40e8:	b810fbc8 	brid	-1080		// 3cb0
    40ec:	30a0007e 	addik	r5, r0, 126

000040f0 <memcpy>:
    40f0:	3021fff4 	addik	r1, r1, -12
    40f4:	3140000f 	addik	r10, r0, 15
    40f8:	fa610004 	swi	r19, r1, 4
    40fc:	fac10008 	swi	r22, r1, 8
    4100:	14875003 	cmpu	r4, r7, r10
    4104:	bea4016c 	bgeid	r4, 364		// 4270
    4108:	10650000 	addk	r3, r5, r0
    410c:	80862800 	or	r4, r6, r5
    4110:	a4840003 	andi	r4, r4, 3
    4114:	be240190 	bneid	r4, 400		// 42a4
    4118:	11060000 	addk	r8, r6, r0
    411c:	10850000 	addk	r4, r5, r0
    4120:	11270000 	addk	r9, r7, r0
    4124:	e8a80000 	lwi	r5, r8, 0
    4128:	3129fff0 	addik	r9, r9, -16
    412c:	f8a40000 	swi	r5, r4, 0
    4130:	e9680004 	lwi	r11, r8, 4
    4134:	14a95003 	cmpu	r5, r9, r10
    4138:	f9640004 	swi	r11, r4, 4
    413c:	e9680008 	lwi	r11, r8, 8
    4140:	f9640008 	swi	r11, r4, 8
    4144:	e968000c 	lwi	r11, r8, 12
    4148:	31080010 	addik	r8, r8, 16
    414c:	f964000c 	swi	r11, r4, 12
    4150:	be45ffd4 	bltid	r5, -44		// 4124
    4154:	30840010 	addik	r4, r4, 16
    4158:	30a7fff0 	addik	r5, r7, -16
    415c:	a4a5fff0 	andi	r5, r5, -16
    4160:	a4e7000f 	andi	r7, r7, 15
    4164:	31600003 	addik	r11, r0, 3
    4168:	30a50010 	addik	r5, r5, 16
    416c:	15075803 	cmpu	r8, r7, r11
    4170:	10832800 	addk	r4, r3, r5
    4174:	bea80048 	bgeid	r8, 72		// 41bc
    4178:	10c62800 	addk	r6, r6, r5
    417c:	11460000 	addk	r10, r6, r0
    4180:	11240000 	addk	r9, r4, r0
    4184:	11070000 	addk	r8, r7, r0
    4188:	e8aa0000 	lwi	r5, r10, 0
    418c:	3108fffc 	addik	r8, r8, -4
    4190:	314a0004 	addik	r10, r10, 4
    4194:	f8a90000 	swi	r5, r9, 0
    4198:	14a85803 	cmpu	r5, r8, r11
    419c:	be45ffec 	bltid	r5, -20		// 4188
    41a0:	31290004 	addik	r9, r9, 4
    41a4:	30a7fffc 	addik	r5, r7, -4
    41a8:	a4a5fffc 	andi	r5, r5, -4
    41ac:	30a50004 	addik	r5, r5, 4
    41b0:	a4e70003 	andi	r7, r7, 3
    41b4:	10c62800 	addk	r6, r6, r5
    41b8:	10842800 	addk	r4, r4, r5
    41bc:	be0700a8 	beqid	r7, 168		// 4264
    41c0:	ea610004 	lwi	r19, r1, 4
    41c4:	66670002 	bsrli	r19, r7, 2
    41c8:	66d30402 	bslli	r22, r19, 2
    41cc:	11200000 	addk	r9, r0, r0
    41d0:	89364c00 	pcmpeq	r9, r22, r9
    41d4:	be2900a8 	bneid	r9, 168		// 427c
    41d8:	3107ffff 	addik	r8, r7, -1
    41dc:	31400003 	addik	r10, r0, 3
    41e0:	15475003 	cmpu	r10, r7, r10
    41e4:	be4a000c 	bltid	r10, 12		// 41f0
    41e8:	30a00001 	addik	r5, r0, 1
    41ec:	10a90000 	addk	r5, r9, r0
    41f0:	31660004 	addik	r11, r6, 4
    41f4:	31440004 	addik	r10, r4, 4
    41f8:	15645803 	cmpu	r11, r4, r11
    41fc:	81243000 	or	r9, r4, r6
    4200:	15465003 	cmpu	r10, r6, r10
    4204:	814a5800 	or	r10, r10, r11
    4208:	a5290003 	andi	r9, r9, 3
    420c:	11600000 	addk	r11, r0, r0
    4210:	89295c00 	pcmpeq	r9, r9, r11
    4214:	654a001f 	bsrli	r10, r10, 31
    4218:	85254800 	and	r9, r5, r9
    421c:	85295000 	and	r9, r9, r10
    4220:	a9290001 	xori	r9, r9, 1
    4224:	be290058 	bneid	r9, 88		// 427c
    4228:	11640000 	addk	r11, r4, r0
    422c:	11460000 	addk	r10, r6, r0
    4230:	e8aa0000 	lwi	r5, r10, 0
    4234:	31290001 	addik	r9, r9, 1
    4238:	15934803 	cmpu	r12, r19, r9
    423c:	f8ab0000 	swi	r5, r11, 0
    4240:	314a0004 	addik	r10, r10, 4
    4244:	be4cffec 	bltid	r12, -20		// 4230
    4248:	316b0004 	addik	r11, r11, 4
    424c:	88f63800 	xor	r7, r22, r7
    4250:	1084b000 	addk	r4, r4, r22
    4254:	10c6b000 	addk	r6, r6, r22
    4258:	be270024 	bneid	r7, 36		// 427c
    425c:	15164000 	rsubk	r8, r22, r8
    4260:	ea610004 	lwi	r19, r1, 4
    4264:	eac10008 	lwi	r22, r1, 8
    4268:	b60f0008 	rtsd	r15, 8
    426c:	3021000c 	addik	r1, r1, 12
    4270:	b810ff4c 	brid	-180		// 41bc
    4274:	10850000 	addk	r4, r5, r0
    4278:	11070000 	addk	r8, r7, r0
    427c:	e1660000 	lbui	r11, r6, 0
    4280:	30e8ffff 	addik	r7, r8, -1
    4284:	30c60001 	addik	r6, r6, 1
    4288:	f1640000 	sbi	r11, r4, 0
    428c:	be28ffec 	bneid	r8, -20		// 4278
    4290:	30840001 	addik	r4, r4, 1
    4294:	ea610004 	lwi	r19, r1, 4
    4298:	eac10008 	lwi	r22, r1, 8
    429c:	b60f0008 	rtsd	r15, 8
    42a0:	3021000c 	addik	r1, r1, 12
    42a4:	b810ff20 	brid	-224		// 41c4
    42a8:	10850000 	addk	r4, r5, r0

000042ac <memmove>:
    42ac:	3021fff8 	addik	r1, r1, -8
    42b0:	fa610004 	swi	r19, r1, 4
    42b4:	14853003 	cmpu	r4, r5, r6
    42b8:	bea40054 	bgeid	r4, 84		// 430c
    42bc:	10650000 	addk	r3, r5, r0
    42c0:	10863800 	addk	r4, r6, r7
    42c4:	14a42803 	cmpu	r5, r4, r5
    42c8:	bea50048 	bgeid	r5, 72		// 4310
    42cc:	3140000f 	addik	r10, r0, 15
    42d0:	be070034 	beqid	r7, 52		// 4304
    42d4:	ea610004 	lwi	r19, r1, 4
    42d8:	10a33800 	addk	r5, r3, r7
    42dc:	b810000c 	brid	12		// 42e8
    42e0:	30e7ffff 	addik	r7, r7, -1
    42e4:	10e60000 	addk	r7, r6, r0
    42e8:	e0c4ffff 	lbui	r6, r4, -1
    42ec:	3084ffff 	addik	r4, r4, -1
    42f0:	f0c5ffff 	sbi	r6, r5, -1
    42f4:	30a5ffff 	addik	r5, r5, -1
    42f8:	be27ffec 	bneid	r7, -20		// 42e4
    42fc:	30c7ffff 	addik	r6, r7, -1
    4300:	ea610004 	lwi	r19, r1, 4
    4304:	b60f0008 	rtsd	r15, 8
    4308:	30210008 	addik	r1, r1, 8
    430c:	3140000f 	addik	r10, r0, 15
    4310:	14875003 	cmpu	r4, r7, r10
    4314:	bea400b8 	bgeid	r4, 184		// 43cc
    4318:	10830000 	addk	r4, r3, r0
    431c:	80861800 	or	r4, r6, r3
    4320:	a4840003 	andi	r4, r4, 3
    4324:	be24018c 	bneid	r4, 396		// 44b0
    4328:	11060000 	addk	r8, r6, r0
    432c:	10830000 	addk	r4, r3, r0
    4330:	10a70000 	addk	r5, r7, r0
    4334:	e9280000 	lwi	r9, r8, 0
    4338:	30a5fff0 	addik	r5, r5, -16
    433c:	f9240000 	swi	r9, r4, 0
    4340:	e9680004 	lwi	r11, r8, 4
    4344:	15255003 	cmpu	r9, r5, r10
    4348:	f9640004 	swi	r11, r4, 4
    434c:	e9880008 	lwi	r12, r8, 8
    4350:	f9840008 	swi	r12, r4, 8
    4354:	e968000c 	lwi	r11, r8, 12
    4358:	31080010 	addik	r8, r8, 16
    435c:	f964000c 	swi	r11, r4, 12
    4360:	be49ffd4 	bltid	r9, -44		// 4334
    4364:	30840010 	addik	r4, r4, 16
    4368:	30a7fff0 	addik	r5, r7, -16
    436c:	a4a5fff0 	andi	r5, r5, -16
    4370:	a4e7000f 	andi	r7, r7, 15
    4374:	31600003 	addik	r11, r0, 3
    4378:	30a50010 	addik	r5, r5, 16
    437c:	15075803 	cmpu	r8, r7, r11
    4380:	10832800 	addk	r4, r3, r5
    4384:	bea80048 	bgeid	r8, 72		// 43cc
    4388:	10c62800 	addk	r6, r6, r5
    438c:	11260000 	addk	r9, r6, r0
    4390:	11040000 	addk	r8, r4, r0
    4394:	10a70000 	addk	r5, r7, r0
    4398:	e9890000 	lwi	r12, r9, 0
    439c:	30a5fffc 	addik	r5, r5, -4
    43a0:	15455803 	cmpu	r10, r5, r11
    43a4:	f9880000 	swi	r12, r8, 0
    43a8:	31290004 	addik	r9, r9, 4
    43ac:	be4affec 	bltid	r10, -20		// 4398
    43b0:	31080004 	addik	r8, r8, 4
    43b4:	30a7fffc 	addik	r5, r7, -4
    43b8:	a4a5fffc 	andi	r5, r5, -4
    43bc:	30a50004 	addik	r5, r5, 4
    43c0:	a4e70003 	andi	r7, r7, 3
    43c4:	10c62800 	addk	r6, r6, r5
    43c8:	10842800 	addk	r4, r4, r5
    43cc:	be07ff38 	beqid	r7, -200		// 4304
    43d0:	ea610004 	lwi	r19, r1, 4
    43d4:	64a70002 	bsrli	r5, r7, 2
    43d8:	66650402 	bslli	r19, r5, 2
    43dc:	11200000 	addk	r9, r0, r0
    43e0:	89334c00 	pcmpeq	r9, r19, r9
    43e4:	be2900a8 	bneid	r9, 168		// 448c
    43e8:	3107ffff 	addik	r8, r7, -1
    43ec:	31600003 	addik	r11, r0, 3
    43f0:	15675803 	cmpu	r11, r7, r11
    43f4:	be4b000c 	bltid	r11, 12		// 4400
    43f8:	31400001 	addik	r10, r0, 1
    43fc:	11490000 	addk	r10, r9, r0
    4400:	31860004 	addik	r12, r6, 4
    4404:	31640004 	addik	r11, r4, 4
    4408:	15846003 	cmpu	r12, r4, r12
    440c:	81243000 	or	r9, r4, r6
    4410:	15665803 	cmpu	r11, r6, r11
    4414:	816b6000 	or	r11, r11, r12
    4418:	a5290003 	andi	r9, r9, 3
    441c:	11800000 	addk	r12, r0, r0
    4420:	89296400 	pcmpeq	r9, r9, r12
    4424:	656b001f 	bsrli	r11, r11, 31
    4428:	852a4800 	and	r9, r10, r9
    442c:	85295800 	and	r9, r9, r11
    4430:	a9290001 	xori	r9, r9, 1
    4434:	bc290058 	bnei	r9, 88		// 448c
    4438:	11640000 	addk	r11, r4, r0
    443c:	11460000 	addk	r10, r6, r0
    4440:	e98a0000 	lwi	r12, r10, 0
    4444:	31290001 	addik	r9, r9, 1
    4448:	314a0004 	addik	r10, r10, 4
    444c:	f98b0000 	swi	r12, r11, 0
    4450:	15854803 	cmpu	r12, r5, r9
    4454:	be4cffec 	bltid	r12, -20		// 4440
    4458:	316b0004 	addik	r11, r11, 4
    445c:	88f33800 	xor	r7, r19, r7
    4460:	10849800 	addk	r4, r4, r19
    4464:	10c69800 	addk	r6, r6, r19
    4468:	be07fe98 	beqid	r7, -360		// 4300
    446c:	15134000 	rsubk	r8, r19, r8
    4470:	e0a60000 	lbui	r5, r6, 0
    4474:	30e8ffff 	addik	r7, r8, -1
    4478:	30c60001 	addik	r6, r6, 1
    447c:	f0a40000 	sbi	r5, r4, 0
    4480:	be08fe80 	beqid	r8, -384		// 4300
    4484:	30840001 	addik	r4, r4, 1
    4488:	11070000 	addk	r8, r7, r0
    448c:	e0a60000 	lbui	r5, r6, 0
    4490:	30e8ffff 	addik	r7, r8, -1
    4494:	30c60001 	addik	r6, r6, 1
    4498:	f0a40000 	sbi	r5, r4, 0
    449c:	be28ffec 	bneid	r8, -20		// 4488
    44a0:	30840001 	addik	r4, r4, 1
    44a4:	ea610004 	lwi	r19, r1, 4
    44a8:	b60f0008 	rtsd	r15, 8
    44ac:	30210008 	addik	r1, r1, 8
    44b0:	b810ff24 	brid	-220		// 43d4
    44b4:	10830000 	addk	r4, r3, r0

000044b8 <memset>:
    44b8:	3021fff0 	addik	r1, r1, -16
    44bc:	fa610004 	swi	r19, r1, 4
    44c0:	fac10008 	swi	r22, r1, 8
    44c4:	fae1000c 	swi	r23, r1, 12
    44c8:	a4850003 	andi	r4, r5, 3
    44cc:	be0401c8 	beqid	r4, 456		// 4694
    44d0:	10650000 	addk	r3, r5, r0
    44d4:	be07017c 	beqid	r7, 380		// 4650
    44d8:	30e7ffff 	addik	r7, r7, -1
    44dc:	91260060 	sext8	r9, r6
    44e0:	b8100014 	brid	20		// 44f4
    44e4:	10850000 	addk	r4, r5, r0
    44e8:	be070168 	beqid	r7, 360		// 4650
    44ec:	3107ffff 	addik	r8, r7, -1
    44f0:	10e80000 	addk	r7, r8, r0
    44f4:	f1240000 	sbi	r9, r4, 0
    44f8:	30840001 	addik	r4, r4, 1
    44fc:	a5040003 	andi	r8, r4, 3
    4500:	bc28ffe8 	bnei	r8, -24		// 44e8
    4504:	30a00003 	addik	r5, r0, 3
    4508:	14a72803 	cmpu	r5, r7, r5
    450c:	bea500a0 	bgeid	r5, 160		// 45ac
    4510:	a4a600ff 	andi	r5, r6, 255
    4514:	65250408 	bslli	r9, r5, 8
    4518:	80a92800 	or	r5, r9, r5
    451c:	65250410 	bslli	r9, r5, 16
    4520:	3160000f 	addik	r11, r0, 15
    4524:	15075803 	cmpu	r8, r7, r11
    4528:	bea80050 	bgeid	r8, 80		// 4578
    452c:	81292800 	or	r9, r9, r5
    4530:	11040000 	addk	r8, r4, r0
    4534:	11470000 	addk	r10, r7, r0
    4538:	314afff0 	addik	r10, r10, -16
    453c:	f9280000 	swi	r9, r8, 0
    4540:	f9280004 	swi	r9, r8, 4
    4544:	f9280008 	swi	r9, r8, 8
    4548:	f928000c 	swi	r9, r8, 12
    454c:	14aa5803 	cmpu	r5, r10, r11
    4550:	be45ffe8 	bltid	r5, -24		// 4538
    4554:	31080010 	addik	r8, r8, 16
    4558:	3107fff0 	addik	r8, r7, -16
    455c:	a508fff0 	andi	r8, r8, -16
    4560:	a4e7000f 	andi	r7, r7, 15
    4564:	30a00003 	addik	r5, r0, 3
    4568:	31080010 	addik	r8, r8, 16
    456c:	14a72803 	cmpu	r5, r7, r5
    4570:	bea5003c 	bgeid	r5, 60		// 45ac
    4574:	10844000 	addk	r4, r4, r8
    4578:	11440000 	addk	r10, r4, r0
    457c:	11070000 	addk	r8, r7, r0
    4580:	31600003 	addik	r11, r0, 3
    4584:	3108fffc 	addik	r8, r8, -4
    4588:	f92a0000 	swi	r9, r10, 0
    458c:	14a85803 	cmpu	r5, r8, r11
    4590:	be45fff4 	bltid	r5, -12		// 4584
    4594:	314a0004 	addik	r10, r10, 4
    4598:	30a7fffc 	addik	r5, r7, -4
    459c:	a4a5fffc 	andi	r5, r5, -4
    45a0:	30a50004 	addik	r5, r5, 4
    45a4:	a4e70003 	andi	r7, r7, 3
    45a8:	10842800 	addk	r4, r4, r5
    45ac:	be0700a4 	beqid	r7, 164		// 4650
    45b0:	15640000 	rsubk	r11, r4, r0
    45b4:	a56b0003 	andi	r11, r11, 3
    45b8:	14ab3803 	cmpu	r5, r11, r7
    45bc:	3127ffff 	addik	r9, r7, -1
    45c0:	be4500cc 	bltid	r5, 204		// 468c
    45c4:	90c60060 	sext8	r6, r6
    45c8:	be0b0030 	beqid	r11, 48		// 45f8
    45cc:	11040000 	addk	r8, r4, r0
    45d0:	11400000 	addk	r10, r0, r0
    45d4:	314a0001 	addik	r10, r10, 1
    45d8:	f0c80000 	sbi	r6, r8, 0
    45dc:	158b5003 	cmpu	r12, r11, r10
    45e0:	31080001 	addik	r8, r8, 1
    45e4:	be4cfff0 	bltid	r12, -16		// 45d4
    45e8:	3129ffff 	addik	r9, r9, -1
    45ec:	88a75800 	xor	r5, r7, r11
    45f0:	be050064 	beqid	r5, 100		// 4654
    45f4:	ea610004 	lwi	r19, r1, 4
    45f8:	14eb3800 	rsubk	r7, r11, r7
    45fc:	64a70002 	bsrli	r5, r7, 2
    4600:	66650402 	bslli	r19, r5, 2
    4604:	be130064 	beqid	r19, 100		// 4668
    4608:	a54600ff 	andi	r10, r6, 255
    460c:	66ea0408 	bslli	r23, r10, 8
    4610:	66ca0410 	bslli	r22, r10, 16
    4614:	658a0418 	bslli	r12, r10, 24
    4618:	814ab800 	or	r10, r10, r23
    461c:	814ab000 	or	r10, r10, r22
    4620:	818a6000 	or	r12, r10, r12
    4624:	10845800 	addk	r4, r4, r11
    4628:	11400000 	addk	r10, r0, r0
    462c:	314a0001 	addik	r10, r10, 1
    4630:	f9840000 	swi	r12, r4, 0
    4634:	15655003 	cmpu	r11, r5, r10
    4638:	be4bfff4 	bltid	r11, -12		// 462c
    463c:	30840004 	addik	r4, r4, 4
    4640:	88e79800 	xor	r7, r7, r19
    4644:	11089800 	addk	r8, r8, r19
    4648:	be270020 	bneid	r7, 32		// 4668
    464c:	15334800 	rsubk	r9, r19, r9
    4650:	ea610004 	lwi	r19, r1, 4
    4654:	eac10008 	lwi	r22, r1, 8
    4658:	eae1000c 	lwi	r23, r1, 12
    465c:	b60f0008 	rtsd	r15, 8
    4660:	30210010 	addik	r1, r1, 16
    4664:	11240000 	addk	r9, r4, r0
    4668:	f0c80000 	sbi	r6, r8, 0
    466c:	3089ffff 	addik	r4, r9, -1
    4670:	be29fff4 	bneid	r9, -12		// 4664
    4674:	31080001 	addik	r8, r8, 1
    4678:	ea610004 	lwi	r19, r1, 4
    467c:	eac10008 	lwi	r22, r1, 8
    4680:	eae1000c 	lwi	r23, r1, 12
    4684:	b60f0008 	rtsd	r15, 8
    4688:	30210010 	addik	r1, r1, 16
    468c:	b810ff3c 	brid	-196		// 45c8
    4690:	11670000 	addk	r11, r7, r0
    4694:	b810fe70 	brid	-400		// 4504
    4698:	10850000 	addk	r4, r5, r0

0000469c <__malloc_lock>:
    469c:	b60f0008 	rtsd	r15, 8
    46a0:	80000000 	or	r0, r0, r0

000046a4 <__malloc_unlock>:
    46a4:	b60f0008 	rtsd	r15, 8
    46a8:	80000000 	or	r0, r0, r0

000046ac <realloc>:
    46ac:	10650000 	addk	r3, r5, r0
    46b0:	10e60000 	addk	r7, r6, r0
    46b4:	b0000000 	imm	0
    46b8:	e8a059c4 	lwi	r5, r0, 22980	// 59c4 <_impure_ptr>
    46bc:	3021ffe4 	addik	r1, r1, -28
    46c0:	f9e10000 	swi	r15, r1, 0
    46c4:	b0000000 	imm	0
    46c8:	b9f40014 	brlid	r15, 20	// 46dc <_realloc_r>
    46cc:	10c30000 	addk	r6, r3, r0
    46d0:	e9e10000 	lwi	r15, r1, 0
    46d4:	b60f0008 	rtsd	r15, 8
    46d8:	3021001c 	addik	r1, r1, 28

000046dc <_realloc_r>:
    46dc:	3021ffc0 	addik	r1, r1, -64
    46e0:	fa61001c 	swi	r19, r1, 28
    46e4:	fb410030 	swi	r26, r1, 48
    46e8:	fb610034 	swi	r27, r1, 52
    46ec:	f9e10000 	swi	r15, r1, 0
    46f0:	fac10020 	swi	r22, r1, 32
    46f4:	fae10024 	swi	r23, r1, 36
    46f8:	fb010028 	swi	r24, r1, 40
    46fc:	fb21002c 	swi	r25, r1, 44
    4700:	fb810038 	swi	r28, r1, 56
    4704:	fba1003c 	swi	r29, r1, 60
    4708:	12660000 	addk	r19, r6, r0
    470c:	13450000 	addk	r26, r5, r0
    4710:	be06033c 	beqid	r6, 828		// 4a4c
    4714:	13670000 	addk	r27, r7, r0
    4718:	b000ffff 	imm	-1
    471c:	b9f4ff80 	brlid	r15, -128	// 469c <__malloc_lock>
    4720:	32db000b 	addik	r22, r27, 11
    4724:	30800016 	addik	r4, r0, 22
    4728:	14962003 	cmpu	r4, r22, r4
    472c:	be44010c 	bltid	r4, 268		// 4838
    4730:	e873fffc 	lwi	r3, r19, -4
    4734:	30a00010 	addik	r5, r0, 16	// 10 <_vector_interrupt>
    4738:	12c50000 	addk	r22, r5, r0
    473c:	149bb003 	cmpu	r4, r27, r22
    4740:	be44010c 	bltid	r4, 268		// 484c
    4744:	10c00000 	addk	r6, r0, r0
    4748:	be260104 	bneid	r6, 260		// 484c
    474c:	a703fffc 	andi	r24, r3, -4
    4750:	1485c001 	cmp	r4, r5, r24
    4754:	3393fff8 	addik	r28, r19, -8
    4758:	bea40194 	bgeid	r4, 404		// 48ec
    475c:	12f80000 	addk	r23, r24, r0
    4760:	b0000000 	imm	0
    4764:	e8e05af8 	lwi	r7, r0, 23288
    4768:	109cc000 	addk	r4, r28, r24
    476c:	89072000 	xor	r8, r7, r4
    4770:	be0802f0 	beqid	r8, 752		// 4a60
    4774:	31360010 	addik	r9, r22, 16
    4778:	e9040004 	lwi	r8, r4, 4
    477c:	a528fffe 	andi	r9, r8, -2
    4780:	11244800 	addk	r9, r4, r9
    4784:	e9290004 	lwi	r9, r9, 4
    4788:	a5290001 	andi	r9, r9, 1
    478c:	bc0901d0 	beqi	r9, 464		// 495c
    4790:	10860000 	addk	r4, r6, r0
    4794:	a4630001 	andi	r3, r3, 1
    4798:	bc230224 	bnei	r3, 548		// 49bc
    479c:	eb33fff8 	lwi	r25, r19, -8
    47a0:	1739e000 	rsubk	r25, r25, r28
    47a4:	e8790004 	lwi	r3, r25, 4
    47a8:	be0400b4 	beqid	r4, 180		// 485c
    47ac:	a463fffc 	andi	r3, r3, -4
    47b0:	88e43800 	xor	r7, r4, r7
    47b4:	be070390 	beqid	r7, 912		// 4b44
    47b8:	1063c000 	addk	r3, r3, r24
    47bc:	12e61800 	addk	r23, r6, r3
    47c0:	14c5b801 	cmp	r6, r5, r23
    47c4:	be4600a0 	bltid	r6, 160		// 4864
    47c8:	14a51801 	cmp	r5, r5, r3
    47cc:	e864000c 	lwi	r3, r4, 12
    47d0:	e8840008 	lwi	r4, r4, 8
    47d4:	30f8fffc 	addik	r7, r24, -4
    47d8:	31190008 	addik	r8, r25, 8
    47dc:	f8830008 	swi	r4, r3, 8
    47e0:	f864000c 	swi	r3, r4, 12
    47e4:	e879000c 	lwi	r3, r25, 12
    47e8:	e8b90008 	lwi	r5, r25, 8
    47ec:	30800024 	addik	r4, r0, 36
    47f0:	14872003 	cmpu	r4, r7, r4
    47f4:	f865000c 	swi	r3, r5, 12
    47f8:	be44043c 	bltid	r4, 1084		// 4c34
    47fc:	f8a30008 	swi	r5, r3, 8
    4800:	30600013 	addik	r3, r0, 19
    4804:	14671803 	cmpu	r3, r7, r3
    4808:	bea302d4 	bgeid	r3, 724		// 4adc
    480c:	10680000 	addk	r3, r8, r0
    4810:	e8730000 	lwi	r3, r19, 0
    4814:	f8790008 	swi	r3, r25, 8
    4818:	e8930004 	lwi	r4, r19, 4
    481c:	3060001b 	addik	r3, r0, 27
    4820:	14671803 	cmpu	r3, r7, r3
    4824:	be430438 	bltid	r3, 1080		// 4c5c
    4828:	f899000c 	swi	r4, r25, 12
    482c:	30790010 	addik	r3, r25, 16
    4830:	b81002b0 	brid	688		// 4ae0
    4834:	30930008 	addik	r4, r19, 8
    4838:	a6d6fff8 	andi	r22, r22, -8
    483c:	149bb003 	cmpu	r4, r27, r22
    4840:	10b60000 	addk	r5, r22, r0
    4844:	bea4ff04 	bgeid	r4, -252		// 4748
    4848:	64d6001f 	bsrli	r6, r22, 31
    484c:	3060000c 	addik	r3, r0, 12
    4850:	f87a0000 	swi	r3, r26, 0
    4854:	b81000d4 	brid	212		// 4928
    4858:	12e00000 	addk	r23, r0, r0
    485c:	1063c000 	addk	r3, r3, r24
    4860:	14a51801 	cmp	r5, r5, r3
    4864:	be45015c 	bltid	r5, 348		// 49c0
    4868:	10ba0000 	addk	r5, r26, r0
    486c:	e899000c 	lwi	r4, r25, 12
    4870:	e8b90008 	lwi	r5, r25, 8
    4874:	30f8fffc 	addik	r7, r24, -4
    4878:	f885000c 	swi	r4, r5, 12
    487c:	f8a40008 	swi	r5, r4, 8
    4880:	30800024 	addik	r4, r0, 36
    4884:	14872003 	cmpu	r4, r7, r4
    4888:	be440280 	bltid	r4, 640		// 4b08
    488c:	31190008 	addik	r8, r25, 8
    4890:	30800013 	addik	r4, r0, 19
    4894:	14872003 	cmpu	r4, r7, r4
    4898:	bea403bc 	bgeid	r4, 956		// 4c54
    489c:	10880000 	addk	r4, r8, r0
    48a0:	e8930000 	lwi	r4, r19, 0
    48a4:	f8990008 	swi	r4, r25, 8
    48a8:	e8b30004 	lwi	r5, r19, 4
    48ac:	3080001b 	addik	r4, r0, 27
    48b0:	14872003 	cmpu	r4, r7, r4
    48b4:	be4403e8 	bltid	r4, 1000		// 4c9c
    48b8:	f8b9000c 	swi	r5, r25, 12
    48bc:	30990010 	addik	r4, r25, 16
    48c0:	30d30008 	addik	r6, r19, 8
    48c4:	e8a60000 	lwi	r5, r6, 0
    48c8:	12e30000 	addk	r23, r3, r0
    48cc:	12680000 	addk	r19, r8, r0
    48d0:	f8a40000 	swi	r5, r4, 0
    48d4:	e8660004 	lwi	r3, r6, 4
    48d8:	13990000 	addk	r28, r25, r0
    48dc:	f8640004 	swi	r3, r4, 4
    48e0:	e8c60008 	lwi	r6, r6, 8
    48e4:	f8c40008 	swi	r6, r4, 8
    48e8:	e8790004 	lwi	r3, r25, 4
    48ec:	1496b800 	rsubk	r4, r22, r23
    48f0:	30a0000f 	addik	r5, r0, 15
    48f4:	14a42803 	cmpu	r5, r4, r5
    48f8:	be450088 	bltid	r5, 136		// 4980
    48fc:	a4630001 	andi	r3, r3, 1
    4900:	8063b800 	or	r3, r3, r23
    4904:	f87c0004 	swi	r3, r28, 4
    4908:	139cb800 	addk	r28, r28, r23
    490c:	e87c0004 	lwi	r3, r28, 4
    4910:	a0630001 	ori	r3, r3, 1
    4914:	f87c0004 	swi	r3, r28, 4
    4918:	10ba0000 	addk	r5, r26, r0
    491c:	b000ffff 	imm	-1
    4920:	b9f4fd84 	brlid	r15, -636	// 46a4 <__malloc_unlock>
    4924:	12f30000 	addk	r23, r19, r0
    4928:	10770000 	addk	r3, r23, r0
    492c:	e9e10000 	lwi	r15, r1, 0
    4930:	ea61001c 	lwi	r19, r1, 28
    4934:	eac10020 	lwi	r22, r1, 32
    4938:	eae10024 	lwi	r23, r1, 36
    493c:	eb010028 	lwi	r24, r1, 40
    4940:	eb21002c 	lwi	r25, r1, 44
    4944:	eb410030 	lwi	r26, r1, 48
    4948:	eb610034 	lwi	r27, r1, 52
    494c:	eb810038 	lwi	r28, r1, 56
    4950:	eba1003c 	lwi	r29, r1, 60
    4954:	b60f0008 	rtsd	r15, 8
    4958:	30210040 	addik	r1, r1, 64
    495c:	a4c8fffc 	andi	r6, r8, -4
    4960:	12e6c000 	addk	r23, r6, r24
    4964:	1505b801 	cmp	r8, r5, r23
    4968:	bc48fe2c 	blti	r8, -468		// 4794
    496c:	e8a4000c 	lwi	r5, r4, 12
    4970:	e8840008 	lwi	r4, r4, 8
    4974:	f8a4000c 	swi	r5, r4, 12
    4978:	b810ff74 	brid	-140		// 48ec
    497c:	f8850008 	swi	r4, r5, 8
    4980:	8063b000 	or	r3, r3, r22
    4984:	f87c0004 	swi	r3, r28, 4
    4988:	10dcb000 	addk	r6, r28, r22
    498c:	a0640001 	ori	r3, r4, 1
    4990:	f8660004 	swi	r3, r6, 4
    4994:	10862000 	addk	r4, r6, r4
    4998:	e8640004 	lwi	r3, r4, 4
    499c:	10ba0000 	addk	r5, r26, r0
    49a0:	30c60008 	addik	r6, r6, 8
    49a4:	a0630001 	ori	r3, r3, 1
    49a8:	b0000000 	imm	0
    49ac:	b9f40554 	brlid	r15, 1364	// 4f00 <_free_r>
    49b0:	f8640004 	swi	r3, r4, 4
    49b4:	b810ff68 	brid	-152		// 491c
    49b8:	10ba0000 	addk	r5, r26, r0
    49bc:	10ba0000 	addk	r5, r26, r0
    49c0:	b000ffff 	imm	-1
    49c4:	b9f4ee7c 	brlid	r15, -4484	// 3840 <_malloc_r>
    49c8:	10db0000 	addk	r6, r27, r0
    49cc:	be03006c 	beqid	r3, 108		// 4a38
    49d0:	12e30000 	addk	r23, r3, r0
    49d4:	e873fffc 	lwi	r3, r19, -4
    49d8:	30b7fff8 	addik	r5, r23, -8
    49dc:	a483fffe 	andi	r4, r3, -2
    49e0:	109c2000 	addk	r4, r28, r4
    49e4:	88852000 	xor	r4, r5, r4
    49e8:	be04023c 	beqid	r4, 572		// 4c24
    49ec:	30f8fffc 	addik	r7, r24, -4
    49f0:	30600024 	addik	r3, r0, 36
    49f4:	14671803 	cmpu	r3, r7, r3
    49f8:	bc430134 	blti	r3, 308		// 4b2c
    49fc:	30600013 	addik	r3, r0, 19
    4a00:	14671803 	cmpu	r3, r7, r3
    4a04:	be4300b0 	bltid	r3, 176		// 4ab4
    4a08:	10770000 	addk	r3, r23, r0
    4a0c:	10930000 	addk	r4, r19, r0
    4a10:	e8a40000 	lwi	r5, r4, 0
    4a14:	f8a30000 	swi	r5, r3, 0
    4a18:	e8a40004 	lwi	r5, r4, 4
    4a1c:	f8a30004 	swi	r5, r3, 4
    4a20:	e8840008 	lwi	r4, r4, 8
    4a24:	f8830008 	swi	r4, r3, 8
    4a28:	10ba0000 	addk	r5, r26, r0
    4a2c:	b0000000 	imm	0
    4a30:	b9f404d0 	brlid	r15, 1232	// 4f00 <_free_r>
    4a34:	10d30000 	addk	r6, r19, r0
    4a38:	b000ffff 	imm	-1
    4a3c:	b9f4fc68 	brlid	r15, -920	// 46a4 <__malloc_unlock>
    4a40:	10ba0000 	addk	r5, r26, r0
    4a44:	b810fee8 	brid	-280		// 492c
    4a48:	10770000 	addk	r3, r23, r0
    4a4c:	b000ffff 	imm	-1
    4a50:	b9f4edf0 	brlid	r15, -4624	// 3840 <_malloc_r>
    4a54:	10c70000 	addk	r6, r7, r0
    4a58:	b810fed0 	brid	-304		// 4928
    4a5c:	12e30000 	addk	r23, r3, r0
    4a60:	e8c70004 	lwi	r6, r7, 4
    4a64:	a4c6fffc 	andi	r6, r6, -4
    4a68:	1106c000 	addk	r8, r6, r24
    4a6c:	15294001 	cmp	r9, r9, r8
    4a70:	be49fd24 	bltid	r9, -732		// 4794
    4a74:	10870000 	addk	r4, r7, r0
    4a78:	14764000 	rsubk	r3, r22, r8
    4a7c:	139cb000 	addk	r28, r28, r22
    4a80:	a0630001 	ori	r3, r3, 1
    4a84:	f87c0004 	swi	r3, r28, 4
    4a88:	e873fffc 	lwi	r3, r19, -4
    4a8c:	10ba0000 	addk	r5, r26, r0
    4a90:	b0000000 	imm	0
    4a94:	fb805af8 	swi	r28, r0, 23288
    4a98:	a4630001 	andi	r3, r3, 1
    4a9c:	82d61800 	or	r22, r22, r3
    4aa0:	b000ffff 	imm	-1
    4aa4:	b9f4fc00 	brlid	r15, -1024	// 46a4 <__malloc_unlock>
    4aa8:	fad3fffc 	swi	r22, r19, -4
    4aac:	b810fe7c 	brid	-388		// 4928
    4ab0:	12f30000 	addk	r23, r19, r0
    4ab4:	e8930000 	lwi	r4, r19, 0
    4ab8:	3060001b 	addik	r3, r0, 27
    4abc:	14671803 	cmpu	r3, r7, r3
    4ac0:	f8970000 	swi	r4, r23, 0
    4ac4:	e8b30004 	lwi	r5, r19, 4
    4ac8:	be430138 	bltid	r3, 312		// 4c00
    4acc:	f8b70004 	swi	r5, r23, 4
    4ad0:	30770008 	addik	r3, r23, 8
    4ad4:	b810ff3c 	brid	-196		// 4a10
    4ad8:	30930008 	addik	r4, r19, 8
    4adc:	10930000 	addk	r4, r19, r0
    4ae0:	e8a40000 	lwi	r5, r4, 0
    4ae4:	12680000 	addk	r19, r8, r0
    4ae8:	13990000 	addk	r28, r25, r0
    4aec:	f8a30000 	swi	r5, r3, 0
    4af0:	e8a40004 	lwi	r5, r4, 4
    4af4:	f8a30004 	swi	r5, r3, 4
    4af8:	e8840008 	lwi	r4, r4, 8
    4afc:	f8830008 	swi	r4, r3, 8
    4b00:	b810fdec 	brid	-532		// 48ec
    4b04:	e8790004 	lwi	r3, r25, 4
    4b08:	10d30000 	addk	r6, r19, r0
    4b0c:	10a80000 	addk	r5, r8, r0
    4b10:	12680000 	addk	r19, r8, r0
    4b14:	b000ffff 	imm	-1
    4b18:	b9f4f794 	brlid	r15, -2156	// 42ac <memmove>
    4b1c:	12e30000 	addk	r23, r3, r0
    4b20:	e8790004 	lwi	r3, r25, 4
    4b24:	b810fdc8 	brid	-568		// 48ec
    4b28:	13990000 	addk	r28, r25, r0
    4b2c:	10b70000 	addk	r5, r23, r0
    4b30:	b000ffff 	imm	-1
    4b34:	b9f4f778 	brlid	r15, -2184	// 42ac <memmove>
    4b38:	10d30000 	addk	r6, r19, r0
    4b3c:	b810fef0 	brid	-272		// 4a2c
    4b40:	10ba0000 	addk	r5, r26, r0
    4b44:	13a61800 	addk	r29, r6, r3
    4b48:	30960010 	addik	r4, r22, 16
    4b4c:	1484e801 	cmp	r4, r4, r29
    4b50:	be44fd10 	bltid	r4, -752		// 4860
    4b54:	30f8fffc 	addik	r7, r24, -4
    4b58:	e879000c 	lwi	r3, r25, 12
    4b5c:	e8990008 	lwi	r4, r25, 8
    4b60:	f864000c 	swi	r3, r4, 12
    4b64:	f8830008 	swi	r4, r3, 8
    4b68:	30600024 	addik	r3, r0, 36
    4b6c:	14671803 	cmpu	r3, r7, r3
    4b70:	be430190 	bltid	r3, 400		// 4d00
    4b74:	32f90008 	addik	r23, r25, 8
    4b78:	30600013 	addik	r3, r0, 19
    4b7c:	14671803 	cmpu	r3, r7, r3
    4b80:	bea3015c 	bgeid	r3, 348		// 4cdc
    4b84:	10770000 	addk	r3, r23, r0
    4b88:	e8930000 	lwi	r4, r19, 0
    4b8c:	3060001b 	addik	r3, r0, 27
    4b90:	14671803 	cmpu	r3, r7, r3
    4b94:	f8990008 	swi	r4, r25, 8
    4b98:	e8b30004 	lwi	r5, r19, 4
    4b9c:	be43017c 	bltid	r3, 380		// 4d18
    4ba0:	f8b9000c 	swi	r5, r25, 12
    4ba4:	30790010 	addik	r3, r25, 16
    4ba8:	30930008 	addik	r4, r19, 8
    4bac:	e8a40000 	lwi	r5, r4, 0
    4bb0:	f8a30000 	swi	r5, r3, 0
    4bb4:	e8a40004 	lwi	r5, r4, 4
    4bb8:	f8a30004 	swi	r5, r3, 4
    4bbc:	e8840008 	lwi	r4, r4, 8
    4bc0:	f8830008 	swi	r4, r3, 8
    4bc4:	1496e800 	rsubk	r4, r22, r29
    4bc8:	1079b000 	addk	r3, r25, r22
    4bcc:	a0840001 	ori	r4, r4, 1
    4bd0:	f8830004 	swi	r4, r3, 4
    4bd4:	e8990004 	lwi	r4, r25, 4
    4bd8:	10ba0000 	addk	r5, r26, r0
    4bdc:	b0000000 	imm	0
    4be0:	f8605af8 	swi	r3, r0, 23288
    4be4:	a4640001 	andi	r3, r4, 1
    4be8:	82d61800 	or	r22, r22, r3
    4bec:	b000ffff 	imm	-1
    4bf0:	b9f4fab4 	brlid	r15, -1356	// 46a4 <__malloc_unlock>
    4bf4:	fad90004 	swi	r22, r25, 4
    4bf8:	b810fd34 	brid	-716		// 492c
    4bfc:	10770000 	addk	r3, r23, r0
    4c00:	e8730008 	lwi	r3, r19, 8
    4c04:	a8e70024 	xori	r7, r7, 36
    4c08:	f8770008 	swi	r3, r23, 8
    4c0c:	e893000c 	lwi	r4, r19, 12
    4c10:	be070070 	beqid	r7, 112		// 4c80
    4c14:	f897000c 	swi	r4, r23, 12
    4c18:	30770010 	addik	r3, r23, 16
    4c1c:	b810fdf4 	brid	-524		// 4a10
    4c20:	30930010 	addik	r4, r19, 16
    4c24:	eaf7fffc 	lwi	r23, r23, -4
    4c28:	a6f7fffc 	andi	r23, r23, -4
    4c2c:	b810fcc0 	brid	-832		// 48ec
    4c30:	12f7c000 	addk	r23, r23, r24
    4c34:	10d30000 	addk	r6, r19, r0
    4c38:	10a80000 	addk	r5, r8, r0
    4c3c:	12680000 	addk	r19, r8, r0
    4c40:	b000ffff 	imm	-1
    4c44:	b9f4f668 	brlid	r15, -2456	// 42ac <memmove>
    4c48:	13990000 	addk	r28, r25, r0
    4c4c:	b810fca0 	brid	-864		// 48ec
    4c50:	e8790004 	lwi	r3, r25, 4
    4c54:	b810fc70 	brid	-912		// 48c4
    4c58:	10d30000 	addk	r6, r19, r0
    4c5c:	e8b30008 	lwi	r5, r19, 8
    4c60:	a8e70024 	xori	r7, r7, 36
    4c64:	f8b90010 	swi	r5, r25, 16
    4c68:	e873000c 	lwi	r3, r19, 12
    4c6c:	be070054 	beqid	r7, 84		// 4cc0
    4c70:	f8790014 	swi	r3, r25, 20
    4c74:	30790018 	addik	r3, r25, 24
    4c78:	b810fe68 	brid	-408		// 4ae0
    4c7c:	30930010 	addik	r4, r19, 16
    4c80:	e8b30010 	lwi	r5, r19, 16
    4c84:	30770018 	addik	r3, r23, 24
    4c88:	30930018 	addik	r4, r19, 24
    4c8c:	f8b70010 	swi	r5, r23, 16
    4c90:	e8b30014 	lwi	r5, r19, 20
    4c94:	b810fd7c 	brid	-644		// 4a10
    4c98:	f8b70014 	swi	r5, r23, 20
    4c9c:	e8930008 	lwi	r4, r19, 8
    4ca0:	a8e70024 	xori	r7, r7, 36
    4ca4:	f8990010 	swi	r4, r25, 16
    4ca8:	e8b3000c 	lwi	r5, r19, 12
    4cac:	be070038 	beqid	r7, 56		// 4ce4
    4cb0:	f8b90014 	swi	r5, r25, 20
    4cb4:	30990018 	addik	r4, r25, 24
    4cb8:	b810fc0c 	brid	-1012		// 48c4
    4cbc:	30d30010 	addik	r6, r19, 16
    4cc0:	e8930010 	lwi	r4, r19, 16
    4cc4:	30790020 	addik	r3, r25, 32
    4cc8:	f8990018 	swi	r4, r25, 24
    4ccc:	30930018 	addik	r4, r19, 24
    4cd0:	ea730014 	lwi	r19, r19, 20
    4cd4:	b810fe0c 	brid	-500		// 4ae0
    4cd8:	fa79001c 	swi	r19, r25, 28
    4cdc:	b810fed0 	brid	-304		// 4bac
    4ce0:	10930000 	addk	r4, r19, r0
    4ce4:	e8930010 	lwi	r4, r19, 16
    4ce8:	30d30018 	addik	r6, r19, 24
    4cec:	f8990018 	swi	r4, r25, 24
    4cf0:	ea730014 	lwi	r19, r19, 20
    4cf4:	30990020 	addik	r4, r25, 32
    4cf8:	b810fbcc 	brid	-1076		// 48c4
    4cfc:	fa79001c 	swi	r19, r25, 28
    4d00:	10b70000 	addk	r5, r23, r0
    4d04:	b000ffff 	imm	-1
    4d08:	b9f4f5a4 	brlid	r15, -2652	// 42ac <memmove>
    4d0c:	10d30000 	addk	r6, r19, r0
    4d10:	b810feb8 	brid	-328		// 4bc8
    4d14:	1496e800 	rsubk	r4, r22, r29
    4d18:	e8730008 	lwi	r3, r19, 8
    4d1c:	a8e70024 	xori	r7, r7, 36
    4d20:	f8790010 	swi	r3, r25, 16
    4d24:	e893000c 	lwi	r4, r19, 12
    4d28:	be070014 	beqid	r7, 20		// 4d3c
    4d2c:	f8990014 	swi	r4, r25, 20
    4d30:	30790018 	addik	r3, r25, 24
    4d34:	b810fe78 	brid	-392		// 4bac
    4d38:	30930010 	addik	r4, r19, 16
    4d3c:	e8b30010 	lwi	r5, r19, 16
    4d40:	30930018 	addik	r4, r19, 24
    4d44:	30790020 	addik	r3, r25, 32
    4d48:	f8b90018 	swi	r5, r25, 24
    4d4c:	ea730014 	lwi	r19, r19, 20
    4d50:	b810fe5c 	brid	-420		// 4bac
    4d54:	fa79001c 	swi	r19, r25, 28

00004d58 <_sbrk_r>:
    4d58:	3021ffe0 	addik	r1, r1, -32
    4d5c:	fa61001c 	swi	r19, r1, 28
    4d60:	12650000 	addk	r19, r5, r0
    4d64:	f9e10000 	swi	r15, r1, 0
    4d68:	b0000000 	imm	0
    4d6c:	f8006000 	swi	r0, r0, 24576	// 6000 <errno>
    4d70:	b0000000 	imm	0
    4d74:	b9f407e4 	brlid	r15, 2020	// 5558 <sbrk>
    4d78:	10a60000 	addk	r5, r6, r0
    4d7c:	a883ffff 	xori	r4, r3, -1
    4d80:	be040014 	beqid	r4, 20		// 4d94
    4d84:	e9e10000 	lwi	r15, r1, 0
    4d88:	ea61001c 	lwi	r19, r1, 28
    4d8c:	b60f0008 	rtsd	r15, 8
    4d90:	30210020 	addik	r1, r1, 32
    4d94:	b0000000 	imm	0
    4d98:	e8806000 	lwi	r4, r0, 24576	// 6000 <errno>
    4d9c:	bc04ffec 	beqi	r4, -20		// 4d88
    4da0:	f8930000 	swi	r4, r19, 0
    4da4:	e9e10000 	lwi	r15, r1, 0
    4da8:	ea61001c 	lwi	r19, r1, 28
    4dac:	b60f0008 	rtsd	r15, 8
    4db0:	30210020 	addik	r1, r1, 32

00004db4 <_malloc_trim_r>:
    4db4:	3021ffd8 	addik	r1, r1, -40
    4db8:	fa61001c 	swi	r19, r1, 28
    4dbc:	fac10020 	swi	r22, r1, 32
    4dc0:	fae10024 	swi	r23, r1, 36
    4dc4:	12650000 	addk	r19, r5, r0
    4dc8:	f9e10000 	swi	r15, r1, 0
    4dcc:	b000ffff 	imm	-1
    4dd0:	b9f4f8cc 	brlid	r15, -1844	// 469c <__malloc_lock>
    4dd4:	12e60000 	addk	r23, r6, r0
    4dd8:	b0000000 	imm	0
    4ddc:	e8605af8 	lwi	r3, r0, 23288
    4de0:	eac30004 	lwi	r22, r3, 4
    4de4:	a6d6fffc 	andi	r22, r22, -4
    4de8:	3076006f 	addik	r3, r22, 111
    4dec:	16f71800 	rsubk	r23, r23, r3
    4df0:	a6f7ff80 	andi	r23, r23, -128
    4df4:	32f7ff80 	addik	r23, r23, -128
    4df8:	3060007f 	addik	r3, r0, 127
    4dfc:	14771801 	cmp	r3, r23, r3
    4e00:	bea3002c 	bgeid	r3, 44		// 4e2c
    4e04:	10b30000 	addk	r5, r19, r0
    4e08:	b000ffff 	imm	-1
    4e0c:	b9f4ff4c 	brlid	r15, -180	// 4d58 <_sbrk_r>
    4e10:	10c00000 	addk	r6, r0, r0
    4e14:	b0000000 	imm	0
    4e18:	e8805af8 	lwi	r4, r0, 23288
    4e1c:	1084b000 	addk	r4, r4, r22
    4e20:	88632000 	xor	r3, r3, r4
    4e24:	be030030 	beqid	r3, 48		// 4e54
    4e28:	10b30000 	addk	r5, r19, r0
    4e2c:	b000ffff 	imm	-1
    4e30:	b9f4f874 	brlid	r15, -1932	// 46a4 <__malloc_unlock>
    4e34:	80000000 	or	r0, r0, r0
    4e38:	e9e10000 	lwi	r15, r1, 0
    4e3c:	ea61001c 	lwi	r19, r1, 28
    4e40:	eac10020 	lwi	r22, r1, 32
    4e44:	eae10024 	lwi	r23, r1, 36
    4e48:	10600000 	addk	r3, r0, r0
    4e4c:	b60f0008 	rtsd	r15, 8
    4e50:	30210028 	addik	r1, r1, 40
    4e54:	b000ffff 	imm	-1
    4e58:	b9f4ff00 	brlid	r15, -256	// 4d58 <_sbrk_r>
    4e5c:	14d70000 	rsubk	r6, r23, r0
    4e60:	a8c3ffff 	xori	r6, r3, -1
    4e64:	be060054 	beqid	r6, 84		// 4eb8
    4e68:	16d7b000 	rsubk	r22, r23, r22
    4e6c:	b0000000 	imm	0
    4e70:	e8605f48 	lwi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    4e74:	10b30000 	addk	r5, r19, r0
    4e78:	16f71800 	rsubk	r23, r23, r3
    4e7c:	b0000000 	imm	0
    4e80:	e8605af8 	lwi	r3, r0, 23288
    4e84:	a2d60001 	ori	r22, r22, 1
    4e88:	b0000000 	imm	0
    4e8c:	fae05f48 	swi	r23, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    4e90:	b000ffff 	imm	-1
    4e94:	b9f4f810 	brlid	r15, -2032	// 46a4 <__malloc_unlock>
    4e98:	fac30004 	swi	r22, r3, 4
    4e9c:	e9e10000 	lwi	r15, r1, 0
    4ea0:	ea61001c 	lwi	r19, r1, 28
    4ea4:	eac10020 	lwi	r22, r1, 32
    4ea8:	eae10024 	lwi	r23, r1, 36
    4eac:	30600001 	addik	r3, r0, 1
    4eb0:	b60f0008 	rtsd	r15, 8
    4eb4:	30210028 	addik	r1, r1, 40
    4eb8:	b000ffff 	imm	-1
    4ebc:	b9f4fe9c 	brlid	r15, -356	// 4d58 <_sbrk_r>
    4ec0:	10b30000 	addk	r5, r19, r0
    4ec4:	b0000000 	imm	0
    4ec8:	e8805af8 	lwi	r4, r0, 23288
    4ecc:	30c0000f 	addik	r6, r0, 15
    4ed0:	14a41800 	rsubk	r5, r4, r3
    4ed4:	14c53001 	cmp	r6, r5, r6
    4ed8:	bca60020 	bgei	r6, 32		// 4ef8
    4edc:	a0a50001 	ori	r5, r5, 1
    4ee0:	f8a40004 	swi	r5, r4, 4
    4ee4:	b0000000 	imm	0
    4ee8:	e8805ae8 	lwi	r4, r0, 23272	// 5ae8 <__malloc_sbrk_base>
    4eec:	14641800 	rsubk	r3, r4, r3
    4ef0:	b0000000 	imm	0
    4ef4:	f8605f48 	swi	r3, r0, 24392	// 5f48 <__malloc_current_mallinfo>
    4ef8:	b810ff34 	brid	-204		// 4e2c
    4efc:	10b30000 	addk	r5, r19, r0

00004f00 <_free_r>:
    4f00:	3021ffdc 	addik	r1, r1, -36
    4f04:	fa61001c 	swi	r19, r1, 28
    4f08:	fac10020 	swi	r22, r1, 32
    4f0c:	f9e10000 	swi	r15, r1, 0
    4f10:	12660000 	addk	r19, r6, r0
    4f14:	be060160 	beqid	r6, 352		// 5074
    4f18:	12c50000 	addk	r22, r5, r0
    4f1c:	b000ffff 	imm	-1
    4f20:	b9f4f77c 	brlid	r15, -2180	// 469c <__malloc_lock>
    4f24:	80000000 	or	r0, r0, r0
    4f28:	e913fffc 	lwi	r8, r19, -4
    4f2c:	30f3fff8 	addik	r7, r19, -8
    4f30:	b0000000 	imm	0
    4f34:	e8a05af8 	lwi	r5, r0, 23288
    4f38:	a468fffe 	andi	r3, r8, -2
    4f3c:	10871800 	addk	r4, r7, r3
    4f40:	e8c40004 	lwi	r6, r4, 4
    4f44:	88a52000 	xor	r5, r5, r4
    4f48:	b0000000 	imm	0
    4f4c:	31405af8 	addik	r10, r0, 23288
    4f50:	be050180 	beqid	r5, 384		// 50d0
    4f54:	a4c6fffc 	andi	r6, r6, -4
    4f58:	f8c40004 	swi	r6, r4, 4
    4f5c:	a5080001 	andi	r8, r8, 1
    4f60:	be280034 	bneid	r8, 52		// 4f94
    4f64:	11200000 	addk	r9, r0, r0
    4f68:	e973fff8 	lwi	r11, r19, -8
    4f6c:	14eb3800 	rsubk	r7, r11, r7
    4f70:	e8a70008 	lwi	r5, r7, 8
    4f74:	10635800 	addk	r3, r3, r11
    4f78:	89655000 	xor	r11, r5, r10
    4f7c:	be0b0018 	beqid	r11, 24		// 4f94
    4f80:	31200001 	addik	r9, r0, 1
    4f84:	e967000c 	lwi	r11, r7, 12
    4f88:	11280000 	addk	r9, r8, r0
    4f8c:	f965000c 	swi	r11, r5, 12
    4f90:	f8ab0008 	swi	r5, r11, 8
    4f94:	10a43000 	addk	r5, r4, r6
    4f98:	e8a50004 	lwi	r5, r5, 4
    4f9c:	a4a50001 	andi	r5, r5, 1
    4fa0:	bc25002c 	bnei	r5, 44		// 4fcc
    4fa4:	10633000 	addk	r3, r3, r6
    4fa8:	be290018 	bneid	r9, 24		// 4fc0
    4fac:	e8a40008 	lwi	r5, r4, 8
    4fb0:	89455000 	xor	r10, r5, r10
    4fb4:	b0000000 	imm	0
    4fb8:	30c05af8 	addik	r6, r0, 23288
    4fbc:	bc0a0170 	beqi	r10, 368		// 512c
    4fc0:	e884000c 	lwi	r4, r4, 12
    4fc4:	f885000c 	swi	r4, r5, 12
    4fc8:	f8a40008 	swi	r5, r4, 8
    4fcc:	a0830001 	ori	r4, r3, 1
    4fd0:	f8870004 	swi	r4, r7, 4
    4fd4:	be290094 	bneid	r9, 148		// 5068
    4fd8:	d8633800 	sw	r3, r3, r7
    4fdc:	308001ff 	addik	r4, r0, 511
    4fe0:	14832003 	cmpu	r4, r3, r4
    4fe4:	bea400a4 	bgeid	r4, 164		// 5088
    4fe8:	64830009 	bsrli	r4, r3, 9
    4fec:	30a00004 	addik	r5, r0, 4
    4ff0:	14a42803 	cmpu	r5, r4, r5
    4ff4:	be450158 	bltid	r5, 344		// 514c
    4ff8:	30a00014 	addik	r5, r0, 20
    4ffc:	64a30006 	bsrli	r5, r3, 6
    5000:	30a50038 	addik	r5, r5, 56
    5004:	64c50403 	bslli	r6, r5, 3
    5008:	b0000000 	imm	0
    500c:	30c65af0 	addik	r6, r6, 23280
    5010:	e8860008 	lwi	r4, r6, 8
    5014:	89043000 	xor	r8, r4, r6
    5018:	be080148 	beqid	r8, 328		// 5160
    501c:	64a50202 	bsrai	r5, r5, 2
    5020:	e8a40004 	lwi	r5, r4, 4
    5024:	a4a5fffc 	andi	r5, r5, -4
    5028:	14a51803 	cmpu	r5, r5, r3
    502c:	bc45001c 	blti	r5, 28		// 5048
    5030:	b8100028 	brid	40		// 5058
    5034:	e864000c 	lwi	r3, r4, 12
    5038:	e9040004 	lwi	r8, r4, 4
    503c:	a508fffc 	andi	r8, r8, -4
    5040:	15081803 	cmpu	r8, r8, r3
    5044:	bca80010 	bgei	r8, 16		// 5054
    5048:	e8840008 	lwi	r4, r4, 8
    504c:	89062000 	xor	r8, r6, r4
    5050:	bc28ffe8 	bnei	r8, -24		// 5038
    5054:	e864000c 	lwi	r3, r4, 12
    5058:	f867000c 	swi	r3, r7, 12
    505c:	f8870008 	swi	r4, r7, 8
    5060:	f8e30008 	swi	r7, r3, 8
    5064:	f8e4000c 	swi	r7, r4, 12
    5068:	b000ffff 	imm	-1
    506c:	b9f4f638 	brlid	r15, -2504	// 46a4 <__malloc_unlock>
    5070:	10b60000 	addk	r5, r22, r0
    5074:	e9e10000 	lwi	r15, r1, 0
    5078:	ea61001c 	lwi	r19, r1, 28
    507c:	eac10020 	lwi	r22, r1, 32
    5080:	b60f0008 	rtsd	r15, 8
    5084:	30210024 	addik	r1, r1, 36
    5088:	64630003 	bsrli	r3, r3, 3
    508c:	64830403 	bslli	r4, r3, 3
    5090:	64630202 	bsrai	r3, r3, 2
    5094:	b0000000 	imm	0
    5098:	30845af0 	addik	r4, r4, 23280
    509c:	30c00001 	addik	r6, r0, 1
    50a0:	e8a40008 	lwi	r5, r4, 8
    50a4:	44661c00 	bsll	r3, r6, r3
    50a8:	b0000000 	imm	0
    50ac:	e8c05af4 	lwi	r6, r0, 23284
    50b0:	f887000c 	swi	r4, r7, 12
    50b4:	f8a70008 	swi	r5, r7, 8
    50b8:	80633000 	or	r3, r3, r6
    50bc:	b0000000 	imm	0
    50c0:	f8605af4 	swi	r3, r0, 23284
    50c4:	f8e40008 	swi	r7, r4, 8
    50c8:	b810ffa0 	brid	-96		// 5068
    50cc:	f8e5000c 	swi	r7, r5, 12
    50d0:	a5080001 	andi	r8, r8, 1
    50d4:	be280024 	bneid	r8, 36		// 50f8
    50d8:	10661800 	addk	r3, r6, r3
    50dc:	e8b3fff8 	lwi	r5, r19, -8
    50e0:	14e53800 	rsubk	r7, r5, r7
    50e4:	e887000c 	lwi	r4, r7, 12
    50e8:	e8c70008 	lwi	r6, r7, 8
    50ec:	10632800 	addk	r3, r3, r5
    50f0:	f886000c 	swi	r4, r6, 12
    50f4:	f8c40008 	swi	r6, r4, 8
    50f8:	b0000000 	imm	0
    50fc:	e8c05aec 	lwi	r6, r0, 23276	// 5aec <__malloc_trim_threshold>
    5100:	a0830001 	ori	r4, r3, 1
    5104:	f8870004 	swi	r4, r7, 4
    5108:	b0000000 	imm	0
    510c:	f8e05af8 	swi	r7, r0, 23288
    5110:	14661803 	cmpu	r3, r6, r3
    5114:	bc43ff54 	blti	r3, -172		// 5068
    5118:	b0000000 	imm	0
    511c:	e8c05f78 	lwi	r6, r0, 24440	// 5f78 <__malloc_top_pad>
    5120:	b9f4fc94 	brlid	r15, -876	// 4db4 <_malloc_trim_r>
    5124:	10b60000 	addk	r5, r22, r0
    5128:	b800ff40 	bri	-192		// 5068
    512c:	f8e6000c 	swi	r7, r6, 12
    5130:	f8e60008 	swi	r7, r6, 8
    5134:	a0830001 	ori	r4, r3, 1
    5138:	f8c7000c 	swi	r6, r7, 12
    513c:	f8c70008 	swi	r6, r7, 8
    5140:	f8870004 	swi	r4, r7, 4
    5144:	b810ff24 	brid	-220		// 5068
    5148:	d8633800 	sw	r3, r3, r7
    514c:	14a42803 	cmpu	r5, r4, r5
    5150:	be450034 	bltid	r5, 52		// 5184
    5154:	30a4005b 	addik	r5, r4, 91
    5158:	b810feb0 	brid	-336		// 5008
    515c:	64c50403 	bslli	r6, r5, 3
    5160:	30600001 	addik	r3, r0, 1
    5164:	44632c00 	bsll	r3, r3, r5
    5168:	b0000000 	imm	0
    516c:	e8a05af4 	lwi	r5, r0, 23284
    5170:	80632800 	or	r3, r3, r5
    5174:	b0000000 	imm	0
    5178:	f8605af4 	swi	r3, r0, 23284
    517c:	b810fedc 	brid	-292		// 5058
    5180:	10640000 	addk	r3, r4, r0
    5184:	30a00054 	addik	r5, r0, 84
    5188:	14a42803 	cmpu	r5, r4, r5
    518c:	be450014 	bltid	r5, 20		// 51a0
    5190:	64a3000c 	bsrli	r5, r3, 12
    5194:	30a5006e 	addik	r5, r5, 110
    5198:	b810fe70 	brid	-400		// 5008
    519c:	64c50403 	bslli	r6, r5, 3
    51a0:	30a00154 	addik	r5, r0, 340
    51a4:	14a42803 	cmpu	r5, r4, r5
    51a8:	be450014 	bltid	r5, 20		// 51bc
    51ac:	64a3000f 	bsrli	r5, r3, 15
    51b0:	30a50077 	addik	r5, r5, 119
    51b4:	b810fe54 	brid	-428		// 5008
    51b8:	64c50403 	bslli	r6, r5, 3
    51bc:	30a00554 	addik	r5, r0, 1364
    51c0:	14842803 	cmpu	r4, r4, r5
    51c4:	bc440014 	blti	r4, 20		// 51d8
    51c8:	64a30012 	bsrli	r5, r3, 18
    51cc:	30a5007c 	addik	r5, r5, 124
    51d0:	b810fe38 	brid	-456		// 5008
    51d4:	64c50403 	bslli	r6, r5, 3
    51d8:	30c003f0 	addik	r6, r0, 1008
    51dc:	b810fe2c 	brid	-468		// 5008
    51e0:	30a0007e 	addik	r5, r0, 126

000051e4 <cleanup_glue>:
    51e4:	3021ffbc 	addik	r1, r1, -68
    51e8:	fa61001c 	swi	r19, r1, 28
    51ec:	fb21002c 	swi	r25, r1, 44
    51f0:	f9e10000 	swi	r15, r1, 0
    51f4:	fac10020 	swi	r22, r1, 32
    51f8:	fae10024 	swi	r23, r1, 36
    51fc:	fb010028 	swi	r24, r1, 40
    5200:	fb410030 	swi	r26, r1, 48
    5204:	fb610034 	swi	r27, r1, 52
    5208:	fb810038 	swi	r28, r1, 56
    520c:	fba1003c 	swi	r29, r1, 60
    5210:	fbc10040 	swi	r30, r1, 64
    5214:	eac60000 	lwi	r22, r6, 0
    5218:	13260000 	addk	r25, r6, r0
    521c:	be1600d0 	beqid	r22, 208		// 52ec
    5220:	12650000 	addk	r19, r5, r0
    5224:	eaf60000 	lwi	r23, r22, 0
    5228:	bc1700b4 	beqi	r23, 180		// 52dc
    522c:	eb170000 	lwi	r24, r23, 0
    5230:	bc18009c 	beqi	r24, 156		// 52cc
    5234:	eb580000 	lwi	r26, r24, 0
    5238:	bc1a0084 	beqi	r26, 132		// 52bc
    523c:	eb7a0000 	lwi	r27, r26, 0
    5240:	bc1b006c 	beqi	r27, 108		// 52ac
    5244:	eb9b0000 	lwi	r28, r27, 0
    5248:	bc1c0054 	beqi	r28, 84		// 529c
    524c:	ebbc0000 	lwi	r29, r28, 0
    5250:	bc1d003c 	beqi	r29, 60		// 528c
    5254:	ebdd0000 	lwi	r30, r29, 0
    5258:	bc1e0024 	beqi	r30, 36		// 527c
    525c:	e8de0000 	lwi	r6, r30, 0
    5260:	bc06000c 	beqi	r6, 12		// 526c
    5264:	b9f4ff80 	brlid	r15, -128	// 51e4 <cleanup_glue>
    5268:	80000000 	or	r0, r0, r0
    526c:	10b30000 	addk	r5, r19, r0
    5270:	b000ffff 	imm	-1
    5274:	b9f4fc8c 	brlid	r15, -884	// 4f00 <_free_r>
    5278:	10de0000 	addk	r6, r30, r0
    527c:	10b30000 	addk	r5, r19, r0
    5280:	b000ffff 	imm	-1
    5284:	b9f4fc7c 	brlid	r15, -900	// 4f00 <_free_r>
    5288:	10dd0000 	addk	r6, r29, r0
    528c:	10b30000 	addk	r5, r19, r0
    5290:	b000ffff 	imm	-1
    5294:	b9f4fc6c 	brlid	r15, -916	// 4f00 <_free_r>
    5298:	10dc0000 	addk	r6, r28, r0
    529c:	10b30000 	addk	r5, r19, r0
    52a0:	b000ffff 	imm	-1
    52a4:	b9f4fc5c 	brlid	r15, -932	// 4f00 <_free_r>
    52a8:	10db0000 	addk	r6, r27, r0
    52ac:	10b30000 	addk	r5, r19, r0
    52b0:	b000ffff 	imm	-1
    52b4:	b9f4fc4c 	brlid	r15, -948	// 4f00 <_free_r>
    52b8:	10da0000 	addk	r6, r26, r0
    52bc:	10b30000 	addk	r5, r19, r0
    52c0:	b000ffff 	imm	-1
    52c4:	b9f4fc3c 	brlid	r15, -964	// 4f00 <_free_r>
    52c8:	10d80000 	addk	r6, r24, r0
    52cc:	10b30000 	addk	r5, r19, r0
    52d0:	b000ffff 	imm	-1
    52d4:	b9f4fc2c 	brlid	r15, -980	// 4f00 <_free_r>
    52d8:	10d70000 	addk	r6, r23, r0
    52dc:	10b30000 	addk	r5, r19, r0
    52e0:	b000ffff 	imm	-1
    52e4:	b9f4fc1c 	brlid	r15, -996	// 4f00 <_free_r>
    52e8:	10d60000 	addk	r6, r22, r0
    52ec:	10b30000 	addk	r5, r19, r0
    52f0:	b000ffff 	imm	-1
    52f4:	b9f4fc0c 	brlid	r15, -1012	// 4f00 <_free_r>
    52f8:	10d90000 	addk	r6, r25, r0
    52fc:	e9e10000 	lwi	r15, r1, 0
    5300:	ea61001c 	lwi	r19, r1, 28
    5304:	eac10020 	lwi	r22, r1, 32
    5308:	eae10024 	lwi	r23, r1, 36
    530c:	eb010028 	lwi	r24, r1, 40
    5310:	eb21002c 	lwi	r25, r1, 44
    5314:	eb410030 	lwi	r26, r1, 48
    5318:	eb610034 	lwi	r27, r1, 52
    531c:	eb810038 	lwi	r28, r1, 56
    5320:	eba1003c 	lwi	r29, r1, 60
    5324:	ebc10040 	lwi	r30, r1, 64
    5328:	b60f0008 	rtsd	r15, 8
    532c:	30210044 	addik	r1, r1, 68

00005330 <_reclaim_reent>:
    5330:	b0000000 	imm	0
    5334:	e86059c4 	lwi	r3, r0, 22980	// 59c4 <_impure_ptr>
    5338:	3021ffd4 	addik	r1, r1, -44
    533c:	fa61001c 	swi	r19, r1, 28
    5340:	f9e10000 	swi	r15, r1, 0
    5344:	fac10020 	swi	r22, r1, 32
    5348:	fae10024 	swi	r23, r1, 36
    534c:	fb010028 	swi	r24, r1, 40
    5350:	88651800 	xor	r3, r5, r3
    5354:	be030124 	beqid	r3, 292		// 5478
    5358:	12650000 	addk	r19, r5, r0
    535c:	e8650024 	lwi	r3, r5, 36
    5360:	bc03007c 	beqi	r3, 124		// 53dc
    5364:	e883000c 	lwi	r4, r3, 12
    5368:	bc040060 	beqi	r4, 96		// 53c8
    536c:	10600000 	addk	r3, r0, r0
    5370:	13030000 	addk	r24, r3, r0
    5374:	32e00020 	addik	r23, r0, 32	// 20 <_vector_hw_exception>
    5378:	64630402 	bslli	r3, r3, 2
    537c:	c8c32000 	lw	r6, r3, r4
    5380:	bc060024 	beqi	r6, 36		// 53a4
    5384:	10b30000 	addk	r5, r19, r0
    5388:	b000ffff 	imm	-1
    538c:	b9f4fb74 	brlid	r15, -1164	// 4f00 <_free_r>
    5390:	eac60000 	lwi	r22, r6, 0
    5394:	be36fff0 	bneid	r22, -16		// 5384
    5398:	10d60000 	addk	r6, r22, r0
    539c:	e8730024 	lwi	r3, r19, 36
    53a0:	e883000c 	lwi	r4, r3, 12
    53a4:	33180001 	addik	r24, r24, 1
    53a8:	32f7ffff 	addik	r23, r23, -1
    53ac:	be37ffcc 	bneid	r23, -52		// 5378
    53b0:	10780000 	addk	r3, r24, r0
    53b4:	10b30000 	addk	r5, r19, r0
    53b8:	b000ffff 	imm	-1
    53bc:	b9f4fb44 	brlid	r15, -1212	// 4f00 <_free_r>
    53c0:	10c40000 	addk	r6, r4, r0
    53c4:	e8730024 	lwi	r3, r19, 36
    53c8:	e8c30000 	lwi	r6, r3, 0
    53cc:	bc060010 	beqi	r6, 16		// 53dc
    53d0:	b000ffff 	imm	-1
    53d4:	b9f4fb2c 	brlid	r15, -1236	// 4f00 <_free_r>
    53d8:	10b30000 	addk	r5, r19, r0
    53dc:	e8d30014 	lwi	r6, r19, 20
    53e0:	bc060010 	beqi	r6, 16		// 53f0
    53e4:	b000ffff 	imm	-1
    53e8:	b9f4fb18 	brlid	r15, -1256	// 4f00 <_free_r>
    53ec:	10b30000 	addk	r5, r19, r0
    53f0:	e8d30024 	lwi	r6, r19, 36
    53f4:	bc060010 	beqi	r6, 16		// 5404
    53f8:	b000ffff 	imm	-1
    53fc:	b9f4fb04 	brlid	r15, -1276	// 4f00 <_free_r>
    5400:	10b30000 	addk	r5, r19, r0
    5404:	e8d30038 	lwi	r6, r19, 56
    5408:	bc060010 	beqi	r6, 16		// 5418
    540c:	b000ffff 	imm	-1
    5410:	b9f4faf0 	brlid	r15, -1296	// 4f00 <_free_r>
    5414:	10b30000 	addk	r5, r19, r0
    5418:	e8d3003c 	lwi	r6, r19, 60
    541c:	bc060010 	beqi	r6, 16		// 542c
    5420:	b000ffff 	imm	-1
    5424:	b9f4fadc 	brlid	r15, -1316	// 4f00 <_free_r>
    5428:	10b30000 	addk	r5, r19, r0
    542c:	e8d30040 	lwi	r6, r19, 64
    5430:	bc060010 	beqi	r6, 16		// 5440
    5434:	b000ffff 	imm	-1
    5438:	b9f4fac8 	brlid	r15, -1336	// 4f00 <_free_r>
    543c:	10b30000 	addk	r5, r19, r0
    5440:	e8730048 	lwi	r3, r19, 72
    5444:	bc030018 	beqi	r3, 24		// 545c
    5448:	e8c30088 	lwi	r6, r3, 136
    544c:	bc060010 	beqi	r6, 16		// 545c
    5450:	b000ffff 	imm	-1
    5454:	b9f4faac 	brlid	r15, -1364	// 4f00 <_free_r>
    5458:	10b30000 	addk	r5, r19, r0
    545c:	e8d30034 	lwi	r6, r19, 52
    5460:	bc060010 	beqi	r6, 16		// 5470
    5464:	b000ffff 	imm	-1
    5468:	b9f4fa98 	brlid	r15, -1384	// 4f00 <_free_r>
    546c:	10b30000 	addk	r5, r19, r0
    5470:	e8730018 	lwi	r3, r19, 24
    5474:	bc230020 	bnei	r3, 32		// 5494
    5478:	e9e10000 	lwi	r15, r1, 0
    547c:	ea61001c 	lwi	r19, r1, 28
    5480:	eac10020 	lwi	r22, r1, 32
    5484:	eae10024 	lwi	r23, r1, 36
    5488:	eb010028 	lwi	r24, r1, 40
    548c:	b60f0008 	rtsd	r15, 8
    5490:	3021002c 	addik	r1, r1, 44
    5494:	e8730028 	lwi	r3, r19, 40
    5498:	99fc1800 	brald	r15, r3
    549c:	10b30000 	addk	r5, r19, r0
    54a0:	e8d300d8 	lwi	r6, r19, 216
    54a4:	be06ffd8 	beqid	r6, -40		// 547c
    54a8:	e9e10000 	lwi	r15, r1, 0
    54ac:	b9f4fd38 	brlid	r15, -712	// 51e4 <cleanup_glue>
    54b0:	10b30000 	addk	r5, r19, r0
    54b4:	e9e10000 	lwi	r15, r1, 0
    54b8:	ea61001c 	lwi	r19, r1, 28
    54bc:	eac10020 	lwi	r22, r1, 32
    54c0:	eae10024 	lwi	r23, r1, 36
    54c4:	eb010028 	lwi	r24, r1, 40
    54c8:	b60f0008 	rtsd	r15, 8
    54cc:	3021002c 	addik	r1, r1, 44

000054d0 <_wrapup_reent>:
    54d0:	3021ffd8 	addik	r1, r1, -40
    54d4:	fae10024 	swi	r23, r1, 36
    54d8:	f9e10000 	swi	r15, r1, 0
    54dc:	fa61001c 	swi	r19, r1, 28
    54e0:	fac10020 	swi	r22, r1, 32
    54e4:	be050064 	beqid	r5, 100		// 5548
    54e8:	12e50000 	addk	r23, r5, r0
    54ec:	ead70048 	lwi	r22, r23, 72
    54f0:	bc16002c 	beqi	r22, 44		// 551c
    54f4:	ea760004 	lwi	r19, r22, 4
    54f8:	3273ffff 	addik	r19, r19, -1
    54fc:	be530020 	bltid	r19, 32		// 551c
    5500:	30730002 	addik	r3, r19, 2
    5504:	64630402 	bslli	r3, r3, 2
    5508:	c863b000 	lw	r3, r3, r22
    550c:	99fc1800 	brald	r15, r3
    5510:	3273ffff 	addik	r19, r19, -1
    5514:	beb3fff0 	bgeid	r19, -16		// 5504
    5518:	30730002 	addik	r3, r19, 2
    551c:	e8770028 	lwi	r3, r23, 40
    5520:	be030014 	beqid	r3, 20		// 5534
    5524:	e9e10000 	lwi	r15, r1, 0
    5528:	99fc1800 	brald	r15, r3
    552c:	10b70000 	addk	r5, r23, r0
    5530:	e9e10000 	lwi	r15, r1, 0
    5534:	ea61001c 	lwi	r19, r1, 28
    5538:	eac10020 	lwi	r22, r1, 32
    553c:	eae10024 	lwi	r23, r1, 36
    5540:	b60f0008 	rtsd	r15, 8
    5544:	30210028 	addik	r1, r1, 40
    5548:	b0000000 	imm	0
    554c:	eae059c4 	lwi	r23, r0, 22980	// 59c4 <_impure_ptr>
    5550:	b810ffa0 	brid	-96		// 54f0
    5554:	ead70048 	lwi	r22, r23, 72

00005558 <sbrk>:
    5558:	b0000000 	imm	0
    555c:	e8605f7c 	lwi	r3, r0, 24444	// 5f7c <heap_ptr>
    5560:	3021ffe4 	addik	r1, r1, -28
    5564:	be03004c 	beqid	r3, 76		// 55b0
    5568:	f9e10000 	swi	r15, r1, 0
    556c:	b0000000 	imm	0
    5570:	30806f09 	addik	r4, r0, 28425
    5574:	10a32800 	addk	r5, r3, r5
    5578:	b0000000 	imm	0
    557c:	f8a05f7c 	swi	r5, r0, 24444	// 5f7c <heap_ptr>
    5580:	14a52003 	cmpu	r5, r5, r4
    5584:	bea50024 	bgeid	r5, 36		// 55a8
    5588:	e9e10000 	lwi	r15, r1, 0
    558c:	b0000000 	imm	0
    5590:	b9f4002c 	brlid	r15, 44	// 55bc <__errno>
    5594:	80000000 	or	r0, r0, r0
    5598:	3080000c 	addik	r4, r0, 12
    559c:	f8830000 	swi	r4, r3, 0
    55a0:	3060ffff 	addik	r3, r0, -1
    55a4:	e9e10000 	lwi	r15, r1, 0
    55a8:	b60f0008 	rtsd	r15, 8
    55ac:	3021001c 	addik	r1, r1, 28
    55b0:	b0000000 	imm	0
    55b4:	30606008 	addik	r3, r0, 24584	// 6008 <_heap>
    55b8:	b800ffb4 	bri	-76		// 556c

000055bc <__errno>:

int *
__errno ()
{
  return &_REENT->_errno;
}
    55bc:	b0000000 	imm	0
    55c0:	e86059c4 	lwi	r3, r0, 22980	// 59c4 <_impure_ptr>
    55c4:	b60f0008 	rtsd	r15, 8
    55c8:	80000000 	or	r0, r0, r0

000055cc <__do_global_ctors_aux>:
    55cc:	b0000000 	imm	0
    55d0:	e86058d0 	lwi	r3, r0, 22736	// 58d0 <__CTOR_LIST__>
    55d4:	3021ffe0 	addik	r1, r1, -32
    55d8:	f9e10000 	swi	r15, r1, 0
    55dc:	a883ffff 	xori	r4, r3, -1
    55e0:	be040028 	beqid	r4, 40		// 5608
    55e4:	fa61001c 	swi	r19, r1, 28
    55e8:	b0000000 	imm	0
    55ec:	326058d0 	addik	r19, r0, 22736	// 58d0 <__CTOR_LIST__>
    55f0:	99fc1800 	brald	r15, r3
    55f4:	80000000 	or	r0, r0, r0
    55f8:	e873fffc 	lwi	r3, r19, -4
    55fc:	a883ffff 	xori	r4, r3, -1
    5600:	be24fff0 	bneid	r4, -16		// 55f0
    5604:	3273fffc 	addik	r19, r19, -4
    5608:	e9e10000 	lwi	r15, r1, 0
    560c:	ea61001c 	lwi	r19, r1, 28
    5610:	b60f0008 	rtsd	r15, 8
    5614:	30210020 	addik	r1, r1, 32

00005618 <main>:
  }
  cbuffer_push_back(rx_buffer, rx_tmp_buffer);
  XUartLite_Recv(&UartLite, (u8*)&rx_tmp_buffer, sizeof(uint32_t));
}

int main(void) {
    5618:	3021ffe4 	addik	r1, r1, -28
    561c:	f9e10000 	swi	r15, r1, 0
  init_platform();
    5620:	b000ffff 	imm	-1
    5624:	b9f4bf04 	brlid	r15, -16636	// 1528 <init_platform>
    5628:	80000000 	or	r0, r0, r0

  setup_tracer((uint32_t*)0xF0000004, 4); 
    562c:	b000f000 	imm	-4096
    5630:	30a00004 	addik	r5, r0, 4
    5634:	b000ffff 	imm	-1
    5638:	b9f4cf34 	brlid	r15, -12492	// 256c <setup_tracer>
    563c:	30c00004 	addik	r6, r0, 4
  
  LOG_INFO("UART CTP BE echo test\n");

  tx_buffer = cbuffer_new();
    5640:	b000ffff 	imm	-1
    5644:	b9f4c5e4 	brlid	r15, -14876	// 1c28 <cbuffer_new>
    5648:	80000000 	or	r0, r0, r0
    564c:	b0000000 	imm	0
    5650:	f8605f38 	swi	r3, r0, 24376	// 5f38 <tx_buffer>
  rx_buffer = cbuffer_new();
    5654:	b000ffff 	imm	-1
    5658:	b9f4c5d0 	brlid	r15, -14896	// 1c28 <cbuffer_new>
    565c:	80000000 	or	r0, r0, r0
    5660:	b0000000 	imm	0
    5664:	f8605f3c 	swi	r3, r0, 24380	// 5f3c <rx_buffer>

  int Status;
  u16 DeviceId = UARTLITE_DEVICE_ID;     

  LOG_INFO("wtf1\n");
  set_trace_flag(1);
    5668:	b000ffff 	imm	-1
    566c:	b9f4cf18 	brlid	r15, -12520	// 2584 <set_trace_flag>
    5670:	30a00001 	addik	r5, r0, 1

  /*
   * Initialize the UartLite driver so that it's ready to use.
   */
  Status = XUartLite_Initialize(&UartLite, DeviceId);
    5674:	b0000000 	imm	0
    5678:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    567c:	b000ffff 	imm	-1
    5680:	b9f4dcc8 	brlid	r15, -9016	// 3348 <XUartLite_Initialize>
    5684:	10c00000 	addk	r6, r0, r0
  if (Status != XST_SUCCESS) {
    5688:	be030014 	beqid	r3, 20		// 569c
    568c:	e9e10000 	lwi	r15, r1, 0
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    }
  }

}
    5690:	30600001 	addik	r3, r0, 1
    5694:	b60f0008 	rtsd	r15, 8
    5698:	3021001c 	addik	r1, r1, 28
  if (Status != XST_SUCCESS) {
    LOG_ERROR ("Error: could not initialize UART\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf2\n");
  set_trace_flag(2);
    569c:	b000ffff 	imm	-1
    56a0:	b9f4cee4 	brlid	r15, -12572	// 2584 <set_trace_flag>
    56a4:	30a00002 	addik	r5, r0, 2

  XUartLite_ResetFifos(&UartLite);
    56a8:	b0000000 	imm	0
    56ac:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    56b0:	b000ffff 	imm	-1
    56b4:	b9f4d674 	brlid	r15, -10636	// 2d28 <XUartLite_ResetFifos>
    56b8:	80000000 	or	r0, r0, r0

  /*
   * Perform a self-test to ensure that the hardware was built correctly.
   */
  Status = XUartLite_SelfTest(&UartLite);
    56bc:	b0000000 	imm	0
    56c0:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    56c4:	b000ffff 	imm	-1
    56c8:	b9f4db78 	brlid	r15, -9352	// 3240 <XUartLite_SelfTest>
    56cc:	80000000 	or	r0, r0, r0
  if (Status != XST_SUCCESS) {
    56d0:	be23ffc0 	bneid	r3, -64		// 5690
    56d4:	e9e10000 	lwi	r15, r1, 0
    LOG_ERROR ("Error: self test failed\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf3 - help\n");
  set_trace_flag(3);
    56d8:	b000ffff 	imm	-1
    56dc:	b9f4cea8 	brlid	r15, -12632	// 2584 <set_trace_flag>
    56e0:	30a00003 	addik	r5, r0, 3

  /*
   * Connect the UartLite to the interrupt subsystem such that interrupts can
   * occur. This function is application specific.
   */
  Status = SetupInterruptSystem(&UartLite);
    56e4:	b0000000 	imm	0
    56e8:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    56ec:	b000ffff 	imm	-1
    56f0:	b9f4bf6c 	brlid	r15, -16532	// 165c <SetupInterruptSystem>
    56f4:	80000000 	or	r0, r0, r0
  if (Status != XST_SUCCESS) {
    56f8:	be23ff98 	bneid	r3, -104		// 5690
    56fc:	e9e10000 	lwi	r15, r1, 0
    LOG_ERROR ("Error: could not setup interrupts\n");
      return XST_FAILURE;
  }
  LOG_INFO("wtf4\n");
  set_trace_flag(4);
    5700:	b000ffff 	imm	-1
    5704:	b9f4ce80 	brlid	r15, -12672	// 2584 <set_trace_flag>
    5708:	30a00004 	addik	r5, r0, 4
   * Setup the handlers for the UartLite that will be called from the
   * interrupt context when data has been sent and received, specify a
   * pointer to the UartLite driver instance as the callback reference so
   * that the handlers are able to access the instance data.
   */
  XUartLite_SetSendHandler(&UartLite, SendHandler, &UartLite);
    570c:	b0000000 	imm	0
    5710:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    5714:	b0000000 	imm	0
    5718:	30c015ac 	addik	r6, r0, 5548	// 15ac <SendHandler>
    571c:	b000ffff 	imm	-1
    5720:	b9f4d234 	brlid	r15, -11724	// 2954 <XUartLite_SetSendHandler>
    5724:	10e50000 	addk	r7, r5, r0
  XUartLite_SetRecvHandler(&UartLite, RecvHandler, &UartLite);
    5728:	b0000000 	imm	0
    572c:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    5730:	b0000000 	imm	0
    5734:	30c01560 	addik	r6, r0, 5472	// 1560 <RecvHandler>
    5738:	b000ffff 	imm	-1
    573c:	b9f4d160 	brlid	r15, -11936	// 289c <XUartLite_SetRecvHandler>
    5740:	10e50000 	addk	r7, r5, r0

  set_trace_flag(5);
    5744:	b000ffff 	imm	-1
    5748:	b9f4ce3c 	brlid	r15, -12740	// 2584 <set_trace_flag>
    574c:	30a00005 	addik	r5, r0, 5
  /*
   * Enable the interrupt of the UartLite so that interrupts will occur.
   */
  XUartLite_EnableInterrupt(&UartLite);
    5750:	b0000000 	imm	0
    5754:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    5758:	b000ffff 	imm	-1
    575c:	b9f4d434 	brlid	r15, -11212	// 2b90 <XUartLite_EnableInterrupt>
    5760:	80000000 	or	r0, r0, r0

  set_trace_flag(6);
    5764:	b000ffff 	imm	-1
    5768:	b9f4ce1c 	brlid	r15, -12772	// 2584 <set_trace_flag>
    576c:	30a00006 	addik	r5, r0, 6

  // bootstrap the READ
  LOG_DEBUG("Bootstrapping READ\n");
  XUartLite_Recv(&UartLite, (u8*)&rx_tmp_buffer, sizeof(uint32_t));
    5770:	b0000000 	imm	0
    5774:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
    5778:	b0000000 	imm	0
    577c:	30c05f34 	addik	r6, r0, 24372	// 5f34 <rx_tmp_buffer>
    5780:	b000ffff 	imm	-1
    5784:	b9f4d970 	brlid	r15, -9872	// 30f4 <XUartLite_Recv>
    5788:	30e00004 	addik	r7, r0, 4

  set_trace_flag(7);
    578c:	b000ffff 	imm	-1
    5790:	b9f4cdf4 	brlid	r15, -12812	// 2584 <set_trace_flag>
    5794:	30a00007 	addik	r5, r0, 7
  unsigned int heartbeat = 0;
  while (1) {
    if (heartbeat++ % (1 << 8)) {
      //LOG_DEBUG("bump %x\n", heartbeat);
    }
    set_trace_flag(8);
    5798:	b000ffff 	imm	-1
    579c:	b9f4cde8 	brlid	r15, -12824	// 2584 <set_trace_flag>
    57a0:	30a00008 	addik	r5, r0, 8	// 8 <_vector_sw_exception>
    while (cbuffer_size(rx_buffer) && cbuffer_freespace(tx_buffer)) {
    57a4:	b8000044 	bri	68		// 57e8
    57a8:	b0000000 	imm	0
    57ac:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
    57b0:	b000ffff 	imm	-1
    57b4:	b9f4c6a4 	brlid	r15, -14684	// 1e58 <cbuffer_freespace>
    57b8:	80000000 	or	r0, r0, r0
    57bc:	bc030044 	beqi	r3, 68		// 5800
      uint32_t data = cbuffer_pop_front(rx_buffer);
    57c0:	b0000000 	imm	0
    57c4:	e8a05f3c 	lwi	r5, r0, 24380	// 5f3c <rx_buffer>
    57c8:	b000ffff 	imm	-1
    57cc:	b9f4ca7c 	brlid	r15, -13700	// 2248 <cbuffer_pop_front>
    57d0:	80000000 	or	r0, r0, r0
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    57d4:	b0000000 	imm	0
    57d8:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
    57dc:	b000ffff 	imm	-1
    57e0:	b9f4c76c 	brlid	r15, -14484	// 1f4c <cbuffer_push_back>
    57e4:	10c30000 	addk	r6, r3, r0
  while (1) {
    if (heartbeat++ % (1 << 8)) {
      //LOG_DEBUG("bump %x\n", heartbeat);
    }
    set_trace_flag(8);
    while (cbuffer_size(rx_buffer) && cbuffer_freespace(tx_buffer)) {
    57e8:	b0000000 	imm	0
    57ec:	e8a05f3c 	lwi	r5, r0, 24380	// 5f3c <rx_buffer>
    57f0:	b000ffff 	imm	-1
    57f4:	b9f4c4f0 	brlid	r15, -15120	// 1ce4 <cbuffer_size>
    57f8:	80000000 	or	r0, r0, r0
    57fc:	bc23ffac 	bnei	r3, -84		// 57a8
      uint32_t data = cbuffer_pop_front(rx_buffer);
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    }
    if (!currently_sending && cbuffer_size(tx_buffer)) {
    5800:	b0000000 	imm	0
    5804:	e8605f30 	lwi	r3, r0, 24368	// 5f30 <currently_sending>
    5808:	bc23ff90 	bnei	r3, -112		// 5798
    580c:	b0000000 	imm	0
    5810:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
    5814:	b000ffff 	imm	-1
    5818:	b9f4c4cc 	brlid	r15, -15156	// 1ce4 <cbuffer_size>
    581c:	80000000 	or	r0, r0, r0
    5820:	be03ff78 	beqid	r3, -136		// 5798
    5824:	30600001 	addik	r3, r0, 1
      } else {
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    5828:	b0000000 	imm	0
    582c:	e8a05f38 	lwi	r5, r0, 24376	// 5f38 <tx_buffer>
      //LOG_DEBUG("Echoing data word %x\n", data);
      cbuffer_push_back(tx_buffer, data);
    }
    if (!currently_sending && cbuffer_size(tx_buffer)) {
      LOG_DEBUG("\nREINT SEND\n");
      currently_sending = 1;
    5830:	b0000000 	imm	0
    5834:	f8605f30 	swi	r3, r0, 24368	// 5f30 <currently_sending>
      } else {
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
    5838:	b000ffff 	imm	-1
    583c:	b9f4c4cc 	brlid	r15, -15156	// 1d08 <cbuffer_contiguous_data_size>
    5840:	80000000 	or	r0, r0, r0
      u8* output_ptr = (u8*)&(tx_buffer->data[tx_buffer->pos]);
    5844:	b0000000 	imm	0
    5848:	e8805f38 	lwi	r4, r0, 24376	// 5f38 <tx_buffer>
      //LOG_DEBUG("REINIT %x\n", to_send);
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    584c:	60e30004 	muli	r7, r3, 4
    5850:	b0000000 	imm	0
    5854:	30a05fa0 	addik	r5, r0, 24480	// 5fa0 <UartLite>
        LOG_DEBUG("UART STAT: idle\n");
      }
      */

      unsigned int to_send = cbuffer_contiguous_data_size(tx_buffer) * sizeof(uint32_t);
      u8* output_ptr = (u8*)&(tx_buffer->data[tx_buffer->pos]);
    5858:	e8640008 	lwi	r3, r4, 8
    585c:	e8c40000 	lwi	r6, r4, 0
    5860:	60630004 	muli	r3, r3, 4
      //LOG_DEBUG("REINIT %x\n", to_send);
      //LOG_DEBUG("SENDADDR %x\n", output_ptr);
      XUartLite_Send(&UartLite, output_ptr, to_send);
    5864:	b000ffff 	imm	-1
    5868:	b9f4d674 	brlid	r15, -10636	// 2edc <XUartLite_Send>
    586c:	10c61800 	addk	r6, r6, r3
    5870:	b800ff28 	bri	-216		// 5798

Disassembly of section .init:

00005874 <__init>:
    5874:	3021fff8 	addik	r1, r1, -8
    5878:	d9e00800 	sw	r15, r0, r1
    587c:	3160ffff 	addik	r11, r0, -1
    5880:	940bc802 	mts	rshr, r11
    5884:	31600000 	addik	r11, r0, 0
    5888:	940bc800 	mts	rslr, r11
    588c:	b000ffff 	imm	-1
    5890:	b9f4a8b0 	brlid	r15, -22352	// 140 <frame_dummy>
    5894:	80000000 	or	r0, r0, r0
    5898:	b000ffff 	imm	-1
    589c:	b9f4fd30 	brlid	r15, -720	// 55cc <__do_global_ctors_aux>
    58a0:	80000000 	or	r0, r0, r0
    58a4:	c9e00800 	lw	r15, r0, r1
    58a8:	b60f0008 	rtsd	r15, 8
    58ac:	30210008 	addik	r1, r1, 8

Disassembly of section .fini:

000058b0 <__fini>:
    58b0:	3021fff8 	addik	r1, r1, -8
    58b4:	d9e00800 	sw	r15, r0, r1
    58b8:	b000ffff 	imm	-1
    58bc:	b9f4a7c8 	brlid	r15, -22584	// 84 <__do_global_dtors_aux>
    58c0:	80000000 	or	r0, r0, r0
    58c4:	c9e00800 	lw	r15, r0, r1
    58c8:	b60f0008 	rtsd	r15, 8
    58cc:	30210008 	addik	r1, r1, 8
