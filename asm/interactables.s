.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable044
CreateEntity_Interactable044: @ 0x08032358
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080323FC @ =sub_80324AC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032400 @ =sub_8032B04
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08032404 @ =0x03000010
	adds r0, r3, r2
	movs r7, #0
	mov sl, r7
	movs r4, #0
	strh r5, [r1, #4]
	strh r6, [r1, #6]
	mov r2, sb
	str r2, [r1]
	ldrb r2, [r2]
	strb r2, [r1, #0xe]
	mov r7, r8
	strb r7, [r1, #0xf]
	strh r4, [r1, #0x38]
	strh r4, [r1, #0x3a]
	ldr r7, _08032408 @ =0x0300003C
	adds r2, r3, r7
	mov r7, sl
	strb r7, [r2]
	ldr r2, _0803240C @ =0x0300003D
	adds r3, r3, r2
	strb r7, [r3]
	str r4, [r1, #0x40]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xc]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x10]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r6, r6, #8
	adds r1, r1, r6
	strh r1, [r0, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	strb r1, [r2]
	bl sub_8032B18
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080323FC: .4byte sub_80324AC
_08032400: .4byte sub_8032B04
_08032404: .4byte 0x03000010
_08032408: .4byte 0x0300003C
_0803240C: .4byte 0x0300003D

	thumb_func_start sub_8032410
sub_8032410: @ 0x08032410
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08032474 @ =gCurTask
	mov sb, r1
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	adds r1, #0x10
	adds r5, r2, r1
	ldr r2, [r4]
	mov r8, r2
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #3
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08032478
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08032478
	ldrb r0, [r4, #0xe]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _0803249A
	.align 2, 0
_08032474: .4byte gCurTask
_08032478:
	ldr r2, _080324A8 @ =gUnknown_03001D10
	ldr r1, [r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_0803249A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324A8: .4byte gUnknown_03001D10

	thumb_func_start sub_80324AC
sub_80324AC: @ 0x080324AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08032514 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r1, _08032518 @ =0x03000010
	adds r7, r2, r1
	ldr r3, [r6]
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803251C @ =gUnknown_03001D10
	ldr r0, [r1]
	ldr r3, [sp, #0xc]
	subs r0, r3, r0
	strh r0, [r7, #0x10]
	ldr r0, [r1, #4]
	mov r1, r8
	subs r0, r1, r0
	strh r0, [r7, #0x12]
	movs r3, #0
	str r3, [sp, #0x10]
	ldr r0, _08032520 @ =0x0300003C
	adds r0, r0, r2
	mov sb, r0
_08032502:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08032524
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032528
	.align 2, 0
_08032514: .4byte gCurTask
_08032518: .4byte 0x03000010
_0803251C: .4byte gUnknown_03001D10
_08032520: .4byte 0x0300003C
_08032524:
	ldr r0, _080325F8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08032528:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080325FC @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	mov sl, r1
	cmp r2, #8
	bne _08032548
	b _080326AA
_08032548:
	ldr r0, _080325F8 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08032556
	cmp r2, #0xc
	bne _08032556
	b _080326AA
_08032556:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0803255E
	b _080326AA
_0803255E:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	beq _0803256C
	b _080326AA
_0803256C:
	str r4, [sp]
	ldr r3, [sp, #8]
	str r3, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _08032584
	b _080326AA
_08032584:
	movs r0, #1
	str r0, [sp, #8]
	str r4, [r6, #0x40]
	adds r0, r6, #0
	adds r0, #0x3d
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0]
	movs r2, #0
	strh r5, [r6, #0x38]
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _080325A2
	rsbs r0, r0, #0
_080325A2:
	movs r3, #0x1a
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _080325AC
	rsbs r1, r1, #0
_080325AC:
	adds r0, r0, r1
	strh r0, [r6, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _080325BC
	movs r0, #0xe0
	strh r0, [r6, #0x3a]
_080325BC:
	movs r1, #0x3a
	ldrsh r0, [r6, r1]
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080325CA
	strh r1, [r6, #0x3a]
_080325CA:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _0803261C
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r8
	ble _08032600
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0x78
	strh r0, [r4, #0x30]
	mov r0, sb
	strb r2, [r0]
	b _08032658
	.align 2, 0
_080325F8: .4byte gUnknown_030008A0
_080325FC: .4byte gUnknown_030015C0
_08032600:
	ldr r0, [r7, #8]
	ldr r1, _08032618 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #0x79
	strh r0, [r4, #0x30]
	mov r1, sp
	ldrb r2, [r1, #8]
	mov r1, sb
	strb r2, [r1]
	b _08032658
	.align 2, 0
_08032618: .4byte 0xFFFFFBFF
_0803261C:
	ldr r0, [r4, #4]
	ldr r3, [sp, #8]
	orrs r0, r3
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r8
	ble _08032644
	ldr r0, [r7, #8]
	ldr r1, _08032640 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	movs r0, #0x78
	strh r0, [r4, #0x30]
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
	b _08032658
	.align 2, 0
_08032640: .4byte 0xFFFFFBFF
_08032644:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #0x79
	strh r0, [r4, #0x30]
	movs r0, #3
	mov r2, sb
	strb r0, [r2]
_08032658:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #8
	str r0, [r4, #0x10]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x36]
	mov r2, sl
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_8004E98
	adds r0, r4, #0
	adds r0, #0x99
	movs r3, #0
	strb r3, [r0]
	ldrh r0, [r4, #0x18]
	strh r0, [r6, #0xa]
	ldrh r0, [r4, #0x1a]
	strh r0, [r6, #0xc]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, _080326D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080326D4 @ =Task_80326D8
	str r0, [r1, #8]
_080326AA:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #1
	bhi _080326BA
	b _08032502
_080326BA:
	movs r0, #0
	bl sub_8032410
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080326D0: .4byte gCurTask
_080326D4: .4byte Task_80326D8

	thumb_func_start Task_80326D8
Task_80326D8: @ 0x080326D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r3, _08032764 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov r8, r0
	ldr r2, [r7]
	ldrb r1, [r7, #0xe]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldrh r0, [r7, #0x3a]
	ldrh r1, [r7, #0x38]
	adds r0, r0, r1
	ldr r2, _08032768 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0x38]
	lsrs r6, r0, #4
	ldr r1, _0803276C @ =gUnknown_03001D10
	ldr r0, [r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r2, #0x12]
	movs r2, #0
	str r2, [sp, #0xc]
	lsls r0, r6, #1
	ldr r1, _08032770 @ =gUnknown_082B48B4
	adds r0, r0, r1
	mov sb, r0
_08032740:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0803277C
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032774 @ =gUnknown_030015C0
	adds r5, r0, r1
	ldr r3, _08032778 @ =gUnknown_030008A0
	b _08032790
	.align 2, 0
_08032764: .4byte gCurTask
_08032768: .4byte 0x00003FF0
_0803276C: .4byte gUnknown_03001D10
_08032770: .4byte gUnknown_082B48B4
_08032774: .4byte gUnknown_030015C0
_08032778: .4byte gUnknown_030008A0
_0803277C:
	ldr r2, _0803280C @ =gUnknown_030008A0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032810 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r3, r2, #0
_08032790:
	adds r4, r3, #0
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _080327A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080327A8
	b _08032A60
_080327A8:
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0803283A
	ldr r1, [r5, #4]
	ldr r0, _08032814 @ =0x01000100
	ands r1, r0
	cmp r1, #0
	beq _080327C0
	b _08032A60
_080327C0:
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _080327D6
	b _08032A60
_080327D6:
	ldr r2, [r7, #0x40]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r3, #0x1c
	adds r1, r3, #0
	ands r1, r0
	cmp r1, #8
	bne _08032820
	ldrh r0, [r2, #0x20]
	ldrh r1, [r4, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	ldr r2, _08032818 @ =gCurTask
	ldr r0, [r2]
	ldr r1, _0803281C @ =sub_8032A8C
	str r1, [r0, #8]
	b _08032A60
	.align 2, 0
_0803280C: .4byte gUnknown_030008A0
_08032810: .4byte gUnknown_030015C0
_08032814: .4byte 0x01000100
_08032818: .4byte gCurTask
_0803281C: .4byte sub_8032A8C
_08032820:
	cmp r1, #4
	bne _08032888
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #8
	bne _08032888
	movs r0, #1
	bl sub_8032410
	b _08032A76
_0803283A:
	ldrh r1, [r5, #0x30]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0x66
	bne _08032860
	ldr r2, [r7, #0x40]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r3, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	b _0803286C
_08032860:
	adds r0, r1, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08032880
_0803286C:
	ldr r1, _08032878 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0803287C @ =sub_8032A8C
	str r2, [r0, #8]
	b _08032A76
	.align 2, 0
_08032878: .4byte gCurTask
_0803287C: .4byte sub_8032A8C
_08032880:
	ldrh r0, [r7, #0xa]
	strh r0, [r5, #0x18]
	ldrh r0, [r7, #0xc]
	strh r0, [r5, #0x1a]
_08032888:
	ldr r2, [r5, #4]
	ldr r0, _080328AC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	bne _0803289A
	ldr r1, [r5]
	ldr r0, _080328B0 @ =sub_800D944
	cmp r1, r0
	bne _080328C0
_0803289A:
	ldr r0, _080328B4 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r5, #4]
	ldr r1, _080328B8 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080328BC @ =sub_8032A8C
	str r2, [r0, #8]
	b _08032A60
	.align 2, 0
_080328AC: .4byte 0x01000100
_080328B0: .4byte sub_800D944
_080328B4: .4byte 0xEFFFFFFF
_080328B8: .4byte gCurTask
_080328BC: .4byte sub_8032A8C
_080328C0:
	ldr r0, _08032910 @ =gUnknown_030008A0
	ldrh r1, [r5, #0x20]
	ldrh r4, [r0, #0x14]
	ands r4, r1
	cmp r4, #0
	bne _080328CE
	b _08032A20
_080328CE:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	ldr r1, _08032914 @ =sub_800DB30
	bl sub_800D87C
	ldr r0, [r5, #4]
	ldr r1, _08032918 @ =0xEFFFFFF7
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, _0803291C @ =gCurTask
	ldr r0, [r1]
	ldr r2, _08032920 @ =sub_8032A8C
	str r2, [r0, #8]
	adds r0, r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_8004F10
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	beq _08032948
	cmp r0, #1
	bgt _08032924
	cmp r0, #0
	beq _0803292E
	b _080329DC
	.align 2, 0
_08032910: .4byte gUnknown_030008A0
_08032914: .4byte sub_800DB30
_08032918: .4byte 0xEFFFFFF7
_0803291C: .4byte gCurTask
_08032920: .4byte sub_8032A8C
_08032924:
	cmp r0, #2
	beq _08032964
	cmp r0, #3
	beq _080329A0
	b _080329DC
_0803292E:
	movs r0, #0x20
	subs r4, r0, r6
	ldr r0, _08032944 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _0803297A
	.align 2, 0
_08032944: .4byte 0x000003FF
_08032948:
	adds r4, r6, #0
	adds r4, #0x20
	ldr r0, _08032960 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _080329B8
	.align 2, 0
_08032960: .4byte 0x000003FF
_08032964:
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _08032998 @ =0x000003FF
	ands r4, r1
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_0803297A:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _0803299C @ =gUnknown_082B48B4
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_08032998: .4byte 0x000003FF
_0803299C: .4byte gUnknown_082B48B4
_080329A0:
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r1, #0
	subs r4, r0, r6
	ldr r2, _080329D4 @ =0x000003FF
	ands r4, r2
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_080329B8:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _080329D8 @ =gUnknown_082B48B4
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_080329D4: .4byte 0x000003FF
_080329D8: .4byte gUnknown_082B48B4
_080329DC:
	movs r4, #0
_080329DE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08032A1C @ =gUnknown_082B48B4
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl sub_80C7524
	strh r0, [r5, #0x18]
	lsls r4, r4, #1
	ldr r2, _08032A1C @ =gUnknown_082B48B4
	adds r4, r4, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl sub_80C7524
	strh r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08032A60
	.align 2, 0
_08032A1C: .4byte gUnknown_082B48B4
_08032A20:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	adds r0, r6, #0
	movs r1, #0x56
	bl sub_80C7524
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032A36
	movs r1, #0xb
_08032A36:
	ldr r0, _08032A88 @ =0x0000036A
	mov r2, r8
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	strh r1, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #8]
	lsls r0, r1, #8
	str r0, [r5, #0x10]
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r5, #0x14]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
_08032A60:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _08032A70
	b _08032740
_08032A70:
	movs r0, #1
	bl sub_8032410
_08032A76:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A88: .4byte 0x0000036A

	thumb_func_start sub_8032A8C
sub_8032A8C: @ 0x08032A8C
	push {r4, r5, r6, lr}
	ldr r6, _08032AF4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r5, r1, r0
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _08032AB0
	movs r0, #0xe0
	strh r0, [r4, #0x3a]
_08032AB0:
	ldrh r0, [r4, #0x3a]
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r2, _08032AF8 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x38]
	lsrs r0, r0, #4
	movs r1, #0x55
	bl sub_80C7524
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032AD0
	movs r1, #0xb
_08032AD0:
	ldr r0, _08032AFC @ =0x0000036A
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	cmp r1, #0
	bne _08032AE8
	strh r1, [r4, #0x38]
	strh r1, [r4, #0x3a]
	ldr r1, [r6]
	ldr r0, _08032B00 @ =sub_80324AC
	str r0, [r1, #8]
_08032AE8:
	movs r0, #0
	bl sub_8032410
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032AF4: .4byte gCurTask
_08032AF8: .4byte 0x00003FF0
_08032AFC: .4byte 0x0000036A
_08032B00: .4byte sub_80324AC

	thumb_func_start sub_8032B04
sub_8032B04: @ 0x08032B04
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8032B18
sub_8032B18: @ 0x08032B18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08032B58 @ =0x0000036A
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032B58: .4byte 0x0000036A

	thumb_func_start CreateEntity_Interactable045
CreateEntity_Interactable045: @ 0x08032B5C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08032C0C @ =sub_8032C2C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032C10 @ =sub_8033280
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r2, r3
	movs r0, #0
	mov r8, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	mov r1, sb
	str r1, [r3]
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldr r0, _08032C14 @ =0x0300008C
	adds r1, r2, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r1, _08032C18 @ =0x0300008E
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08032C1C @ =0x0300008F
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08032C20 @ =0x03000084
	adds r4, r2, r0
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4]
	ldr r1, _08032C24 @ =0x03000088
	adds r4, r2, r1
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sb
	strb r0, [r1]
	ldr r3, _08032C28 @ =0x0300000C
	adds r0, r2, r3
	adds r3, #0x28
	adds r1, r2, r3
	adds r3, #0x28
	adds r2, r2, r3
	bl sub_8033098
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032C0C: .4byte sub_8032C2C
_08032C10: .4byte sub_8033280
_08032C14: .4byte 0x0300008C
_08032C18: .4byte 0x0300008E
_08032C1C: .4byte 0x0300008F
_08032C20: .4byte 0x03000084
_08032C24: .4byte 0x03000088
_08032C28: .4byte 0x0300000C

	thumb_func_start sub_8032C2C
sub_8032C2C: @ 0x08032C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _08032C7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r3, _08032C80 @ =0x0300000C
	adds r3, r1, r3
	str r3, [sp, #8]
	ldr r0, _08032C84 @ =0x0300005C
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r3, #0
	mov r8, r3
	ldr r0, _08032C88 @ =0x0300008E
	adds r0, r0, r1
	mov sb, r0
_08032C60:
	mov r1, sb
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	mov r3, r8
	cmp r3, #0
	beq _08032C8C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032C90
	.align 2, 0
_08032C7C: .4byte gCurTask
_08032C80: .4byte 0x0300000C
_08032C84: .4byte 0x0300005C
_08032C88: .4byte 0x0300008E
_08032C8C:
	ldr r0, _08032D4C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08032C90:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032D50 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _08032D16
	mov r7, sl
	adds r7, #0x84
	ldr r1, [r7]
	mov r6, sl
	adds r6, #0x88
	ldr r2, [r6]
	str r5, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08032CD6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08032CD6:
	ldr r1, [r7]
	ldr r2, [r6]
	adds r2, #0x78
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r3, #0
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08032D16
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	ldr r1, _08032D54 @ =sub_800A168
	bl sub_800D87C
	mov r0, sb
	add r0, r8
	strb r5, [r0]
	movs r0, #1
	str r0, [sp, #0x10]
_08032D16:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08032C60
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08032D38
	ldr r0, _08032D58 @ =0x00000247
	bl sub_8003DF0
	ldr r0, _08032D5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032D60 @ =sub_8032D64
	str r0, [r1, #8]
_08032D38:
	bl sub_8033158
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D4C: .4byte gUnknown_030008A0
_08032D50: .4byte gUnknown_030015C0
_08032D54: .4byte sub_800A168
_08032D58: .4byte 0x00000247
_08032D5C: .4byte gCurTask
_08032D60: .4byte sub_8032D64

	thumb_func_start sub_8032D64
sub_8032D64: @ 0x08032D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08032DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _08032DF4 @ =0x0300000C
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r1, _08032DF8 @ =0x0300005C
	adds r1, r5, r1
	str r1, [sp, #0xc]
	ldr r3, _08032DFC @ =0x0300008C
	adds r6, r5, r3
	ldr r1, _08032E00 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08032E04 @ =0x07FF0000
	cmp r0, r1
	bgt _08032DAC
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6]
	ldr r0, _08032E08 @ =0x00000247
	bl sub_8003E28
_08032DAC:
	ldr r1, _08032E0C @ =0x03000084
	adds r0, r5, r1
	ldr r2, [r0]
	ldr r0, _08032E10 @ =0x03000088
	adds r3, r5, r0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	movs r7, #0
	ldr r1, _08032E14 @ =0x0300008E
	adds r1, r1, r5
	mov r8, r1
	movs r5, #0
	mov sb, r5
	lsls r2, r2, #8
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r2, r0
	str r0, [sp, #0x18]
	ldr r1, _08032E18 @ =0xFFFFFC00
	adds r1, r2, r1
	str r1, [sp, #0x1c]
	str r3, [sp, #0x14]
_08032DE0:
	cmp r7, #0
	beq _08032E1C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032E20
	.align 2, 0
_08032DF0: .4byte gCurTask
_08032DF4: .4byte 0x0300000C
_08032DF8: .4byte 0x0300005C
_08032DFC: .4byte 0x0300008C
_08032E00: .4byte 0xFFFFFE00
_08032E04: .4byte 0x07FF0000
_08032E08: .4byte 0x00000247
_08032E0C: .4byte 0x03000084
_08032E10: .4byte 0x03000088
_08032E14: .4byte 0x0300008E
_08032E18: .4byte 0xFFFFFC00
_08032E1C:
	ldr r0, _08032E50 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08032E20:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032E54 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08032E58
	cmp r1, #8
	beq _08032E58
	cmp r1, #0x10
	beq _08032E58
	mov r3, r8
	adds r0, r3, r7
	mov r5, sb
	strb r5, [r0]
	b _08032F96
	.align 2, 0
_08032E50: .4byte gUnknown_030008A0
_08032E54: .4byte gUnknown_030015C0
_08032E58:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08032E8E
	mov r0, sl
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	ldr r2, [r0]
	str r3, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08032E8E
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08032E8E:
	ldr r1, [r4, #4]
	ldr r0, _08032EE4 @ =0x01000100
	ands r0, r1
	cmp r0, #0
	beq _08032EA6
	ldr r0, _08032EE8 @ =0xEFFFFFFF
	ands r1, r0
	str r1, [r4, #4]
	mov r1, r8
	adds r0, r1, r7
	mov r3, sb
	strb r3, [r0]
_08032EA6:
	ldr r1, [r4]
	ldr r0, _08032EEC @ =sub_800D944
	cmp r1, r0
	bne _08032EBE
	ldr r0, [r4, #4]
	ldr r1, _08032EE8 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	mov r5, r8
	adds r0, r5, r7
	mov r1, sb
	strb r1, [r0]
_08032EBE:
	mov r3, r8
	adds r6, r3, r7
	ldrb r0, [r6]
	cmp r0, #0
	beq _08032F3C
	movs r0, #0x7a
	strh r0, [r4, #0x30]
	mov r5, sb
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08032EF0
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	b _08032EF4
	.align 2, 0
_08032EE4: .4byte 0x01000100
_08032EE8: .4byte 0xEFFFFFFF
_08032EEC: .4byte sub_800D944
_08032EF0:
	ldr r1, [sp, #0x1c]
	str r1, [r4, #0x10]
_08032EF4:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #8
	movs r5, #0xa0
	lsls r5, r5, #6
	adds r0, r0, r5
	str r0, [r4, #0x14]
	ldr r0, _08032F30 @ =gUnknown_030008A0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08032F96
	ldr r0, _08032F34 @ =0xEFFFFFFF
	ands r0, r2
	str r0, [r4, #4]
	adds r0, r4, #0
	ldr r1, _08032F38 @ =sub_800A094
	bl sub_800D87C
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x18]
	mov r1, r8
	adds r0, r1, r7
	mov r3, sb
	strb r3, [r0]
	b _08032F96
	.align 2, 0
_08032F30: .4byte gUnknown_030008A0
_08032F34: .4byte 0xEFFFFFFF
_08032F38: .4byte sub_800A094
_08032F3C:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08032F96
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _08032F96
	mov r0, sl
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, #8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r5, [sp, #0x14]
	ldr r2, [r5]
	adds r2, r2, r0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r3, #0
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08032F96
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r3, #5
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0]
	adds r0, r4, #0
	ldr r1, _08032FCC @ =sub_800A168
	bl sub_800D87C
	strb r5, [r6]
_08032F96:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bhi _08032FA2
	b _08032DE0
_08032FA2:
	mov r5, r8
	ldrh r0, [r5]
	cmp r0, #0
	bne _08032FB8
	ldr r0, _08032FD0 @ =0x00000247
	bl sub_8003E28
	ldr r0, _08032FD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032FD8 @ =sub_8032FDC
	str r0, [r1, #8]
_08032FB8:
	bl sub_8033158
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032FCC: .4byte sub_800A168
_08032FD0: .4byte 0x00000247
_08032FD4: .4byte gCurTask
_08032FD8: .4byte sub_8032FDC

	thumb_func_start sub_8032FDC
sub_8032FDC: @ 0x08032FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x80
	adds r2, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08033028 @ =0x77FF0000
	cmp r0, r1
	ble _08033012
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r2]
	ldr r0, _0803302C @ =sub_8032C2C
	str r0, [r3, #8]
_08033012:
	movs r5, #0
_08033014:
	cmp r5, #0
	beq _08033030
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08033034
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x77FF0000
_0803302C: .4byte sub_8032C2C
_08033030:
	ldr r0, _08033090 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08033034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033094 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08033078
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08033078
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08033078:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08033014
	bl sub_8033158
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033090: .4byte gUnknown_030008A0
_08033094: .4byte gUnknown_030015C0

	thumb_func_start sub_8033098
sub_8033098: @ 0x08033098
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0xa
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	mov ip, r1
	mov r1, ip
	strh r1, [r4, #0x14]
	movs r1, #0xdb
	lsls r1, r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r4, #0xc]
	movs r1, #2
	strb r1, [r4, #0x1a]
	strh r2, [r4, #0x16]
	movs r1, #0xff
	strb r1, [r4, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	adds r0, #0xc0
	str r0, [r5]
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r5, #0x14]
	mov r1, sb
	strh r1, [r5, #0xc]
	movs r1, #1
	strb r1, [r5, #0x1a]
	strh r2, [r5, #0x16]
	subs r1, #2
	strb r1, [r5, #0x1b]
	mov r1, r8
	strb r1, [r5, #0x1c]
	mov r1, sl
	strb r1, [r5, #0x1f]
	strh r2, [r5, #0x10]
	strh r2, [r5, #0x12]
	str r3, [r5, #8]
	adds r0, #0x20
	str r0, [r6]
	mov r0, ip
	strh r0, [r6, #0x14]
	mov r1, sb
	strh r1, [r6, #0xc]
	mov r0, sl
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, r8
	strb r1, [r6, #0x1c]
	mov r0, sl
	strb r0, [r6, #0x1f]
	strh r2, [r6, #0x10]
	strh r2, [r6, #0x12]
	str r3, [r6, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033158
sub_8033158: @ 0x08033158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080331E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080331E4 @ =0x0300000C
	adds r6, r2, r1
	ldr r7, [r0]
	mov sb, r7
	ldr r0, _080331E8 @ =0x03000084
	adds r4, r2, r0
	adds r1, #0x7c
	adds r0, r2, r1
	ldr r3, _080331EC @ =gUnknown_03001D10
	ldr r1, [r3, #4]
	movs r7, #0
	ldrsh r5, [r0, r7]
	subs r1, r5, r1
	ldr r7, _080331F0 @ =0x0300008C
	adds r0, r2, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	movs r1, #0
	ldrsh r4, [r4, r1]
	subs r0, r4, r0
	strh r0, [r6, #0x10]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	strh r0, [r6, #0x12]
	ldr r0, _080331F4 @ =0x0300008E
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _080331F8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r0, #0x12
	ldrsh r3, [r6, r0]
	adds r0, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _080331F8
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r7, sl
	ldr r0, [r7]
	bl TaskDestroy
	b _0803326A
	.align 2, 0
_080331E0: .4byte gCurTask
_080331E4: .4byte 0x0300000C
_080331E8: .4byte 0x03000084
_080331EC: .4byte gUnknown_03001D10
_080331F0: .4byte 0x0300008C
_080331F4: .4byte 0x0300008E
_080331F8:
	ldrh r0, [r6, #0x10]
	mov sb, r0
	ldrh r1, [r6, #0x12]
	mov sl, r1
	ldr r0, [r6, #8]
	movs r5, #0x80
	lsls r5, r5, #3
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	ldr r0, [r6, #8]
	ldr r4, _08033278 @ =0xFFFFFBFF
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	mov r6, r8
	adds r6, #0x5c
	mov r2, sb
	strh r2, [r6, #0x10]
	strh r7, [r6, #0x12]
	ldr r0, [r6, #8]
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	ldr r0, [r6, #8]
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	subs r6, #0x28
	lsls r1, r7, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r0
	ble _0803326A
	adds r4, r2, #0
_08033250:
	mov r0, sb
	strh r0, [r6, #0x10]
	strh r7, [r6, #0x12]
	adds r0, r6, #0
	bl sub_80C033C
	lsls r0, r7, #0x10
	ldr r1, _0803327C @ =0xFFF00000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bgt _08033250
_0803326A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033278: .4byte 0xFFFFFBFF
_0803327C: .4byte 0xFFF00000

	thumb_func_start sub_8033280
sub_8033280: @ 0x08033280
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8033294
sub_8033294: @ 0x08033294
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08033364 @ =sub_8033374
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08033368 @ =sub_8033A30
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	movs r2, #0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	ldr r4, _0803336C @ =0x03000034
	adds r0, r1, r4
	mov r4, sb
	strb r4, [r0]
	ldr r0, _08033370 @ =0x03000038
	adds r1, r1, r0
	strb r2, [r1]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803331A
	movs r4, #1
_08033300:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0803331A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08033300
_0803331A:
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #0
	strb r2, [r1]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #3]
	adds r0, r3, #0
	adds r0, #0x37
	strb r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	mov r0, sb
	adds r1, r6, #0
	bl sub_80336A0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033364: .4byte sub_8033374
_08033368: .4byte sub_8033A30
_0803336C: .4byte 0x03000034
_08033370: .4byte 0x03000038

	thumb_func_start sub_8033374
sub_8033374: @ 0x08033374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08033408 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [r7]
	ldr r3, _0803340C @ =0x03000034
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #0
	str r1, [sp, #8]
	cmp r0, #1
	bls _080333AE
	movs r3, #0xa
	str r3, [sp, #8]
	cmp r0, #3
	bhi _080333AE
	movs r0, #5
	str r0, [sp, #8]
_080333AE:
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, _08033410 @ =gUnknown_030008A0
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r3, [r1]
	asrs r0, r3
	movs r6, #1
	ands r0, r6
	mov r3, sb
	ldrb r4, [r3, #0x1a]
	adds r3, r7, #0
	adds r3, #0x36
	cmp r0, #0
	beq _08033426
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _08033414
	ldrb r0, [r3]
	cmp r0, #0
	bne _08033414
	ldr r0, [sp, #8]
	adds r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	strb r6, [r3]
	b _08033440
	.align 2, 0
_08033408: .4byte gCurTask
_0803340C: .4byte 0x03000034
_08033410: .4byte gUnknown_030008A0
_08033414:
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033440
_08033426:
	ldr r0, [sp, #8]
	adds r0, #2
	cmp r4, r0
	bne _08033440
	ldrb r0, [r3]
	cmp r0, #1
	bne _08033440
	ldr r0, [sp, #8]
	adds r0, #4
	movs r1, #0
	mov r2, sb
	strb r0, [r2, #0x1a]
	strb r1, [r3]
_08033440:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08033448
	b _0803368A
_08033448:
	movs r1, #0
_0803344A:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0803345C
	ldr r0, _08033458 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08033466
	.align 2, 0
_08033458: .4byte gUnknown_030008A0
_0803345C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08033466:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033574 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803348C
	cmp r1, #8
	beq _0803348C
	cmp r1, #0x10
	beq _0803348C
	b _0803367A
_0803348C:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08033498
	b _0803367A
_08033498:
	movs r3, #0
	mov sl, r3
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0xa8
	beq _080334DC
	cmp r1, #0xb8
	beq _080334DC
	cmp r1, #0xcc
	beq _080334DC
	cmp r1, #0xd5
	bne _080334B6
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	beq _080334DC
_080334B6:
	cmp r1, #0xe6
	beq _080334DC
	cmp r1, #0xfe
	beq _080334DC
	cmp r1, #0xff
	beq _080334DC
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _080334DC
	adds r0, #1
	cmp r1, r0
	beq _080334DC
	adds r0, #1
	cmp r1, r0
	beq _080334DC
	subs r0, #4
	cmp r1, r0
	bne _080334FE
_080334DC:
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080334FE
	movs r0, #1
	mov sl, r0
_080334FE:
	mov r1, sl
	cmp r1, #0
	bne _08033524
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08033524
	b _08033668
_08033524:
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x38
	ldrb r1, [r4]
	mov r3, r8
	asrs r2, r3, #0x10
	adds r0, r1, #0
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0803354C
	adds r0, r3, #0
	lsls r0, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r5, #0
	movs r1, #0x94
	bl sub_8004E98
_0803354C:
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	ldr r1, [sp, #8]
	adds r1, #3
	cmp r0, r1
	beq _0803355C
	mov r2, sb
	strb r1, [r2, #0x1a]
_0803355C:
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #7
	bhi _080335AA
	lsls r0, r1, #2
	ldr r1, _08033578 @ =_0803357C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033574: .4byte gUnknown_030015C0
_08033578: .4byte _0803357C
_0803357C: @ jump table
	.4byte _0803359C @ case 0
	.4byte _080335D4 @ case 1
	.4byte _080335AE @ case 2
	.4byte _080335AE @ case 3
	.4byte _080335AE @ case 4
	.4byte _080335D4 @ case 5
	.4byte _080335AE @ case 6
	.4byte _080335A8 @ case 7
_0803359C:
	ldr r0, _080335A4 @ =0x0000FFFF
	strh r0, [r5, #0x32]
	b _080335AE
	.align 2, 0
_080335A4: .4byte 0x0000FFFF
_080335A8:
	movs r6, #1
_080335AA:
	cmp r6, #0
	bne _080335D4
_080335AE:
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _080335C4
	ldr r1, _080335C0 @ =sub_8007044
	b _080335C6
	.align 2, 0
_080335C0: .4byte sub_8007044
_080335C4:
	ldr r1, _080335D0 @ =sub_8006F98
_080335C6:
	adds r0, r5, #0
	bl sub_800D87C
	b _080335DC
	.align 2, 0
_080335D0: .4byte sub_8006F98
_080335D4:
	ldr r1, _0803365C @ =sub_8009BF0
	adds r0, r5, #0
	bl sub_800D87C
_080335DC:
	ldr r2, _08033660 @ =gUnknown_080CF470
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrh r3, [r0]
	adds r2, #2
	adds r1, r1, r2
	ldrh r4, [r1]
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0
	beq _08033612
	ldr r1, _08033664 @ =gUnknown_080CF468
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r3, r0
	asrs r0, r0, #4
	strh r0, [r5, #0x18]
_08033612:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0803362C
	ldr r1, _08033664 @ =gUnknown_080CF468
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	asrs r0, r0, #4
	strh r0, [r5, #0x1a]
_0803362C:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08033640
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
_08033640:
	mov r2, sl
	cmp r2, #0
	beq _0803367A
	ldrh r1, [r5, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	ldrh r1, [r5, #0x1a]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r5, #0x1a]
	b _0803367A
	.align 2, 0
_0803365C: .4byte sub_8009BF0
_08033660: .4byte gUnknown_080CF470
_08033664: .4byte gUnknown_080CF468
_08033668:
	adds r2, r7, #0
	adds r2, #0x38
	mov r3, r8
	asrs r0, r3, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0803367A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803368A
	b _0803344A
_0803368A:
	bl sub_8033778
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80336A0
sub_80336A0: @ 0x080336A0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r6, #0
	cmp r5, #7
	bhi _08033724
	lsls r0, r5, #2
	ldr r1, _080336B8 @ =_080336BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080336B8: .4byte _080336BC
_080336BC: @ jump table
	.4byte _080336E0 @ case 0
	.4byte _080336DC @ case 1
	.4byte _080336F2 @ case 2
	.4byte _080336EE @ case 3
	.4byte _08033700 @ case 4
	.4byte _08033700 @ case 5
	.4byte _08033700 @ case 6
	.4byte _08033700 @ case 7
_080336DC:
	movs r6, #0x80
	lsls r6, r6, #4
_080336E0:
	movs r0, #0x14
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #0x1a]
	b _08033724
_080336EE:
	movs r6, #0x80
	lsls r6, r6, #3
_080336F2:
	movs r0, #0xf
	bl sub_80C3224
	str r0, [r4]
	movs r0, #5
	strb r0, [r4, #0x1a]
	b _08033724
_08033700:
	movs r0, #0x10
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08033718
	movs r6, #0x80
	lsls r6, r6, #4
_08033718:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08033724
	movs r6, #0x80
	lsls r6, r6, #3
_08033724:
	ldr r1, _08033738 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _08033740
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _08033740
	ldr r0, _0803373C @ =0x000003E3
	b _08033744
	.align 2, 0
_08033738: .4byte gUnknown_030008A0
_0803373C: .4byte 0x000003E3
_08033740:
	movs r0, #0xdc
	lsls r0, r0, #2
_08033744:
	strh r0, [r4, #0xc]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033778
sub_8033778: @ 0x08033778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080337E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r0, [r7]
	mov sl, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _080337E4 @ =0x0300000C
	adds r6, r5, r3
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08033830
	movs r1, #0
	ldr r2, _080337E8 @ =gUnknown_030015C0
_080337CA:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _080337EC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080337F0
	.align 2, 0
_080337E0: .4byte gCurTask
_080337E4: .4byte 0x0300000C
_080337E8: .4byte gUnknown_030015C0
_080337EC:
	ldr r0, _08033828 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080337F0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _080337CA
	ldrb r0, [r7, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldr r0, _0803382C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080338BE
	.align 2, 0
_08033828: .4byte gUnknown_030008A0
_0803382C: .4byte gCurTask
_08033830:
	ldr r3, _08033898 @ =0x03000034
	adds r0, r5, r3
	ldrb r0, [r0]
	movs r4, #0
	cmp r0, #1
	bls _08033844
	movs r4, #0xa
	cmp r0, #3
	bhi _08033844
	movs r4, #5
_08033844:
	ldr r2, _0803389C @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_80BF44C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080338B8
	ldrb r2, [r6, #0x1a]
	adds r1, r4, #0
	adds r0, r1, #1
	cmp r2, r0
	beq _08033890
	adds r0, r1, #3
	cmp r2, r0
	bne _080338B0
	ldr r0, _080338A0 @ =gUnknown_030008A0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080338A4
_08033890:
	adds r0, r4, #2
	strb r0, [r6, #0x1a]
	b _080338B8
	.align 2, 0
_08033898: .4byte 0x03000034
_0803389C: .4byte gUnknown_03001D10
_080338A0: .4byte gUnknown_030008A0
_080338A4:
	strb r4, [r6, #0x1a]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	b _080338B8
_080338B0:
	adds r0, r1, #4
	cmp r2, r0
	bne _080338B8
	strb r4, [r6, #0x1a]
_080338B8:
	adds r0, r6, #0
	bl sub_80C033C
_080338BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable046
CreateEntity_Interactable046: @ 0x080338D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable047
CreateEntity_Interactable047: @ 0x080338FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable048
CreateEntity_Interactable048: @ 0x08033928
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable049
CreateEntity_Interactable049: @ 0x08033954
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable050
CreateEntity_Interactable050: @ 0x08033980
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #6
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable051
CreateEntity_Interactable051: @ 0x080339AC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #7
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable052
CreateEntity_Interactable052: @ 0x080339D8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable053
CreateEntity_Interactable053: @ 0x08033A04
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8033A30
sub_8033A30: @ 0x08033A30
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable054
CreateEntity_Interactable054: @ 0x08033A44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08033AEC @ =sub_8033AF8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08033AF0 @ =sub_8033D50
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r6, [r3, #4]
	strh r7, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033AA6
	movs r4, #1
_08033A8C:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _08033AA6
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08033A8C
_08033AA6:
	adds r0, r2, #1
	adds r2, r3, #0
	adds r2, #0x34
	strb r0, [r2]
	adds r3, #0xc
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	strh r0, [r3, #0x10]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r3, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	movs r1, #0
	ldr r0, _08033AF4 @ =gUnknown_030008A0
	adds r0, #0x21
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	blo _08033ADC
	movs r1, #1
_08033ADC:
	adds r0, r3, #0
	bl sub_8033C0C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033AEC: .4byte sub_8033AF8
_08033AF0: .4byte sub_8033D50
_08033AF4: .4byte gUnknown_030008A0

	thumb_func_start sub_8033AF8
sub_8033AF8: @ 0x08033AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08033B48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08033B4C @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _08033BEE
	mov r1, r8
	ldr r2, [r1]
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	movs r6, #0
_08033B3E:
	cmp r6, #0
	bne _08033B54
	ldr r0, _08033B50 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08033B5E
	.align 2, 0
_08033B48: .4byte gCurTask
_08033B4C: .4byte 0x0300000C
_08033B50: .4byte gUnknown_030008A0
_08033B54:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08033B5E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033C04 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	movs r7, #0x1c
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #8
	beq _08033BE8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08033BE8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sb
	ldr r1, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08033BE8
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0x98
	bl sub_8003DF0
	ldr r2, _08033C08 @ =gUnknown_030008A0
	mov r3, r8
	adds r3, #0x34
	ldrb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [r2, #0x24]
	ldr r0, [sp, #8]
	subs r0, #0x10
	strh r0, [r2, #0x28]
	mov r0, sl
	subs r0, #0xc
	strh r0, [r2, #0x2a]
	ldrb r0, [r2, #3]
	cmp r0, #4
	bls _08033BE8
	ldrb r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #4
	bne _08033BE8
	ldrb r1, [r3]
	movs r0, #7
	ands r0, r1
	ldrh r1, [r2, #0x28]
	movs r3, #0x2a
	ldrsh r2, [r2, r3]
	bl sub_80274F4
_08033BE8:
	adds r6, #1
	cmp r6, #1
	ble _08033B3E
_08033BEE:
	bl sub_8033C64
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C04: .4byte gUnknown_030015C0
_08033C08: .4byte gUnknown_030008A0

	thumb_func_start sub_8033C0C
sub_8033C0C: @ 0x08033C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #0xc
	cmp r5, #0
	bne _08033C1C
	movs r0, #0x12
_08033C1C:
	bl sub_80C3224
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _08033C60 @ =0x0000036B
	strh r0, [r4, #0xc]
	rsbs r0, r5, #0
	orrs r0, r5
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033C60: .4byte 0x0000036B

	thumb_func_start sub_8033C64
sub_8033C64: @ 0x08033C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r1, _08033CC0 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08033CC4
	ldrb r0, [r5, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08033D42
	.align 2, 0
_08033CC0: .4byte gCurTask
_08033CC4:
	ldr r1, _08033CF0 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	ldr r0, _08033CF4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08033D16
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08033CF8
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _08033D00
	.align 2, 0
_08033CF0: .4byte gUnknown_03001D10
_08033CF4: .4byte gUnknown_030008A0
_08033CF8:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_08033D00:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033D20
	movs r0, #1
	mov sl, r0
	b _08033D20
_08033D16:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08033D20:
	adds r0, r4, #0
	bl sub_80BF44C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08033D36
	ldrb r0, [r4, #0x1a]
	cmp r0, #1
	bne _08033D36
	movs r0, #2
	strb r0, [r4, #0x1a]
_08033D36:
	mov r1, sl
	cmp r1, #0
	bne _08033D42
	adds r0, r4, #0
	bl sub_80C033C
_08033D42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8033D50
sub_8033D50: @ 0x08033D50
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable055
CreateEntity_Interactable055: @ 0x08033D64
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _08033DE8 @ =gUnknown_030008A0
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08033DE0
	ldr r0, _08033DEC @ =sub_8033DF4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08033DF0 @ =sub_8034200
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r1, r1, r0
	strh r6, [r3, #4]
	strh r5, [r3, #6]
	str r4, [r3]
	ldrb r0, [r4]
	strb r0, [r3, #0xa]
	strb r7, [r3, #0xb]
	movs r2, #0
	lsls r6, r6, #8
	lsls r5, r5, #8
_08033DAE:
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r1, #0x10]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #0x28
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08033DAE
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0xc
	bl sub_80340B4
_08033DE0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033DE8: .4byte gUnknown_030008A0
_08033DEC: .4byte sub_8033DF4
_08033DF0: .4byte sub_8034200

	thumb_func_start sub_8033DF4
sub_8033DF4: @ 0x08033DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08033ED8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _08033EDC @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [r2]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r7, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov sb, r6
	bl sub_803414C
	ldr r0, _08033EE0 @ =gUnknown_030008A0
	mov sl, r0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08033EE4 @ =gUnknown_030015C0
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	mov r1, sl
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08033EF0
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	bne _08033E90
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08033EBA
_08033E90:
	ldr r3, [r4, #4]
	mov r0, sb
	ands r3, r0
	cmp r3, #0
	bne _08033EB2
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08033EBA
_08033EB2:
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _08033FAC
_08033EBA:
	ldr r1, _08033EE8 @ =0x00000207
	adds r0, r5, #0
	bl sub_8004E98
	ldr r1, _08033EEC @ =sub_8005BD4
	adds r0, r5, #0
	bl sub_800D87C
	ldr r1, _08033EE0 @ =gUnknown_030008A0
	movs r0, #5
	strb r0, [r1, #4]
	bl sub_803421C
	b _08033FAC
	.align 2, 0
_08033ED8: .4byte gCurTask
_08033EDC: .4byte 0x0300000C
_08033EE0: .4byte gUnknown_030008A0
_08033EE4: .4byte gUnknown_030015C0
_08033EE8: .4byte 0x00000207
_08033EEC: .4byte sub_8005BD4
_08033EF0:
	ldr r3, [r5, #4]
	ldr r0, _08033FBC @ =0x01000100
	ands r3, r0
	cmp r3, #0
	bne _08033F16
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08033F1E
_08033F16:
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _08033FAC
_08033F1E:
	movs r7, #0
	ldr r4, _08033FC0 @ =gUnknown_030008A0
	ldrb r0, [r4, #4]
	cmp r0, #5
	bne _08033F2A
	movs r7, #1
_08033F2A:
	ldr r1, _08033FC4 @ =0x00000207
	adds r0, r5, #0
	bl sub_8004E98
	ldr r6, _08033FC8 @ =sub_8005BD4
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800D87C
	ldrb r0, [r4, #3]
	cmp r0, #5
	bhi _08033F70
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033FCC @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08033F70
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_800D87C
_08033F70:
	ldr r4, _08033FC0 @ =gUnknown_030008A0
	movs r0, #5
	strb r0, [r4, #4]
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _08033FA8
	cmp r7, #0
	bne _08033FA8
	movs r3, #0x55
	ldrb r1, [r4, #6]
	lsls r1, r1, #1
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r1
	subs r3, r3, r0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	lsls r2, r0
	subs r3, r3, r2
	strb r3, [r4, #5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, _08033FD0 @ =sub_800303C
	str r0, [r1, #8]
_08033FA8:
	bl sub_803421C
_08033FAC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033FBC: .4byte 0x01000100
_08033FC0: .4byte gUnknown_030008A0
_08033FC4: .4byte 0x00000207
_08033FC8: .4byte sub_8005BD4
_08033FCC: .4byte gUnknown_030015C0
_08033FD0: .4byte sub_800303C

	thumb_func_start sub_8033FD4
sub_8033FD4: @ 0x08033FD4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08034010 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xc
	adds r2, r0, r1
	ldr r3, _08034014 @ =0x0300005C
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08034064
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r6, _08034018 @ =gUnknown_030015C0
_08034000:
	lsls r0, r3, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08034020
	ldr r0, _0803401C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803402A
	.align 2, 0
_08034010: .4byte gCurTask
_08034014: .4byte 0x0300005C
_08034018: .4byte gUnknown_030015C0
_0803401C: .4byte gUnknown_030008A0
_08034020:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803402A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r4, #0
	ldr r1, _0803405C @ =sub_8005E80
	bl sub_800D87C
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08034000
	ldr r1, [r7]
	ldrb r0, [r7, #0xa]
	strb r0, [r1]
	ldr r0, _08034060 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080340AA
	.align 2, 0
_0803405C: .4byte sub_8005E80
_08034060: .4byte gCurTask
_08034064:
	movs r3, #0
	adds r4, r1, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	ldr r5, _080340B0 @ =0x0000FFF0
_0803406E:
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _08034084
	strh r5, [r2, #0x12]
_08034084:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0x3f
	bhi _08034094
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r1, r0
	strb r0, [r2, #0x1c]
_08034094:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r2, #0x28
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803406E
	bl sub_8034250
_080340AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080340B0: .4byte 0x0000FFF0

	thumb_func_start sub_80340B4
sub_80340B4: @ 0x080340B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r6, #0
	movs r5, #0
	movs r0, #0xed
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r4, #0x28
	movs r0, #6
	bl sub_80C3224
	str r0, [r4]
	mov r0, sb
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, sl
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	mov r0, r8
	str r0, [r4, #0x20]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803414C
sub_803414C: @ 0x0803414C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080341AC @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r4, _080341B0 @ =0x0300000C
	add r4, r8
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080341B4
	ldrb r0, [r5, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _080341EA
	.align 2, 0
_080341AC: .4byte gCurTask
_080341B0: .4byte 0x0300000C
_080341B4:
	ldr r0, _080341F8 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r6, r1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r0, #4]
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r6, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	ldr r4, _080341FC @ =0x03000034
	add r4, r8
	strh r6, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C07E0
_080341EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F8: .4byte gUnknown_03001D10
_080341FC: .4byte 0x03000034

	thumb_func_start sub_8034200
sub_8034200: @ 0x08034200
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl sub_80C3304
	ldr r0, [r4, #0x34]
	bl sub_80C3304
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803421C
sub_803421C: @ 0x0803421C
	ldr r3, _08034240 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08034244 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08034248 @ =0x0300000C
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0x1a]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r1, [r3]
	ldr r0, _0803424C @ =sub_8033FD4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08034240: .4byte gCurTask
_08034244: .4byte 0x0300005C
_08034248: .4byte 0x0300000C
_0803424C: .4byte sub_8033FD4

	thumb_func_start sub_8034250
sub_8034250: @ 0x08034250
	push {r4, r5, lr}
	ldr r0, _080342A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _080342A8 @ =0x0300000C
	adds r4, r5, r0
	ldrh r2, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803429E
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0803429E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0803429E
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, _080342AC @ =0x03000034
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C07E0
_0803429E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080342A4: .4byte gCurTask
_080342A8: .4byte 0x0300000C
_080342AC: .4byte 0x03000034

	thumb_func_start CreateEntity_Interactable056
CreateEntity_Interactable056: @ 0x080342B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08034358 @ =sub_8034370
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803435C @ =sub_8034684
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r1, _08034360 @ =0x0300000C
	adds r0, r3, r1
	movs r7, #0
	mov sb, r7
	movs r1, #0
	mov sl, r1
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r7, r8
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r4, [r2, #0xb]
	ldrb r4, [r7, #7]
	movs r1, #1
	ands r1, r4
	ldr r7, _08034364 @ =0x03000034
	adds r4, r3, r7
	strb r1, [r4]
	mov r1, sl
	str r1, [r2, #0x38]
	ldr r2, _08034368 @ =0x03000036
	adds r1, r3, r2
	mov r7, sb
	strb r7, [r1]
	ldr r1, _0803436C @ =0x03000035
	adds r3, r3, r1
	mov r2, sb
	strb r2, [r3]
	mov r7, r8
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x10]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r6, r6, #8
	adds r1, r1, r6
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldrb r1, [r4]
	bl sub_8034698
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034358: .4byte sub_8034370
_0803435C: .4byte sub_8034684
_08034360: .4byte 0x0300000C
_08034364: .4byte 0x03000034
_08034368: .4byte 0x03000036
_0803436C: .4byte 0x03000035

	thumb_func_start sub_8034370
sub_8034370: @ 0x08034370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080343D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r2, [r6]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldr r0, _080343DC @ =0x03000036
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343B4
	subs r0, #1
	strb r0, [r1]
_080343B4:
	ldr r0, _080343E0 @ =0x03000035
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343C0
	b _080344EA
_080343C0:
	movs r7, #0
	mov sb, r1
_080343C4:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343CE
	b _080344DE
_080343CE:
	cmp r7, #0
	bne _080343E8
	ldr r0, _080343E4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _080343F2
	.align 2, 0
_080343D8: .4byte gCurTask
_080343DC: .4byte 0x03000036
_080343E0: .4byte 0x03000035
_080343E4: .4byte gUnknown_030008A0
_080343E8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080343F2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08034484 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08034416
	cmp r1, #8
	beq _08034416
	cmp r1, #0x10
	bne _080344DE
_08034416:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r2, r0, #0
	cmp r2, #0
	bne _080344DE
	ldr r1, [r4]
	ldr r0, _08034488 @ =sub_8008A8C
	cmp r1, r0
	beq _080344DE
	ldr r0, _0803448C @ =sub_800ED80
	cmp r1, r0
	beq _080344DE
	ldr r0, [r6, #0x38]
	cmp r0, r4
	bne _08034440
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _080344DE
_08034440:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _0803444C
	ldrh r0, [r5, #0x12]
	adds r0, #0x10
	strh r0, [r5, #0x12]
_0803444C:
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080344D2
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0803446A
	movs r0, #1
	strb r0, [r5, #0x1a]
_0803446A:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034490
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _080344A0
	.align 2, 0
_08034484: .4byte gUnknown_030015C0
_08034488: .4byte sub_8008A8C
_0803448C: .4byte sub_800ED80
_08034490:
	mov r0, r8
	subs r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080344A0:
	str r0, [r4, #4]
	mov r0, sl
	adds r0, #0x14
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	ldr r1, _080344FC @ =sub_800BEE8
	bl sub_800D87C
	str r4, [r6, #0x38]
	adds r1, r6, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa9
	bl sub_8004E98
	ldr r0, _08034500 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034504 @ =sub_8034508
	str r0, [r1, #8]
_080344D2:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _080344DE
	ldrh r0, [r5, #0x12]
	subs r0, #0x10
	strh r0, [r5, #0x12]
_080344DE:
	adds r7, #1
	cmp r7, #1
	bgt _080344E6
	b _080343C4
_080344E6:
	bl sub_80345EC
_080344EA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344FC: .4byte sub_800BEE8
_08034500: .4byte gCurTask
_08034504: .4byte sub_8034508

	thumb_func_start sub_8034508
sub_8034508: @ 0x08034508
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _08034550 @ =gUnknown_080CF584
	mov r0, sp
	movs r2, #0xb
	bl sub_80CA3B0
	ldr r0, _08034554 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r7, [r5]
	ldr r4, [r5, #0x38]
	bl sub_80345EC
	ldr r1, [r4]
	ldr r0, _08034558 @ =sub_800EAA8
	cmp r1, r0
	bne _08034542
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08034560
_08034542:
	ldr r3, _0803455C @ =0x03000035
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	b _080345CA
	.align 2, 0
_08034550: .4byte gUnknown_080CF584
_08034554: .4byte gCurTask
_08034558: .4byte sub_800EAA8
_0803455C: .4byte 0x03000035
_08034560:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r1, r0
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08034584 @ =0x03000034
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034588
	adds r0, r2, #0
	adds r0, #0x10
	b _0803458C
	.align 2, 0
_08034584: .4byte 0x03000034
_08034588:
	adds r0, r2, #0
	subs r0, #0x10
_0803458C:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	adds r2, r5, #0
	adds r2, #0x36
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	adds r0, #0x14
	adds r0, r1, r0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080345D0
	ldr r1, _080345DC @ =sub_8006DB8
	adds r0, r4, #0
	bl sub_800D87C
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, _080345E0 @ =0x0000F880
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x35
	strb r1, [r0]
	ldr r0, _080345E4 @ =gCurTask
_080345CA:
	ldr r1, [r0]
	ldr r0, _080345E8 @ =sub_8034370
	str r0, [r1, #8]
_080345D0:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080345DC: .4byte sub_8006DB8
_080345E0: .4byte 0x0000F880
_080345E4: .4byte gCurTask
_080345E8: .4byte sub_8034370

	thumb_func_start sub_80345EC
sub_80345EC: @ 0x080345EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08034644 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08034648
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08034672
	.align 2, 0
_08034644: .4byte gCurTask
_08034648:
	ldr r1, _08034680 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803466C
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	bne _0803466C
	movs r0, #0
	strb r0, [r5, #0x1a]
_0803466C:
	adds r0, r5, #0
	bl sub_80C033C
_08034672:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034680: .4byte gUnknown_03001D10

	thumb_func_start sub_8034684
sub_8034684: @ 0x08034684
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8034698
sub_8034698: @ 0x08034698
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0xc
	bl sub_80C3224
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	ldr r0, _080346E8 @ =0x00000369
	strh r0, [r5, #0xc]
	strb r2, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	cmp r4, #0
	bne _080346DC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_080346DC:
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080346E8: .4byte 0x00000369

	thumb_func_start CreateEntity_Interactable057
CreateEntity_Interactable057: @ 0x080346EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080347B8 @ =sub_80347C4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080347BC @ =sub_8035158
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	movs r1, #0
	mov r0, ip
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r7, [r0]
	ldrb r0, [r7]
	mov r2, ip
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	strh r1, [r2, #8]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r2, #0x34]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0x36]
	movs r2, #0
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08034770
	movs r3, #1
_08034756:
	lsls r0, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _08034770
	ldrb r0, [r7, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08034756
_08034770:
	mov r0, ip
	adds r0, #0x39
	strb r2, [r0]
	ldrb r0, [r7, #7]
	lsrs r0, r0, #7
	mov r4, ip
	adds r4, #0x38
	strb r0, [r4]
	ldrb r0, [r7, #3]
	mov r1, ip
	adds r1, #0x3a
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xc
	ldr r3, _080347C0 @ =gUnknown_03001D10
	ldr r2, [r3]
	mov r5, ip
	ldrh r1, [r5, #0x34]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r5, #0x36]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldrb r1, [r4]
	bl sub_803516C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347B8: .4byte sub_80347C4
_080347BC: .4byte sub_8035158
_080347C0: .4byte gUnknown_03001D10

	thumb_func_start sub_80347C4
sub_80347C4: @ 0x080347C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r0, _080347F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sb, r0
	movs r1, #0
_080347E2:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _080347F8
	ldr r0, _080347F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08034802
	.align 2, 0
_080347F0: .4byte gCurTask
_080347F4: .4byte gUnknown_030008A0
_080347F8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08034802:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803486C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _08034900
	ldr r0, _08034870 @ =gUnknown_030008A0
	ldrb r0, [r0, #4]
	cmp r0, #6
	beq _08034900
	cmp r0, #7
	beq _08034900
	cmp r0, #8
	beq _08034900
	movs r2, #0x34
	ldrsh r1, [r7, r2]
	movs r3, #0x36
	ldrsh r2, [r7, r3]
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, sb
	movs r3, #0
	bl sub_8020874
	adds r2, r0, #0
	cmp r2, #0
	beq _08034900
	movs r6, #0x80
	lsls r6, r6, #9
	adds r3, r2, #0
	ands r3, r6
	cmp r3, #0
	beq _08034882
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034874
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	b _080348E4
	.align 2, 0
_0803486C: .4byte gUnknown_030015C0
_08034870: .4byte gUnknown_030008A0
_08034874:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	strh r5, [r4, #0x18]
	b _080348EA
_08034882:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080348CE
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _080348C0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r6
	cmp r0, #0
	beq _080348B4
	ldr r2, _080348B0 @ =0xFFFFFF00
	adds r0, r1, r2
	b _080348BA
	.align 2, 0
_080348B0: .4byte 0xFFFFFF00
_080348B4:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
_080348BA:
	str r0, [r4, #0x14]
	movs r0, #0
	b _080348E8
_080348C0:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	strh r3, [r4, #0x18]
	b _080348EA
_080348CE:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080348EA
_080348E4:
	movs r0, #0xfe
	lsls r0, r0, #8
_080348E8:
	strh r0, [r4, #0x1a]
_080348EA:
	adds r0, r4, #0
	bl sub_8034A20
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_8034C60
	adds r0, r4, #0
	bl sub_800BB34
	b _080349E2
_08034900:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08034916
	cmp r1, #8
	beq _08034916
	cmp r1, #0x10
	bne _080349E2
_08034916:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _080349E2
	movs r2, #0x34
	ldrsh r1, [r7, r2]
	movs r3, #0x36
	ldrsh r2, [r7, r3]
	str r5, [sp]
	mov r0, sb
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0803494E
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	b _08034980
_0803494E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08034980
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _08034974
	ldr r3, _08034970 @ =0xFFFFFF00
	b _08034978
	.align 2, 0
_08034970: .4byte 0xFFFFFF00
_08034974:
	movs r3, #0x80
	lsls r3, r3, #1
_08034978:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_08034980:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080349E2
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _080349BC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080349BC
	ldr r1, _080349B8 @ =0xFFFFFF00
	adds r0, r3, r1
	b _080349D8
	.align 2, 0
_080349B8: .4byte 0xFFFFFF00
_080349BC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080349E2
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080349E2
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_080349D8:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_080349E2:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080349F2
	b _080347E2
_080349F2:
	adds r0, r7, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034A04
	ldr r0, _08034A18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034A1C @ =sub_8034E44
	str r0, [r1, #8]
_08034A04:
	bl sub_8034D74
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034A18: .4byte gCurTask
_08034A1C: .4byte sub_8034E44

	thumb_func_start sub_8034A20
sub_8034A20: @ 0x08034A20
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08034A32
	b _08034BC8
_08034A32:
	ldrh r0, [r2, #0x30]
	subs r0, #0xa6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5d
	bls _08034A40
	b _08034C2A
_08034A40:
	lsls r0, r0, #2
	ldr r1, _08034A4C @ =_08034A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034A4C: .4byte _08034A50
_08034A50: @ jump table
	.4byte _08034C38 @ case 0
	.4byte _08034C2A @ case 1
	.4byte _08034C38 @ case 2
	.4byte _08034C2A @ case 3
	.4byte _08034C2A @ case 4
	.4byte _08034C2A @ case 5
	.4byte _08034C2A @ case 6
	.4byte _08034C2A @ case 7
	.4byte _08034C2A @ case 8
	.4byte _08034C2A @ case 9
	.4byte _08034C2A @ case 10
	.4byte _08034C2A @ case 11
	.4byte _08034C2A @ case 12
	.4byte _08034C2A @ case 13
	.4byte _08034C2A @ case 14
	.4byte _08034C2A @ case 15
	.4byte _08034C2A @ case 16
	.4byte _08034C2A @ case 17
	.4byte _08034C38 @ case 18
	.4byte _08034C2A @ case 19
	.4byte _08034C2A @ case 20
	.4byte _08034C2A @ case 21
	.4byte _08034C2A @ case 22
	.4byte _08034C2A @ case 23
	.4byte _08034C2A @ case 24
	.4byte _08034C2A @ case 25
	.4byte _08034C2A @ case 26
	.4byte _08034C2A @ case 27
	.4byte _08034C2A @ case 28
	.4byte _08034C2A @ case 29
	.4byte _08034C2A @ case 30
	.4byte _08034C2A @ case 31
	.4byte _08034C2A @ case 32
	.4byte _08034C2A @ case 33
	.4byte _08034C2A @ case 34
	.4byte _08034C2A @ case 35
	.4byte _08034C2A @ case 36
	.4byte _08034C2A @ case 37
	.4byte _08034C38 @ case 38
	.4byte _08034C2A @ case 39
	.4byte _08034C2A @ case 40
	.4byte _08034C2A @ case 41
	.4byte _08034C2A @ case 42
	.4byte _08034C2A @ case 43
	.4byte _08034C2A @ case 44
	.4byte _08034C2A @ case 45
	.4byte _08034C2A @ case 46
	.4byte _08034C2A @ case 47
	.4byte _08034C2A @ case 48
	.4byte _08034C2A @ case 49
	.4byte _08034C2A @ case 50
	.4byte _08034C2A @ case 51
	.4byte _08034C2A @ case 52
	.4byte _08034C2A @ case 53
	.4byte _08034C2A @ case 54
	.4byte _08034C2A @ case 55
	.4byte _08034C2A @ case 56
	.4byte _08034C2A @ case 57
	.4byte _08034C2A @ case 58
	.4byte _08034C2A @ case 59
	.4byte _08034C4A @ case 60
	.4byte _08034C4A @ case 61
	.4byte _08034C2A @ case 62
	.4byte _08034C4A @ case 63
	.4byte _08034C38 @ case 64
	.4byte _08034C2A @ case 65
	.4byte _08034C2A @ case 66
	.4byte _08034C2A @ case 67
	.4byte _08034C2A @ case 68
	.4byte _08034C2A @ case 69
	.4byte _08034C2A @ case 70
	.4byte _08034C2A @ case 71
	.4byte _08034C2A @ case 72
	.4byte _08034C2A @ case 73
	.4byte _08034C2A @ case 74
	.4byte _08034C2A @ case 75
	.4byte _08034C2A @ case 76
	.4byte _08034C2A @ case 77
	.4byte _08034C2A @ case 78
	.4byte _08034C2A @ case 79
	.4byte _08034C2A @ case 80
	.4byte _08034C2A @ case 81
	.4byte _08034C2A @ case 82
	.4byte _08034C2A @ case 83
	.4byte _08034C2A @ case 84
	.4byte _08034C2A @ case 85
	.4byte _08034C2A @ case 86
	.4byte _08034C2A @ case 87
	.4byte _08034C38 @ case 88
	.4byte _08034C4A @ case 89
	.4byte _08034C2A @ case 90
	.4byte _08034C2A @ case 91
	.4byte _08034C2A @ case 92
	.4byte _08034C38 @ case 93
_08034BC8:
	ldrh r1, [r2, #0x34]
	ldr r0, _08034BE4 @ =0x0000020F
	cmp r1, r0
	bgt _08034BF2
	subs r0, #1
	cmp r1, r0
	bge _08034C4A
	cmp r1, #0x2a
	beq _08034C38
	cmp r1, #0x2a
	bgt _08034BE8
	cmp r1, #0x26
	beq _08034C24
	b _08034C2A
	.align 2, 0
_08034BE4: .4byte 0x0000020F
_08034BE8:
	cmp r1, #0xcd
	beq _08034C38
	movs r0, #0xb8
	lsls r0, r0, #1
	b _08034C18
_08034BF2:
	ldr r0, _08034C0C @ =0x000002B1
	cmp r1, r0
	beq _08034C38
	cmp r1, r0
	bgt _08034C10
	subs r0, #0x9e
	cmp r1, r0
	beq _08034C38
	adds r0, #0x27
	cmp r1, r0
	beq _08034C4A
	b _08034C2A
	.align 2, 0
_08034C0C: .4byte 0x000002B1
_08034C10:
	ldr r0, _08034C20 @ =0x000002B2
	cmp r1, r0
	beq _08034C4A
	adds r0, #5
_08034C18:
	cmp r1, r0
	beq _08034C38
	b _08034C2A
	.align 2, 0
_08034C20: .4byte 0x000002B2
_08034C24:
	ldrh r0, [r2, #0x36]
	cmp r0, #2
	bne _08034C38
_08034C2A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0xd5
	bne _08034C3C
	ldrh r0, [r2, #0x36]
	cmp r0, #1
	bne _08034C3C
_08034C38:
	movs r0, #2
	b _08034C5A
_08034C3C:
	ldr r1, [r2]
	ldr r0, _08034C50 @ =sub_801D73C
	cmp r1, r0
	beq _08034C4A
	ldr r0, _08034C54 @ =sub_801DF18
	cmp r1, r0
	bne _08034C58
_08034C4A:
	movs r0, #3
	b _08034C5A
	.align 2, 0
_08034C50: .4byte sub_801D73C
_08034C54: .4byte sub_801DF18
_08034C58:
	movs r0, #1
_08034C5A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8034C60
sub_8034C60: @ 0x08034C60
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r1, _08034C88 @ =gCurTask
	ldr r1, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r2, _08034C8C @ =0x03000039
	adds r1, r4, r2
	ldrb r1, [r1]
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08034C94
	ldr r0, _08034C90 @ =0x0000025B
	bl sub_8003DF0
	b _08034CF8
	.align 2, 0
_08034C88: .4byte gCurTask
_08034C8C: .4byte 0x03000039
_08034C90: .4byte 0x0000025B
_08034C94:
	subs r0, r2, r1
	lsls r0, r0, #0x10
	ldr r2, _08034CC4 @ =0x0300003A
	adds r1, r4, r2
	ldrb r2, [r1]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bgt _08034CD4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08034CC8 @ =0x0000024A
	bl sub_8003DF0
	ldr r1, _08034CCC @ =0x0300000C
	adds r0, r4, r1
	ldr r2, _08034CD0 @ =0x03000038
	adds r1, r4, r2
	ldrb r1, [r1]
	movs r2, #1
	bl sub_80351A8
	b _08034CF8
	.align 2, 0
_08034CC4: .4byte 0x0300003A
_08034CC8: .4byte 0x0000024A
_08034CCC: .4byte 0x0300000C
_08034CD0: .4byte 0x03000038
_08034CD4:
	subs r0, r2, r3
	strb r0, [r1]
	ldr r0, _08034D00 @ =0x0000024B
	bl sub_8003DF0
	ldr r1, _08034D04 @ =0x0300000C
	adds r0, r4, r1
	ldr r2, _08034D08 @ =0x03000038
	adds r1, r4, r2
	ldrb r1, [r1]
	ldrb r2, [r5, #8]
	bl sub_80351A8
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08034CF8
	adds r0, #1
	strh r0, [r5, #8]
_08034CF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034D00: .4byte 0x0000024B
_08034D04: .4byte 0x0300000C
_08034D08: .4byte 0x03000038

	thumb_func_start sub_8034D0C
sub_8034D0C: @ 0x08034D0C
	push {r4, r5, r6, lr}
	sub sp, #0x48
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r1, _08034D2C @ =gUnknown_080CF590
	mov r0, sp
	movs r2, #0x48
	bl sub_80CA3B0
	ldr r1, _08034D30 @ =gUnknown_030008A0
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08034D34
	movs r2, #0
	b _08034D3E
	.align 2, 0
_08034D2C: .4byte gUnknown_080CF590
_08034D30: .4byte gUnknown_030008A0
_08034D34:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _08034D3E
	adds r2, r0, #0
_08034D3E:
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r4, r0
	add r0, sp, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_80C3224
	str r0, [r5]
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	add sp, #0x48
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034D74
sub_8034D74: @ 0x08034D74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08034DDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08034DE0 @ =gUnknown_03001D10
	ldr r2, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r6, #0x10]
	ldr r2, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _08034E2C
	movs r1, #0
	ldr r2, _08034DE4 @ =gUnknown_030015C0
_08034DC8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08034DE8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08034DEC
	.align 2, 0
_08034DDC: .4byte gCurTask
_08034DE0: .4byte gUnknown_03001D10
_08034DE4: .4byte gUnknown_030015C0
_08034DE8:
	ldr r0, _08034E24 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08034DEC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08034DC8
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08034E28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08034E38
	.align 2, 0
_08034E24: .4byte gUnknown_030008A0
_08034E28: .4byte gCurTask
_08034E2C:
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
_08034E38:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8034E44
sub_8034E44: @ 0x08034E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08034E7C @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov ip, r0
	ldr r4, _08034E80 @ =0x0300000C
	adds r2, r1, r4
	adds r4, #0x2e
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034E84
	cmp r0, #0x28
	beq _08034F60
	adds r0, r4, #0
	adds r0, r0, r1
	mov sb, r0
	b _08034F6E
	.align 2, 0
_08034E7C: .4byte gCurTask
_08034E80: .4byte 0x0300000C
_08034E84:
	movs r4, #0
	ldr r0, _08034F40 @ =0x03000032
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08034F44 @ =0x03000033
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08034F48 @ =0x0300003A
	adds r0, r0, r1
	mov sb, r0
	ldr r7, _08034F4C @ =gUnknown_030015C0
	movs r6, #0
	movs r3, #0x21
	rsbs r3, r3, #0
_08034EA0:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r0, r7
	ldr r0, [r1, #0x6c]
	cmp r0, r2
	bne _08034EBA
	str r6, [r1, #0x6c]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
_08034EBA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08034EA0
	ldrb r3, [r5, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	mov r2, ip
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	movs r4, #0
	ldr r6, _08034F50 @ =gUnknown_03006868
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r1, #0x10
_08034F08:
	ldr r1, [r6]
	ldr r0, _08034F54 @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _08034F58 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r6]
	ldr r0, _08034F5C @ =0x000001FF
	ands r3, r0
	movs r0, #0x1e
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_8034F88
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08034F08
	b _08034F6E
	.align 2, 0
_08034F40: .4byte 0x03000032
_08034F44: .4byte 0x03000033
_08034F48: .4byte 0x0300003A
_08034F4C: .4byte gUnknown_030015C0
_08034F50: .4byte gUnknown_03006868
_08034F54: .4byte 0x00196225
_08034F58: .4byte 0x3C6EF35F
_08034F5C: .4byte 0x000001FF
_08034F60:
	ldrb r0, [r5, #0xa]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08034F76
_08034F6E:
	mov r4, sb
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08034F76:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034F88
sub_8034F88: @ 0x08034F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r5, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _08035028 @ =gUnknown_080CF638
	add r0, sp, #4
	movs r2, #0x48
	bl sub_80CA3B0
	ldr r0, _0803502C @ =sub_80350EC
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08035030 @ =0x03000010
	adds r7, r1, r0
	mov r1, ip
	strb r5, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0xc]
	ldr r2, _08035034 @ =gUnknown_082B48B4
	ldr r1, _08035038 @ =0x000003FF
	ands r1, r6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r1, _0803503C @ =gUnknown_030008A0
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _08035040
	movs r2, #0
	b _0803504A
	.align 2, 0
_08035028: .4byte gUnknown_080CF638
_0803502C: .4byte sub_80350EC
_08035030: .4byte 0x03000010
_08035034: .4byte gUnknown_082B48B4
_08035038: .4byte 0x000003FF
_0803503C: .4byte gUnknown_030008A0
_08035040:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _0803504A
	adds r2, r0, #0
_0803504A:
	movs r3, #1
	mov r0, r8
	ands r3, r0
	cmp r3, #0
	bne _0803505C
	ldr r1, [sp, #0x74]
	str r1, [r7]
	lsls r2, r2, #0x10
	b _08035074
_0803505C:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	add r0, sp, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x74]
	adds r0, r1, r0
	str r0, [r7]
_08035074:
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrh r0, [r0]
	movs r3, #0
	movs r2, #0
	strh r0, [r7, #0xc]
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	str r2, [r7, #8]
	mov r2, r8
	cmp r2, #1
	bls _080350C2
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r7, #8]
_080350C2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	mov r1, ip
	str r0, [r1]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r1, #4]
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80350EC
sub_80350EC: @ 0x080350EC
	push {r4, lr}
	ldr r2, _08035114 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08035118
	ldr r0, [r2]
	bl TaskDestroy
	b _0803514E
	.align 2, 0
_08035114: .4byte gCurTask
_08035118:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _08035154 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80C033C
_0803514E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035154: .4byte gUnknown_03001D10

	thumb_func_start sub_8035158
sub_8035158: @ 0x08035158
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803516C
sub_803516C: @ 0x0803516C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8034D0C
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80351A8
sub_80351A8: @ 0x080351A8
	push {r4, r5, r6, lr}
	sub sp, #0x60
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r1, _080351CC @ =gUnknown_080CF5D8
	mov r0, sp
	movs r2, #0x60
	bl sub_80CA3B0
	ldr r1, _080351D0 @ =gUnknown_030008A0
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _080351D4
	movs r2, #0
	b _080351DE
	.align 2, 0
_080351CC: .4byte gUnknown_080CF5D8
_080351D0: .4byte gUnknown_030008A0
_080351D4:
	ldrb r0, [r1, #9]
	movs r2, #0
	cmp r0, #6
	beq _080351DE
	adds r2, r0, #0
_080351DE:
	lsls r1, r5, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	lsls r0, r2, #4
	adds r1, r1, r0
	mov r2, sp
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	add sp, #0x60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8035204
sub_8035204: @ 0x08035204
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x30]
	mov sl, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _0803534C @ =sub_8035C24
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035350 @ =sub_8035BC4
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _08035354 @ =0x0300000C
	adds r1, r4, r1
	str r1, [sp, #8]
	ldr r2, _08035358 @ =0x03000044
	adds r2, r4, r2
	str r2, [sp, #0xc]
	movs r1, #0
	movs r6, #0
	mov r3, r8
	strh r3, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #0xa]
	mov r2, sl
	strb r2, [r5, #0xb]
	ldr r3, _0803535C @ =0x03000070
	adds r3, r3, r4
	mov sl, r3
	mov r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r3]
	strh r6, [r5, #8]
	ldr r2, _08035360 @ =0x03000074
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08035364 @ =0x03000075
	adds r0, r4, r3
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strh r6, [r0]
	adds r3, #5
	adds r0, r4, r3
	strh r6, [r0]
	adds r2, #0xc
	adds r0, r4, r2
	str r6, [r0]
	adds r3, #0xe
	adds r0, r4, r3
	str r6, [r0]
	adds r2, #8
	adds r0, r4, r2
	str r6, [r0]
	adds r3, #8
	adds r0, r4, r3
	str r6, [r0]
	subs r2, #0x16
	adds r0, r4, r2
	strb r1, [r0]
	subs r3, #0x19
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	str r0, [r5, #0x7c]
	adds r2, #0xa
	adds r2, r2, r4
	mov r8, r2
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	mov r3, sb
	lsls r3, r3, #8
	mov sb, r3
	add r2, sb
	mov r0, r8
	str r2, [r0]
	ldr r1, [r5, #0x7c]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	bl sub_804DC38
	ldr r2, _08035368 @ =0x0300006E
	adds r1, r4, r2
	strh r0, [r1]
	ldr r3, _0803536C @ =0x0300006C
	adds r0, r4, r3
	strh r6, [r0]
	mov r0, sp
	ldrb r1, [r0, #4]
	mov r0, sl
	strb r1, [r0]
	ldrb r0, [r7, #7]
	adds r3, #5
	adds r2, r4, r3
	strb r0, [r2]
	ldr r0, _08035370 @ =0x03000072
	adds r4, r4, r0
	movs r0, #4
	strb r0, [r4]
	ldr r1, [r5, #0x7c]
	ldr r3, [sp, #8]
	strh r1, [r3, #0x10]
	mov r3, r8
	ldr r0, [r3]
	ldr r3, [sp, #8]
	strh r0, [r3, #0x12]
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x10]
	ldrh r0, [r3, #0x12]
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_803598C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803534C: .4byte sub_8035C24
_08035350: .4byte sub_8035BC4
_08035354: .4byte 0x0300000C
_08035358: .4byte 0x03000044
_0803535C: .4byte 0x03000070
_08035360: .4byte 0x03000074
_08035364: .4byte 0x03000075
_08035368: .4byte 0x0300006E
_0803536C: .4byte 0x0300006C
_08035370: .4byte 0x03000072

	thumb_func_start sub_8035374
sub_8035374: @ 0x08035374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080353A8 @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	mov r8, r0
	mov r7, r8
	adds r7, #1
	movs r0, #1
	ands r7, r0
	ldr r0, _080353AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_08035398:
	cmp r5, #0
	beq _080353B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	b _080353BA
	.align 2, 0
_080353A8: .4byte gUnknown_030008A0
_080353AC: .4byte gCurTask
_080353B0:
	mov r1, r8
	lsls r0, r1, #2
	add r0, r8
	lsls r0, r0, #2
	add r0, r8
_080353BA:
	lsls r0, r0, #4
	ldr r1, _08035414 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080353D6
	cmp r1, #8
	beq _080353D6
	cmp r1, #0x10
	bne _08035464
_080353D6:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08035464
	adds r0, r6, #0
	adds r0, #0x74
	adds r0, r0, r5
	ldrb r2, [r0]
	cmp r2, #1
	bne _08035430
	adds r0, r6, #0
	adds r0, #0x71
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bls _08035426
	adds r0, r6, #0
	adds r0, #0x76
	adds r0, r0, r5
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08035418
	ldr r0, [r4, #4]
	orrs r0, r2
	b _08035424
	.align 2, 0
_08035414: .4byte gUnknown_030015C0
_08035418:
	cmp r1, #1
	bne _08035426
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08035424:
	str r0, [r4, #4]
_08035426:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8035480
	b _08035438
_08035430:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8035540
_08035438:
	lsls r1, r5, #1
	adds r0, r6, #0
	adds r0, #0x78
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803545C
	subs r1, r0, #1
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bhi _0803545C
	movs r3, #0
	strh r1, [r2]
	cmp r0, #0x1e
	bls _08035464
	strh r3, [r2]
	b _08035464
_0803545C:
	ldr r0, [r4, #4]
	ldr r1, _0803547C @ =0xF7FBFFFF
	ands r0, r1
	str r0, [r4, #4]
_08035464:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08035398
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803547C: .4byte 0xF7FBFFFF

	thumb_func_start sub_8035480
sub_8035480: @ 0x08035480
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0803551C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08035520 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r3, _08035524 @ =0x03000080
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	lsls r1, r6, #1
	ldr r7, _08035528 @ =0x03000078
	adds r0, r4, r7
	adds r0, r0, r1
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _08035530
	lsls r1, r6, #3
	adds r3, #4
	adds r0, r4, r3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0
	strh r0, [r5, #0x18]
	adds r7, #0x10
	adds r0, r4, r7
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #0x1a]
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	bl sub_8020700
	cmp r0, #0
	bne _08035530
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	bne _08035530
	mov r3, sb
	strh r1, [r3]
	subs r7, #0x14
	adds r0, r4, r7
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, _0803552C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #0
	b _08035532
	.align 2, 0
_0803551C: .4byte gCurTask
_08035520: .4byte 0x0300000C
_08035524: .4byte 0x03000080
_08035528: .4byte 0x03000078
_0803552C: .4byte 0xFFFBFFFF
_08035530:
	movs r0, #1
_08035532:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8035540
sub_8035540: @ 0x08035540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #9
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _080355B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r2, _080355B8 @ =0x0300000C
	adds r0, r6, r2
	ldr r1, [r5, #0x7c]
	lsls r1, r1, #8
	ldr r3, _080355BC @ =0x03000080
	adds r2, r6, r3
	ldr r2, [r2]
	lsls r2, r2, #8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	mov r3, sb
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _0803558A
	b _0803587C
_0803558A:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0803559C
	adds r0, r4, #0
	bl sub_8016F28
_0803559C:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080355C4
	ldr r0, _080355C0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _08035892
	.align 2, 0
_080355B4: .4byte gCurTask
_080355B8: .4byte 0x0300000C
_080355BC: .4byte 0x03000080
_080355C0: .4byte 0xFFFBFFFF
_080355C4:
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	mov sb, r0
	ldr r1, _080355F4 @ =0x03000071
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	subs r0, #1
	ldr r3, _080355F8 @ =0x03000076
	adds r2, r6, r3
	cmp r0, #9
	bls _080355EA
	b _0803582A
_080355EA:
	lsls r0, r0, #2
	ldr r1, _080355FC @ =_08035600
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080355F4: .4byte 0x03000071
_080355F8: .4byte 0x03000076
_080355FC: .4byte _08035600
_08035600: @ jump table
	.4byte _08035628 @ case 0
	.4byte _0803565C @ case 1
	.4byte _0803582A @ case 2
	.4byte _0803568C @ case 3
	.4byte _08035710 @ case 4
	.4byte _08035758 @ case 5
	.4byte _0803582A @ case 6
	.4byte _080356CC @ case 7
	.4byte _080357A0 @ case 8
	.4byte _080357E8 @ case 9
_08035628:
	ldr r0, _08035654 @ =0x0000FFFF
	strh r0, [r4, #0x32]
	ldr r1, _08035658 @ =sub_80071A8
	adds r0, r4, #0
	bl sub_800D87C
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r1, r8
	lsls r0, r1
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x40
	b _0803567E
	.align 2, 0
_08035654: .4byte 0x0000FFFF
_08035658: .4byte sub_80071A8
_0803565C:
	ldr r1, _08035688 @ =sub_8007240
	adds r0, r4, #0
	bl sub_800D87C
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r2, r8
	lsls r0, r2
	movs r1, #0
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xc0
_0803567E:
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x76
	b _0803582A
	.align 2, 0
_08035688: .4byte sub_8007240
_0803568C:
	ldr r1, _080356C8 @ =sub_8007110
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x80
	b _08035828
	.align 2, 0
_080356C8: .4byte sub_8007110
_080356CC:
	ldr r1, _0803570C @ =sub_8007110
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x76
	adds r1, r3, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	mov r1, r8
	lsls r0, r1
	movs r1, #0
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r2, r3, #0
	b _0803582A
	.align 2, 0
_0803570C: .4byte sub_8007110
_08035710:
	ldr r1, _08035754 @ =sub_8007110
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x60
	b _08035828
	.align 2, 0
_08035754: .4byte sub_8007110
_08035758:
	ldr r1, _0803579C @ =sub_8007240
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xa0
	b _08035828
	.align 2, 0
_0803579C: .4byte sub_8007240
_080357A0:
	ldr r1, _080357E4 @ =sub_8007110
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x20
	b _08035828
	.align 2, 0
_080357E4: .4byte sub_8007110
_080357E8:
	ldr r1, _08035888 @ =sub_8007240
	adds r0, r4, #0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x76
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x72
	ldrb r0, [r1]
	mov r3, r8
	lsls r0, r3
	strh r0, [r4, #0x1a]
	ldrb r0, [r1]
	lsls r0, r3
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0xe0
_08035828:
	strb r0, [r1]
_0803582A:
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803583C
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
_0803583C:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _0803588C @ =0x00000115
	adds r0, r4, #0
	bl sub_8004E98
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x84
	adds r0, r0, r2
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x88
	adds r0, r0, r2
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	lsls r1, r7, #1
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r0, r1
	movs r1, #0x1e
	strh r1, [r0]
_0803587C:
	mov r3, sb
	cmp r3, #0
	bne _08035890
	movs r0, #0
	b _08035892
	.align 2, 0
_08035888: .4byte sub_8007240
_0803588C: .4byte 0x00000115
_08035890:
	movs r0, #1
_08035892:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80358A0
sub_80358A0: @ 0x080358A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08035930 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov ip, r0
	ldr r6, [r0]
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	mov r1, ip
	ldrh r0, [r1, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldr r1, _08035934 @ =gUnknown_030008A0
	ldr r4, _08035938 @ =0x03000072
	adds r0, r5, r4
	ldrb r4, [r0]
	ldr r0, [r1, #0x1c]
	ldr r7, _0803593C @ =0x0300006E
	adds r1, r5, r7
	muls r0, r4, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, _08035940 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	subs r7, #2
	adds r4, r5, r7
	strh r0, [r4]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r0, [r6, #6]
	lsls r7, r0, #0xa
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r3, r3, r0
	ldrb r1, [r6, #5]
	lsls r1, r1, #0xa
	adds r6, r3, r1
	adds r2, r2, r7
	mov r8, r2
	ldr r2, _08035944 @ =gUnknown_082B48B4
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r3, r0, #0xe
	ldr r4, _08035948 @ =0x03000070
	adds r5, r5, r4
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803594C
	subs r0, r6, r3
	b _0803594E
	.align 2, 0
_08035930: .4byte gCurTask
_08035934: .4byte gUnknown_030008A0
_08035938: .4byte 0x03000072
_0803593C: .4byte 0x0300006E
_08035940: .4byte 0x000003FF
_08035944: .4byte gUnknown_082B48B4
_08035948: .4byte 0x03000070
_0803594C:
	adds r0, r6, r3
_0803594E:
	mov r1, ip
	str r0, [r1, #0x7c]
	mov r3, ip
	adds r3, #0x80
	mov r0, ip
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r7, r0
	asrs r2, r0, #0xe
	mov r0, ip
	adds r0, #0x70
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803597C
	mov r7, r8
	subs r0, r7, r2
	b _08035980
_0803597C:
	mov r1, r8
	adds r0, r1, r2
_08035980:
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803598C
sub_803598C: @ 0x0803598C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	mov r8, r0
	cmp r4, #0xf
	bhi _08035A68
	lsls r0, r4, #2
	ldr r1, _080359AC @ =_080359B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080359AC: .4byte _080359B0
_080359B0: @ jump table
	.4byte _080359F6 @ case 0
	.4byte _080359F6 @ case 1
	.4byte _080359F0 @ case 2
	.4byte _080359F6 @ case 3
	.4byte _08035A10 @ case 4
	.4byte _08035A30 @ case 5
	.4byte _08035A30 @ case 6
	.4byte _080359F6 @ case 7
	.4byte _08035A16 @ case 8
	.4byte _08035A30 @ case 9
	.4byte _08035A30 @ case 10
	.4byte _080359F6 @ case 11
	.4byte _080359F6 @ case 12
	.4byte _080359F6 @ case 13
	.4byte _080359F6 @ case 14
	.4byte _080359F6 @ case 15
_080359F0:
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
_080359F6:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #2
	strb r0, [r6, #0x1a]
	movs r0, #3
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A10:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_08035A16:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #0
	strb r0, [r6, #0x1a]
	movs r0, #1
	strb r0, [r7, #0x1a]
	b _08035A68
_08035A30:
	movs r0, #0x3d
	bl sub_80C3224
	str r0, [r6]
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #4
	strb r1, [r6, #0x1a]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08035A56
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
_08035A56:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08035A68
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08035A68:
	movs r5, #0
	movs r1, #0
	ldr r4, _08035AC4 @ =0x00000363
	strh r4, [r6, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	strh r1, [r6, #0xe]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x20]
	strh r4, [r7, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	adds r0, r2, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r2, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #8]
	str r0, [r7, #8]
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80BF44C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AC4: .4byte 0x00000363

	thumb_func_start sub_8035AC8
sub_8035AC8: @ 0x08035AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08035B20 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08035B24 @ =0x0300000C
	adds r6, r5, r1
	ldr r2, _08035B28 @ =0x03000044
	adds r7, r5, r2
	ldr r3, [r4]
	mov r8, r3
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08035B2C
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _08035B58
	.align 2, 0
_08035B20: .4byte gCurTask
_08035B24: .4byte 0x0300000C
_08035B28: .4byte 0x03000044
_08035B2C:
	ldr r2, [r4, #0x7c]
	asrs r2, r2, #8
	ldr r1, _08035B64 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r2, r2, r0
	strh r2, [r6, #0x10]
	ldr r3, _08035B68 @ =0x03000080
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	strh r2, [r7, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl sub_80C033C
	adds r0, r7, #0
	bl sub_80C033C
_08035B58:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035B64: .4byte gUnknown_03001D10
_08035B68: .4byte 0x03000080

	thumb_func_start CreateEntity_Interactable058
CreateEntity_Interactable058: @ 0x08035B6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8035204
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable059
CreateEntity_Interactable059: @ 0x08035B98
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8035204
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8035BC4
sub_8035BC4: @ 0x08035BC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08035C18 @ =gUnknown_030008A0
	ldrb r2, [r0, #6]
	adds r1, r2, #1
	movs r0, #1
	ands r1, r0
	movs r3, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r5, r0, #4
	ldr r4, _08035C1C @ =gUnknown_030015C0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r2, r0, #4
	ldr r6, _08035C20 @ =0xF7FBFFFF
_08035BEC:
	adds r1, r2, r4
	cmp r3, #0
	beq _08035BF4
	adds r1, r5, r4
_08035BF4:
	ldr r0, [r1, #4]
	ands r0, r6
	str r0, [r1, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08035BEC
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035C18: .4byte gUnknown_030008A0
_08035C1C: .4byte gUnknown_030015C0
_08035C20: .4byte 0xF7FBFFFF

	thumb_func_start sub_8035C24
sub_8035C24: @ 0x08035C24
	push {lr}
	bl sub_8035374
	bl sub_80358A0
	bl sub_8035AC8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable060
CreateEntity_Interactable060: @ 0x08035C38
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08035C94 @ =sub_8035CA0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035C98 @ =sub_8035C9C
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035C94: .4byte sub_8035CA0
_08035C98: .4byte sub_8035C9C

	thumb_func_start sub_8035C9C
sub_8035C9C: @ 0x08035C9C
	bx lr
	.align 2, 0

	thumb_func_start sub_8035CA0
sub_8035CA0: @ 0x08035CA0
	push {r4, r5, r6, lr}
	ldr r6, _08035CE4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08035CDE
	ldrb r0, [r4, #0xa]
	strb r0, [r5]
	ldr r0, [r6]
	bl TaskDestroy
_08035CDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035CE4: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable061
CreateEntity_Interactable061: @ 0x08035CE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08035DC4 @ =sub_8035DD4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035DC8 @ =sub_8036054
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08035DCC @ =0x0300000C
	adds r6, r1, r0
	mov r1, ip
	strh r7, [r1, #4]
	mov r2, r8
	strh r2, [r1, #6]
	str r5, [r1]
	ldrb r0, [r5]
	strb r0, [r1, #0xa]
	strb r4, [r1, #0xb]
	movs r3, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08035D5A
	movs r2, #1
_08035D40:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _08035D5A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08035D40
_08035D5A:
	mov r0, ip
	adds r0, #0x44
	movs r2, #0
	strb r3, [r0]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #0x40
	movs r3, #0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x42
	strh r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x3c]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x3e]
	mov r0, ip
	adds r0, #0x45
	strb r3, [r0]
	ldr r2, _08035DD0 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, ip
	ldrh r0, [r3, #0x3c]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r3, #0x3e]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_8036068
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035DC4: .4byte sub_8035DD4
_08035DC8: .4byte sub_8036054
_08035DCC: .4byte 0x0300000C
_08035DD0: .4byte gUnknown_03001D10

	thumb_func_start sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08035E70 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	ldrh r5, [r7, #0x3c]
	ldrh r4, [r7, #0x3e]
	ldr r0, _08035E74 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08035E78 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08035E10
	b _08035F1C
_08035E10:
	lsls r5, r5, #0x10
	asrs r1, r5, #0x10
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	str r0, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r3, r0, #0
	cmp r3, #0
	beq _08035EB2
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r3
	cmp r1, #0
	bne _08035EA8
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08035EA8
	strh r1, [r6, #0x18]
	strh r1, [r6, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08035E80
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035E80
	ldr r1, _08035E7C @ =0xFFFFFF00
	adds r0, r2, r1
	b _08035E9C
	.align 2, 0
_08035E70: .4byte gCurTask
_08035E74: .4byte gUnknown_030008A0
_08035E78: .4byte gUnknown_030015C0
_08035E7C: .4byte 0xFFFFFF00
_08035E80:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08035EB2
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035EB2
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_08035E9C:
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08035EB2
_08035EA8:
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_08035EB2:
	asrs r1, r5, #0x10
	asrs r2, r4, #0x10
	str r6, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r0, r8
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08035F18
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0xa
	beq _08035ED4
	cmp r0, #0xf7
	bne _08035F10
_08035ED4:
	ldr r3, _08035F0C @ =gUnknown_030008A0
	ldrh r1, [r6, #0x20]
	ldrh r0, [r3, #0x14]
	ands r0, r1
	adds r2, r7, #0
	adds r2, #0x45
	cmp r0, #0
	bne _08035EEA
	ldrb r0, [r2]
	cmp r0, #0
	bne _08035F1C
_08035EEA:
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x6e
	adds r0, r0, r1
	strh r4, [r0]
	b _08035F1C
	.align 2, 0
_08035F0C: .4byte gUnknown_030008A0
_08035F10:
	adds r0, r7, #0
	adds r0, #0x45
	strb r4, [r0]
	b _08035F1C
_08035F18:
	mov r3, r8
	strb r0, [r3, #0x1c]
_08035F1C:
	ldr r1, _08035F88 @ =gUnknown_030008A0
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, #0x4e
	adds r2, r2, r1
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r4, r1, #0
	cmp r0, #0
	beq _08035F5E
	subs r0, r2, #2
	strh r0, [r4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl sub_8003E0C
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08035F5E
	movs r0, #0
	strh r0, [r4]
_08035F5E:
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	cmp r0, #0x20
	bgt _08035F72
	adds r1, r2, #0
_08035F72:
	mov r3, r8
	strb r1, [r3, #0x1c]
	bl sub_8035F8C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F88: .4byte gUnknown_030008A0

	thumb_func_start sub_8035F8C
sub_8035F8C: @ 0x08035F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08035FDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08035FE0 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r0, r8
	movs r1, #0x3c
	ldrsh r5, [r0, r1]
	movs r1, #0x3e
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802C198
	cmp r0, #0
	bne _08036028
	movs r1, #0
	ldr r6, _08035FE4 @ =gUnknown_030015C0
_08035FC6:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08035FE8
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08035FEC
	.align 2, 0
_08035FDC: .4byte gCurTask
_08035FE0: .4byte 0x0300000C
_08035FE4: .4byte gUnknown_030015C0
_08035FE8:
	ldr r0, _08036020 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08035FEC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08035FC6
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08036024 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08036042
	.align 2, 0
_08036020: .4byte gUnknown_030008A0
_08036024: .4byte gCurTask
_08036028:
	ldr r0, _08036050 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_08036042:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036050: .4byte gUnknown_03001D10

	thumb_func_start sub_8036054
sub_8036054: @ 0x08036054
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8036068
sub_8036068: @ 0x08036068
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strb r2, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable062
CreateEntity_Interactable062: @ 0x080360AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803616C @ =sub_8036178
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08036170 @ =sub_80363E8
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	strh r7, [r3, #4]
	mov r1, r8
	strh r1, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803611A
	movs r4, #1
_08036100:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0803611A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08036100
_0803611A:
	adds r0, r3, #0
	adds r0, #0x34
	strb r2, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #3
	lsls r0, r7, #8
	adds r1, r1, r0
	strh r1, [r3, #0x36]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r3, #0x3c]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, r8
	lsls r2, r4, #8
	adds r0, r0, r2
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r3, #0x40]
	ldr r2, _08036174 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r6, #0
	bl sub_80363FC
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803616C: .4byte sub_8036178
_08036170: .4byte sub_80363E8
_08036174: .4byte gUnknown_03001D10

	thumb_func_start sub_8036178
sub_8036178: @ 0x08036178
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08036210 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r0, _08036214 @ =0x0300000C
	adds r0, r3, r0
	str r0, [sp, #4]
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0x36
	ldrsh r4, [r1, r2]
	lsls r4, r4, #8
	movs r2, #0x38
	ldrsh r6, [r1, r2]
	lsls r6, r6, #8
	mov ip, r6
	movs r5, #4
	ldrsb r5, [r0, r5]
	lsls r5, r5, #0xb
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0xb
	mov r6, r8
	ldr r6, [r6, #0x3c]
	mov sl, r6
	mov r0, r8
	ldr r0, [r0, #0x40]
	mov sb, r0
	ldr r2, _08036218 @ =gUnknown_030008A0
	ldr r6, _0803621C @ =0x03000034
	adds r3, r3, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #0x5e
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r1, r0, r1
	asrs r1, r1, #0xa
	adds r1, r1, r4
	mov r0, r8
	str r1, [r0, #0x3c]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r5, r0
	asrs r0, r0, #0xa
	add r0, ip
	mov r6, r8
	str r0, [r6, #0x40]
	mov r2, sl
	subs r2, r2, r1
	mov sl, r2
	mov r6, sb
	subs r6, r6, r0
	mov sb, r6
	movs r1, #0
_08036200:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08036220
	ldr r0, _08036218 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803622A
	.align 2, 0
_08036210: .4byte gCurTask
_08036214: .4byte 0x0300000C
_08036218: .4byte gUnknown_030008A0
_0803621C: .4byte 0x03000034
_08036220:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803622A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08036300 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803624E
	cmp r1, #8
	beq _0803624E
	cmp r1, #0x10
	bne _080362DC
_0803624E:
	adds r0, r7, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080362DC
	ldr r0, [r7, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080362A4
	ldr r0, [r7, #0x6c]
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _080362A4
	ldr r0, [r7, #0x10]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r0, r6
	mov r1, sb
	subs r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #3
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0803629E
	lsls r1, r1, #8
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_0803629E:
	adds r0, r7, #0
	bl sub_80149E4
_080362A4:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r7, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080362D0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
_080362D0:
	movs r0, #3
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
_080362DC:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r4, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08036200
	bl sub_8036304
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036300: .4byte gUnknown_030015C0

	thumb_func_start sub_8036304
sub_8036304: @ 0x08036304
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08036364 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #8
	ldr r1, [r6, #0x40]
	lsls r1, r1, #8
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _080363B0
	movs r1, #0x36
	ldrsh r0, [r6, r1]
	movs r2, #0x38
	ldrsh r1, [r6, r2]
	bl sub_802C198
	cmp r0, #0
	bne _080363B0
	movs r1, #0
	ldr r2, _08036368 @ =gUnknown_030015C0
_08036350:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803636C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036370
	.align 2, 0
_08036364: .4byte gCurTask
_08036368: .4byte gUnknown_030015C0
_0803636C:
	ldr r0, _080363A8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036370:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r7, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08036350
	ldrb r0, [r6, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _080363AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080363D4
	.align 2, 0
_080363A8: .4byte gUnknown_030008A0
_080363AC: .4byte gCurTask
_080363B0:
	ldr r2, _080363E4 @ =gUnknown_03001D10
	ldr r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_080363D4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080363E4: .4byte gUnknown_03001D10

	thumb_func_start sub_80363E8
sub_80363E8: @ 0x080363E8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_80363FC
sub_80363FC: @ 0x080363FC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable063
CreateEntity_Interactable063: @ 0x08036440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r1, [r6, #7]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	cmp r0, #0
	beq _0803648C
	ldr r0, _08036484 @ =sub_8037224
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08036488 @ =sub_8037130
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	b _0803649E
	.align 2, 0
_08036484: .4byte sub_8037224
_08036488: .4byte sub_8037130
_0803648C:
	ldr r0, _080364E4 @ =sub_803724C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080364E8 @ =sub_8037130
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
_0803649E:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, _080364EC @ =0x03000040
	adds r1, r1, r2
	mov ip, r1
	ldr r7, _080364F0 @ =0x03000034
	adds r5, r2, r7
	movs r1, #0
	mov r0, sl
	strh r0, [r3, #4]
	mov r7, sp
	ldrh r7, [r7, #4]
	strh r7, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r0, sb
	strb r0, [r3, #0xb]
	ldr r7, _080364F4 @ =0x03000078
	adds r0, r2, r7
	strb r1, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r1, [r0]
	mov r0, r8
	cmp r0, #0
	beq _080364F8
	subs r7, #0x11
	adds r1, r2, r7
	movs r0, #0x54
	b _08036500
	.align 2, 0
_080364E4: .4byte sub_803724C
_080364E8: .4byte sub_8037130
_080364EC: .4byte 0x03000040
_080364F0: .4byte 0x03000034
_080364F4: .4byte 0x03000078
_080364F8:
	ldr r0, _08036534 @ =0x03000068
	adds r1, r2, r0
	movs r0, #0xeb
	lsls r0, r0, #2
_08036500:
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x74
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r7, [sp, #4]
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	mov r0, r8
	cmp r0, #0
	beq _08036538
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x18
	b _0803653E
	.align 2, 0
_08036534: .4byte 0x03000068
_08036538:
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	subs r0, #0x18
_0803653E:
	lsls r0, r0, #8
	str r0, [r3, #0x6c]
	movs r7, #0x12
	ldrsh r0, [r4, r7]
	adds r0, #5
	lsls r0, r0, #8
	str r0, [r3, #0x70]
	ldrh r0, [r4, #0x10]
	movs r1, #0
	mov r2, ip
	strh r0, [r2, #0x10]
	ldrh r0, [r4, #0x12]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r6]
	adds r0, r4, #0
	mov r1, ip
	bl sub_8036F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8036584
sub_8036584: @ 0x08036584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _080365E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r2, [r0]
	ldr r3, _080365EC @ =0x0300000C
	adds r3, r1, r3
	str r3, [sp, #0x14]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r4, [sp, #0x10]
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
_080365D6:
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq _080365F0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080365F4
	.align 2, 0
_080365E8: .4byte gCurTask
_080365EC: .4byte 0x0300000C
_080365F0:
	ldr r0, _0803666C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080365F4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08036670 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	cmp r7, #0
	beq _08036610
	b _080368B4
_08036610:
	ldr r2, [sp, #0x1c]
	lsls r4, r2, #0x10
	ldr r3, [sp, #0x20]
	lsls r5, r3, #0x10
	str r6, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020874
	adds r3, r0, #0
	mov sb, r4
	str r5, [sp, #0x28]
	cmp r3, #0
	bne _08036674
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r4, [sp, #0x24]
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _08036646
	b _080368B4
_08036646:
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036662
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0x14]
	cmp r0, r4
	bne _08036662
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	str r3, [r6, #0x6c]
_08036662:
	ldr r0, [sp, #0x24]
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	b _080368B4
	.align 2, 0
_0803666C: .4byte gUnknown_030008A0
_08036670: .4byte gUnknown_030015C0
_08036674:
	ldr r2, [r6, #4]
	movs r4, #0x20
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08036688
	ldr r0, [r6, #0x6c]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	beq _08036754
_08036688:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080366CA
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08036710
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080366B2
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_080366B2:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	b _080368B4
_080366CA:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08036710
	ldrh r1, [r6, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080366EC
	ldr r0, [r6, #0x10]
	ldr r4, _0803670C @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_080366EC:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r6, #0x1c]
	mov r3, sp
	ldrh r3, [r3, #0xc]
	strh r3, [r6, #0x18]
	b _080368B4
	.align 2, 0
_0803670C: .4byte 0xFFFFFF00
_08036710:
	adds r0, r6, #0
	bl sub_8036E34
	adds r1, r0, #0
	cmp r1, #1
	beq _0803671E
	b _080368B4
_0803671E:
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x20
	orrs r1, r0
	str r1, [r6, #4]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0803674C
	adds r0, r6, #0
	ldr r1, _08036748 @ =sub_80077CC
	bl sub_800D87C
	b _08036754
	.align 2, 0
_08036748: .4byte sub_80077CC
_0803674C:
	adds r0, r6, #0
	ldr r1, _08036778 @ =sub_8005380
	bl sub_800D87C
_08036754:
	ldr r0, [sp, #0x10]
	adds r0, #0x78
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036764
	b _080368B4
_08036764:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0803677C
	mov r3, sb
	asrs r1, r3, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08036788
	b _0803682C
	.align 2, 0
_08036778: .4byte sub_8005380
_0803677C:
	mov r4, sb
	asrs r1, r4, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0803682C
_08036788:
	ldrh r0, [r6, #0x1a]
	mov r8, r0
	ldr r5, [r6, #0x14]
	mov r1, sb
	asrs r7, r1, #0x10
	ldr r2, [sp, #0x28]
	asrs r4, r2, #0x10
	movs r3, #0
	mov sl, r3
	str r3, [sp]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_8020950
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080367C4
	ldr r0, [r6, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #4]
	mov r0, r8
	strh r0, [r6, #0x1a]
	str r5, [r6, #0x14]
	movs r1, #1
	str r1, [sp, #0x18]
_080367C4:
	str r6, [sp]
	mov r2, sl
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	bne _080367EC
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080367EC
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #0x14]
	cmp r0, r3
	beq _080367FE
_080367EC:
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08036822
	movs r4, #0x1a
	ldrsh r0, [r6, r4]
	cmp r0, #0
	ble _08036822
_080367FE:
	mov r0, sb
	asrs r2, r0, #0x10
	ldr r1, [sp, #0x28]
	asrs r3, r1, #0x10
	ldr r0, [sp, #0x10]
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_8037144
	ldr r2, [sp, #0x18]
	orrs r2, r0
	str r2, [sp, #0x18]
	b _080368B4
_08036822:
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	bl sub_80213B0
	b _080368B4
_0803682C:
	mov r3, sb
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x28]
	asrs r3, r4, #0x10
	ldr r0, [sp, #0x10]
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_8037144
	cmp r0, #0
	bne _080368B4
	ldr r1, [r6, #4]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne _0803685E
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bgt _0803689C
_0803685E:
	movs r4, #4
	ands r1, r4
	cmp r1, #0
	beq _0803689C
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08036898 @ =sub_8051F54
	str r3, [sp]
	movs r3, #8
	bl sub_8052418
	cmp r0, #4
	ble _08036892
	ldr r0, [r6, #4]
	ands r0, r4
	cmp r0, #0
	beq _0803689C
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0803689C
_08036892:
	movs r4, #0
	b _0803689E
	.align 2, 0
_08036898: .4byte sub_8051F54
_0803689C:
	movs r4, #1
_0803689E:
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	bl sub_80213B0
	cmp r4, #0
	beq _080368B4
	ldr r0, [r6, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #4]
_080368B4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	cmp r0, #1
	bhi _080368C4
	b _080365D6
_080368C4:
	ldr r0, [sp, #0xc]
	movs r1, #0
	bl sub_8036BC4
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	adds r0, r4, #0
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80368E4
sub_80368E4: @ 0x080368E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _08036948 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r2, [r0]
	ldr r0, _0803694C @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	mov r1, sl
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #0
	str r3, [sp, #0x18]
_08036934:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08036950
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036954
	.align 2, 0
_08036948: .4byte gCurTask
_0803694C: .4byte 0x0300000C
_08036950:
	ldr r0, _080369C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036954:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080369CC @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	cmp r7, #0
	beq _08036970
	b _08036B98
_08036970:
	ldr r1, [sp, #0x10]
	lsls r4, r1, #0x10
	ldr r2, [sp, #0x14]
	lsls r5, r2, #0x10
	str r6, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r0, sb
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020874
	adds r3, r0, #0
	mov r8, r4
	cmp r3, #0
	bne _080369D0
	mov r0, sl
	adds r0, #0x78
	ldr r2, [sp, #0x18]
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	bne _080369A4
	b _08036B98
_080369A4:
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080369BE
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _080369BE
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	str r3, [r6, #0x6c]
_080369BE:
	ldr r3, [sp, #0x18]
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
	b _08036B98
	.align 2, 0
_080369C8: .4byte gUnknown_030008A0
_080369CC: .4byte gUnknown_030015C0
_080369D0:
	ldr r2, [r6, #4]
	movs r4, #0x20
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _080369E2
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	beq _08036AB0
_080369E2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08036A24
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _08036A6C
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08036A0C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_08036A0C:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	strh r7, [r6, #0x1c]
	strh r7, [r6, #0x18]
	b _08036B98
_08036A24:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08036A6C
	ldrh r1, [r6, #0x1e]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08036A46
	ldr r0, [r6, #0x10]
	ldr r1, _08036A68 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r6, #4]
_08036A46:
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0xc]
	strh r3, [r6, #0x1c]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r6, #0x18]
	b _08036B98
	.align 2, 0
_08036A68: .4byte 0xFFFFFF00
_08036A6C:
	adds r0, r6, #0
	bl sub_8036E34
	adds r1, r0, #0
	cmp r1, #1
	beq _08036A7A
	b _08036B98
_08036A7A:
	mov r0, sl
	adds r0, #0x78
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	strb r1, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x20
	orrs r1, r0
	str r1, [r6, #4]
	mov r3, sb
	str r3, [r6, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08036AA8
	adds r0, r6, #0
	ldr r1, _08036AA4 @ =sub_80077CC
	bl sub_800D87C
	b _08036AB0
	.align 2, 0
_08036AA4: .4byte sub_80077CC
_08036AA8:
	adds r0, r6, #0
	ldr r1, _08036AD4 @ =sub_8005380
	bl sub_800D87C
_08036AB0:
	mov r0, sl
	adds r0, #0x78
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036B98
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08036AD8
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08036AE4
	b _08036B50
	.align 2, 0
_08036AD4: .4byte sub_8005380
_08036AD8:
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08036B50
_08036AE4:
	mov r1, r8
	asrs r4, r1, #0x10
	asrs r3, r5, #0x10
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_8037144
	cmp r0, #1
	bne _08036B98
	mov r0, sb
	adds r1, r6, #0
	bl sub_80213B0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08036B1C
	rsbs r0, r0, #0
_08036B1C:
	lsls r0, r0, #0xa
	rsbs r0, r0, #0
	asrs r0, r0, #5
	ldr r2, _08036B48 @ =0xFFFFFB00
	adds r0, r0, r2
	strh r0, [r6, #0x1a]
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	ldr r1, _08036B4C @ =sub_8006F98
	bl sub_800D87C
	adds r0, r6, #0
	movs r1, #0x94
	lsls r1, r1, #2
	bl sub_8004E98
	b _08036B98
	.align 2, 0
_08036B48: .4byte 0xFFFFFB00
_08036B4C: .4byte sub_8006F98
_08036B50:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036B98
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _08036B98
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r6, #0x14]
	mov r0, r8
	asrs r2, r0, #0x10
	asrs r3, r5, #0x10
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	bl sub_8037144
	cmp r0, #0
	bne _08036B98
	ldr r0, [r6, #0x14]
	ldr r1, _08036BC0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r6, #0x14]
	mov r0, sb
	adds r1, r6, #0
	bl sub_80213B0
_08036B98:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #1
	bhi _08036BA8
	b _08036934
_08036BA8:
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl sub_8036BC4
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036BC0: .4byte 0xFFFFF000

	thumb_func_start sub_8036BC4
sub_8036BC4: @ 0x08036BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _08036C58 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, [r4]
	ldr r1, _08036C5C @ =0x03000040
	adds r1, r1, r3
	mov sb, r1
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _08036C60 @ =0x03000076
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #3
	cmp r0, r2
	ble _08036C2A
	strh r2, [r1]
_08036C2A:
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r6, #0
	mov r1, r8
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r2, _08036C64 @ =0x03000068
	adds r2, r2, r3
	mov sl, r2
	lsls r3, r7, #0x10
	str r3, [sp, #0x10]
	ldr r7, _08036C68 @ =gUnknown_030015C0
_08036C48:
	cmp r6, #0
	beq _08036C6C
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08036C70
	.align 2, 0
_08036C58: .4byte gCurTask
_08036C5C: .4byte 0x03000040
_08036C60: .4byte 0x03000076
_08036C64: .4byte 0x03000068
_08036C68: .4byte gUnknown_030015C0
_08036C6C:
	ldr r0, _08036CDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08036C70:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	ldr r1, [r4, #0x6c]
	asrs r1, r1, #8
	ldr r2, [r4, #0x70]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, sb
	movs r3, #0
	bl sub_8020CE0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08036C48
	ldr r6, [r4, #0x6c]
	asrs r5, r6, #8
	mov r7, r8
	asrs r3, r7, #0x10
	subs r1, r5, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08036CE0 @ =gUnknown_082B48B4
	mov r7, sl
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	lsls r0, r0, #2
	ldr r7, [sp, #0x10]
	asrs r1, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4, #0x70]
	cmp r0, r1
	blt _08036D24
	str r1, [r4, #0x70]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08036D0E
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036CE4
	cmp r3, r5
	blt _08036CE8
	b _08036D62
	.align 2, 0
_08036CDC: .4byte gUnknown_030008A0
_08036CE0: .4byte gUnknown_082B48B4
_08036CE4:
	cmp r3, r5
	ble _08036D62
_08036CE8:
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1]
	mov r2, r8
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	movs r3, #0xa0
	rsbs r3, r3, #0
	adds r2, r3, #0
	cmp r1, r0
	ble _08036D06
	movs r2, #0xa0
_08036D06:
	adds r0, r4, #0
	adds r0, #0x74
	strh r2, [r0]
	b _08036D62
_08036D0E:
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _08036D1A
	cmp r3, r5
	bgt _08036D1E
	b _08036D62
_08036D1A:
	cmp r3, r5
	bge _08036D62
_08036D1E:
	movs r0, #1
	str r0, [sp, #0xc]
	b _08036D62
_08036D24:
	adds r0, r4, #0
	adds r0, #0x74
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r6, r0
	str r0, [r4, #0x6c]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08036D3A
	subs r0, r3, r0
	b _08036D3C
_08036D3A:
	subs r0, r0, r3
_08036D3C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08036D62
	mov r2, r8
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08036D5A
	adds r0, r1, #0
	subs r0, #0x1e
	b _08036D5E
_08036D5A:
	adds r0, r1, #0
	adds r0, #0x1e
_08036D5E:
	lsls r0, r0, #8
	str r0, [r4, #0x6c]
_08036D62:
	ldr r2, [r4, #0x70]
	asrs r2, r2, #8
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r1, #4
	cmp r2, r0
	ble _08036D82
	lsls r0, r1, #8
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x70]
_08036D82:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8036D94
sub_8036D94: @ 0x08036D94
	push {r4, r5, lr}
	ldr r5, _08036DD4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #1
	bl sub_80368E4
	ldr r0, _08036DD8 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	subs r0, #0x14
	ldr r1, _08036DDC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	ldr r1, _08036DE0 @ =0xFFFFFDFF
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036DCA
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036DE4 @ =sub_803724C
	str r0, [r1, #8]
_08036DCA:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036DD4: .4byte gCurTask
_08036DD8: .4byte 0x03000068
_08036DDC: .4byte 0x000003FF
_08036DE0: .4byte 0xFFFFFDFF
_08036DE4: .4byte sub_803724C

	thumb_func_start sub_8036DE8
sub_8036DE8: @ 0x08036DE8
	push {r4, r5, lr}
	ldr r5, _08036E24 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0
	bl sub_80368E4
	ldr r0, _08036E28 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #0x14
	ldr r1, _08036E2C @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	subs r0, #0x55
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036E1A
	movs r0, #0x54
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036E30 @ =sub_8037224
	str r0, [r1, #8]
_08036E1A:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036E24: .4byte gCurTask
_08036E28: .4byte 0x03000068
_08036E2C: .4byte 0x000003FF
_08036E30: .4byte sub_8037224

	thumb_func_start sub_8036E34
sub_8036E34: @ 0x08036E34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08036E90 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1]
	ldr r2, _08036E94 @ =0x0300000C
	adds r6, r0, r2
	adds r2, #0x5c
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r1, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08036E80
	rsbs r0, r2, #0
_08036E80:
	cmp r0, #0x20
	ble _08036E98
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r0, #0
	b _08036F04
	.align 2, 0
_08036E90: .4byte gCurTask
_08036E94: .4byte 0x0300000C
_08036E98:
	ldr r1, _08036EDC @ =gUnknown_082B48B4
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r5, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0x25
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldrh r0, [r4, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08036EE2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08036EE0
	subs r3, #0x20
	b _08036EE2
	.align 2, 0
_08036EDC: .4byte gUnknown_082B48B4
_08036EE0:
	adds r3, #0x20
_08036EE2:
	cmp r3, r5
	ble _08036F02
	adds r0, r5, #0
	adds r0, #8
	cmp r3, r0
	bge _08036F02
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08036F02
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r7, #1
_08036F02:
	adds r0, r7, #0
_08036F04:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8036F0C
sub_8036F0C: @ 0x08036F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08036F38 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08036F3C
	movs r5, #0xf2
	lsls r5, r5, #2
	movs r0, #0
	mov sb, r0
	movs r1, #3
	mov sl, r1
	movs r0, #0x28
	mov r8, r0
	movs r0, #0x2c
	b _08036F4C
	.align 2, 0
_08036F38: .4byte gUnknown_030008A0
_08036F3C:
	ldr r5, _08036FB8 @ =0x00000375
	movs r1, #0
	mov sb, r1
	movs r0, #3
	mov sl, r0
	movs r1, #0x30
	mov r8, r1
	movs r0, #0x34
_08036F4C:
	bl sub_80C3224
	str r0, [r6]
	movs r1, #0
	mov ip, r1
	movs r4, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	strh r5, [r6, #0xc]
	mov r1, sb
	strb r1, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	mov r1, ip
	strb r1, [r6, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r6, #8]
	mov r1, r8
	lsls r1, r1, #5
	mov r8, r1
	add r0, r8
	str r0, [r7]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xc]
	mov r0, sl
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	mov r1, ip
	strb r1, [r7, #0x1f]
	str r2, [r7, #8]
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036FB8: .4byte 0x00000375

	thumb_func_start sub_8036FBC
sub_8036FBC: @ 0x08036FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08037024 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r5, r6, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08037070
	movs r1, #0
	ldr r2, _08037028 @ =gUnknown_030015C0
_0803700E:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803702C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037030
	.align 2, 0
_08037024: .4byte gCurTask
_08037028: .4byte gUnknown_030015C0
_0803702C:
	ldr r0, _08037068 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08037030:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0803700E
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0803706C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803711A
	.align 2, 0
_08037068: .4byte gUnknown_030008A0
_0803706C: .4byte gCurTask
_08037070:
	ldr r1, _0803708C @ =0x03000068
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08037090 @ =0x000003FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _08037098
	ldr r0, [r5, #8]
	ldr r1, _08037094 @ =0xFFFFFBFF
	ands r0, r1
	b _080370A0
	.align 2, 0
_0803708C: .4byte 0x03000068
_08037090: .4byte 0x000003FF
_08037094: .4byte 0xFFFFFBFF
_08037098:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080370A0:
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _080370C4
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r2
	cmp r0, #0
	bge _080370BA
	ldr r1, _080370C0 @ =0xFFFFFC00
	adds r0, r1, #0
	adds r0, r2, r0
_080370BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080370C6
	.align 2, 0
_080370C0: .4byte 0xFFFFFC00
_080370C4:
	adds r0, r2, #0
_080370C6:
	movs r1, #0
	cmp r0, #0x1b
	bls _080370D4
	movs r1, #2
	cmp r0, #0x37
	bhi _080370D4
	movs r1, #1
_080370D4:
	strb r1, [r5, #0x1a]
	ldr r4, _0803712C @ =gUnknown_03001D10
	ldr r1, [r4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	adds r5, r7, #0
	adds r5, #0x40
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80C033C
_0803711A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803712C: .4byte gUnknown_03001D10

	thumb_func_start sub_8037130
sub_8037130: @ 0x08037130
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8037144
sub_8037144: @ 0x08037144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0
	bge _0803717A
	rsbs r1, r2, #0
_0803717A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0803718E
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r0, #0
	b _08037212
_0803718E:
	ldr r1, _080371B8 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r3, r0, r1
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080371BC
	adds r0, r3, #0
	subs r0, #0xb
	b _080371C0
	.align 2, 0
_080371B8: .4byte gUnknown_082B48B4
_080371BC:
	adds r0, r3, #0
	subs r0, #0x10
_080371C0:
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	cmp r0, r1
	bge _080371D6
	movs r0, #0x24
	ands r0, r2
	cmp r0, #0x20
	bne _08037210
	ldr r0, [r4, #0x6c]
	cmp r0, r6
	bne _08037210
_080371D6:
	movs r0, #1
	mov r8, r0
	str r1, [r4, #0x14]
	asrs r0, r1, #8
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #0
	str r3, [sp]
	ldr r3, _08037220 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _08037202
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08037202:
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
_08037210:
	mov r0, r8
_08037212:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037220: .4byte sub_805217C

	thumb_func_start sub_8037224
sub_8037224: @ 0x08037224
	push {r4, lr}
	ldr r4, _08037244 @ =gCurTask
	movs r0, #1
	bl sub_8036584
	cmp r0, #0
	beq _08037238
	ldr r1, [r4]
	ldr r0, _08037248 @ =sub_8036D94
	str r0, [r1, #8]
_08037238:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037244: .4byte gCurTask
_08037248: .4byte sub_8036D94

	thumb_func_start sub_803724C
sub_803724C: @ 0x0803724C
	push {r4, lr}
	ldr r4, _0803726C @ =gCurTask
	movs r0, #0
	bl sub_8036584
	cmp r0, #0
	beq _08037260
	ldr r1, [r4]
	ldr r0, _08037270 @ =sub_8036DE8
	str r0, [r1, #8]
_08037260:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803726C: .4byte gCurTask
_08037270: .4byte sub_8036DE8

	thumb_func_start CreateEntity_Interactable064
CreateEntity_Interactable064: @ 0x08037274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08037364 @ =sub_80379E4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037368 @ =sub_80379D0
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _0803736C @ =0x0300000C
	adds r6, r5, r1
	ldr r2, _08037370 @ =0x03000034
	adds r2, r2, r5
	mov ip, r2
	ldr r3, _08037374 @ =0x0300005C
	adds r3, r3, r5
	mov sb, r3
	movs r2, #0
	strh r7, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	mov r3, r8
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #0xa]
	strb r4, [r0, #0xb]
	ldr r1, _08037378 @ =0x03000086
	adds r0, r5, r1
	strb r2, [r0]
	ldrb r0, [r3, #3]
	ldr r2, _0803737C @ =0x03000085
	adds r1, r5, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080372E8
	movs r0, #1
	strb r0, [r1]
_080372E8:
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #3
	lsls r0, r7, #8
	adds r2, r2, r0
	strh r2, [r6, #0x10]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r3, sl
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	mov r0, ip
	strh r2, [r0, #0x10]
	ldrh r0, [r6, #0x12]
	mov r1, ip
	strh r0, [r1, #0x12]
	ldrh r0, [r6, #0x10]
	mov r2, sb
	strh r0, [r2, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r2, #0x12]
	movs r3, #0
	ldr r0, _08037380 @ =0x03000088
	adds r7, r5, r0
	ldr r1, _08037384 @ =0x0300008C
	adds r4, r5, r1
_0803731E:
	lsls r1, r3, #3
	adds r2, r7, r1
	movs r5, #0x10
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	str r0, [r2]
	adds r1, r4, r1
	movs r2, #0x12
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0803731E
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r5, r8
	strb r0, [r5]
	adds r0, r6, #0
	mov r1, ip
	mov r2, sb
	bl sub_803765C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037364: .4byte sub_80379E4
_08037368: .4byte sub_80379D0
_0803736C: .4byte 0x0300000C
_08037370: .4byte 0x03000034
_08037374: .4byte 0x0300005C
_08037378: .4byte 0x03000086
_0803737C: .4byte 0x03000085
_08037380: .4byte 0x03000088
_08037384: .4byte 0x0300008C

	thumb_func_start sub_8037388
sub_8037388: @ 0x08037388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov sb, r0
	ldr r0, _080373E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _080373EC @ =0x0300000C
	adds r2, r1, r2
	str r2, [sp, #8]
	ldr r2, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r7, #0
	mov sl, r7
_080373D4:
	mov r0, sl
	cmp r0, #0
	beq _080373F0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080373F4
	.align 2, 0
_080373E8: .4byte gCurTask
_080373EC: .4byte 0x0300000C
_080373F0:
	ldr r0, _08037490 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080373F4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08037494 @ =gUnknown_030015C0
	adds r6, r0, r1
	movs r1, #0
	mov r8, r1
	adds r0, r6, #0
	bl sub_802C0D4
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r0, #0
	beq _08037418
	b _080375CC
_08037418:
	ldr r3, [sp, #0xc]
	lsls r4, r3, #0x10
	ldr r7, [sp, #0x10]
	lsls r5, r7, #0x10
	str r6, [sp]
	ldr r0, [sp, #8]
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020E3C
	adds r2, r5, #0
	ldr r7, [sp, #4]
	adds r7, #0x85
	cmp r0, #1
	bne _08037466
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _08037466
	ldr r0, [r6, #4]
	movs r3, #0x10
	ands r0, r3
	cmp r0, #0
	bne _08037466
	ldr r0, [sp, #4]
	adds r0, #0x86
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #7
	bhi _08037458
	strb r3, [r5]
_08037458:
	movs r3, #1
	mov r8, r3
	ldrb r0, [r7]
	cmp r0, #0
	beq _08037466
	subs r0, #1
	strb r0, [r7]
_08037466:
	asrs r1, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r1
	cmp r3, #0
	beq _08037498
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _08037500
	.align 2, 0
_08037490: .4byte gUnknown_030008A0
_08037494: .4byte gUnknown_030015C0
_08037498:
	movs r4, #0x80
	lsls r4, r4, #0xb
	ands r4, r1
	cmp r4, #0
	beq _080374C8
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	strh r3, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08037500
	ldr r3, _080374C4 @ =0xFFFFFF00
	b _080374F4
	.align 2, 0
_080374C4: .4byte 0xFFFFFF00
_080374C8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08037500
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	strh r4, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08037500
	movs r3, #0x80
	lsls r3, r3, #1
_080374F4:
	adds r0, r2, r3
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
_08037500:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08037530
	mov r7, sl
	adds r7, #1
	str r7, [sp, #0x14]
	mov r0, r8
	cmp r0, #0
	beq _080375CC
	ldr r0, _0803752C @ =sub_8005380
	str r0, [r6]
	ldr r0, [r6, #4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0xe
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _080375CC
	.align 2, 0
_0803752C: .4byte sub_8005380
_08037530:
	movs r4, #0
	ldr r5, [sp, #4]
	adds r5, #0x86
	ldr r1, [sp, #4]
	adds r1, #0xa8
	mov sb, r1
	ldr r2, [sp, #4]
	adds r2, #0xaa
	mov r8, r2
	mov r3, sl
	adds r3, #1
	str r3, [sp, #0x14]
	movs r7, #2
	mov ip, r7
_0803754C:
	lsls r1, r4, #2
	mov r0, sb
	adds r2, r0, r1
	movs r0, #1
	ands r0, r4
	movs r3, #0xd0
	cmp r0, #0
	beq _08037562
	movs r7, #0xd0
	rsbs r7, r7, #0
	adds r3, r7, #0
_08037562:
	strh r3, [r2]
	adds r3, r2, #0
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0803757A
	adds r0, r2, #0
	adds r0, #0x30
	b _0803757E
_0803757A:
	adds r0, r2, #0
	subs r0, #0x30
_0803757E:
	strh r0, [r3]
	add r1, r8
	adds r0, r4, #0
	mov r2, ip
	ands r0, r2
	ldr r3, _080375F8 @ =0xFFFFFA00
	adds r2, r3, #0
	cmp r0, #0
	beq _08037594
	ldr r7, _080375FC @ =0xFFFFFB00
	adds r2, r7, #0
_08037594:
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803754C
	movs r0, #0x5a
	strb r0, [r5]
	ldr r1, _08037600 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _08037604 @ =sub_80379F4
	str r2, [r0, #8]
	movs r3, #1
	mov sb, r3
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r6, #0x18]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	ldr r1, _08037608 @ =sub_800DB30
	bl sub_800D87C
	ldr r0, _0803760C @ =0x0000024D
	bl sub_8003DF0
_080375CC:
	ldr r7, [sp, #0x14]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _080375DA
	b _080373D4
_080375DA:
	mov r0, sb
	cmp r0, #0
	beq _08037646
	movs r1, #0
	mov sl, r1
	ldr r4, _08037610 @ =gUnknown_030015C0
_080375E6:
	mov r2, sl
	cmp r2, #0
	beq _08037614
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037618
	.align 2, 0
_080375F8: .4byte 0xFFFFFA00
_080375FC: .4byte 0xFFFFFB00
_08037600: .4byte gCurTask
_08037604: .4byte sub_80379F4
_08037608: .4byte sub_800DB30
_0803760C: .4byte 0x0000024D
_08037610: .4byte gUnknown_030015C0
_08037614:
	ldr r0, _08037658 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08037618:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r4
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08037638
	ldr r0, [sp, #8]
	adds r1, r6, #0
	bl sub_80213B0
_08037638:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _080375E6
_08037646:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037658: .4byte gUnknown_030008A0

	thumb_func_start sub_803765C
sub_803765C: @ 0x0803765C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	ldr r1, _0803770C @ =0x00000372
	mov sb, r1
	mov r1, sb
	strh r1, [r5, #0xc]
	mov r1, sl
	strb r1, [r5, #0x1a]
	movs r1, #0xb8
	lsls r1, r1, #3
	strh r1, [r5, #0x14]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0x16]
	movs r1, #0xff
	strb r1, [r5, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r5, #0x1c]
	mov r1, sl
	strb r1, [r5, #0x1f]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	str r0, [r4]
	mov r1, sb
	strh r1, [r4, #0xc]
	movs r1, #1
	strb r1, [r4, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	strh r1, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	adds r1, r3, #0
	strb r1, [r4, #0x1b]
	mov r1, r8
	strb r1, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	str r3, [r4, #0x20]
	str r2, [r4, #8]
	adds r0, #0x80
	str r0, [r6]
	mov r0, sb
	strh r0, [r6, #0xc]
	movs r0, #2
	strb r0, [r6, #0x1a]
	mov r1, ip
	strh r1, [r6, #0x14]
	strh r2, [r6, #0xe]
	strh r2, [r6, #0x16]
	adds r0, r3, #0
	strb r0, [r6, #0x1b]
	mov r0, r8
	strb r0, [r6, #0x1c]
	mov r1, sl
	strb r1, [r6, #0x1f]
	str r3, [r6, #0x20]
	str r2, [r6, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803770C: .4byte 0x00000372

	thumb_func_start sub_8037710
sub_8037710: @ 0x08037710
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08037768 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r7]
	mov sb, r1
	ldrb r2, [r7, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsrs r0, r2, #0x10
	mov ip, r0
	asrs r2, r2, #0x10
	ldr r4, _0803776C @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r2, r2, r0
	ldr r1, _08037770 @ =0x03000086
	adds r3, r3, r1
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037774
	subs r0, r2, #2
	b _08037776
	.align 2, 0
_08037768: .4byte gCurTask
_0803776C: .4byte gUnknown_03001D10
_08037770: .4byte 0x03000086
_08037774:
	adds r0, r2, #2
_08037776:
	mov r1, r8
	strh r0, [r1, #0x10]
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	ldr r0, [r4, #4]
	subs r4, r1, r0
	adds r2, r7, #0
	adds r2, #0x86
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08037794
	subs r0, r4, #1
	b _08037796
_08037794:
	adds r0, r4, #1
_08037796:
	mov r1, r8
	strh r0, [r1, #0x12]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080377A4
	subs r0, #1
	strb r0, [r2]
_080377A4:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08037810
	movs r1, #0
	ldr r6, _080377CC @ =gUnknown_030015C0
_080377B8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080377D0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080377D4
	.align 2, 0
_080377CC: .4byte gUnknown_030015C0
_080377D0:
	ldr r0, _08037808 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080377D4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r6
	mov r0, r8
	adds r1, r5, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080377B8
	ldrb r0, [r7, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803780C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803781C
	.align 2, 0
_08037808: .4byte gUnknown_030008A0
_0803780C: .4byte gCurTask
_08037810:
	mov r0, r8
	bl sub_80BF44C
	mov r0, r8
	bl sub_80C033C
_0803781C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8037828
sub_8037828: @ 0x08037828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _080378AC @ =gCurTask
	ldr r0, [r4]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _080378B0 @ =0x0300000C
	adds r0, r0, r5
	mov r8, r0
	mov r1, sl
	ldr r6, [r1]
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #3
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	mov r3, sl
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080378B4 @ =gUnknown_03001D10
	ldr r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x10]
	ldr r0, [r3, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r3, r8
	strh r2, [r3, #0x12]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0803789E
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0803789E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080378B8
_0803789E:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	strb r0, [r6]
	ldr r0, [r4]
	bl TaskDestroy
	b _080379B8
	.align 2, 0
_080378AC: .4byte gCurTask
_080378B0: .4byte 0x0300000C
_080378B4: .4byte gUnknown_03001D10
_080378B8:
	movs r3, #0
	mov sb, r3
	ldr r0, _080378E4 @ =0x030000AA
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r1, _080378E8 @ =0x03000088
	adds r1, r5, r1
	str r1, [sp, #0xc]
	ldr r2, _080378EC @ =0x030000A8
	adds r2, r5, r2
	str r2, [sp, #4]
	ldr r3, _080378F0 @ =0x0300008C
	adds r3, r5, r3
	str r3, [sp, #0x10]
_080378D4:
	mov r0, sb
	cmp r0, #1
	beq _08037908
	cmp r0, #1
	bgt _080378F4
	cmp r0, #0
	beq _08037900
	b _0803791E
	.align 2, 0
_080378E4: .4byte 0x030000AA
_080378E8: .4byte 0x03000088
_080378EC: .4byte 0x030000A8
_080378F0: .4byte 0x0300008C
_080378F4:
	mov r1, sb
	cmp r1, #2
	beq _08037910
	cmp r1, #3
	beq _08037918
	b _0803791E
_08037900:
	movs r2, #0x34
	add r2, sl
	mov r8, r2
	b _0803791E
_08037908:
	movs r3, #0x5c
	add r3, sl
	mov r8, r3
	b _0803791E
_08037910:
	movs r0, #0x5c
	add r0, sl
	mov r8, r0
	b _0803791E
_08037918:
	movs r1, #0x34
	add r1, sl
	mov r8, r1
_0803791E:
	mov r2, sb
	lsls r1, r2, #2
	ldr r3, [sp, #8]
	adds r5, r3, r1
	ldrh r0, [r5]
	adds r0, #0x80
	strh r0, [r5]
	lsls r2, r2, #3
	ldr r0, [sp, #0xc]
	adds r6, r0, r2
	ldr r3, [sp, #4]
	adds r7, r3, r1
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, [sp, #0x10]
	adds r4, r1, r2
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _080379C8 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bge _08037986
	lsls r1, r0, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r3, #0
	ldrsh r1, [r7, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r7]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	strh r0, [r5]
_08037986:
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _080379CC @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	mov r0, r8
	bl sub_80BF44C
	mov r0, r8
	bl sub_80C033C
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _080378D4
_080379B8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080379C8: .4byte sub_8051F54
_080379CC: .4byte gUnknown_03001D10

	thumb_func_start sub_80379D0
sub_80379D0: @ 0x080379D0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_80379E4
sub_80379E4: @ 0x080379E4
	push {lr}
	bl sub_8037388
	bl sub_8037710
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80379F4
sub_80379F4: @ 0x080379F4
	push {r4, r5, r6, lr}
	ldr r0, _08037A3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r6, [r5]
	bl sub_8037A44
	ldr r0, _08037A40 @ =0x03000086
	adds r4, r4, r0
	ldrb r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08037A1A
	cmp r4, #0x1e
	bls _08037A1E
_08037A1A:
	bl sub_8037828
_08037A1E:
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037A34
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	ldr r0, _08037A3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08037A34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037A3C: .4byte gCurTask
_08037A40: .4byte 0x03000086

	thumb_func_start sub_8037A44
sub_8037A44: @ 0x08037A44
	push {lr}
	ldr r0, _08037A60 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08037A64 @ =0x03000086
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08037A5A
	subs r0, #1
	strb r0, [r1]
_08037A5A:
	pop {r0}
	bx r0
	.align 2, 0
_08037A60: .4byte gCurTask
_08037A64: .4byte 0x03000086

	thumb_func_start CreateEntity_Interactable065
CreateEntity_Interactable065: @ 0x08037A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08037B00 @ =sub_8037DF8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037B04 @ =sub_8037DE4
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r2, _08037B08 @ =0x0300000C
	adds r1, r3, r2
	movs r7, #0
	mov sb, r7
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r2, [r2]
	strb r2, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r6, r8
	ldrb r2, [r6, #7]
	movs r0, #3
	ands r0, r2
	ldr r7, _08037B0C @ =0x03000034
	adds r2, r3, r7
	strb r0, [r2]
	ldr r0, _08037B10 @ =0x03000035
	adds r3, r3, r0
	mov r6, sb
	strb r6, [r3]
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	ldrb r0, [r2]
	bl sub_8037CA4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B00: .4byte sub_8037DF8
_08037B04: .4byte sub_8037DE4
_08037B08: .4byte 0x0300000C
_08037B0C: .4byte 0x03000034
_08037B10: .4byte 0x03000035

	thumb_func_start sub_8037B14
sub_8037B14: @ 0x08037B14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08037B78 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, _08037B7C @ =0x0300000C
	adds r0, r0, r2
	mov r8, r0
	mov r1, sb
	ldr r3, [r1]
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r3, sb
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r5, _08037B80 @ =0x03000035
	adds r2, r2, r5
	movs r0, #1
	strb r0, [r2]
	movs r0, #0
	mov sl, r0
_08037B66:
	mov r1, sl
	cmp r1, #0
	beq _08037B84
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037B88
	.align 2, 0
_08037B78: .4byte gCurTask
_08037B7C: .4byte 0x0300000C
_08037B80: .4byte 0x03000035
_08037B84:
	ldr r0, _08037BDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08037B88:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08037BE0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _08037C84
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08037C84
	mov r0, sb
	adds r0, #0x35
	strb r5, [r0]
	subs r0, #1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08037C16
	cmp r0, #1
	bgt _08037BE4
	cmp r0, #0
	beq _08037BEE
	b _08037C84
	.align 2, 0
_08037BDC: .4byte gUnknown_030008A0
_08037BE0: .4byte gUnknown_030015C0
_08037BE4:
	cmp r0, #2
	beq _08037C38
	cmp r0, #3
	beq _08037C60
	b _08037C84
_08037BEE:
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08037BFE
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bgt _08037C0A
_08037BFE:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #3
	b _08037C26
_08037C0A:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _08037C84
	movs r0, #1
	b _08037C70
_08037C16:
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	blt _08037C2C
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	movs r0, #7
_08037C26:
	mov r1, r8
	strb r0, [r1, #0x1a]
	b _08037C84
_08037C2C:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _08037C84
	movs r0, #5
	b _08037C70
_08037C38:
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _08037C48
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08037C54
_08037C48:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #3
	b _08037C70
_08037C54:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	ble _08037C84
	movs r0, #1
	b _08037C80
_08037C60:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08037C76
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #7
_08037C70:
	mov r3, r8
	strb r0, [r3, #0x1a]
	b _08037C84
_08037C76:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	ble _08037C84
	movs r0, #5
_08037C80:
	mov r5, r8
	strb r0, [r5, #0x1a]
_08037C84:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _08037C94
	b _08037B66
_08037C94:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8037CA4
sub_8037CA4: @ 0x08037CA4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x10
	bl sub_80C3224
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	ldr r0, _08037CFC @ =0x00000373
	strh r0, [r4, #0xc]
	movs r1, #1
	ands r1, r5
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #4
	ands r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	ldr r0, _08037D00 @ =gUnknown_080CF680
	lsls r5, r5, #2
	adds r5, r5, r0
	ldr r0, [r5]
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037CFC: .4byte 0x00000373
_08037D00: .4byte gUnknown_080CF680

	thumb_func_start sub_8037D04
sub_8037D04: @ 0x08037D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08037D64 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r4, r1, r0
	ldr r5, _08037D68 @ =0x0300000C
	add r5, r8
	ldr r0, [r4]
	mov sb, r0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08037D6C
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08037DD4
	.align 2, 0
_08037D64: .4byte gCurTask
_08037D68: .4byte 0x0300000C
_08037D6C:
	ldr r1, _08037DA8 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_80C033C
	cmp r4, #0
	bne _08037DD4
	ldr r0, _08037DAC @ =0x03000035
	add r0, r8
	ldrb r0, [r0]
	ldrb r1, [r5, #0x1a]
	cmp r0, #0
	beq _08037DB8
	adds r0, r1, #0
	cmp r0, #1
	bne _08037DB0
	movs r0, #2
	b _08037DD2
	.align 2, 0
_08037DA8: .4byte gUnknown_03001D10
_08037DAC: .4byte 0x03000035
_08037DB0:
	cmp r0, #5
	bne _08037DB8
	movs r0, #6
	b _08037DD2
_08037DB8:
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037DC6
	movs r0, #0
	b _08037DD2
_08037DC6:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08037DD4
	movs r0, #4
_08037DD2:
	strb r0, [r5, #0x1a]
_08037DD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8037DE4
sub_8037DE4: @ 0x08037DE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8037DF8
sub_8037DF8: @ 0x08037DF8
	push {lr}
	bl sub_8037B14
	bl sub_8037D04
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable066
CreateEntity_Interactable066: @ 0x08037E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	ldrb r0, [r7, #7]
	mov sb, r0
	ldr r0, _08037EF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	bne _08037ED6
	mov r0, sb
	cmp r0, #0x2c
	bne _08037E44
	ldr r0, _08037EF4 @ =gUnknown_03000530
	ldrb r0, [r0, #0x11]
	cmp r0, #7
	bls _08037ED6
_08037E44:
	mov r0, sb
	cmp r0, #3
	beq _08037E52
	cmp r0, #8
	beq _08037E52
	cmp r0, #9
	bne _08037E58
_08037E52:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08037ED6
_08037E58:
	ldr r0, _08037EF8 @ =sub_8037F18
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037EFC @ =sub_80385F4
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r2, _08037F00 @ =0x0300000C
	adds r6, r5, r2
	ldr r0, _08037F04 @ =0x03000034
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _08037F08 @ =0x00000CAC
	bl sub_80C6AD8
	str r0, [r4, #0x64]
	movs r2, #0
	movs r3, #0
	mov r1, sl
	strh r1, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #6]
	str r7, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #0xa]
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r4, #0xb]
	ldr r1, _08037F0C @ =0x03000061
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08037F10 @ =0x03000060
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08037F14 @ =0x03000062
	adds r5, r5, r1
	strb r2, [r5]
	str r3, [r4, #0x5c]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	mov r1, r8
	bl sub_80384B0
_08037ED6:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037EF0: .4byte gUnknown_030008A0
_08037EF4: .4byte gUnknown_03000530
_08037EF8: .4byte sub_8037F18
_08037EFC: .4byte sub_80385F4
_08037F00: .4byte 0x0300000C
_08037F04: .4byte 0x03000034
_08037F08: .4byte 0x00000CAC
_08037F0C: .4byte 0x03000061
_08037F10: .4byte 0x03000060
_08037F14: .4byte 0x03000062

	thumb_func_start sub_8037F18
sub_8037F18: @ 0x08037F18
	push {r4, r5, r6, lr}
	ldr r5, _08037F78 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	bl sub_80382EC
	cmp r0, #0
	beq _08037F6C
	ldr r1, [r5]
	ldr r0, _08037F7C @ =sub_8037F8C
	str r0, [r1, #8]
	ldr r0, _08037F80 @ =0x03000060
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08037F84 @ =gUnknown_030008A0
	movs r0, #4
	strb r0, [r1, #4]
	movs r2, #1
	adds r0, r2, #0
	ldrb r3, [r1, #6]
	lsls r0, r3
	adds r3, r1, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r1, #0x85
	strb r2, [r1]
	ldr r0, _08037F88 @ =0x00000201
	bl sub_8003DF0
	ldr r0, [r6, #0x5c]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _08037F6C
	bl sub_80299FC
_08037F6C:
	bl sub_8038548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037F78: .4byte gCurTask
_08037F7C: .4byte sub_8037F8C
_08037F80: .4byte 0x03000060
_08037F84: .4byte gUnknown_030008A0
_08037F88: .4byte 0x00000201

	thumb_func_start sub_8037F8C
sub_8037F8C: @ 0x08037F8C
	push {r4, r5, lr}
	ldr r3, _08038028 @ =gUnknown_030008A0
	movs r0, #4
	strb r0, [r3, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r2, [r3, #6]
	lsls r0, r2
	adds r2, r3, #0
	adds r2, #0xb9
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r5, _0803802C @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08038030 @ =gUnknown_030015C0
	adds r0, r0, r1
	adds r0, #0x9e
	ldrh r1, [r0]
	subs r1, #0x40
	strh r1, [r0]
	ldr r3, _08038034 @ =0x03000060
	adds r4, r2, r3
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037FDC
	ldr r1, [r5]
	ldr r0, _08038038 @ =sub_8038058
	str r0, [r1, #8]
_08037FDC:
	ldr r2, _0803803C @ =gUnknown_03003C20
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	ldr r1, _08038040 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08038044 @ =gUnknown_03003580
	ldr r0, _08038048 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r2, [r4]
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r0, _0803804C @ =0x00003F1F
	strh r0, [r3, #8]
	movs r0, #0x1f
	strh r0, [r3, #0xa]
	ldr r2, _08038050 @ =gUnknown_03002BF8
	ldr r0, _08038054 @ =0x00003FAF
	strh r0, [r2]
	ldrb r1, [r4]
	lsrs r1, r1, #1
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #4]
	bl sub_8038548
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038028: .4byte gUnknown_030008A0
_0803802C: .4byte gCurTask
_08038030: .4byte gUnknown_030015C0
_08038034: .4byte 0x03000060
_08038038: .4byte sub_8038058
_0803803C: .4byte gUnknown_03003C20
_08038040: .4byte 0x0000DFFF
_08038044: .4byte gUnknown_03003580
_08038048: .4byte 0x000020D0
_0803804C: .4byte 0x00003F1F
_08038050: .4byte gUnknown_03002BF8
_08038054: .4byte 0x00003FAF

	thumb_func_start sub_8038058
sub_8038058: @ 0x08038058
	push {r4, r5, r6, lr}
	ldr r2, _080380D8 @ =gUnknown_030008A0
	movs r0, #4
	strb r0, [r2, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r3, [r2, #6]
	lsls r0, r3
	adds r3, r2, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r6, _080380DC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r5, [r0, #0x64]
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080380E0 @ =gUnknown_030015C0
	adds r0, r0, r1
	ldr r2, _080380E4 @ =gUnknown_03003580
	ldr r1, _080380E8 @ =0x000020D0
	strh r1, [r2, #2]
	ldr r1, _080380EC @ =0x00001858
	strh r1, [r2, #6]
	ldr r2, _080380F0 @ =gUnknown_03002BF8
	movs r1, #8
	strh r1, [r2, #4]
	adds r0, #0x9e
	movs r1, #0xfc
	lsls r1, r1, #8
	strh r1, [r0]
	bl sub_8038548
	cmp r0, #0
	beq _080380D0
	adds r0, r5, #0
	bl sub_8023734
	cmp r0, #0
	beq _080380CA
	ldr r0, _080380F4 @ =0x03000060
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _080380F8 @ =sub_80380FC
	str r0, [r1, #8]
_080380CA:
	adds r0, r5, #0
	bl sub_80239A8
_080380D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080380D8: .4byte gUnknown_030008A0
_080380DC: .4byte gCurTask
_080380E0: .4byte gUnknown_030015C0
_080380E4: .4byte gUnknown_03003580
_080380E8: .4byte 0x000020D0
_080380EC: .4byte 0x00001858
_080380F0: .4byte gUnknown_03002BF8
_080380F4: .4byte 0x03000060
_080380F8: .4byte sub_80380FC

	thumb_func_start sub_80380FC
sub_80380FC: @ 0x080380FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _0803816C @ =gUnknown_030008A0
	movs r0, #4
	strb r0, [r2, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r3, [r2, #6]
	lsls r0, r3
	adds r3, r2, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r0, _08038170 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08038174 @ =gUnknown_030015C0
	adds r4, r0, r2
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r1, _08038178 @ =0x03000060
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080381AE
	movs r5, #0
	ldr r0, _0803817C @ =0x03000062
	adds r0, r0, r3
	mov r8, r0
	adds r7, r2, #0
_0803815A:
	cmp r5, #0
	beq _08038180
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038184
	.align 2, 0
_0803816C: .4byte gUnknown_030008A0
_08038170: .4byte gCurTask
_08038174: .4byte gUnknown_030015C0
_08038178: .4byte 0x03000060
_0803817C: .4byte 0x03000062
_08038180:
	ldr r0, _080381F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08038184:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080381A4
	adds r0, r4, #0
	bl sub_800ED34
_080381A4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803815A
_080381AE:
	adds r5, r6, #0
	adds r5, #0x60
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080382A8
	ldr r2, _080381F8 @ =gUnknown_03003C20
	ldrh r1, [r2]
	ldr r0, _080381FC @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08038200 @ =gUnknown_03002BF8
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, _08038204 @ =gUnknown_03001D10
	strh r3, [r0, #0xe]
	movs r5, #0
	movs r3, #0x62
	adds r3, r3, r6
	mov r8, r3
	movs r0, #0x26
	adds r0, r0, r6
	mov sb, r0
	ldr r2, _08038208 @ =gUnknown_030015C0
_080381E4:
	cmp r5, #0
	beq _0803820C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038210
	.align 2, 0
_080381F4: .4byte gUnknown_030008A0
_080381F8: .4byte gUnknown_03003C20
_080381FC: .4byte 0x0000BFFF
_08038200: .4byte gUnknown_03002BF8
_08038204: .4byte gUnknown_03001D10
_08038208: .4byte gUnknown_030015C0
_0803820C:
	ldr r0, _08038290 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08038210:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	ldr r1, _08038294 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0803823E
	adds r0, r4, #0
	ldr r1, _08038298 @ =sub_8005380
	str r2, [sp]
	bl sub_800D87C
	ldr r2, [sp]
_0803823E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080381E4
	ldr r0, [r6, #0x5c]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0803825C
	movs r0, #0x4b
	bl sub_8029A18
_0803825C:
	ldr r0, _0803829C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080382A0 @ =sub_8037F18
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r6, #0x5c]
	movs r2, #0
	ldr r0, _080382A4 @ =0x000003D1
	strh r0, [r6, #0x18]
	mov r3, sb
	strb r7, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x20]
	ldr r0, _08038290 @ =gUnknown_030008A0
	movs r1, #3
	strb r1, [r0, #4]
	adds r1, r0, #0
	adds r1, #0xb9
	strb r2, [r1]
	adds r0, #0x85
	strb r2, [r0]
	b _080382CC
	.align 2, 0
_08038290: .4byte gUnknown_030008A0
_08038294: .4byte 0xEFFFFFFF
_08038298: .4byte sub_8005380
_0803829C: .4byte gCurTask
_080382A0: .4byte sub_8037F18
_080382A4: .4byte 0x000003D1
_080382A8:
	ldr r3, _080382E0 @ =gUnknown_03003580
	ldr r0, _080382E4 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r0, [r5]
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r1, _080382E8 @ =gUnknown_03002BF8
	ldrb r0, [r5]
	lsrs r0, r0, #1
	strh r0, [r1, #4]
_080382CC:
	bl sub_8038548
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080382E0: .4byte gUnknown_03003580
_080382E4: .4byte 0x000020D0
_080382E8: .4byte gUnknown_03002BF8

	thumb_func_start sub_80382EC
sub_80382EC: @ 0x080382EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r4, #0
	mov sb, r4
	ldr r0, _08038340 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [r5]
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	lsls r7, r2, #0x10
_0803832E:
	cmp r6, #0
	beq _08038344
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038348
	.align 2, 0
_08038340: .4byte gCurTask
_08038344:
	ldr r0, _080383F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08038348:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080383F8 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _080383B8
	cmp r1, #0x14
	beq _080383B8
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080383B8
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080383B8
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _080383B8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080383B8
	mov r1, r8
	lsls r2, r1, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sl
	asrs r1, r7, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080383B8
	ldrh r1, [r4, #0x20]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080383B8
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r0, r0, #0x18
	mov sb, r0
_080383B8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803832E
	mov r2, sb
	cmp r2, #0
	beq _0803849C
	adds r0, r5, #0
	adds r0, #0x62
	strb r2, [r0]
	subs r0, #0x2e
	adds r1, r5, #0
	adds r1, #0x61
	ldrb r1, [r1]
	ldr r2, [r5, #0x64]
	bl sub_80236C8
	movs r6, #0
	ldr r0, _080383FC @ =gUnknown_080CF690
	mov r8, r0
_080383E2:
	cmp r6, #0
	beq _08038400
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038404
	.align 2, 0
_080383F4: .4byte gUnknown_030008A0
_080383F8: .4byte gUnknown_030015C0
_080383FC: .4byte gUnknown_080CF690
_08038400:
	ldr r0, _08038478 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08038404:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803847C @ =gUnknown_030015C0
	adds r4, r0, r1
	mov r0, sb
	asrs r0, r6
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08038484
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800ED14
	str r4, [r5, #0x5c]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0xe0
	ldr r0, [r1]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r5, #0x20]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #4]
	ands r0, r7
	cmp r0, #0
	bne _0803846A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0803846A:
	str r1, [r5, #0x14]
	adds r0, r4, #0
	ldr r1, _08038480 @ =0x00000202
	bl sub_8004E98
	b _0803848E
	.align 2, 0
_08038478: .4byte gUnknown_030008A0
_0803847C: .4byte gUnknown_030015C0
_08038480: .4byte 0x00000202
_08038484:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #4]
_0803848E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080383E2
	movs r0, #1
	b _0803849E
_0803849C:
	movs r0, #0
_0803849E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80384B0
sub_80384B0: @ 0x080384B0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r0, _08038540 @ =0x000003D1
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	movs r0, #4
	bl sub_80C3224
	str r0, [r5]
	ldr r0, _08038544 @ =0x00000412
	strh r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0xe]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	mov r0, r8
	strb r0, [r5, #0x1c]
	movs r0, #0xf
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	str r6, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038540: .4byte 0x000003D1
_08038544: .4byte 0x00000412

	thumb_func_start sub_8038548
sub_8038548: @ 0x08038548
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080385A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080385A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _080385E4
	.align 2, 0
_080385A0: .4byte gCurTask
_080385A4:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _080385C8
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r2, _080385C4 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	b _080385D4
	.align 2, 0
_080385C4: .4byte gUnknown_03001D10
_080385C8:
	ldr r0, _080385F0 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
_080385D4:
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	movs r0, #1
_080385E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080385F0: .4byte gUnknown_03001D10

	thumb_func_start sub_80385F4
sub_80385F4: @ 0x080385F4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl sub_80C3304
	ldr r0, [r4, #0x34]
	bl sub_80C3304
	ldr r0, [r4, #0x64]
	bl sub_80C6B3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8038618
sub_8038618: @ 0x08038618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080386F0 @ =sub_803873C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080386F4 @ =sub_8038C28
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r2, _080386F8 @ =0x0300000C
	add r2, r8
	str r2, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r3, sl
	str r3, [r7]
	ldrb r0, [r3]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0x34]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x38]
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x3c]
	movs r0, #0
	strh r0, [r7, #0x3e]
	ldr r0, _080386FC @ =0x03000040
	add r0, r8
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08038700 @ =0x03000041
	add r8, r2
	mov r3, r8
	strb r4, [r3]
	movs r2, #0
	mov r4, sl
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080386D2
	movs r3, #1
_080386B6:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _080386D2
	mov r4, sl
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080386B6
_080386D2:
	adds r1, r7, #0
	adds r1, #0x42
	strb r2, [r1]
	ldr r0, _08038704 @ =gUnknown_030008A0
	adds r0, #0x2c
	ldrb r0, [r0]
	asrs r0, r2
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08038708
	adds r0, r7, #0
	adds r0, #0x43
	strb r2, [r0]
	b _0803870E
	.align 2, 0
_080386F0: .4byte sub_803873C
_080386F4: .4byte sub_8038C28
_080386F8: .4byte 0x0300000C
_080386FC: .4byte 0x03000040
_08038700: .4byte 0x03000041
_08038704: .4byte gUnknown_030008A0
_08038708:
	adds r2, r7, #0
	adds r2, #0x43
	strb r0, [r2]
_0803870E:
	ldr r0, [r7, #0x34]
	ldr r2, [sp, #4]
	strh r0, [r2, #0x10]
	ldr r0, [r7, #0x38]
	strh r0, [r2, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sl
	strb r0, [r4]
	ldrb r0, [r1]
	ldr r1, [sp, #4]
	bl sub_8038910
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803873C
sub_803873C: @ 0x0803873C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08038808 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, ip
	adds r7, r1, r0
	movs r3, #0
	mov sl, r3
	adds r0, #0xc
	add r0, ip
	str r0, [sp, #4]
	ldr r5, [r7]
	ldr r0, _0803880C @ =0x03000043
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #1
	beq _08038770
	b _080388F8
_08038770:
	ldrb r3, [r7, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	ldrb r2, [r5, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldr r0, _08038810 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r4, [r5, #6]
	lsls r4, r4, #0xa
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r3, r3, r0
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xa
	adds r3, r3, r1
	str r3, [sp, #8]
	adds r2, r2, r4
	ldr r3, [r7, #0x34]
	mov sb, r3
	ldr r0, [r7, #0x38]
	mov r8, r0
	ldr r5, _08038814 @ =gUnknown_082B48B4
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, [sp, #8]
	adds r3, r1, r0
	str r3, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	adds r2, r2, r0
	str r2, [r7, #0x38]
	mov r0, sb
	subs r0, r0, r3
	mov sb, r0
	mov r1, r8
	subs r1, r1, r2
	mov r8, r1
	movs r1, #0
	ldr r5, _08038818 @ =0x03000040
	add r5, ip
_080387FA:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803881C
	ldr r0, _08038810 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08038826
	.align 2, 0
_08038808: .4byte gCurTask
_0803880C: .4byte 0x03000043
_08038810: .4byte gUnknown_030008A0
_08038814: .4byte gUnknown_082B48B4
_08038818: .4byte 0x03000040
_0803881C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038826:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803886C @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080388A4
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038870
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #4]
	cmp r0, r3
	bne _08038870
	ldr r0, [r6, #0x10]
	mov r1, sb
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r1, r8
	subs r0, r0, r1
	str r0, [r6, #0x14]
	movs r3, #1
	mov sl, r3
	b _0803887A
	.align 2, 0
_0803886C: .4byte gUnknown_030015C0
_08038870:
	mov r0, sl
	cmp r0, #0
	bne _0803887A
	ldr r1, _080388CC @ =0x0000FFFF
	mov sl, r1
_0803887A:
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080388A4
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_080388A4:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080387FA
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _080388E4
	cmp r2, #1
	bne _080388D0
	ldrb r0, [r5]
	cmp r0, #0xf
	bhi _080388D0
	adds r0, #1
	b _080388E2
	.align 2, 0
_080388CC: .4byte 0x0000FFFF
_080388D0:
	asrs r1, r1, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080388E4
	ldrb r0, [r5]
	cmp r0, #0
	beq _080388E4
	subs r0, #1
_080388E2:
	strb r0, [r5]
_080388E4:
	ldr r1, _0803890C @ =gUnknown_082B48B4
	ldrb r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x15
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080388F8:
	bl sub_8038988
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803890C: .4byte gUnknown_082B48B4

	thumb_func_start sub_8038910
sub_8038910: @ 0x08038910
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	ldr r1, _08038980 @ =gUnknown_080CF69C
	mov r0, sp
	movs r2, #0x2a
	bl sub_80CA3B0
	ldr r2, _08038984 @ =gUnknown_030008A0
	ldrb r0, [r2, #0xa]
	movs r1, #0
	cmp r0, #9
	beq _0803892C
	ldrb r1, [r2, #9]
_0803892C:
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	add r0, sp, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_80C3224
	str r0, [r5]
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r5, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	add sp, #0x2c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038980: .4byte gUnknown_080CF69C
_08038984: .4byte gUnknown_030008A0

	thumb_func_start sub_8038988
sub_8038988: @ 0x08038988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08038A18 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, #0xc
	adds r6, r5, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	mov ip, r2
	ldr r3, _08038A1C @ =gUnknown_03001D10
	mov sb, r3
	ldr r2, [r3]
	mov r3, ip
	subs r3, r3, r2
	movs r2, #0
	mov sl, r2
	strh r3, [r6, #0x10]
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	mov r3, sb
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #0xc]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08038A68
	movs r1, #0
	ldr r2, _08038A20 @ =gUnknown_030015C0
_08038A04:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08038A24
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038A28
	.align 2, 0
_08038A18: .4byte gCurTask
_08038A1C: .4byte gUnknown_03001D10
_08038A20: .4byte gUnknown_030015C0
_08038A24:
	ldr r0, _08038A60 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08038A28:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038A04
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08038A64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08038BBE
	.align 2, 0
_08038A60: .4byte gUnknown_030008A0
_08038A64: .4byte gCurTask
_08038A68:
	ldr r3, _08038B04 @ =gUnknown_030008A0
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldr r2, _08038B08 @ =0x03000042
	adds r1, r5, r2
	ldrb r2, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038B3E
	ldr r4, _08038B0C @ =0x03000043
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08038B14
	strb r1, [r6, #0x1a]
	strb r1, [r4]
	ldr r1, [r3, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
	mov r0, r8
	movs r3, #4
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0xb
	ldr r1, [sp, #4]
	adds r3, r1, r3
	ldrb r4, [r0, #6]
	lsls r4, r4, #0xa
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0xb
	ldr r2, [sp]
	adds r1, r2, r1
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r3, r3, r4
	mov r8, r3
	ldr r5, _08038B10 @ =gUnknown_082B48B4
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r4, r8
	adds r3, r4, r0
	str r3, [r7, #0x38]
	asrs r1, r1, #8
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	mov r7, ip
	b _08038B9C
	.align 2, 0
_08038B04: .4byte gUnknown_030008A0
_08038B08: .4byte 0x03000042
_08038B0C: .4byte 0x03000043
_08038B10: .4byte gUnknown_082B48B4
_08038B14:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x2e
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x77
	bhi _08038B30
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	beq _08038B9C
	movs r0, #2
	strb r0, [r6, #0x1a]
	b _08038B9C
_08038B30:
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	bne _08038B9C
	mov r3, sl
	strb r3, [r6, #0x1a]
	b _08038B9C
_08038B3E:
	ldr r1, _08038B60 @ =0x03000043
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #1
	bne _08038B9C
	mov r2, sl
	strb r2, [r7]
	movs r1, #0
	ldr r2, _08038B64 @ =gUnknown_030015C0
_08038B52:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08038B6C
	ldr r0, _08038B68 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08038B76
	.align 2, 0
_08038B60: .4byte 0x03000043
_08038B64: .4byte gUnknown_030015C0
_08038B68: .4byte gUnknown_030008A0
_08038B6C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038B76:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl sub_80213B0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038B52
_08038B9C:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08038BBE
	adds r0, r6, #0
	bl sub_80BF44C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08038BB8
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	bne _08038BB8
	strb r1, [r6, #0x1a]
_08038BB8:
	adds r0, r6, #0
	bl sub_80C033C
_08038BBE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable067
CreateEntity_Interactable067: @ 0x08038BD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038618
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable068
CreateEntity_Interactable068: @ 0x08038BFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038618
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8038C28
sub_8038C28: @ 0x08038C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8038C3C
sub_8038C3C: @ 0x08038C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08038D30 @ =sub_8038D40
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038D34 @ =sub_8039184
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _08038D38 @ =0x0300000C
	add r3, r8
	str r3, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sl
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	mov r3, sl
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0x34]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x38]
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x3c]
	movs r0, #0
	strh r0, [r7, #0x3e]
	ldr r1, _08038D3C @ =0x03000040
	add r8, r1
	mov r3, r8
	strb r4, [r3]
	movs r2, #0
	mov r4, sl
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08038CF0
	movs r3, #1
_08038CD4:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _08038CF0
	mov r4, sl
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08038CD4
_08038CF0:
	adds r0, r2, #1
	adds r2, r7, #0
	adds r2, #0x41
	movs r1, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [r7, #0x34]
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r7, #0x38]
	strh r0, [r1, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sl
	strb r0, [r4]
	ldr r0, [sp, #4]
	bl sub_8038F28
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038D30: .4byte sub_8038D40
_08038D34: .4byte sub_8039184
_08038D38: .4byte 0x0300000C
_08038D3C: .4byte 0x03000040

	thumb_func_start sub_8038D40
sub_8038D40: @ 0x08038D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08038D9C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, _08038DA0 @ =0x0300000C
	adds r1, r1, r2
	mov r8, r1
	ldr r3, [r7]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r5, r1, #8
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r4, r1, #8
	ldr r0, _08038DA4 @ =0x03000041
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08038DB0
	ldr r0, _08038DA8 @ =gUnknown_030008A0
	ldrb r1, [r2]
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	ldrh r1, [r7, #0x3c]
	adds r0, r0, r1
	ldr r2, _08038DAC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0x3e]
	b _08038DC2
	.align 2, 0
_08038D9C: .4byte gCurTask
_08038DA0: .4byte 0x0300000C
_08038DA4: .4byte 0x03000041
_08038DA8: .4byte gUnknown_030008A0
_08038DAC: .4byte 0x000003FF
_08038DB0:
	ldr r0, _08038E30 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
_08038DC2:
	movs r2, #4
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r4, [r3, #6]
	lsls r4, r4, #0xa
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r1, r1, #0xb
	adds r1, r5, r1
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adds r2, r2, r4
	mov ip, r2
	ldr r0, [r7, #0x34]
	mov sl, r0
	ldr r2, [r7, #0x38]
	mov sb, r2
	ldr r5, _08038E34 @ =gUnknown_082B48B4
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r3, ip
	adds r2, r3, r0
	str r2, [r7, #0x38]
	mov r0, sl
	subs r0, r0, r1
	mov sl, r0
	mov r1, sb
	subs r1, r1, r2
	mov sb, r1
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x42
_08038E22:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08038E38
	ldr r0, _08038E30 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08038E42
	.align 2, 0
_08038E30: .4byte gUnknown_030008A0
_08038E34: .4byte gUnknown_082B48B4
_08038E38:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038E42:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08038EB8 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08038ED2
	ldr r1, [r6, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038E84
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _08038E84
	ldr r0, [r6, #0x10]
	mov r2, sl
	subs r0, r0, r2
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r2, sb
	subs r0, r0, r2
	str r0, [r6, #0x14]
	movs r3, #1
	str r3, [sp, #4]
_08038E84:
	adds r0, r7, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038EBC
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08038ED2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _08038ED2
	.align 2, 0
_08038EB8: .4byte gUnknown_030015C0
_08038EBC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038ED2
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _08038ED2
	mov r0, r8
	adds r1, r6, #0
	bl sub_80213B0
_08038ED2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08038E22
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _08038EF0
	adds r0, r7, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F0A
_08038EF0:
	ldrb r0, [r5]
	cmp r0, #0x3f
	bhi _08038EFA
	adds r0, #1
	strb r0, [r5]
_08038EFA:
	ldrb r0, [r5]
	cmp r0, #0x30
	bls _08038F14
	adds r1, r7, #0
	adds r1, #0x43
	movs r0, #1
	strb r0, [r1]
	b _08038F14
_08038F0A:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08038F14
	subs r0, #1
	strb r0, [r5]
_08038F14:
	bl sub_803901C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8038F28
sub_8038F28: @ 0x08038F28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08038F40 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bhi _08039010
	lsls r0, r0, #2
	ldr r1, _08038F44 @ =_08038F48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038F40: .4byte gUnknown_030008A0
_08038F44: .4byte _08038F48
_08038F48: @ jump table
	.4byte _08038F64 @ case 0
	.4byte _08038F78 @ case 1
	.4byte _08038F88 @ case 2
	.4byte _08038F9C @ case 3
	.4byte _08038FB0 @ case 4
	.4byte _08038FC4 @ case 5
	.4byte _08038FD8 @ case 6
_08038F64:
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038F74 @ =0x0000036D
	b _08038FE4
	.align 2, 0
_08038F74: .4byte 0x0000036D
_08038F78:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	movs r0, #0xe0
	lsls r0, r0, #2
	b _08038FE4
_08038F88:
	movs r0, #0x24
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038F98 @ =0x0000038B
	b _08038FE4
	.align 2, 0
_08038F98: .4byte 0x0000038B
_08038F9C:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038FAC @ =0x000003B7
	b _08038FE4
	.align 2, 0
_08038FAC: .4byte 0x000003B7
_08038FB0:
	movs r4, #0xee
	lsls r4, r4, #2
	adds r0, r4, #0
	bl sub_80C3224
	str r0, [r5]
	movs r0, #0
	strh r4, [r5, #0xc]
	strb r0, [r5, #0x1a]
	b _08038FE8
_08038FC4:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _08038FD4 @ =0x000003AA
	b _08038FE4
	.align 2, 0
_08038FD4: .4byte 0x000003AA
_08038FD8:
	movs r0, #0x1e
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _08039018 @ =0x000003A7
_08038FE4:
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
_08038FE8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
_08039010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039018: .4byte 0x000003A7

	thumb_func_start sub_803901C
sub_803901C: @ 0x0803901C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08039098 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r6, r1, r0
	ldr r7, _0803909C @ =0x0300000C
	add r7, r8
	ldr r2, [r6]
	mov sb, r2
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r6, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r4, _080390A0 @ =gUnknown_03001D10
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r7, #0x10]
	ldr r2, [r6, #0x38]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r7, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r7, r3]
	movs r4, #0x12
	ldrsh r3, [r7, r4]
	bl sub_802C140
	cmp r0, #0
	bne _080390EC
	movs r1, #0
	ldr r2, _080390A4 @ =gUnknown_030015C0
_08039084:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080390A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080390AC
	.align 2, 0
_08039098: .4byte gCurTask
_0803909C: .4byte 0x0300000C
_080390A0: .4byte gUnknown_03001D10
_080390A4: .4byte gUnknown_030015C0
_080390A8:
	ldr r0, _080390E4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080390AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r7, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08039084
	ldrb r0, [r6, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _080390E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803911C
	.align 2, 0
_080390E4: .4byte gUnknown_030008A0
_080390E8: .4byte gCurTask
_080390EC:
	ldr r0, _080390FC @ =0x03000042
	add r0, r8
	ldrb r0, [r0]
	lsrs r0, r0, #2
	cmp r0, #3
	bgt _08039100
	movs r1, #0
	b _08039106
	.align 2, 0
_080390FC: .4byte 0x03000042
_08039100:
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08039106:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	bgt _0803911C
	strb r1, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0803911C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable069
CreateEntity_Interactable069: @ 0x0803912C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038C3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable070
CreateEntity_Interactable070: @ 0x08039158
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038C3C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8039184
sub_8039184: @ 0x08039184
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8039198
sub_8039198: @ 0x08039198
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803922C @ =sub_8039230
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r0, [r7, #7]
	lsrs r0, r0, #6
	strb r0, [r2, #0xc]
	movs r3, #0
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803920E
	movs r4, #1
_080391F4:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _0803920E
	ldrb r0, [r7, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080391F4
_0803920E:
	adds r0, r3, #1
	strb r0, [r2, #0xd]
	mov r0, r8
	strb r0, [r2, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803922C: .4byte sub_8039230

	thumb_func_start sub_8039230
sub_8039230: @ 0x08039230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _080392D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sb, r0
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	mov r3, sb
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	str r0, [sp, #0x1c]
	mov r3, sb
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r2, r0
	str r0, [sp, #0x10]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp, #0x18]
	asrs r2, r2, #8
	ldr r3, _080392D4 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r2, r2, r0
	asrs r1, r1, #8
	ldr r0, [r3, #4]
	subs r1, r1, r0
	adds r2, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080392BE
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080392BE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080392D8
_080392BE:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _08039526
	.align 2, 0
_080392D0: .4byte gCurTask
_080392D4: .4byte gUnknown_03001D10
_080392D8:
	movs r3, #0
	str r3, [sp, #0xc]
_080392DC:
	ldr r1, _0803930C @ =gUnknown_030008A0
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _080392EC
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _080392EC
	b _0803951A
_080392EC:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _08039314
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08039310 @ =gUnknown_030015C0
	adds r5, r0, r1
	b _08039326
	.align 2, 0
_0803930C: .4byte gUnknown_030008A0
_08039310: .4byte gUnknown_030015C0
_08039314:
	ldr r1, _080393C4 @ =gUnknown_030008A0
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _080393C8 @ =gUnknown_030015C0
	adds r5, r1, r0
_08039326:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803933E
	cmp r1, #8
	beq _0803933E
	cmp r1, #0x10
	beq _0803933E
	b _0803951A
_0803933E:
	ldr r2, [r5, #4]
	ldr r0, _080393CC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	beq _0803934A
	b _0803951A
_0803934A:
	ldr r1, [r5]
	ldr r0, _080393D0 @ =sub_800DDD0
	cmp r1, r0
	bne _08039354
	b _0803951A
_08039354:
	ldr r0, _080393D4 @ =sub_800DCB4
	cmp r1, r0
	bne _0803935C
	b _0803951A
_0803935C:
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0803936E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803936E
	b _0803951A
_0803936E:
	ldrh r0, [r5, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0803937C
	b _0803951A
_0803937C:
	mov r1, r8
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	bne _08039390
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08039390
	b _0803951A
_08039390:
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bge _0803939A
	b _0803951A
_0803939A:
	ldr r3, [sp, #0x18]
	cmp r0, r3
	ble _080393A2
	b _0803951A
_080393A2:
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bge _080393AC
	b _0803951A
_080393AC:
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	ble _080393B4
	b _0803951A
_080393B4:
	movs r4, #0
	mov r3, r8
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	bne _080393D8
	movs r4, #1
	b _08039400
	.align 2, 0
_080393C4: .4byte gUnknown_030008A0
_080393C8: .4byte gUnknown_030015C0
_080393CC: .4byte 0x01000100
_080393D0: .4byte sub_800DDD0
_080393D4: .4byte sub_800DCB4
_080393D8:
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #3
	ldrb r3, [r0, #6]
	lsls r3, r3, #3
	mov r1, r8
	ldrb r0, [r1, #0xe]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_8039538
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080393FA
	movs r4, #1
_080393FA:
	cmp r4, #0
	bne _08039400
	b _0803951A
_08039400:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov r2, r8
	ldrb r2, [r2, #0xd]
	cmp r0, r2
	bne _08039420
	b _0803951A
_08039420:
	adds r1, r5, #0
	adds r1, #0x27
	movs r0, #0
	strb r0, [r1]
	ldrh r2, [r5, #0x30]
	adds r0, r2, #0
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r1
	cmp r0, #1
	bls _0803943C
	cmp r2, #0xea
	bne _08039446
_0803943C:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #4
	b _0803944C
_08039446:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0803944C:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x25
	lsls r6, r1, #0x10
	cmp r0, #0
	bne _08039490
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	blt _080394B8
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _08039514
_08039490:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	bge _08039514
_080394B8:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080394D4
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	b _080394DA
	.align 2, 0
_080394D0: .4byte sub_805217C
_080394D4:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
_080394DA:
	str r0, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080394F0
	add r1, sp, #8
	adds r0, r1, #0
	ldrb r0, [r0]
	adds r0, #0x80
	strb r0, [r1]
_080394F0:
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r3, r8
	ldrb r1, [r3, #0xd]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08039510 @ =sub_80098D8
	bl sub_800D87C
	b _08039526
	.align 2, 0
_08039510: .4byte sub_80098D8
_08039514:
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
_0803951A:
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
	cmp r2, #1
	bgt _08039526
	b _080392DC
_08039526:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8039538
sub_8039538: @ 0x08039538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	mov ip, r4
	ldr r2, [r3, #0x10]
	subs r2, r2, r0
	asrs r2, r2, #8
	mov r8, r2
	ldr r0, [r3, #0x14]
	subs r0, r0, r1
	asrs r7, r0, #8
	cmp r4, #1
	bne _08039594
	cmp r6, r5
	bge _0803957C
	lsls r0, r5, #4
	adds r1, r6, #0
	bl sub_80C8960
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	bgt _0803964A
_08039578:
	movs r0, #1
	b _0803964C
_0803957C:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl sub_80C8960
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bgt _0803964A
	b _08039578
_08039594:
	cmp r4, #2
	bne _080395C8
	cmp r6, r5
	bge _080395B2
	lsls r0, r5, #8
	adds r1, r6, #0
	bl sub_80C8960
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	beq _08039578
	lsls r0, r7, #8
	mov r1, r8
	b _08039608
_080395B2:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl sub_80C8960
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
	b _080395EA
_080395C8:
	cmp r4, #3
	bne _08039612
	cmp r6, r5
	bge _080395F4
	lsls r0, r5, #8
	adds r1, r6, #0
	bl sub_80C8960
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #0
	bne _080395E6
	cmp r7, #0
	bne _0803964A
	b _08039578
_080395E6:
	lsls r0, r7, #8
	mov r1, r8
_080395EA:
	bl sub_80C8960
	cmp r4, r0
	blt _0803964A
	b _08039578
_080395F4:
	lsls r0, r6, #8
	adds r1, r5, #0
	bl sub_80C8960
	adds r4, r0, #0
	cmp r7, #0
	beq _08039578
	mov r1, r8
	lsls r0, r1, #8
	adds r1, r7, #0
_08039608:
	bl sub_80C8960
	cmp r4, r0
	bgt _0803964A
	b _08039578
_08039612:
	mov r0, ip
	cmp r0, #4
	bne _0803964A
	cmp r6, r5
	bge _08039634
	lsls r0, r5, #4
	adds r1, r6, #0
	bl sub_80C8960
	adds r4, r0, #0
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #4
	adds r0, r0, r7
	cmp r0, r5
	blt _0803964A
	b _08039578
_08039634:
	lsls r0, r6, #4
	adds r1, r5, #0
	bl sub_80C8960
	adds r4, r0, #0
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #4
	add r0, r8
	cmp r0, r6
	bge _08039578
_0803964A:
	movs r0, #0
_0803964C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8039658
sub_8039658: @ 0x08039658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080396A4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080396A8
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08039768
	.align 2, 0
_080396A4: .4byte gCurTask
_080396A8:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _080396FC @ =gUnknown_030008A0
_080396D4:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _080396DE
	cmp r5, #0
	bne _08039762
_080396DE:
	cmp r5, #0
	beq _08039704
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08039700 @ =gUnknown_030015C0
	adds r4, r0, r1
	b _08039714
	.align 2, 0
_080396FC: .4byte gUnknown_030008A0
_08039700: .4byte gUnknown_030015C0
_08039704:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039778 @ =gUnknown_030015C0
	adds r4, r1, r0
_08039714:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803972A
	cmp r1, #8
	beq _0803972A
	cmp r1, #0x10
	bne _08039762
_0803972A:
	ldr r1, [r4, #4]
	ldr r0, _0803977C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039762
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039762
	cmp r0, r8
	bge _08039762
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039762
	cmp r0, sl
	bge _08039762
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _0803975A
	adds r0, r4, #0
	ldr r1, _08039780 @ =sub_800D978
	bl sub_800D87C
_0803975A:
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
_08039762:
	adds r5, #1
	cmp r5, #1
	ble _080396D4
_08039768:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039778: .4byte gUnknown_030015C0
_0803977C: .4byte 0x01000100
_08039780: .4byte sub_800D978

	thumb_func_start sub_8039784
sub_8039784: @ 0x08039784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080397D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080397D4
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0803988A
	.align 2, 0
_080397D0: .4byte gCurTask
_080397D4:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	ldr r6, _08039828 @ =gUnknown_030008A0
_08039800:
	ldrb r0, [r6, #3]
	cmp r0, #7
	bne _0803980A
	cmp r5, #0
	bne _08039884
_0803980A:
	cmp r5, #0
	beq _08039830
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803982C @ =gUnknown_030015C0
	adds r4, r0, r1
	b _08039840
	.align 2, 0
_08039828: .4byte gUnknown_030008A0
_0803982C: .4byte gUnknown_030015C0
_08039830:
	ldrb r0, [r6, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08039898 @ =gUnknown_030015C0
	adds r4, r1, r0
_08039840:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08039856
	cmp r1, #8
	beq _08039856
	cmp r1, #0x10
	bne _08039884
_08039856:
	ldr r1, [r4, #4]
	ldr r0, _0803989C @ =0x01000100
	ands r0, r1
	cmp r0, #0
	bne _08039884
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _08039884
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _08039884
	cmp r0, r8
	bge _08039884
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _08039884
	cmp r0, sl
	bge _08039884
	adds r0, r4, #0
	bl sub_800D9B4
_08039884:
	adds r5, #1
	cmp r5, #1
	ble _08039800
_0803988A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039898: .4byte gUnknown_030015C0
_0803989C: .4byte 0x01000100

	thumb_func_start CreateEntity_Interactable072
CreateEntity_Interactable072: @ 0x080398A0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable077
CreateEntity_Interactable077: @ 0x080398CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable078
CreateEntity_Interactable078: @ 0x080398F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable079
CreateEntity_Interactable079: @ 0x08039924
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable080
CreateEntity_Interactable080: @ 0x08039950
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8039198
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable073
CreateEntity_Interactable073: @ 0x0803997C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080399D8 @ =sub_8039658
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080399D8: .4byte sub_8039658

	thumb_func_start CreateEntity_Interactable074
CreateEntity_Interactable074: @ 0x080399DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08039A38 @ =sub_8039784
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039A38: .4byte sub_8039784

	thumb_func_start CreateEntity_Interactable075
CreateEntity_Interactable075: @ 0x08039A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r5, r1, #0
	mov sl, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	mov r2, sl
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r0, _08039C50 @ =sub_803A188
	movs r1, #0xe0
	lsls r1, r1, #3
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08039C54 @ =sub_8039C88
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r3, r8
	adds r7, r3, r0
	ldr r6, _08039C58 @ =0x030000B0
	add r6, r8
	ldr r0, _08039C5C @ =gUnknown_030006F0
	add r0, r8
	ldr r1, _08039C60 @ =gUnknown_030008A0
	mov ip, r1
	adds r1, #0x8c
	movs r4, #0
	strh r4, [r1]
	ldr r2, _08039C64 @ =gUnknown_030006FC
	add r2, r8
	ldr r3, _08039C68 @ =gUnknown_03006868
	ldr r1, [r3]
	str r1, [r2]
	mov r1, ip
	ldrb r3, [r1, #1]
	ldrb r1, [r1, #9]
	mov r2, ip
	adds r2, #0xb4
	adds r3, r3, r1
	ldrb r2, [r2]
	adds r3, r3, r2
	mov r2, ip
	ldrb r1, [r2, #6]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #4
	ldr r1, _08039C6C @ =gUnknown_030015C0
	adds r2, r2, r1
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r3, r3, r1
	adds r2, #0x2b
	ldrb r2, [r2]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _08039C6C @ =gUnknown_030015C0
	adds r1, r1, r2
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r3, r3, r1
	ldr r1, _08039C68 @ =gUnknown_03006868
	str r3, [r1]
	strh r5, [r7, #4]
	mov r2, sp
	ldrh r2, [r2, #8]
	strh r2, [r7, #6]
	mov r3, sb
	str r3, [r7]
	ldrb r1, [r3]
	strb r1, [r7, #0xa]
	mov r1, sl
	strb r1, [r7, #0xb]
	movs r2, #0
	strb r2, [r7, #0xc]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	strb r2, [r7, #0xe]
	movs r1, #1
	strb r1, [r7, #0xf]
	movs r1, #0xd8
	strh r1, [r7, #0x18]
	strb r2, [r7, #0x10]
	strb r2, [r7, #0x12]
	ldr r2, _08039C70 @ =gUnknown_080CF864
	mov r3, ip
	ldrb r1, [r3, #9]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r7, #0x11]
	movs r1, #8
	strb r1, [r7, #0x13]
	movs r1, #0xe1
	lsls r1, r1, #3
	strh r1, [r7, #0x16]
	movs r1, #0x3c
	strb r1, [r7, #0xd]
	strh r4, [r7, #0x2c]
	strh r1, [r7, #0x2e]
	ldr r1, _08039C74 @ =gUnknown_03000628
	add r1, r8
	str r4, [r1]
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r7, #0x30]
	movs r2, #0xfa
	lsls r2, r2, #8
	strh r2, [r7, #0x32]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x34]
	strh r2, [r7, #0x36]
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r6, #0x10]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldr r3, [sp, #8]
	lsls r3, r3, #8
	str r3, [sp, #0x10]
	adds r1, r1, r3
	strh r1, [r6, #0x12]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	str r1, [r7, #0x38]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	lsls r1, r1, #8
	str r1, [r7, #0x3c]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	str r1, [r7, #0x40]
	movs r3, #0x12
	ldrsh r1, [r6, r3]
	lsls r1, r1, #8
	str r1, [r7, #0x44]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_80214F0
	adds r0, r6, #0
	bl sub_803BE9C
	ldr r0, _08039C78 @ =gUnknown_03000560
	add r0, r8
	bl sub_803BEE0
	ldr r0, _08039C7C @ =gUnknown_03000588
	add r0, r8
	bl sub_803B23C
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	adds r0, r7, #0
	bl sub_803B6E8
	movs r6, #0x86
	lsls r6, r6, #2
	ldr r5, _08039C80 @ =0x03000218
	add r5, r8
_08039BDA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r7, r0
	ldr r2, [r5]
	adds r1, r4, #0
	bl sub_8039D60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x14
	bls _08039BDA
	movs r4, #0
	movs r0, #0xec
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
_08039C00:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r7
	movs r2, #0x80
	lsls r2, r2, #1
	adds r6, r1, r2
	mov r3, r8
	adds r1, r3, r0
	str r5, [r1]
	adds r0, r7, r0
	adds r0, #0xf0
	strb r5, [r0]
	movs r2, #0
	cmp r4, #2
	bls _08039C24
	movs r2, #0x80
	lsls r2, r2, #3
_08039C24:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803BF20
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039C00
	ldr r0, _08039C84 @ =gUnknown_03001D10
	movs r1, #0xa0
	str r1, [r0, #0x14]
	adds r1, #0x80
	str r1, [r0, #0x1c]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039C50: .4byte sub_803A188
_08039C54: .4byte sub_8039C88
_08039C58: .4byte 0x030000B0
_08039C5C: .4byte gUnknown_030006F0
_08039C60: .4byte gUnknown_030008A0
_08039C64: .4byte gUnknown_030006FC
_08039C68: .4byte gUnknown_03006868
_08039C6C: .4byte gUnknown_030015C0
_08039C70: .4byte gUnknown_080CF864
_08039C74: .4byte gUnknown_03000628
_08039C78: .4byte gUnknown_03000560
_08039C7C: .4byte gUnknown_03000588
_08039C80: .4byte 0x03000218
_08039C84: .4byte gUnknown_03001D10

	thumb_func_start sub_8039C88
sub_8039C88: @ 0x08039C88
	push {r4, r5, r6, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08039CAC @ =gUnknown_03006868
	ldr r2, _08039CB0 @ =gUnknown_030006FC
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08039CB4 @ =0x030000B0
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08039CB8
	bl sub_80C3304
	b _08039CCC
	.align 2, 0
_08039CAC: .4byte gUnknown_03006868
_08039CB0: .4byte gUnknown_030006FC
_08039CB4: .4byte 0x030000B0
_08039CB8:
	ldr r2, _08039D58 @ =0x030000A8
	adds r0, r4, r2
	movs r1, #1
	bl sub_80C60B0
	ldr r1, _08039D5C @ =0x030000AC
	adds r0, r4, r1
	movs r1, #1
	bl sub_80C60B0
_08039CCC:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r6, r5, r2
_08039CD4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	bl sub_80C3304
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039CD4
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80C3304
	movs r2, #0xb6
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_80C3304
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80C3304
	movs r2, #0xc5
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08039D50
	bl sub_80C3304
	movs r1, #0xca
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80C3304
	movs r2, #0xcf
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_80C3304
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80C3304
	movs r2, #0xd9
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_80C3304
_08039D50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039D58: .4byte 0x030000A8
_08039D5C: .4byte 0x030000AC

	thumb_func_start sub_8039D60
sub_8039D60: @ 0x08039D60
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0
	bne _08039D84
	ldr r0, _08039D80 @ =gUnknown_080CF6C8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	bl sub_80C3224
	b _08039D88
	.align 2, 0
_08039D80: .4byte gUnknown_080CF6C8
_08039D84:
	lsls r0, r5, #6
	adds r0, r2, r0
_08039D88:
	str r0, [r4]
	ldr r1, _08039DBC @ =gUnknown_080CF6C8
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	movs r3, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r2, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08039DBC: .4byte gUnknown_080CF6C8

	thumb_func_start sub_8039DC0
sub_8039DC0: @ 0x08039DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08039E0C @ =gUnknown_08E2E280
	str r0, [sp, #0x14]
	ldr r0, _08039E10 @ =gUnknown_08E2E550
	str r0, [sp, #0x10]
	ldr r0, _08039E14 @ =gUnknown_08E2DEF4
	str r0, [sp, #0xc]
	ldr r0, _08039E18 @ =gUnknown_08E2E134
	str r0, [sp, #8]
	ldr r0, _08039E1C @ =0x06012800
	mov sl, r0
	ldr r1, _08039E20 @ =gUnknown_080CF86B
	mov r0, sp
	movs r2, #5
	bl sub_80CA3B0
	ldr r0, _08039E24 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r7, r0
	str r0, [sp, #0x18]
	ldrb r5, [r0, #0xc]
	cmp r5, #1
	beq _08039E84
	cmp r5, #1
	bgt _08039E28
	cmp r5, #0
	bne _08039E08
	b _0803A09A
_08039E08:
	b _0803A02C
	.align 2, 0
_08039E0C: .4byte gUnknown_08E2E280
_08039E10: .4byte gUnknown_08E2E550
_08039E14: .4byte gUnknown_08E2DEF4
_08039E18: .4byte gUnknown_08E2E134
_08039E1C: .4byte 0x06012800
_08039E20: .4byte gUnknown_080CF86B
_08039E24: .4byte gCurTask
_08039E28:
	cmp r5, #2
	beq _08039E32
	cmp r5, #3
	beq _08039E5C
	b _0803A02C
_08039E32:
	ldr r1, _08039E54 @ =0x030000B0
	adds r4, r7, r1
	ldr r0, [r4]
	bl sub_80C3304
	movs r0, #0
	str r0, [r4]
	add r0, sp, #8
	movs r1, #1
	bl sub_80C4C60
	ldr r2, _08039E58 @ =0x030000A8
	adds r4, r7, r2
	str r0, [r4]
	add r2, sp, #0xc
	b _08039E6C
	.align 2, 0
_08039E54: .4byte 0x030000B0
_08039E58: .4byte 0x030000A8
_08039E5C:
	add r0, sp, #0x10
	movs r1, #1
	bl sub_80C4C60
	ldr r1, _08039E80 @ =0x030000AC
	adds r4, r7, r1
	str r0, [r4]
	add r2, sp, #0x14
_08039E6C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_80C4E24
	adds r0, r4, #0
	movs r1, #1
	bl sub_80C610C
	b _0803A09A
	.align 2, 0
_08039E80: .4byte 0x030000AC
_08039E84:
	ldr r0, _0803A000 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _0803A004 @ =gUnknown_030015C0
	adds r6, r0, r2
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0803A008 @ =gUnknown_03000628
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	ldr r0, _0803A00C @ =0x06012880
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _0803A010 @ =0x0000058F
	strh r0, [r2, #0xc]
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x5f
	strh r0, [r2, #0x10]
	movs r6, #0x4e
	strh r6, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80BF44C
	ldr r0, _0803A014 @ =gUnknown_03000650
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	movs r0, #0x80
	add sl, r0
	ldr r1, _0803A010 @ =0x0000058F
	strh r1, [r2, #0xc]
	mov r0, r8
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x69
	strh r0, [r2, #0x10]
	strh r6, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80BF44C
	ldr r0, _0803A018 @ =gUnknown_03000678
	adds r2, r7, r0
	mov r1, sl
	str r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
	ldr r6, _0803A01C @ =0x0000048D
	strh r6, [r2, #0xc]
	strb r5, [r2, #0x1a]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	subs r0, #0x81
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x6c
	strh r0, [r2, #0x10]
	movs r0, #0x55
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80BF44C
	ldr r1, _0803A020 @ =gUnknown_030006A0
	adds r2, r7, r1
	mov r0, sl
	str r0, [r2]
	movs r1, #0x80
	add sl, r1
	strh r6, [r2, #0xc]
	mov r0, sb
	strb r0, [r2, #0x1a]
	movs r1, #0x40
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r1, sb
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x8a
	strh r0, [r2, #0x10]
	movs r0, #0x56
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80BF44C
	ldr r1, _0803A024 @ =gUnknown_030006C8
	adds r2, r7, r1
	mov r0, sl
	str r0, [r2]
	ldr r0, _0803A028 @ =0x00000487
	strh r0, [r2, #0xc]
	mov r1, sb
	strb r1, [r2, #0x1a]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0x20]
	str r4, [r2, #8]
	movs r0, #0x96
	strh r0, [r2, #0x10]
	movs r0, #0x55
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80BF44C
	b _0803A09A
	.align 2, 0
_0803A000: .4byte gUnknown_030008A0
_0803A004: .4byte gUnknown_030015C0
_0803A008: .4byte gUnknown_03000628
_0803A00C: .4byte 0x06012880
_0803A010: .4byte 0x0000058F
_0803A014: .4byte gUnknown_03000650
_0803A018: .4byte gUnknown_03000678
_0803A01C: .4byte 0x0000048D
_0803A020: .4byte gUnknown_030006A0
_0803A024: .4byte gUnknown_030006C8
_0803A028: .4byte 0x00000487
_0803A02C:
	ldr r2, [sp, #0x18]
	movs r0, #0x16
	ldrsh r1, [r2, r0]
	ldr r0, _0803A03C @ =0x00000383
	cmp r1, r0
	ble _0803A040
	movs r4, #5
	b _0803A04A
	.align 2, 0
_0803A03C: .4byte 0x00000383
_0803A040:
	ldr r0, _0803A0C8 @ =0x0000012B
	movs r4, #1
	cmp r1, r0
	ble _0803A04A
	movs r4, #2
_0803A04A:
	adds r0, r4, #0
	bl sub_8003DC4
	ldr r1, [sp, #0x18]
	strb r4, [r1, #0x14]
	ldr r2, [r6, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803A06E
	ldr r1, [r6, #0x14]
	ldr r0, _0803A0CC @ =0x000080FF
	cmp r1, r0
	bgt _0803A06E
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #4]
_0803A06E:
	mov r0, r8
	ldr r2, [r0, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803A08C
	ldr r1, [r6, #0x14]
	ldr r0, _0803A0CC @ =0x000080FF
	cmp r1, r0
	bgt _0803A08C
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	mov r1, r8
	str r2, [r1, #4]
_0803A08C:
	ldr r0, _0803A0D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A0D4 @ =sub_803BE48
	str r0, [r1, #8]
	movs r0, #0x90
	bl sub_8003DF0
_0803A09A:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	bl sub_803B498
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A0C8: .4byte 0x0000012B
_0803A0CC: .4byte 0x000080FF
_0803A0D0: .4byte gCurTask
_0803A0D4: .4byte sub_803BE48

	thumb_func_start sub_803A0D8
sub_803A0D8: @ 0x0803A0D8
	push {r4, r5, lr}
	ldr r0, _0803A0FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803A100 @ =gUnknown_030015C0
_0803A0EA:
	cmp r3, #0
	beq _0803A104
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A108
	.align 2, 0
_0803A0FC: .4byte gCurTask
_0803A100: .4byte gUnknown_030015C0
_0803A104:
	ldr r0, _0803A144 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803A108:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803A0EA
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803A148
	subs r0, r1, #1
	strh r0, [r4, #0x18]
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80214F0
	b _0803A166
	.align 2, 0
_0803A144: .4byte gUnknown_030008A0
_0803A148:
	movs r2, #0xde
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803A166
	movs r0, #0xd8
	strh r0, [r4, #0x18]
	ldr r0, _0803A180 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A184 @ =sub_803A188
	str r0, [r1, #8]
_0803A166:
	movs r0, #0
	bl sub_803C010
	adds r0, r4, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A180: .4byte gCurTask
_0803A184: .4byte sub_803A188

	thumb_func_start sub_803A188
sub_803A188: @ 0x0803A188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r1, _0803A1D4 @ =gUnknown_080CF870
	mov r0, sp
	movs r2, #0x30
	bl sub_80CA3B0
	ldr r0, _0803A1D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0
	ldr r5, _0803A1DC @ =gUnknown_030015C0
_0803A1B0:
	lsls r0, r1, #0x18
	adds r3, r0, #0
	cmp r3, #0
	beq _0803A1E4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	ldr r0, _0803A1E0 @ =gUnknown_030008A0
	mov sl, r0
	b _0803A1F6
	.align 2, 0
_0803A1D4: .4byte gUnknown_080CF870
_0803A1D8: .4byte gCurTask
_0803A1DC: .4byte gUnknown_030015C0
_0803A1E0: .4byte gUnknown_030008A0
_0803A1E4:
	ldr r2, _0803A258 @ =gUnknown_030008A0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	mov sl, r2
_0803A1F6:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r3, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803A1B0
	ldr r4, _0803A25C @ =gUnknown_03003C20
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	movs r0, #1
	mov r2, sl
	strb r0, [r2, #4]
	mov r2, r8
	ldrh r0, [r2, #0x18]
	subs r2, r0, #1
	mov r0, r8
	strh r2, [r0, #0x18]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bne _0803A270
	ldr r0, _0803A260 @ =0x0000FEFF
	ands r1, r0
	strh r1, [r4]
	ldr r2, _0803A264 @ =gUnknown_03002B40
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xb4
	mov r1, r8
	strh r0, [r1, #0x18]
	ldr r0, _0803A268 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A26C @ =sub_803A5D4
	str r0, [r1, #8]
	b _0803A38E
	.align 2, 0
_0803A258: .4byte gUnknown_030008A0
_0803A25C: .4byte gUnknown_03003C20
_0803A260: .4byte 0x0000FEFF
_0803A264: .4byte gUnknown_03002B40
_0803A268: .4byte gCurTask
_0803A26C: .4byte sub_803A5D4
_0803A270:
	mov r4, r8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0xd8
	subs r1, r0, r1
	cmp r1, #0x30
	bgt _0803A288
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0803A384
_0803A288:
	cmp r3, #0x30
	ble _0803A37E
	cmp r1, #0x3a
	bgt _0803A29E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0803A29A
	movs r0, #0xfe
_0803A29A:
	adds r4, r0, #0
	b _0803A2A0
_0803A29E:
	movs r4, #0
_0803A2A0:
	movs r1, #0x30
	mov sb, r1
	mov r2, r8
	movs r0, #0x11
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x63
	bls _0803A2B4
	movs r5, #0x63
_0803A2B4:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_80C8B50
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r1, r0, r2
	lsls r0, r1, #1
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r2, #0
	beq _0803A33C
	lsls r0, r1, #3
	movs r5, #0x86
	lsls r5, r5, #2
	adds r0, r0, r5
	mov r1, r8
	adds r7, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #0x10]
	ldrb r0, [r2]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, #2
	adds r1, r1, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrh r0, [r1]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r0, #0
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r1, r8
	adds r7, r1, r0
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #3
	add r0, sp, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x10]
	ldrb r1, [r2]
	lsls r1, r1, #3
	mov r0, sp
	adds r0, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r4
	strh r0, [r7, #0x12]
	movs r4, #0
	str r4, [r7, #8]
	b _0803A370
_0803A33C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, sp
	ldrh r0, [r0]
	adds r0, #6
	strh r0, [r7, #0x10]
	ldrb r0, [r1]
	lsls r0, r0, #3
	mov r1, sp
	adds r1, #2
	adds r1, r1, r0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x12]
	str r2, [r7, #8]
_0803A370:
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	b _0803A384
_0803A37E:
	mov r2, r8
	ldrh r2, [r2, #0x18]
	mov sb, r2
_0803A384:
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_803A3B4
_0803A38E:
	movs r0, #0
	bl sub_803C010
	mov r0, r8
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A3B4
sub_803A3B4: @ 0x0803A3B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0803A3E0
	movs r2, #0
	mov ip, r2
	cmp r0, #1
	bgt _0803A3D2
	movs r1, #2
_0803A3D2:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x10
	b _0803A422
_0803A3E0:
	cmp r0, #0x1f
	bgt _0803A402
	movs r5, #1
	mov ip, r5
	movs r5, #0x18
	cmp r0, #0x10
	bgt _0803A3F0
	movs r1, #0x11
_0803A3F0:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0803A422
_0803A402:
	cmp r0, #0x30
	bgt _0803A422
	movs r1, #2
	mov ip, r1
	movs r5, #0x18
	movs r2, #0x24
	mov r8, r2
	subs r0, #0x20
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x10
	mov sl, r1
_0803A422:
	ldr r2, _0803A5C0 @ =gUnknown_03002B40
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0803A5C4 @ =gUnknown_03003C5C
	ldr r0, _0803A5C8 @ =0x04000012
	str r0, [r1]
	ldr r1, _0803A5CC @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803A5D0 @ =gUnknown_03002B84
	ldr r3, [r0]
	movs r4, #0
	adds r7, r0, #0
	lsls r5, r5, #0x10
_0803A442:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	strh r1, [r3]
	adds r3, #2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0803A442
	ldr r3, [r7]
	asrs r1, r5, #0x10
	movs r0, #0x28
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r4, #0
	subs r1, #0x18
_0803A468:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A468
	movs r0, #0x28
	asrs r1, r5, #0x10
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r1, #0x24
	cmp r0, r1
	bge _0803A4AA
	movs r6, #3
	adds r4, r1, #0
_0803A490:
	asrs r2, r2, #0x10
	adds r0, r2, #0
	ands r0, r6
	adds r1, r2, #0
	subs r1, #0x10
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, r4
	blt _0803A490
_0803A4AA:
	ldr r3, [r7]
	asrs r0, r5, #0x10
	lsls r1, r0, #1
	adds r1, #0x48
	adds r3, r3, r1
	movs r4, #0
	movs r1, #0x17
	subs r1, r1, r0
_0803A4BA:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A4BA
	mov r0, ip
	cmp r0, #0
	beq _0803A5B2
	ldr r3, [r7]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x6c
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r3, r3, r1
	movs r4, #0
	adds r6, r0, #0
	subs r2, #0x23
_0803A4EA:
	strh r2, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A4EA
	movs r0, #0x6c
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r1, #0x68
	cmp r0, r1
	bge _0803A52C
	movs r5, #3
	adds r4, r1, #0
_0803A512:
	asrs r2, r2, #0x10
	adds r0, r2, #0
	ands r0, r5
	adds r1, r2, #0
	subs r1, #0x48
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, r4
	blt _0803A512
_0803A52C:
	ldr r3, [r7]
	asrs r0, r6, #0x10
	lsls r1, r0, #1
	adds r1, #0xd0
	adds r3, r3, r1
	movs r4, #0
	movs r1, #0x23
	subs r1, r1, r0
_0803A53C:
	strh r1, [r3]
	adds r3, #2
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0803A53C
	mov r5, ip
	cmp r5, #1
	beq _0803A5B2
	ldr r3, [r7]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x3a
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0x3a
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r5, sl
	lsls r4, r5, #0x10
	cmp r0, #0x39
	bgt _0803A588
	subs r1, #0x20
_0803A578:
	strh r1, [r3]
	adds r3, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	asrs r0, r2, #0x10
	cmp r0, #0x39
	ble _0803A578
_0803A588:
	ldr r3, [r7]
	asrs r1, r4, #0x10
	movs r0, #0x8a
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0x8a
	subs r0, r0, r1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x89
	bgt _0803A5B2
	subs r1, #0x3c
_0803A5A2:
	strh r1, [r3]
	adds r3, #2
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	asrs r0, r2, #0x10
	cmp r0, #0x89
	ble _0803A5A2
_0803A5B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C0: .4byte gUnknown_03002B40
_0803A5C4: .4byte gUnknown_03003C5C
_0803A5C8: .4byte 0x04000012
_0803A5CC: .4byte gUnknown_03003F30
_0803A5D0: .4byte gUnknown_03002B84

	thumb_func_start sub_803A5D4
sub_803A5D4: @ 0x0803A5D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803A614 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0803A618 @ =gUnknown_03000588
	adds r4, r1, r0
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r2
	cmp r0, #0
	bne _0803A684
	movs r2, #0
	ldr r7, _0803A61C @ =gUnknown_080CF770
	ldr r1, _0803A620 @ =sub_803A6DC
	mov r8, r1
	ldr r6, _0803A624 @ =gUnknown_030015C0
_0803A604:
	cmp r2, #0
	beq _0803A628
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A62C
	.align 2, 0
_0803A614: .4byte gCurTask
_0803A618: .4byte gUnknown_03000588
_0803A61C: .4byte gUnknown_080CF770
_0803A620: .4byte sub_803A6DC
_0803A624: .4byte gUnknown_030015C0
_0803A628:
	ldr r0, _0803A67C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803A62C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r6
	ldr r0, [r3, #4]
	ldr r1, _0803A680 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r3, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A604
	ldrh r0, [r7, #4]
	strh r0, [r4, #0xc]
	ldrb r0, [r7, #6]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x80
	strb r0, [r5, #0xd]
	mov r1, ip
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
	adds r0, r5, #0
	bl sub_803B070
	strb r0, [r5, #0xe]
	bl sub_80C8510
	ldr r0, _0803A67C @ =gUnknown_030008A0
	movs r1, #3
	strb r1, [r0, #4]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	b _0803A6CC
	.align 2, 0
_0803A67C: .4byte gUnknown_030008A0
_0803A680: .4byte 0xF7FFFFFF
_0803A684:
	cmp r0, #0x78
	bne _0803A69C
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	ldr r0, _0803A698 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x2c]
	strh r1, [r4, #0xc]
	adds r0, #0x2e
	b _0803A6AA
	.align 2, 0
_0803A698: .4byte gUnknown_080CF770
_0803A69C:
	cmp r0, #0x3c
	bne _0803A6B2
	strb r0, [r5, #0xd]
	ldr r0, _0803A6D8 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x24]
	strh r1, [r4, #0xc]
	adds r0, #0x26
_0803A6AA:
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0803A6B2:
	movs r0, #1
	bl sub_803BF78
	movs r0, #0
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803A6CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6D8: .4byte gUnknown_080CF770

	thumb_func_start sub_803A6DC
sub_803A6DC: @ 0x0803A6DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803A744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r1, _0803A748 @ =gUnknown_03000588
	adds r6, r0, r1
	ldr r1, _0803A74C @ =gUnknown_030006F0
	adds r2, r0, r1
	ldr r7, _0803A750 @ =gUnknown_030008A0
	adds r0, r7, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x11
	ldrsb r1, [r5, r1]
	mov ip, r7
	cmp r0, r1
	bge _0803A718
	ldrh r0, [r5, #0x16]
	subs r0, #1
	strh r0, [r5, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803A718
	b _0803A854
_0803A718:
	movs r0, #0x80
	strb r0, [r5, #0xd]
	movs r0, #1
	strh r0, [r2, #2]
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0803A7C4
	movs r2, #0
	ldr r3, _0803A754 @ =gUnknown_030015C0
_0803A734:
	cmp r2, #0
	beq _0803A758
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A75C
	.align 2, 0
_0803A744: .4byte gCurTask
_0803A748: .4byte gUnknown_03000588
_0803A74C: .4byte gUnknown_030006F0
_0803A750: .4byte gUnknown_030008A0
_0803A754: .4byte gUnknown_030015C0
_0803A758:
	mov r0, ip
	ldrb r1, [r0, #6]
_0803A75C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A734
	movs r0, #0x1e
	strh r0, [r5, #0x18]
	ldr r0, _0803A7B4 @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0803A796
	ldr r1, _0803A7B8 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_0803A796:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	ldr r0, _0803A7BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A7C0 @ =sub_803A8A8
	b _0803A838
	.align 2, 0
_0803A7B4: .4byte gUnknown_030008A0
_0803A7B8: .4byte gUnknown_080CF770
_0803A7BC: .4byte gCurTask
_0803A7C0: .4byte sub_803A8A8
_0803A7C4:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	adds r0, r5, #0
	bl sub_803BFC4
	movs r2, #0
	ldr r3, _0803A7F0 @ =gUnknown_030015C0
_0803A7DE:
	cmp r2, #0
	beq _0803A7F4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803A7F8
	.align 2, 0
_0803A7F0: .4byte gUnknown_030015C0
_0803A7F4:
	ldr r0, _0803A844 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803A7F8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0803A7DE
	ldr r1, _0803A848 @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	movs r2, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x3c
	strh r0, [r6, #0x12]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	strb r2, [r5, #0xc]
	ldr r0, _0803A84C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A850 @ =sub_8039DC0
_0803A838:
	str r0, [r1, #8]
	ldr r1, _0803A844 @ =gUnknown_030008A0
	movs r0, #6
	strb r0, [r1, #4]
	b _0803A89C
	.align 2, 0
_0803A844: .4byte gUnknown_030008A0
_0803A848: .4byte gUnknown_080CF770
_0803A84C: .4byte gCurTask
_0803A850: .4byte sub_8039DC0
_0803A854:
	adds r0, r5, #0
	bl sub_803B070
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0803A864
	strb r0, [r5, #0xe]
_0803A864:
	ldrb r4, [r5, #0xd]
	movs r0, #0
	bl sub_803BF78
	cmp r4, #0
	beq _0803A87E
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0803A87E
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_0803A87E:
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
	ldr r0, _0803A8A4 @ =gUnknown_030008A0
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	adds r0, #0x8c
	strh r1, [r0]
_0803A89C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8A4: .4byte gUnknown_030008A0

	thumb_func_start sub_803A8A8
sub_803A8A8: @ 0x0803A8A8
	push {r4, r5, r6, r7, lr}
	ldr r1, _0803A914 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r6, _0803A918 @ =gUnknown_030008A0
	ldrb r0, [r6, #6]
	adds r7, r1, #0
	cmp r0, #0
	bne _0803A940
	ldrb r3, [r5, #0xd]
	cmp r3, #0x5f
	bls _0803A940
	ldr r0, _0803A91C @ =gUnknown_03000588
	adds r4, r2, r0
	adds r2, r6, #0
	adds r2, #0x8c
	ldrh r0, [r2]
	strb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x11
	ldrsb r1, [r5, r1]
	cmp r0, r1
	blt _0803A928
	movs r0, #1
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	adds r0, r5, #0
	bl sub_803BFC4
	ldr r1, _0803A920 @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
	strh r0, [r4, #0x12]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	ldr r1, [r7]
	ldr r0, _0803A924 @ =sub_8039DC0
	str r0, [r1, #8]
	b _0803A96A
	.align 2, 0
_0803A914: .4byte gCurTask
_0803A918: .4byte gUnknown_030008A0
_0803A91C: .4byte gUnknown_03000588
_0803A920: .4byte gUnknown_080CF770
_0803A924: .4byte sub_8039DC0
_0803A928:
	cmp r3, #0x60
	bne _0803A93A
	ldr r1, _0803A970 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0803A93A:
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	strh r0, [r2]
_0803A940:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803A956
	movs r0, #0x80
	strb r0, [r5, #0xd]
	ldr r1, [r7]
	ldr r0, _0803A974 @ =sub_803A978
	str r0, [r1, #8]
_0803A956:
	movs r0, #0
	bl sub_803C010
	adds r0, r5, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803A96A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A970: .4byte gUnknown_080CF770
_0803A974: .4byte sub_803A978

	thumb_func_start sub_803A978
sub_803A978: @ 0x0803A978
	push {r4, r5, lr}
	ldr r0, _0803A9E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0803AA08
	movs r0, #2
	strb r0, [r4, #0xd]
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r5, [r4, r2]
	cmp r5, #0
	bne _0803AA04
	ldr r2, _0803A9E4 @ =gUnknown_030006F0
	adds r0, r1, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AA08
	ldr r1, _0803A9E8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803A9EC @ =gUnknown_03003F94
	ldr r0, _0803A9F0 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803A9F4 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803A9F8 @ =gUnknown_03006208
	ldr r0, _0803A9FC @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803AA00 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #6
	bl sub_8002210
	b _0803AA22
	.align 2, 0
_0803A9E0: .4byte gCurTask
_0803A9E4: .4byte gUnknown_030006F0
_0803A9E8: .4byte 0x0000FFFF
_0803A9EC: .4byte gUnknown_03003F94
_0803A9F0: .4byte gUnknown_03003D20
_0803A9F4: .4byte gUnknown_03006840
_0803A9F8: .4byte gUnknown_03006208
_0803A9FC: .4byte gUnknown_03003F34
_0803AA00: .4byte gUnknown_030008A0
_0803AA04:
	subs r0, #1
	strh r0, [r4, #0x18]
_0803AA08:
	movs r0, #1
	bl sub_803BF78
	movs r0, #0
	bl sub_803C010
	adds r0, r4, #0
	bl sub_803B1A4
	bl sub_803B498
	bl sub_803B288
_0803AA22:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803AA28
sub_803AA28: @ 0x0803AA28
	push {r4, lr}
	ldr r0, _0803AA98 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r3, r0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	bne _0803AAC0
	movs r0, #2
	strb r0, [r1, #0xd]
	ldrh r2, [r1, #0x18]
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0803AABC
	ldr r1, _0803AA9C @ =gUnknown_030006F0
	adds r0, r3, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AAC0
	ldr r1, _0803AAA0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803AAA4 @ =gUnknown_03003F94
	ldr r0, _0803AAA8 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803AAAC @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803AAB0 @ =gUnknown_03006208
	ldr r0, _0803AAB4 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803AAB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r0, r4
	asrs r0, r0, #0x10
	movs r1, #6
	bl sub_8002210
	b _0803AAE2
	.align 2, 0
_0803AA98: .4byte gCurTask
_0803AA9C: .4byte gUnknown_030006F0
_0803AAA0: .4byte 0x0000FFFF
_0803AAA4: .4byte gUnknown_03003F94
_0803AAA8: .4byte gUnknown_03003D20
_0803AAAC: .4byte gUnknown_03006840
_0803AAB0: .4byte gUnknown_03006208
_0803AAB4: .4byte gUnknown_03003F34
_0803AAB8: .4byte gUnknown_030008A0
_0803AABC:
	subs r0, r2, #1
	strh r0, [r1, #0x18]
_0803AAC0:
	bl sub_803BDA0
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	movs r0, #1
	bl sub_803BF78
	bl sub_803B498
	bl sub_803B354
_0803AAE2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803AAE8
sub_803AAE8: @ 0x0803AAE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r7, r1, #0
	lsls r6, r2, #0x18
	adds r0, #0xb0
	str r0, [sp, #8]
	mov r2, r8
	ldr r1, [r2]
	ldrb r5, [r2, #0xa]
	lsls r5, r5, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	str r7, [sp]
	lsrs r6, r6, #0x15
	mov r0, r8
	adds r0, #0x1c
	adds r0, r0, r6
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	mov sb, r0
	str r0, [sp, #0xc]
	str r7, [sp]
	mov r0, r8
	adds r0, #0x20
	adds r6, r0, r6
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	adds r1, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0
	mov r3, sl
	str r0, [r3]
	str r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sb
	ands r3, r2
	cmp r3, #0
	beq _0803AB8A
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	mov r1, sl
	str r0, [r1]
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r7, #4]
	ldr r2, [sp, #8]
	str r2, [r7, #0x6c]
	b _0803AD22
_0803AB8A:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0803AC24
	ldr r0, [sp, #0x10]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	str r0, [r6]
	ldr r2, [r7, #4]
	movs r5, #0x20
	orrs r2, r5
	subs r0, #6
	ands r2, r0
	str r2, [r7, #4]
	ldr r1, [sp, #8]
	str r1, [r7, #0x6c]
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb
	ands r4, r0
	cmp r4, #0
	beq _0803ABE2
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ABD8
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803ABD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	b _0803AD16
_0803ABE2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0803ABF0
	b _0803AD22
_0803ABF0:
	ldrh r1, [r7, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803AC08
	ldr r0, [r7, #0x10]
	ldr r1, _0803AC20 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803AC08:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r4, [r7, #0x1c]
	b _0803AD22
	.align 2, 0
_0803AC20: .4byte 0xFFFFFF00
_0803AC24:
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0803AC62
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803AC58
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC58
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC58:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	ands r0, r1
	b _0803AC9E
_0803AC62:
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r2, r0, #0
	mov r3, sb
	ands r2, r3
	cmp r2, #0
	beq _0803ACB4
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AC96
	movs r1, #0xda
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC96
	ldr r0, [r7, #0x10]
	ldr r1, _0803ACB0 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC96:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
_0803AC9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	movs r0, #0
	strh r0, [r7, #0x1c]
	b _0803AD22
	.align 2, 0
_0803ACB0: .4byte 0xFFFFFF00
_0803ACB4:
	adds r3, r1, #0
	ands r3, r4
	cmp r3, #0
	beq _0803ACEE
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ACD8
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803ACD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r2, [r7, #0x1c]
	b _0803AD22
_0803ACEE:
	ands r1, r0
	cmp r1, #0
	beq _0803AD22
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AD0E
	ldr r0, [r7, #0x10]
	ldr r2, _0803AD34 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AD0E:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
_0803AD16:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r3, [r7, #0x1c]
_0803AD22:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD34: .4byte 0xFFFFFF00

	thumb_func_start sub_803AD38
sub_803AD38: @ 0x0803AD38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]
	adds r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
_0803AD50:
	ldr r1, [sp, #0x10]
	lsls r1, r1, #4
	mov sb, r1
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sl, r1
	lsls r4, r2, #2
	ldr r2, _0803ADD4 @ =gUnknown_080CF850
	adds r0, r4, r2
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _0803ADD8 @ =gUnknown_080CF852
	adds r0, r4, r3
	ldrh r5, [r0]
	movs r6, #0
	str r7, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020E3C
	str r0, [sp, #0x14]
	str r6, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_8020950
	adds r3, r0, #0
	mov r8, sb
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0803AE28
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803ADDC
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ADDC
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803ADDC
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803ADFE
	.align 2, 0
_0803ADD4: .4byte gUnknown_080CF850
_0803ADD8: .4byte gUnknown_080CF852
_0803ADDC:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803AE08
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AE08
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803AE08
	ldr r0, [r7, #0x10]
	ldr r2, _0803AE24 @ =0xFFFFFF00
_0803ADFE:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803AE08:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
	strh r2, [r7, #0x18]
	b _0803AE4E
	.align 2, 0
_0803AE24: .4byte 0xFFFFFF00
_0803AE28:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r3, sl
	str r3, [r7, #0x6c]
	b _0803B04A
_0803AE4E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0803AE56
	b _0803AFBC
_0803AE56:
	mov r1, r8
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r1, #0xec
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r1
	cmp r0, #2
	bne _0803AE6E
	b _0803AFBC
_0803AE6E:
	ldr r1, [sp, #8]
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803AE7A
	b _0803AFBC
_0803AE7A:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0803AE82
	b _0803AFBC
_0803AE82:
	movs r5, #0
	movs r6, #0
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldrh r2, [r7, #0x30]
	cmp r1, #0xaa
	beq _0803AEA0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803AEA0
	cmp r1, #0xbb
	beq _0803AEA0
	cmp r1, #0xe5
	bne _0803AEA2
_0803AEA0:
	movs r5, #1
_0803AEA2:
	cmp r2, #0xff
	bne _0803AEA8
	movs r6, #1
_0803AEA8:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0803AED0
	cmp r5, #0
	bne _0803AEDC
	cmp r6, #0
	bne _0803AEDC
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	movs r2, #0
	cmp r0, #0
	blt _0803AED8
	ldr r1, [r7, #0x14]
	ldr r0, _0803AECC @ =0x000047FF
	cmp r1, r0
	bgt _0803AED8
	b _0803AEDC
	.align 2, 0
_0803AECC: .4byte 0x000047FF
_0803AED0:
	movs r2, #1
	cmp r5, #0
	beq _0803AED8
	movs r2, #0
_0803AED8:
	cmp r2, #0
	beq _0803AFBC
_0803AEDC:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0xe]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _0803AF3A
	movs r0, #0x13
	strb r0, [r3, #0xf]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r3, #0xe]
	mov r1, r8
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r3, r0
	adds r0, #0xf0
	ldrb r0, [r0]
	movs r2, #3
	cmp r0, #0x3c
	bls _0803AF0C
	movs r2, #1
	cmp r0, #0x78
	bhi _0803AF0C
	movs r2, #2
_0803AF0C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0803AF20
	ldr r3, [sp, #4]
	ldrb r0, [r3, #0x10]
	adds r0, r2, r0
	strb r0, [r3, #0x10]
_0803AF20:
	ldr r1, _0803AF90 @ =gUnknown_080CF850
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _0803AF94 @ =gUnknown_080CF852
	adds r1, r4, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_803BC80
_0803AF3A:
	ldr r0, [sp, #8]
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0xff
	mov r1, sl
	strb r0, [r1, #0x1b]
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	movs r4, #0
	strb r0, [r1, #0x1a]
	mov r2, r8
	ldr r3, [sp, #0x10]
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r0, r2, r1
	adds r0, #0xf0
	strb r4, [r0]
	add r1, sb
	movs r0, #2
	str r0, [r1]
	ldr r0, _0803AF98 @ =0x0000020B
	bl sub_8003DF0
	ldr r1, [r7, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r7, #4]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _0803AFA0
	adds r0, r7, #0
	ldr r1, _0803AF9C @ =sub_80072D8
	bl sub_800D87C
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r7, #0x1a]
	b _0803B04A
	.align 2, 0
_0803AF90: .4byte gUnknown_080CF850
_0803AF94: .4byte gUnknown_080CF852
_0803AF98: .4byte 0x0000020B
_0803AF9C: .4byte sub_80072D8
_0803AFA0:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bhi _0803AFB4
	strh r4, [r7, #0x1c]
	ldr r0, _0803AFB0 @ =0x0000FF80
	strh r0, [r7, #0x18]
	b _0803B04A
	.align 2, 0
_0803AFB0: .4byte 0x0000FF80
_0803AFB4:
	strh r4, [r7, #0x1c]
	movs r0, #0x80
	strh r0, [r7, #0x18]
	b _0803B04A
_0803AFBC:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AFE2
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r1, sl
	str r1, [r7, #0x6c]
	b _0803B04A
_0803AFE2:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803B008
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803B02A
_0803B008:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803B04A
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	ldr r2, _0803B06C @ =0xFFFFFF00
_0803B02A:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803B034:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
_0803B04A:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #4
	bhi _0803B05A
	b _0803AD50
_0803B05A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B06C: .4byte 0xFFFFFF00

	thumb_func_start sub_803B070
sub_803B070: @ 0x0803B070
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xf]
	cmp r0, #0
	beq _0803B084
	subs r0, #1
	strb r0, [r3, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803B088
_0803B084:
	movs r0, #0xff
	b _0803B110
_0803B088:
	ldr r2, _0803B0AC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _0803B0B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803B0B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #8
	movs r0, #7
	ands r2, r0
	cmp r2, #7
	bhi _0803B0E6
	lsls r0, r2, #2
	ldr r1, _0803B0B8 @ =_0803B0BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B0AC: .4byte gUnknown_03006868
_0803B0B0: .4byte 0x00196225
_0803B0B4: .4byte 0x3C6EF35F
_0803B0B8: .4byte _0803B0BC
_0803B0BC: @ jump table
	.4byte _0803B0E6 @ case 0
	.4byte _0803B0E6 @ case 1
	.4byte _0803B0E6 @ case 2
	.4byte _0803B0E6 @ case 3
	.4byte _0803B0E6 @ case 4
	.4byte _0803B0DC @ case 5
	.4byte _0803B0E0 @ case 6
	.4byte _0803B0E4 @ case 7
_0803B0DC:
	movs r2, #0
	b _0803B0E6
_0803B0E0:
	movs r2, #1
	b _0803B0E6
_0803B0E4:
	movs r2, #2
_0803B0E6:
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0xec
	adds r3, r3, r0
	adds r1, r3, #0
	adds r1, #0x14
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803B114 @ =0x00000484
	strh r0, [r1, #0xc]
	movs r0, #0
	cmp r2, #0
	beq _0803B104
	movs r0, #0xb
_0803B104:
	strb r0, [r1, #0x1a]
	movs r0, #0
	strb r0, [r3, #4]
	movs r0, #1
	str r0, [r3]
	adds r0, r2, #0
_0803B110:
	pop {r1}
	bx r1
	.align 2, 0
_0803B114: .4byte 0x00000484

	thumb_func_start sub_803B118
sub_803B118: @ 0x0803B118
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	beq _0803B198
	cmp r5, r0
	beq _0803B198
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0xec
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x14
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #4]
	ldr r7, _0803B1A0 @ =0x00000484
	strh r7, [r2, #0xc]
	ldrb r0, [r4, #0xe]
	movs r1, #0x14
	cmp r0, #0
	bne _0803B14E
	movs r1, #9
_0803B14E:
	strb r1, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r2, #0
	bl sub_80BF44C
	cmp r5, #0xff
	beq _0803B192
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x14
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #1
	str r0, [r1]
	strh r7, [r2, #0xc]
	movs r0, #0
	cmp r5, #0
	beq _0803B184
	movs r0, #0xb
_0803B184:
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r6
	strb r0, [r2, #0x1b]
	adds r0, r2, #0
	bl sub_80BF44C
_0803B192:
	movs r0, #0
	strb r0, [r4, #0xf]
	strb r5, [r4, #0xe]
_0803B198:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B1A0: .4byte 0x00000484

	thumb_func_start sub_803B1A4
sub_803B1A4: @ 0x0803B1A4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r4, #0
	movs r7, #0xff
	ldr r6, _0803B1F8 @ =0x00000484
_0803B1AE:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0xec
	mov r2, ip
	adds r1, r2, r0
	adds r2, r1, #0
	adds r2, #0x14
	ldr r0, [r1]
	cmp r0, #0
	beq _0803B22A
	ldrb r0, [r1, #4]
	cmp r0, #0xfe
	bhi _0803B1CE
	adds r0, #1
	strb r0, [r1, #4]
_0803B1CE:
	ldr r0, [r1]
	cmp r0, #2
	bne _0803B1FC
	ldrb r0, [r1, #4]
	cmp r0, #0x13
	bls _0803B22A
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	movs r5, #0
	movs r3, #0
	strh r6, [r2, #0xc]
	movs r0, #0x14
	cmp r4, #0
	bne _0803B1EE
	movs r0, #9
_0803B1EE:
	strb r0, [r2, #0x1a]
	str r3, [r1]
	strb r5, [r1, #4]
	b _0803B22A
	.align 2, 0
_0803B1F8: .4byte 0x00000484
_0803B1FC:
	ldrb r0, [r1, #4]
	cmp r0, #0x3c
	bne _0803B214
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	strh r6, [r2, #0xc]
	movs r0, #0xe
	cmp r4, #0
	bne _0803B228
	movs r0, #3
	b _0803B228
_0803B214:
	cmp r0, #0x78
	bne _0803B22A
	ldrb r0, [r2, #0x1b]
	orrs r0, r7
	strb r0, [r2, #0x1b]
	strh r6, [r2, #0xc]
	movs r0, #0x11
	cmp r4, #0
	bne _0803B228
	movs r0, #6
_0803B228:
	strb r0, [r2, #0x1a]
_0803B22A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803B1AE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803B23C
sub_803B23C: @ 0x0803B23C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803B284 @ =gUnknown_080CF770
	ldr r0, [r5]
	bl sub_80C3224
	str r0, [r4]
	ldrh r0, [r5, #0x34]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	adds r5, #0x36
	ldrb r0, [r5]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B284: .4byte gUnknown_080CF770

	thumb_func_start sub_803B288
sub_803B288: @ 0x0803B288
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803B344 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xb0
	adds r5, r1, r0
	ldr r2, [r7]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _0803B348 @ =gUnknown_03001D10
	ldr r0, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r0, [r4, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, [r5, #8]
	ldr r1, _0803B34C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	movs r6, #0
	ldr r1, _0803B350 @ =gUnknown_080CF850
	mov r8, r1
	movs r0, #2
	add r0, r8
	mov sb, r0
_0803B2FC:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	lsls r2, r6, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	add r2, sb
	ldr r1, [r4, #4]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0803B2FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B344: .4byte gCurTask
_0803B348: .4byte gUnknown_03001D10
_0803B34C: .4byte 0xFFFFFBFF
_0803B350: .4byte gUnknown_080CF850

	thumb_func_start sub_803B354
sub_803B354: @ 0x0803B354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _0803B420 @ =gUnknown_080CF8A0
	add r0, sp, #4
	movs r2, #4
	bl sub_80CA3B0
	ldr r0, _0803B424 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _0803B37E
	b _0803B486
_0803B37E:
	subs r0, #1
	strh r0, [r5, #0x2e]
	movs r7, #0
	ldr r0, _0803B428 @ =0x03000032
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r2, _0803B42C @ =0x03000038
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r0, _0803B430 @ =0x03000030
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r2, _0803B434 @ =0x0300003C
	adds r2, r1, r2
	str r2, [sp, #0x10]
	ldr r0, _0803B438 @ =0x030000A8
	adds r0, r0, r1
	mov sl, r0
	ldr r2, _0803B43C @ =gUnknown_03001D10
	mov r8, r2
	add r6, sp, #8
	ldr r0, _0803B440 @ =0x030000AC
	adds r0, r0, r1
	mov sb, r0
_0803B3AE:
	lsls r1, r7, #2
	ldr r2, [sp, #0x18]
	adds r4, r2, r1
	ldrh r0, [r4]
	adds r0, #0x40
	strh r0, [r4]
	lsls r2, r7, #3
	ldr r0, [sp, #0x1c]
	adds r3, r0, r2
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x10]
	adds r2, r0, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r1, [r5, #0x2e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803B444
	cmp r7, #0
	bne _0803B47C
	mov r0, sl
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4
	bl sub_80C59E8
	b _0803B47C
	.align 2, 0
_0803B420: .4byte gUnknown_080CF8A0
_0803B424: .4byte gCurTask
_0803B428: .4byte 0x03000032
_0803B42C: .4byte 0x03000038
_0803B430: .4byte 0x03000030
_0803B434: .4byte 0x0300003C
_0803B438: .4byte 0x030000A8
_0803B43C: .4byte gUnknown_03001D10
_0803B440: .4byte 0x030000AC
_0803B444:
	cmp r7, #1
	bne _0803B47C
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_80C4EB0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	movs r1, #1
	adds r2, r6, #0
	add r3, sp, #4
	bl sub_80C59E8
_0803B47C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0803B3AE
_0803B486:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803B498
sub_803B498: @ 0x0803B498
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803B5FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sl
	mov r8, r0
	movs r1, #0x16
	ldrsh r5, [r0, r1]
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_80C7524
	adds r4, r0, #0
	movs r1, #0x3c
	bl sub_80C7524
	ldr r2, _0803B600 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	mov sb, r4
	add r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r5, r5, r1
	ldr r1, _0803B604 @ =gUnknown_080CFA28
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r5, r5, r0
	ldr r7, _0803B608 @ =gUnknown_03000538
	add r7, sl
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r4, _0803B60C @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r4, _0803B610 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B584
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0803B584:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r4, #0xe
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r7, _0803B614 @ =gUnknown_03000560
	add r7, sl
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	mov r0, r8
	ldrb r2, [r0, #0x12]
	movs r1, #0x12
	ldrsb r1, [r0, r1]
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _0803B5EC
	mov r1, r8
	ldrb r0, [r1, #0x13]
	subs r0, #1
	strb r0, [r1, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803B5EC
	movs r0, #8
	strb r0, [r1, #0x13]
	adds r0, r2, #1
	strb r0, [r1, #0x12]
_0803B5EC:
	movs r6, #0
_0803B5EE:
	cmp r6, #0
	beq _0803B618
	mov r3, r8
	movs r4, #0x11
	ldrsb r4, [r3, r4]
	b _0803B61E
	.align 2, 0
_0803B5FC: .4byte gCurTask
_0803B600: .4byte gUnknown_080CF9AE
_0803B604: .4byte gUnknown_080CFA28
_0803B608: .4byte gUnknown_03000538
_0803B60C: .4byte gUnknown_080CF936
_0803B610: .4byte gUnknown_080CF8BC
_0803B614: .4byte gUnknown_03000560
_0803B618:
	mov r0, r8
	movs r4, #0x12
	ldrsb r4, [r0, r4]
_0803B61E:
	cmp r4, #0x63
	ble _0803B624
	movs r4, #0x63
_0803B624:
	cmp r6, #0
	bne _0803B63A
	mov r1, r8
	ldrb r0, [r1, #0x13]
	lsls r1, r0, #0x18
	cmp r0, #8
	beq _0803B63A
	asrs r0, r1, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B63C
_0803B63A:
	movs r0, #0
_0803B63C:
	mov sb, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_80C8960
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	subs r4, r4, r0
	cmp r5, #0
	beq _0803B68A
	lsls r0, r1, #3
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0xb4
	cmp r6, #0
	beq _0803B668
	movs r0, #0xd2
_0803B668:
	strh r0, [r7, #0x10]
	mov r3, sb
	lsls r0, r3, #0x18
	asrs r1, r0, #0x18
	cmp r6, #0
	beq _0803B678
	movs r0, #0x11
	b _0803B67A
_0803B678:
	movs r0, #0xb
_0803B67A:
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0803B68A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	cmp r5, #0
	bne _0803B6A6
	cmp r6, #0
	beq _0803B6A6
	movs r0, #0xd2
	b _0803B6AE
_0803B6A6:
	movs r0, #0xbe
	cmp r6, #0
	beq _0803B6AE
	movs r0, #0xdc
_0803B6AE:
	strh r0, [r7, #0x10]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r6, #0
	beq _0803B6BE
	movs r0, #0x11
	b _0803B6C0
_0803B6BE:
	movs r0, #0xb
_0803B6C0:
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803B5EE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803B6E8
sub_803B6E8: @ 0x0803B6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	movs r0, #0xb8
	lsls r0, r0, #5
	adds r6, r2, r0
	ldr r1, _0803B74C @ =gUnknown_080CFA3E
	mov r8, r1
_0803B708:
	lsls r2, r4, #2
	adds r1, r5, #0
	adds r1, #0x48
	adds r1, r1, r2
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	adds r0, r0, r2
	ldr r2, _0803B750 @ =0xFFFFFB80
	adds r1, r2, #0
	cmp r4, #0
	beq _0803B72A
	subs r2, #0x40
	adds r1, r2, #0
_0803B72A:
	strh r1, [r0]
	lsls r1, r4, #3
	adds r0, r5, #0
	adds r0, #0x68
	adds r3, r0, r1
	lsrs r1, r4, #1
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0803B754
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r2, r0
	b _0803B75C
	.align 2, 0
_0803B74C: .4byte gUnknown_080CFA3E
_0803B750: .4byte 0xFFFFFB80
_0803B754:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
_0803B75C:
	lsls r0, r0, #8
	str r0, [r3]
	lsls r0, r4, #3
	adds r1, r5, #0
	adds r1, #0x6c
	adds r1, r1, r0
	str r6, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803B708
	movs r0, #0x10
	bl sub_80C3224
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _0803B7FC @ =gUnknown_080CF7A8
	mov sb, r0
	ldr r1, _0803B800 @ =gUnknown_030008A0
	mov r8, r1
	movs r2, #0
	mov sl, r2
	movs r7, #0
_0803B78C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	adds r6, #0x80
	lsls r3, r4, #3
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r3, r1
	add r1, sb
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, r3, r1
	add r3, sb
	ldrb r1, [r3, #6]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xe]
	strh r7, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r7, [r0, #8]
	bl sub_80BF44C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0803B78C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7FC: .4byte gUnknown_080CF7A8
_0803B800: .4byte gUnknown_030008A0

	thumb_func_start sub_803B804
sub_803B804: @ 0x0803B804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803B82C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldrh r0, [r1, #0x2c]
	lsrs r0, r0, #2
	cmp r0, #7
	bhi _0803B830
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803B832
	.align 2, 0
_0803B82C: .4byte gCurTask
_0803B830:
	movs r0, #8
_0803B832:
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	ldr r3, [sp, #4]
	cmp sl, r3
	bhs _0803B8F6
	mov r0, sb
	adds r0, #0x4a
	str r0, [sp, #8]
_0803B844:
	mov r1, sl
	lsls r1, r1, #2
	mov r8, r1
	ldr r7, [sp, #8]
	add r7, r8
	ldrh r0, [r7]
	adds r0, #0x40
	strh r0, [r7]
	mov r3, sl
	lsls r2, r3, #3
	mov r0, sb
	adds r0, #0x68
	adds r4, r0, r2
	subs r0, #0x20
	adds r5, r0, r1
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	mov r0, sb
	adds r0, #0x6c
	adds r6, r0, r2
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0803B8BC @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r1, r0, #0
	mov r2, r8
	cmp r1, #0
	bge _0803B8E6
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	ble _0803B8E6
	lsls r0, r1, #8
	ldr r1, [r6]
	adds r1, r1, r0
	str r1, [r6]
	ldr r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0803B8C0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0803B8D2
	b _0803B8CE
	.align 2, 0
_0803B8BC: .4byte sub_8051F54
_0803B8C0:
	ldr r0, _0803B908 @ =0x00004FFF
	cmp r1, r0
	bgt _0803B8D2
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0803B8D2
_0803B8CE:
	rsbs r0, r0, #0
	strh r0, [r5]
_0803B8D2:
	ldr r0, [sp, #8]
	adds r2, r0, r2
	movs r1, #3
	mov r3, sl
	ands r1, r3
	lsls r1, r1, #6
	ldr r3, _0803B90C @ =0xFFFFFB80
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
_0803B8E6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, [sp, #4]
	cmp sl, r0
	blo _0803B844
_0803B8F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B908: .4byte 0x00004FFF
_0803B90C: .4byte 0xFFFFFB80

	thumb_func_start sub_803B910
sub_803B910: @ 0x0803B910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0803B9CC @ =gUnknown_080CFA4E
	mov r0, sp
	movs r2, #2
	bl sub_80CA3B0
	ldr r0, _0803B9D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, [r5]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
_0803B956:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_80BF44C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B956
	movs r6, #0
	movs r2, #0x68
	adds r2, r2, r5
	mov sl, r2
	movs r7, #0x6c
	adds r7, r7, r5
	mov sb, r7
	movs r0, #0x48
	adds r0, r0, r5
	mov r8, r0
	ldr r7, _0803B9D4 @ =gUnknown_03001D10
_0803B988:
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r4, r5, r1
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0803B99C
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r5, r2
_0803B99C:
	lsls r2, r6, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	lsls r0, r6, #2
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0803B9DC
	ldr r0, [r4, #8]
	ldr r1, _0803B9D8 @ =0xFFFFFBFF
	ands r0, r1
	b _0803B9E4
	.align 2, 0
_0803B9CC: .4byte gUnknown_080CFA4E
_0803B9D0: .4byte gCurTask
_0803B9D4: .4byte gUnknown_03001D10
_0803B9D8: .4byte 0xFFFFFBFF
_0803B9DC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0803B9E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803B988
	ldrh r1, [r5, #0x2c]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x3b
	bhi _0803BA12
	lsls r0, r1, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r2, #0x12
	ldrh r1, [r5, #0x2c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r3, r0, #3
	b _0803BA1C
_0803BA12:
	movs r7, #0x78
	mov ip, r7
	movs r7, #0xf
	movs r3, #0x28
	ldrh r1, [r5, #0x2c]
_0803BA1C:
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r5, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #0xd
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, _0803BB08 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r2, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	mov r5, ip
	lsls r5, r5, #0x10
	mov sl, r5
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r7, _0803BB0C @ =gUnknown_082B48B4
	mov r8, r7
	movs r5, #1
_0803BA70:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	adds r0, r3, #0
	ldr r2, _0803BB10 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sl
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r2, r6, #0
	ands r2, r5
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r7, _0803BB10 @ =0x000003FF
	ands r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sb
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	lsrs r0, r6, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r2, #0
	beq _0803BB18
	ldr r1, _0803BB14 @ =0xFFFFFF00
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB08: .4byte gUnknown_03001D10
_0803BB0C: .4byte gUnknown_082B48B4
_0803BB10: .4byte 0x000003FF
_0803BB14: .4byte 0xFFFFFF00
_0803BB18:
	ldr r2, _0803BB30 @ =0xFFFFFF00
	adds r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB30: .4byte 0xFFFFFF00
_0803BB34:
	ldr r0, [r4, #8]
	ldr r1, _0803BB5C @ =0xFFFFFBFF
	ands r0, r1
_0803BB3A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803BA70
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB5C: .4byte 0xFFFFFBFF

	thumb_func_start sub_803BB60
sub_803BB60: @ 0x0803BB60
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803BC04 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
_0803BB72:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r4, r6, r0
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0803BB92
	ldrb r1, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #6]
_0803BB92:
	ldrh r0, [r4, #0xa]
	adds r0, #0x18
	strh r0, [r4, #0xa]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	asrs r0, r0, #8
	asrs r1, r1, #8
	ldr r2, _0803BC08 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	adds r2, r0, #0
	cmp r2, #0
	bge _0803BBF0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0803BBF0
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #4
	strh r0, [r4, #0xa]
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrb r1, [r4, #5]
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0803BBF0
	subs r0, r1, #1
	strb r0, [r4, #5]
_0803BBF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BB72
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC04: .4byte gCurTask
_0803BC08: .4byte sub_8051F54

	thumb_func_start sub_803BC0C
sub_803BC0C: @ 0x0803BC0C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803BC74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r5, #0
	ldr r6, _0803BC78 @ =gUnknown_03001D10
_0803BC1E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0xec
	adds r2, r7, r0
	movs r0, #6
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0803BC62
	ldr r0, [r2, #4]
	ldr r1, _0803BC7C @ =0x0002FF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	cmp r0, r1
	beq _0803BC62
	adds r4, r2, #0
	adds r4, #0x14
	ldr r0, [r2, #0xc]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0803BC62:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803BC1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC74: .4byte gCurTask
_0803BC78: .4byte gUnknown_03001D10
_0803BC7C: .4byte 0x0002FF00

	thumb_func_start sub_803BC80
sub_803BC80: @ 0x0803BC80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803BD18 @ =sub_803BD28
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803BD1C @ =sub_803BE34
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0803BD20 @ =0x03000008
	adds r4, r4, r0
	movs r0, #0
	mov sl, r0
	movs r0, #0
	mov sb, r0
	strh r5, [r1]
	strh r6, [r1, #2]
	movs r0, #0x2d
	strh r0, [r1, #4]
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	ldr r0, _0803BD24 @ =0x00000483
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x80
	strh r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD18: .4byte sub_803BD28
_0803BD1C: .4byte sub_803BE34
_0803BD20: .4byte 0x03000008
_0803BD24: .4byte 0x00000483

	thumb_func_start sub_803BD28
sub_803BD28: @ 0x0803BD28
	push {r4, r5, lr}
	ldr r0, _0803BD50 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #8
	adds r4, r1, r0
	ldrh r0, [r3, #4]
	subs r1, r0, #1
	strh r1, [r3, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803BD54
	adds r0, r2, #0
	bl TaskDestroy
	b _0803BD90
	.align 2, 0
_0803BD50: .4byte gCurTask
_0803BD54:
	cmp r0, #0x13
	bgt _0803BD60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803BD90
_0803BD60:
	ldr r2, _0803BD98 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldrh r1, [r3, #2]
	subs r1, r1, r0
	ldr r2, _0803BD9C @ =gUnknown_082B48B4
	movs r5, #4
	ldrsh r0, [r3, r5]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80C033C
_0803BD90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD98: .4byte gUnknown_03001D10
_0803BD9C: .4byte gUnknown_082B48B4

	thumb_func_start sub_803BDA0
sub_803BDA0: @ 0x0803BDA0
	push {r4, r5, r6, lr}
	ldr r0, _0803BE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803BE1C @ =gUnknown_03000628
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803BE20 @ =gUnknown_03000650
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803BE24 @ =gUnknown_03000678
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803BE28 @ =gUnknown_030006A0
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803BE2C @ =gUnknown_030006C8
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803BE04
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803BE04
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803BE30 @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803BE04:
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE18: .4byte gCurTask
_0803BE1C: .4byte gUnknown_03000628
_0803BE20: .4byte gUnknown_03000650
_0803BE24: .4byte gUnknown_03000678
_0803BE28: .4byte gUnknown_030006A0
_0803BE2C: .4byte gUnknown_030006C8
_0803BE30: .4byte 0x0000020D

	thumb_func_start sub_803BE34
sub_803BE34: @ 0x0803BE34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #8]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803BE48
sub_803BE48: @ 0x0803BE48
	push {lr}
	ldr r2, _0803BE94 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803BE76
	movs r0, #0x80
	strb r0, [r1, #0xd]
	movs r0, #0
	strb r0, [r1, #0x15]
	ldr r1, [r2]
	ldr r0, _0803BE98 @ =sub_803AA28
	str r0, [r1, #8]
_0803BE76:
	bl sub_803B804
	bl sub_803B910
	bl sub_803BB60
	bl sub_803BC0C
	bl sub_803B498
	bl sub_803B354
	pop {r0}
	bx r0
	.align 2, 0
_0803BE94: .4byte gCurTask
_0803BE98: .4byte sub_803AA28

	thumb_func_start sub_803BE9C
sub_803BE9C: @ 0x0803BE9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x3f
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803BEDC @ =0x00000482
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0xbe
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEDC: .4byte 0x00000482

	thumb_func_start sub_803BEE0
sub_803BEE0: @ 0x0803BEE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x91
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803BF20
sub_803BF20: @ 0x0803BF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #6
	bl sub_80C3224
	str r0, [r5]
	movs r1, #0
	ldr r0, _0803BF74 @ =0x00000484
	strh r0, [r5, #0xc]
	movs r0, #0x14
	cmp r4, #0
	bne _0803BF42
	movs r0, #9
_0803BF42:
	strb r0, [r5, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r6
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF74: .4byte 0x00000484

	thumb_func_start sub_803BF78
sub_803BF78: @ 0x0803BF78
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803BFC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0803BFB8
	subs r2, r0, #1
	strb r2, [r1, #0xd]
	cmp r3, #0
	bne _0803BFA6
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803BFA6
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803BFB8
_0803BFA6:
	movs r0, #0xb1
	lsls r0, r0, #3
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0803BFB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFC0: .4byte gCurTask

	thumb_func_start sub_803BFC4
sub_803BFC4: @ 0x0803BFC4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r3, #0
	movs r4, #0
	ldr r5, _0803C00C @ =gUnknown_080CF850
	adds r0, r5, #2
	mov ip, r0
	movs r7, #4
_0803BFD4:
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, #0xec
	adds r1, r6, r1
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	lsls r2, r3, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	add r2, ip
	ldrh r0, [r2]
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	strb r7, [r1, #5]
	movs r0, #0x3c
	strb r0, [r1, #6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0803BFD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C00C: .4byte gUnknown_080CF850

	thumb_func_start sub_803C010
sub_803C010: @ 0x0803C010
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	mov r0, sp
	movs r1, #0
	movs r2, #0x14
	bl sub_80CA410
	ldr r0, _0803C044 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r7, _0803C048 @ =gUnknown_030015C0
_0803C034:
	cmp r5, #0
	beq _0803C04C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C050
	.align 2, 0
_0803C044: .4byte gCurTask
_0803C048: .4byte gUnknown_030015C0
_0803C04C:
	ldr r0, _0803C090 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C050:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803C07E
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	mov r3, r8
	bl sub_803AD38
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803AAE8
_0803C07E:
	adds r5, #1
	cmp r5, #1
	ble _0803C034
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C090: .4byte gUnknown_030008A0

	thumb_func_start sub_803C094
sub_803C094: @ 0x0803C094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	ldr r5, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r6, r1, #0
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl sub_80CA3B0
	lsls r1, r6, #3
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803C0F4
	ldr r1, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0803C0F8
_0803C0F4:
	movs r0, #0
	b _0803C11E
_0803C0F8:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0803C10A
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_0803C10A:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
_0803C11E:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803C12C
sub_803C12C: @ 0x0803C12C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0803C18C @ =sub_803C3A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803C190 @ =sub_803D6C0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r0, _0803C194 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803C198 @ =gUnknown_030015C0
	adds r7, r0, r1
	strh r5, [r6, #0x30]
	strh r4, [r6, #0x32]
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	str r4, [r6, #0x2c]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0803C1A0
	ldr r1, _0803C19C @ =0x03000034
	adds r0, r2, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0803C1AA
	.align 2, 0
_0803C18C: .4byte sub_803C3A8
_0803C190: .4byte sub_803D6C0
_0803C194: .4byte gUnknown_030008A0
_0803C198: .4byte gUnknown_030015C0
_0803C19C: .4byte 0x03000034
_0803C1A0:
	ldr r1, _0803C208 @ =0x03000034
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803C20C @ =0xFFFFFD00
_0803C1AA:
	str r0, [r6, #0x28]
	movs r0, #0x8a
	bl sub_8003DF0
	movs r0, #6
	bl sub_80C3224
	str r0, [r6]
	movs r2, #0
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	subs r0, #0xf5
	strh r0, [r6, #0xc]
	strb r2, [r6, #0x1a]
	strh r1, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r2, [r6, #0x1f]
	ldrh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6, #0x10]
	ldrh r0, [r6, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #8]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0803C200
	ldr r1, _0803C210 @ =gUnknown_03001D00
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803C200:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C208: .4byte 0x03000034
_0803C20C: .4byte 0xFFFFFD00
_0803C210: .4byte gUnknown_03001D00

	thumb_func_start CreateEntity_Interactable083
CreateEntity_Interactable083: @ 0x0803C214
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _0803C384 @ =gUnknown_03001D00
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803C388 @ =sub_803C600
	ldr r1, _0803C38C @ =0x0000059C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0803C390 @ =sub_803D6D4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0803C394 @ =gUnknown_03000590
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	movs r3, #0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r4, r8
	str r4, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	strb r2, [r7, #0x16]
	movs r0, #0xd8
	strh r0, [r7, #0x12]
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r7, #0x10]
	movs r0, #0x3c
	strb r0, [r7, #0x17]
	ldr r0, _0803C398 @ =gUnknown_030004C8
	adds r1, r1, r0
	str r3, [r1]
	strb r2, [r7, #0x14]
	strb r2, [r7, #0x15]
	movs r4, #0
	ldr r3, _0803C39C @ =gUnknown_030015C0
	movs r5, #0x1d
	rsbs r5, r5, #0
_0803C28C:
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r2, r0, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _0803C2BE
	adds r0, r5, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803C2BE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C28C
	movs r1, #0
	mov r2, ip
	strh r1, [r2]
	movs r0, #2
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #6]
	movs r0, #0xff
	strh r0, [r2, #8]
	strh r1, [r2, #0xa]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r0, r7, r2
	bl sub_80214F0
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r7, r4
	bl sub_803D47C
	movs r4, #0
_0803C2FE:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x18
	adds r0, r7, r0
	ldr r2, [r7, #0x18]
	adds r1, r4, #0
	bl sub_8039D60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x14
	bls _0803C2FE
	movs r0, #0x20
	bl sub_80C3224
	mov r8, r0
	movs r4, #0
	movs r6, #0
	movs r5, #0
	ldr r0, _0803C3A0 @ =0x0000048C
	mov sb, r0
_0803C32C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r1, r4, #7
	add r1, r8
	str r1, [r0]
	strh r5, [r0, #0x14]
	mov r2, sb
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	lsls r1, r4, #4
	adds r1, #0x48
	strh r1, [r0, #0x10]
	movs r1, #0x96
	strh r1, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_80BF44C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803C32C
	ldr r1, _0803C3A4 @ =gUnknown_030008A0
	movs r0, #2
	strb r0, [r1, #4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C384: .4byte gUnknown_03001D00
_0803C388: .4byte sub_803C600
_0803C38C: .4byte 0x0000059C
_0803C390: .4byte sub_803D6D4
_0803C394: .4byte gUnknown_03000590
_0803C398: .4byte gUnknown_030004C8
_0803C39C: .4byte gUnknown_030015C0
_0803C3A0: .4byte 0x0000048C
_0803C3A4: .4byte gUnknown_030008A0

	thumb_func_start sub_803C3A8
sub_803C3A8: @ 0x0803C3A8
	push {r4, r5, lr}
	sub sp, #4
	movs r3, #0
	ldr r0, _0803C3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r5, r4, #0
	adds r1, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C404
	ldr r0, [r4, #0x28]
	adds r0, #0x30
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	adds r2, r1, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldr r1, _0803C3FC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	lsls r0, r0, #8
	cmp r2, r0
	blt _0803C43C
	asrs r0, r2, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	ldr r2, _0803C400 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	b _0803C436
	.align 2, 0
_0803C3F8: .4byte gCurTask
_0803C3FC: .4byte 0xFFFFF7FF
_0803C400: .4byte sub_8051F54
_0803C404:
	ldr r0, [r4, #0x28]
	subs r0, #0x30
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	adds r2, r1, r0
	str r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	subs r0, #0x10
	lsls r0, r0, #8
	cmp r2, r0
	bgt _0803C43C
	asrs r0, r2, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r2, _0803C490 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
_0803C436:
	bl sub_8052418
	adds r3, r0, #0
_0803C43C:
	cmp r3, #0
	bge _0803C466
	adds r1, r3, #2
	lsls r1, r1, #8
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x28]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x83
	lsls r0, r0, #2
	bl sub_8003DF0
	ldr r0, _0803C494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803C498 @ =sub_803C4A0
	str r0, [r1, #8]
_0803C466:
	ldr r2, _0803C49C @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r5, #0x30]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x2c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C490: .4byte sub_8051F54
_0803C494: .4byte gCurTask
_0803C498: .4byte sub_803C4A0
_0803C49C: .4byte gUnknown_03001D10

	thumb_func_start sub_803C4A0
sub_803C4A0: @ 0x0803C4A0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C4DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r5, r4, #0
	adds r1, #0x34
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C4E8
	ldr r0, [r4, #8]
	ldr r1, _0803C4E0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	ldr r2, _0803C4E4 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	b _0803C50A
	.align 2, 0
_0803C4DC: .4byte gCurTask
_0803C4E0: .4byte 0xFFFFF7FF
_0803C4E4: .4byte sub_8051F54
_0803C4E8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r2, _0803C524 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	bl sub_8052418
	rsbs r0, r0, #0
_0803C50A:
	adds r1, r0, #0
	cmp r0, #0
	bge _0803C512
	rsbs r1, r0, #0
_0803C512:
	cmp r1, #1
	ble _0803C528
	lsls r1, r0, #8
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	movs r3, #0
	b _0803C52C
	.align 2, 0
_0803C524: .4byte sub_8051F54
_0803C528:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0803C52C:
	ldr r2, _0803C55C @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r5, #0x30]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r5, #0x2c]
	asrs r1, r1, #8
	ldr r0, [r2, #4]
	subs r1, r1, r0
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C55C: .4byte gUnknown_03001D10

	thumb_func_start sub_803C560
sub_803C560: @ 0x0803C560
	push {r4, r5, lr}
	ldr r0, _0803C584 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803C588 @ =gUnknown_030015C0
_0803C572:
	cmp r3, #0
	beq _0803C58C
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C590
	.align 2, 0
_0803C584: .4byte gCurTask
_0803C588: .4byte gUnknown_030015C0
_0803C58C:
	ldr r0, _0803C5CC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C590:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803C572
	ldrh r1, [r4, #0x12]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803C5D0
	subs r0, r1, #1
	strh r0, [r4, #0x12]
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80214F0
	b _0803C5EE
	.align 2, 0
_0803C5CC: .4byte gUnknown_030008A0
_0803C5D0:
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_80213FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803C5EE
	movs r0, #0xd8
	strh r0, [r4, #0x12]
	ldr r0, _0803C5F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803C5FC @ =sub_803C600
	str r0, [r1, #8]
_0803C5EE:
	bl sub_803D4C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5F8: .4byte gCurTask
_0803C5FC: .4byte sub_803C600

	thumb_func_start sub_803C600
sub_803C600: @ 0x0803C600
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0803C644 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0803C648 @ =gUnknown_03003C20
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803C64C @ =gUnknown_030008A0
	movs r0, #1
	strb r0, [r1, #4]
	movs r5, #0
	mov r8, r3
	mov ip, r2
	adds r7, r1, #0
	ldr r3, _0803C650 @ =gUnknown_030015C0
	movs r2, #0
_0803C632:
	cmp r5, #0
	beq _0803C654
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C656
	.align 2, 0
_0803C644: .4byte gCurTask
_0803C648: .4byte gUnknown_03003C20
_0803C64C: .4byte gUnknown_030008A0
_0803C650: .4byte gUnknown_030015C0
_0803C654:
	ldrb r1, [r7, #6]
_0803C656:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x36]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803C632
	ldrh r0, [r6, #0x12]
	subs r4, r0, #1
	strh r4, [r6, #0x12]
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0803C6C0
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, _0803C6B4 @ =0x0000FEFF
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r2, _0803C6B8 @ =gUnknown_03002B40
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xb4
	strh r0, [r6, #0x12]
	mov r5, r8
	ldr r1, [r5]
	ldr r0, _0803C6BC @ =sub_803C898
	str r0, [r1, #8]
	b _0803C6E6
	.align 2, 0
_0803C6B4: .4byte 0x0000FEFF
_0803C6B8: .4byte gUnknown_03002B40
_0803C6BC: .4byte sub_803C898
_0803C6C0:
	movs r0, #0x12
	ldrsh r1, [r6, r0]
	movs r0, #0xd8
	subs r0, r0, r1
	cmp r0, #0x30
	bgt _0803C6D6
	movs r0, #0xd8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803C6DE
_0803C6D6:
	movs r0, #0x30
	cmp r5, #0x30
	bgt _0803C6DE
	ldrh r0, [r6, #0x12]
_0803C6DE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_803C6F4
_0803C6E6:
	bl sub_803D4C8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803C6F4
sub_803C6F4: @ 0x0803C6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	movs r6, #0
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0803C724
	movs r2, #0
	str r2, [sp]
	cmp r0, #1
	bgt _0803C716
	movs r1, #2
_0803C716:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	b _0803C73A
_0803C724:
	cmp r0, #0x18
	ble _0803C72A
	movs r1, #0x18
_0803C72A:
	movs r3, #1
	str r3, [sp]
	movs r3, #0x18
	lsls r0, r1, #0x12
	ldr r1, _0803C83C @ =0xFFC00000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sl, r0
_0803C73A:
	ldr r2, _0803C840 @ =gUnknown_03002B40
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0803C844 @ =gUnknown_03003C5C
	ldr r0, _0803C848 @ =0x04000012
	str r0, [r1]
	ldr r1, _0803C84C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803C850 @ =gUnknown_03002B84
	ldr r5, [r0]
	movs r2, #0
	mov sb, r0
	lsls r7, r3, #0x10
_0803C75A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	strh r1, [r5]
	adds r5, #2
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0803C75A
	movs r3, #0x48
	mov r2, sb
	ldr r5, [r2]
	asrs r1, r7, #0x10
	subs r0, r3, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	adds r4, r1, #0
	subs r4, #0x40
_0803C784:
	strh r4, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C784
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	asrs r1, r7, #0x10
	subs r0, r2, r1
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r2, r2, r1
	mov ip, r3
	cmp r0, r2
	bge _0803C7E2
	movs r3, #3
	mov r8, r3
	adds r3, r2, #0
_0803C7BC:
	asrs r2, r4, #0x10
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	adds r1, r2, #0
	subs r1, #0x20
	subs r0, r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r2, #1
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	cmp r0, r3
	blt _0803C7BC
_0803C7E2:
	mov r2, sb
	ldr r5, [r2]
	mov r3, ip
	asrs r0, r3, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r3, r0, r1
_0803C7FC:
	strh r3, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C7FC
	ldr r3, [sp]
	cmp r3, #0
	bne _0803C854
	lsls r1, r6, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0803C886
	movs r2, #0
_0803C82A:
	strh r2, [r5]
	adds r5, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _0803C82A
	b _0803C886
	.align 2, 0
_0803C83C: .4byte 0xFFC00000
_0803C840: .4byte gUnknown_03002B40
_0803C844: .4byte gUnknown_03003C5C
_0803C848: .4byte 0x04000012
_0803C84C: .4byte gUnknown_03003F30
_0803C850: .4byte gUnknown_03002B84
_0803C854:
	mov r1, sb
	ldr r5, [r1]
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x5e
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r3, #0
	cmp r3, r1
	bge _0803C886
_0803C86C:
	asrs r1, r2, #0x10
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r5]
	adds r5, #2
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _0803C86C
_0803C886:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803C898
sub_803C898: @ 0x0803C898
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0803C8C8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0803C8CC @ =0x03000360
	adds r5, r1, r0
	movs r4, #0
	mov sb, r2
	ldr r7, _0803C8D0 @ =gUnknown_030015C0
	movs r2, #0
_0803C8B8:
	cmp r4, #0
	beq _0803C8D4
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C8D8
	.align 2, 0
_0803C8C8: .4byte gCurTask
_0803C8CC: .4byte 0x03000360
_0803C8D0: .4byte gUnknown_030015C0
_0803C8D4:
	ldr r0, _0803C930 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C8D8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r7
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	strh r2, [r3, #0x36]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	strh r2, [r3, #0x1c]
	strh r2, [r3, #0x1e]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803C8B8
	ldrh r0, [r6, #0x12]
	subs r0, #1
	strh r0, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803C9E0
	movs r4, #0
	ldr r7, _0803C934 @ =gUnknown_080CF770
	movs r1, #0xc
	adds r1, r1, r6
	mov ip, r1
	ldr r2, _0803C938 @ =sub_803CA28
	mov r8, r2
	ldr r2, _0803C93C @ =gUnknown_030015C0
_0803C920:
	cmp r4, #0
	beq _0803C940
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803C944
	.align 2, 0
_0803C930: .4byte gUnknown_030008A0
_0803C934: .4byte gUnknown_080CF770
_0803C938: .4byte sub_803CA28
_0803C93C: .4byte gUnknown_030015C0
_0803C940:
	ldr r0, _0803C9D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803C944:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	ldr r1, _0803C9D8 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803C920
	ldrh r0, [r7, #4]
	strh r0, [r5, #0xc]
	ldrb r0, [r7, #6]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x80
	strb r0, [r6, #0x17]
	movs r4, #0
	ldr r6, _0803C9DC @ =gUnknown_030015C0
	movs r7, #0x1d
	rsbs r7, r7, #0
	mov r5, ip
_0803C97C:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, r1, r6
	adds r0, r5, r4
	ldrb r0, [r0]
	movs r2, #0x2b
	adds r2, r2, r1
	mov ip, r2
	movs r2, #7
	ands r2, r0
	lsls r2, r2, #2
	mov r0, ip
	ldrb r3, [r0]
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	adds r1, #0x52
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C97C
	mov r1, sb
	ldr r0, [r1]
	mov r2, r8
	str r2, [r0, #8]
	bl sub_80C8510
	ldr r0, _0803C9D4 @ =gUnknown_030008A0
	movs r1, #3
	strb r1, [r0, #4]
	adds r0, #0x85
	movs r1, #1
	strb r1, [r0]
	b _0803CA18
	.align 2, 0
_0803C9D4: .4byte gUnknown_030008A0
_0803C9D8: .4byte 0xF7FFFFFF
_0803C9DC: .4byte gUnknown_030015C0
_0803C9E0:
	cmp r0, #0x78
	bne _0803C9F8
	movs r0, #0x3c
	strb r0, [r6, #0x17]
	ldr r0, _0803C9F4 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x2c]
	strh r1, [r5, #0xc]
	adds r0, #0x2e
	b _0803CA06
	.align 2, 0
_0803C9F4: .4byte gUnknown_080CF770
_0803C9F8:
	cmp r0, #0x3c
	bne _0803CA0E
	strb r0, [r6, #0x17]
	ldr r0, _0803CA24 @ =gUnknown_080CF770
	ldrh r1, [r0, #0x24]
	strh r1, [r5, #0xc]
	adds r0, #0x26
_0803CA06:
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_0803CA0E:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803CA18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CA24: .4byte gUnknown_080CF770

	thumb_func_start sub_803CA28
sub_803CA28: @ 0x0803CA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	ldr r2, _0803CAD8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0803CADC @ =gUnknown_03000590
	adds r0, r0, r1
	mov r8, r0
	ldrb r1, [r7, #0x16]
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldr r5, _0803CAE0 @ =gUnknown_03001D00
	mov ip, r5
	ldrb r2, [r5]
	cmp r0, r2
	bge _0803CA86
	movs r3, #0xe2
	lsls r3, r3, #2
	mov sl, r3
	movs r0, #1
	mov sb, r0
	movs r2, #0xff
_0803CA64:
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	adds r3, r7, r0
	mov r0, sb
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r2
	strb r0, [r3, #0x1b]
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blt _0803CA64
_0803CA86:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r7, r0
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #7
	bhi _0803CAA2
	ldrh r0, [r7, #0x10]
	subs r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803CAA2
	b _0803CD90
_0803CAA2:
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0803CB4C
	movs r1, #0
	ldr r2, _0803CAE4 @ =gUnknown_030008A0
	mov sb, r2
	ldr r2, _0803CAE8 @ =gUnknown_030015C0
_0803CAC4:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CAEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CAF0
	.align 2, 0
_0803CAD8: .4byte gCurTask
_0803CADC: .4byte gUnknown_03000590
_0803CAE0: .4byte gUnknown_03001D00
_0803CAE4: .4byte gUnknown_030008A0
_0803CAE8: .4byte gUnknown_030015C0
_0803CAEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CAF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CAC4
	ldr r0, _0803CB3C @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0803CB2A
	ldr r1, _0803CB40 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803CB2A:
	movs r0, #0x1e
	strh r0, [r7, #0x12]
	bl sub_803D4C8
	ldr r0, _0803CB44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CB48 @ =sub_803CF84
	b _0803CD74
	.align 2, 0
_0803CB3C: .4byte gUnknown_030008A0
_0803CB40: .4byte gUnknown_080CF770
_0803CB44: .4byte gCurTask
_0803CB48: .4byte sub_803CF84
_0803CB4C:
	movs r1, #0
	ldr r6, _0803CB68 @ =gUnknown_080CF770
	ldr r2, _0803CB6C @ =gUnknown_030015C0
_0803CB52:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CB70
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CB74
	.align 2, 0
_0803CB68: .4byte gUnknown_080CF770
_0803CB6C: .4byte gUnknown_030015C0
_0803CB70:
	ldr r0, _0803CD08 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803CB74:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CB52
	ldrh r0, [r6, #0xc]
	movs r5, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r7, #0x12]
	ldr r1, _0803CD0C @ =gUnknown_080CFA50
	mov r0, sp
	movs r2, #5
	bl sub_80CA3B0
	ldr r6, _0803CD10 @ =0x06012800
	ldr r0, _0803CD08 @ =gUnknown_030008A0
	ldrb r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803CD14 @ =gUnknown_030015C0
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r2
	movs r2, #0x99
	lsls r2, r2, #3
	adds r3, r7, r2
	str r6, [r3]
	adds r6, #0x80
	ldr r0, _0803CD18 @ =0x0000058F
	mov sl, r0
	mov r2, sl
	strh r2, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov sb, r1
	mov r2, sb
	strh r2, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	mov r1, sl
	strh r1, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r2, #0x40
	mov sl, r2
	mov r0, sl
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r1, r8
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r0, sb
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r1, #0xa3
	lsls r1, r1, #3
	adds r3, r7, r1
	str r6, [r3]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r6, r2
	ldr r4, _0803CD1C @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	subs r0, #0x81
	strb r0, [r3, #0x1b]
	mov r0, r8
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r0, #0xa8
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	strh r4, [r3, #0xc]
	movs r1, #0
	strb r1, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r0, r8
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r2, #0x10
	ldrsh r1, [r7, r2]
	ldr r0, _0803CD20 @ =0x000005DB
	cmp r1, r0
	ble _0803CD24
	movs r4, #5
	b _0803CD2E
	.align 2, 0
_0803CD08: .4byte gUnknown_030008A0
_0803CD0C: .4byte gUnknown_080CFA50
_0803CD10: .4byte 0x06012800
_0803CD14: .4byte gUnknown_030015C0
_0803CD18: .4byte 0x0000058F
_0803CD1C: .4byte 0x0000048D
_0803CD20: .4byte 0x000005DB
_0803CD24:
	ldr r0, _0803CD80 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803CD2E
	movs r4, #2
_0803CD2E:
	movs r0, #0xad
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	movs r2, #0
	movs r1, #0
	subs r0, #0xe1
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	movs r0, #0x96
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_8003DC4
	strb r4, [r7, #0x14]
	ldr r0, _0803CD84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CD88 @ =sub_803D324
_0803CD74:
	str r0, [r1, #8]
	ldr r1, _0803CD8C @ =gUnknown_030008A0
	movs r0, #6
	strb r0, [r1, #4]
	b _0803CECA
	.align 2, 0
_0803CD80: .4byte 0x00000257
_0803CD84: .4byte gCurTask
_0803CD88: .4byte sub_803D324
_0803CD8C: .4byte gUnknown_030008A0
_0803CD90:
	ldr r0, _0803CDC4 @ =gUnknown_030008A0
	ldrb r1, [r0, #3]
	mov sb, r0
	cmp r1, #5
	beq _0803CDCC
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803CDC8 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE20
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	b _0803CE20
	.align 2, 0
_0803CDC4: .4byte gUnknown_030008A0
_0803CDC8: .4byte gUnknown_030015C0
_0803CDCC:
	movs r1, #0
	movs r6, #0
	ldr r2, _0803CDE8 @ =gUnknown_030015C0
_0803CDD2:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CDEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CDF0
	.align 2, 0
_0803CDE8: .4byte gUnknown_030015C0
_0803CDEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CDF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE12
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_0803CE12:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CDD2
_0803CE20:
	cmp r6, #0
	beq _0803CEA8
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r0, #0x3c
	strh r0, [r7, #0x12]
	ldr r0, _0803CE5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CE60 @ =sub_803D750
	str r0, [r1, #8]
	movs r1, #0
	ldr r6, _0803CE64 @ =gUnknown_080CF770
	ldr r2, _0803CE68 @ =gUnknown_030015C0
_0803CE48:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CE6C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CE70
	.align 2, 0
_0803CE5C: .4byte gCurTask
_0803CE60: .4byte sub_803D750
_0803CE64: .4byte gUnknown_080CF770
_0803CE68: .4byte gUnknown_030015C0
_0803CE6C:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CE70:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CE48
	ldrh r0, [r6, #0x1c]
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0x1e]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #6
	mov r2, sb
	strb r0, [r2, #4]
	b _0803CEC0
_0803CEA8:
	ldrb r4, [r7, #0x17]
	movs r0, #0
	bl sub_803D784
	cmp r4, #0
	beq _0803CEC0
	ldrb r1, [r7, #0x17]
	cmp r1, #0
	bne _0803CEC0
	ldr r0, _0803CEDC @ =gUnknown_030008A0
	adds r0, #0x85
	strb r1, [r0]
_0803CEC0:
	bl sub_803D4C8
	ldr r0, _0803CEE0 @ =gUnknown_03001D00
	ldrb r0, [r0]
	strb r0, [r7, #0x16]
_0803CECA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEDC: .4byte gUnknown_030008A0
_0803CEE0: .4byte gUnknown_03001D00

	thumb_func_start sub_803CEE4
sub_803CEE4: @ 0x0803CEE4
	push {r4, lr}
	ldr r0, _0803CF4C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #1
	bne _0803CF74
	movs r0, #2
	strb r0, [r1, #0x17]
	ldrh r0, [r1, #0x12]
	movs r3, #0x12
	ldrsh r4, [r1, r3]
	cmp r4, #0
	bne _0803CF70
	ldr r1, _0803CF50 @ =gUnknown_03000590
	adds r0, r2, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803CF74
	ldr r1, _0803CF54 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803CF58 @ =gUnknown_03003F94
	ldr r0, _0803CF5C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF60 @ =gUnknown_03006840
	strb r4, [r0]
	ldr r1, _0803CF64 @ =gUnknown_03006208
	ldr r0, _0803CF68 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF6C @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803CF7E
	.align 2, 0
_0803CF4C: .4byte gCurTask
_0803CF50: .4byte gUnknown_03000590
_0803CF54: .4byte 0x0000FFFF
_0803CF58: .4byte gUnknown_03003F94
_0803CF5C: .4byte gUnknown_03003D20
_0803CF60: .4byte gUnknown_03006840
_0803CF64: .4byte gUnknown_03006208
_0803CF68: .4byte gUnknown_03003F34
_0803CF6C: .4byte gUnknown_030008A0
_0803CF70:
	subs r0, #1
	strh r0, [r1, #0x12]
_0803CF74:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803CF7E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803CF84
sub_803CF84: @ 0x0803CF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0803CFB4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r0, _0803CFB8 @ =gUnknown_030008A0
	mov r8, r0
	ldr r5, _0803CFBC @ =gUnknown_030015C0
_0803CFA4:
	cmp r4, #0
	beq _0803CFC0
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CFC4
	.align 2, 0
_0803CFB4: .4byte gCurTask
_0803CFB8: .4byte gUnknown_030008A0
_0803CFBC: .4byte gUnknown_030015C0
_0803CFC0:
	mov r0, r8
	ldrb r1, [r0, #6]
_0803CFC4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803CFA4
	mov r1, r8
	ldrb r7, [r1, #6]
	cmp r7, #0
	beq _0803CFEE
	b _0803D216
_0803CFEE:
	ldrb r0, [r6, #0x17]
	cmp r0, #0x5f
	bhi _0803CFF6
	b _0803D216
_0803CFF6:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r0, _0803D178 @ =gUnknown_03001D00
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0803D006
	b _0803D208
_0803D006:
	ldr r1, _0803D17C @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r6, #0x12]
	ldr r1, _0803D180 @ =gUnknown_080CFA50
	mov r0, sp
	movs r2, #5
	bl sub_80CA3B0
	ldr r1, _0803D184 @ =0x06012800
	mov sl, r1
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803D188 @ =gUnknown_030015C0
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r2
	movs r0, #0x99
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r0, sl
	str r0, [r3]
	movs r0, #0x80
	add sl, r0
	ldr r0, _0803D18C @ =0x0000058F
	mov sb, r0
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r7, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov r8, r1
	mov r0, r8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r1, #0x40
	mov sb, r1
	mov r0, sb
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r1, r8
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r0, #0xa3
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r1, sl
	str r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
	ldr r4, _0803D190 @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	strh r4, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	mov r1, sb
	strh r1, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, _0803D194 @ =0x000005DB
	cmp r1, r0
	ble _0803D198
	movs r4, #5
	b _0803D1A2
	.align 2, 0
_0803D178: .4byte gUnknown_03001D00
_0803D17C: .4byte gUnknown_080CF770
_0803D180: .4byte gUnknown_080CFA50
_0803D184: .4byte 0x06012800
_0803D188: .4byte gUnknown_030015C0
_0803D18C: .4byte 0x0000058F
_0803D190: .4byte 0x0000048D
_0803D194: .4byte 0x000005DB
_0803D198:
	ldr r0, _0803D1F4 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803D1A2
	movs r4, #2
_0803D1A2:
	movs r1, #0xad
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803D1F8 @ =0x00000487
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	movs r0, #0x96
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_8003DC4
	strb r4, [r6, #0x14]
	ldr r0, _0803D1FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803D200 @ =sub_803D324
	str r0, [r1, #8]
	ldr r1, _0803D204 @ =gUnknown_030008A0
	movs r0, #6
	strb r0, [r1, #4]
	b _0803D230
	.align 2, 0
_0803D1F4: .4byte 0x00000257
_0803D1F8: .4byte 0x00000487
_0803D1FC: .4byte gCurTask
_0803D200: .4byte sub_803D324
_0803D204: .4byte gUnknown_030008A0
_0803D208:
	ldr r1, _0803D240 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803D216:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	strb r0, [r6, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D22C
	movs r0, #0x80
	strb r0, [r6, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D244 @ =sub_803D248
	str r0, [r1, #8]
_0803D22C:
	bl sub_803D4C8
_0803D230:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D240: .4byte gUnknown_080CF770
_0803D244: .4byte sub_803D248

	thumb_func_start sub_803D248
sub_803D248: @ 0x0803D248
	push {r4, r5, lr}
	ldr r0, _0803D26C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D270 @ =gUnknown_030015C0
_0803D25A:
	cmp r3, #0
	beq _0803D274
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D278
	.align 2, 0
_0803D26C: .4byte gCurTask
_0803D270: .4byte gUnknown_030015C0
_0803D274:
	ldr r0, _0803D2F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D278:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D25A
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D314
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D310
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D314
	ldr r1, _0803D2F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D2FC @ =gUnknown_03003F94
	ldr r0, _0803D300 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D304 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D308 @ =gUnknown_03006208
	ldr r0, _0803D30C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D2F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D31E
	.align 2, 0
_0803D2F4: .4byte gUnknown_030008A0
_0803D2F8: .4byte 0x0000FFFF
_0803D2FC: .4byte gUnknown_03003F94
_0803D300: .4byte gUnknown_03003D20
_0803D304: .4byte gUnknown_03006840
_0803D308: .4byte gUnknown_03006208
_0803D30C: .4byte gUnknown_03003F34
_0803D310:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D314:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D31E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D324
sub_803D324: @ 0x0803D324
	push {r4, r5, r6, lr}
	ldr r2, _0803D348 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r6, r2, #0
	ldr r2, _0803D34C @ =gUnknown_030015C0
_0803D338:
	cmp r4, #0
	beq _0803D350
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D354
	.align 2, 0
_0803D348: .4byte gCurTask
_0803D34C: .4byte gUnknown_030015C0
_0803D350:
	ldr r0, _0803D394 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D354:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803D338
	ldrb r0, [r5, #0x17]
	subs r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D38A
	movs r0, #0x80
	strb r0, [r5, #0x17]
	ldr r1, [r6]
	ldr r0, _0803D398 @ =sub_803D39C
	str r0, [r1, #8]
_0803D38A:
	bl sub_803D4C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D394: .4byte gUnknown_030008A0
_0803D398: .4byte sub_803D39C

	thumb_func_start sub_803D39C
sub_803D39C: @ 0x0803D39C
	push {r4, r5, lr}
	ldr r0, _0803D3C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D3C4 @ =gUnknown_030015C0
_0803D3AE:
	cmp r3, #0
	beq _0803D3C8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D3CC
	.align 2, 0
_0803D3C0: .4byte gCurTask
_0803D3C4: .4byte gUnknown_030015C0
_0803D3C8:
	ldr r0, _0803D448 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803D3CC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D3AE
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D468
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D464
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_80213FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D468
	ldr r1, _0803D44C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D450 @ =gUnknown_03003F94
	ldr r0, _0803D454 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D458 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D45C @ =gUnknown_03006208
	ldr r0, _0803D460 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D448 @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D476
	.align 2, 0
_0803D448: .4byte gUnknown_030008A0
_0803D44C: .4byte 0x0000FFFF
_0803D450: .4byte gUnknown_03003F94
_0803D454: .4byte gUnknown_03003D20
_0803D458: .4byte gUnknown_03006840
_0803D45C: .4byte gUnknown_03006208
_0803D460: .4byte gUnknown_03003F34
_0803D464:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D468:
	bl sub_803D614
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D476:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D47C
sub_803D47C: @ 0x0803D47C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803D4C4 @ =gUnknown_080CF770
	ldr r0, [r5]
	bl sub_80C3224
	str r0, [r4]
	ldrh r0, [r5, #0x34]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	adds r5, #0x36
	ldrb r0, [r5]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D4C4: .4byte gUnknown_080CF770

	thumb_func_start sub_803D4C8
sub_803D4C8: @ 0x0803D4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803D5E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x10
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_80C7524
	ldr r1, _0803D5E8 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	ldr r0, _0803D5EC @ =0x03000338
	adds r7, r5, r0
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r5, _0803D5F0 @ =gUnknown_080CF936
	lsls r4, r4, #1
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	adds r5, #1
	adds r4, r4, r5
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r4, _0803D5F4 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D58A
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0803D58A:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	movs r4, #0
_0803D5B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	adds r7, r2, r0
	adds r0, r7, #0
	bl sub_80BF44C
	cmp r0, #0
	bne _0803D5F8
	adds r0, r7, #0
	bl sub_80C033C
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0803D5FE
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	b _0803D5FE
	.align 2, 0
_0803D5E4: .4byte gCurTask
_0803D5E8: .4byte gUnknown_080CF9AE
_0803D5EC: .4byte 0x03000338
_0803D5F0: .4byte gUnknown_080CF936
_0803D5F4: .4byte gUnknown_080CF8BC
_0803D5F8:
	adds r0, r7, #0
	bl sub_80C033C
_0803D5FE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803D5B2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803D614
sub_803D614: @ 0x0803D614
	push {r4, r5, r6, lr}
	ldr r0, _0803D6A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803D6A8 @ =gUnknown_030004C8
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803D6AC @ =gUnknown_030004F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803D6B0 @ =gUnknown_03000518
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803D6B4 @ =gUnknown_03000540
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, _0803D6B8 @ =gUnknown_03000568
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803D690
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803D690
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803D6BC @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803D690:
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6A4: .4byte gCurTask
_0803D6A8: .4byte gUnknown_030004C8
_0803D6AC: .4byte gUnknown_030004F0
_0803D6B0: .4byte gUnknown_03000518
_0803D6B4: .4byte gUnknown_03000540
_0803D6B8: .4byte gUnknown_03000568
_0803D6BC: .4byte 0x0000020D

	thumb_func_start sub_803D6C0
sub_803D6C0: @ 0x0803D6C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803D6D4
sub_803D6D4: @ 0x0803D6D4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_80C3304
	ldr r1, _0803D734 @ =0x03000388
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
	ldr r1, _0803D738 @ =0x03000360
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
	ldr r1, _0803D73C @ =gUnknown_030004C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D72E
	bl sub_80C3304
	ldr r1, _0803D740 @ =gUnknown_030004F0
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
	ldr r1, _0803D744 @ =gUnknown_03000518
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
	ldr r1, _0803D748 @ =gUnknown_03000540
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
	ldr r1, _0803D74C @ =gUnknown_03000568
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_80C3304
_0803D72E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D734: .4byte 0x03000388
_0803D738: .4byte 0x03000360
_0803D73C: .4byte gUnknown_030004C8
_0803D740: .4byte gUnknown_030004F0
_0803D744: .4byte gUnknown_03000518
_0803D748: .4byte gUnknown_03000540
_0803D74C: .4byte gUnknown_03000568

	thumb_func_start sub_803D750
sub_803D750: @ 0x0803D750
	push {lr}
	ldr r2, _0803D77C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	subs r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D774
	movs r0, #0x80
	strb r0, [r1, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D780 @ =sub_803CEE4
	str r0, [r1, #8]
_0803D774:
	bl sub_803D4C8
	pop {r0}
	bx r0
	.align 2, 0
_0803D77C: .4byte gCurTask
_0803D780: .4byte sub_803CEE4

	thumb_func_start sub_803D784
sub_803D784: @ 0x0803D784
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803D7CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _0803D7C4
	subs r2, r0, #1
	strb r2, [r1, #0x17]
	cmp r3, #0
	bne _0803D7B2
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803D7B2
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803D7C4
_0803D7B2:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0803D7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7CC: .4byte gCurTask

	thumb_func_start sub_803D7D0
sub_803D7D0: @ 0x0803D7D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0803D81C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r5, [r7]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r6, r1, r0
	mov r0, r8
	adds r1, r6, #0
	bl sub_802C198
	cmp r0, #0
	bne _0803D820
	ldrb r0, [r7, #0xa]
	strb r0, [r5]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0803D982
	.align 2, 0
_0803D81C: .4byte gCurTask
_0803D820:
	lsls r1, r6, #8
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [sp]
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sl, r1
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	add r0, r8
	mov sb, r0
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0803D85C
	ldr r1, _0803D858 @ =0xFFFFFA00
	add sb, r1
	b _0803D862
	.align 2, 0
_0803D858: .4byte 0xFFFFFA00
_0803D85C:
	movs r0, #0xc0
	lsls r0, r0, #3
	add r8, r0
_0803D862:
	movs r6, #0
_0803D864:
	movs r3, #0
	cmp r6, #0
	bne _0803D874
	ldr r0, _0803D870 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803D87E
	.align 2, 0
_0803D870: .4byte gUnknown_030008A0
_0803D874:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803D87E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803D8F4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803D8A2
	cmp r1, #8
	beq _0803D8A2
	cmp r1, #0x10
	bne _0803D97A
_0803D8A2:
	adds r0, r4, #0
	str r3, [sp, #4]
	bl sub_802C0D4
	ldr r3, [sp, #4]
	cmp r0, #0
	bne _0803D97A
	ldr r2, [r4, #0x10]
	cmp r2, r8
	ble _0803D928
	cmp r2, sb
	bge _0803D928
	ldr r0, [r4, #0x14]
	ldr r1, [sp]
	cmp r0, r1
	ble _0803D928
	cmp r0, sl
	bge _0803D928
	adds r0, r7, #0
	adds r0, #0xd
	adds r1, r0, r6
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _0803D97A
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803D91C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803D8FC
	adds r0, r4, #0
	ldr r1, _0803D8F8 @ =sub_80077CC
	bl sub_800D87C
	b _0803D91C
	.align 2, 0
_0803D8F4: .4byte gUnknown_030015C0
_0803D8F8: .4byte sub_80077CC
_0803D8FC:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0803D914
	adds r0, r4, #0
	ldr r1, _0803D910 @ =sub_8005380
	bl sub_800D87C
	b _0803D91C
	.align 2, 0
_0803D910: .4byte sub_8005380
_0803D914:
	adds r0, r4, #0
	ldr r1, _0803D924 @ =sub_800891C
	bl sub_800D87C
_0803D91C:
	adds r1, r5, r6
	movs r0, #1
	b _0803D978
	.align 2, 0
_0803D924: .4byte sub_800891C
_0803D928:
	adds r0, r7, #0
	adds r0, #0xd
	adds r1, r0, r6
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #1
	bne _0803D974
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0803D974
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0803D956
	cmp r2, sb
	ble _0803D964
	mov r0, sb
	str r0, [r4, #0x70]
	mov r1, sl
	str r1, [r4, #0x74]
	movs r3, #1
	b _0803D968
_0803D956:
	cmp r2, r8
	bge _0803D964
	mov r0, r8
	str r0, [r4, #0x70]
	mov r1, sl
	str r1, [r4, #0x74]
	movs r3, #1
_0803D964:
	cmp r3, #0
	beq _0803D974
_0803D968:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800A218
_0803D974:
	adds r1, r5, r6
	movs r0, #0
_0803D978:
	strb r0, [r1]
_0803D97A:
	adds r6, #1
	cmp r6, #1
	bgt _0803D982
	b _0803D864
_0803D982:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable081
CreateEntity_Interactable081: @ 0x0803D994
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_803D9F0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable082
CreateEntity_Interactable082: @ 0x0803D9C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_803D9F0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_803D9EC
sub_803D9EC: @ 0x0803D9EC
	bx lr
	.align 2, 0

	thumb_func_start sub_803D9F0
sub_803D9F0: @ 0x0803D9F0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803DA60 @ =sub_803D7D0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803DA64 @ =sub_803D9EC
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	mov r3, sb
	strb r1, [r3]
	mov r1, r8
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DA60: .4byte sub_803D7D0
_0803DA64: .4byte sub_803D9EC

	thumb_func_start CreateEntity_Interactable085
CreateEntity_Interactable085: @ 0x0803DA68
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803DB18 @ =sub_803DB20
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803DB1C @ =sub_803DCC8
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0
	mov sb, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	mov r0, r8
	strb r0, [r1, #9]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0x10]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	ldrb r0, [r6, #3]
	lsls r0, r0, #3
	strb r0, [r1, #0x14]
	ldrb r0, [r6, #4]
	lsls r0, r0, #3
	strb r0, [r1, #0x15]
	ldrb r0, [r6, #3]
	ldrb r2, [r6, #5]
	adds r0, r0, r2
	lsls r0, r0, #3
	strb r0, [r1, #0x16]
	ldrb r0, [r6, #4]
	ldrb r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	strb r0, [r1, #0x17]
	ldrb r2, [r6, #7]
	movs r3, #1
	movs r0, #1
	ands r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	ands r0, r3
	strb r0, [r1, #0xb]
	mov r0, sb
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DB18: .4byte sub_803DB20
_0803DB1C: .4byte sub_803DCC8

	thumb_func_start sub_803DB20
sub_803DB20: @ 0x0803DB20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803DB54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov r7, sp
_0803DB40:
	mov r0, r8
	cmp r0, #0
	beq _0803DB58
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803DB5C
	.align 2, 0
_0803DB54: .4byte gCurTask
_0803DB58:
	ldr r0, _0803DC28 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803DB5C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803DC2C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0803DB76
	b _0803DC86
_0803DB76:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0803DB82
	b _0803DC86
_0803DB82:
	ldr r1, [r4]
	ldr r0, _0803DC30 @ =sub_800A438
	cmp r1, r0
	bne _0803DB8C
	b _0803DC86
_0803DB8C:
	ldr r0, _0803DC34 @ =sub_8008A8C
	cmp r1, r0
	bne _0803DB94
	b _0803DC86
_0803DB94:
	ldr r0, _0803DC38 @ =sub_800ED80
	cmp r1, r0
	bne _0803DB9C
	b _0803DC86
_0803DB9C:
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r7]
	adds r2, r4, #0
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r7, #1]
	ldrb r0, [r1]
	strb r0, [r7, #2]
	ldrb r0, [r2]
	strb r0, [r7, #3]
	ldrh r0, [r6, #0x10]
	movs r3, #0x14
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r5, #0
	ldrsb r5, [r7, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0803DBDE
	movs r0, #0x16
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0803DBEA
	cmp r2, r1
	blt _0803DC86
_0803DBDE:
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0803DC86
_0803DBEA:
	ldrh r0, [r6, #0x12]
	movs r3, #0x15
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	movs r5, #1
	ldrsb r5, [r7, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0803DC10
	movs r0, #0x17
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0803DC1C
	cmp r2, r1
	blt _0803DC86
_0803DC10:
	movs r0, #3
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0803DC86
_0803DC1C:
	movs r1, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0803DC40
	ldr r3, _0803DC3C @ =sub_800BD88
	b _0803DC4E
	.align 2, 0
_0803DC28: .4byte gUnknown_030008A0
_0803DC2C: .4byte gUnknown_030015C0
_0803DC30: .4byte sub_800A438
_0803DC34: .4byte sub_8008A8C
_0803DC38: .4byte sub_800ED80
_0803DC3C: .4byte sub_800BD88
_0803DC40:
	ldr r0, [r4]
	ldr r3, _0803DC60 @ =sub_800BD88
	cmp r0, r3
	bne _0803DC4A
	movs r1, #1
_0803DC4A:
	cmp r1, #0
	beq _0803DC86
_0803DC4E:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0803DC64
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0803DC6A
	.align 2, 0
_0803DC60: .4byte sub_800BD88
_0803DC64:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
_0803DC6A:
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	cmp r0, r3
	beq _0803DC86
	adds r0, r4, #0
	ldr r1, _0803DCC0 @ =sub_800BCE0
	bl sub_800D87C
_0803DC86:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bhi _0803DC96
	b _0803DB40
_0803DC96:
	ldrh r0, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _0803DCB0
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803DCC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803DCB0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCC0: .4byte sub_800BCE0
_0803DCC4: .4byte gCurTask

	thumb_func_start sub_803DCC8
sub_803DCC8: @ 0x0803DCC8
	bx lr
	.align 2, 0

	thumb_func_start CreateEntity_Interactable084
CreateEntity_Interactable084: @ 0x0803DCCC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803DD90 @ =sub_803DE28
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803DD94 @ =sub_803E410
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r1, _0803DD98 @ =0x0300000C
	adds r1, r1, r3
	mov sl, r1
	movs r2, #0
	mov r8, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r0, #0x5c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r0, #0x60]
	ldr r2, _0803DD9C @ =0x03000064
	adds r1, r3, r2
	mov r2, r8
	strh r2, [r1]
	ldr r1, _0803DDA0 @ =0x03000066
	adds r2, r3, r1
	movs r1, #0x30
	strh r1, [r2]
	ldr r2, _0803DDA4 @ =0x03000068
	adds r1, r3, r2
	mov r2, r8
	strh r2, [r1]
	ldr r1, _0803DDA8 @ =0x0300006A
	adds r3, r3, r1
	strh r2, [r3]
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r3, _0803DDAC @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	mov r2, sl
	strh r1, [r2, #0x10]
	ldr r1, [r0, #0x60]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	mov r2, sl
	strh r1, [r2, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r2, sb
	strb r1, [r2]
	bl sub_803DDB0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD90: .4byte sub_803DE28
_0803DD94: .4byte sub_803E410
_0803DD98: .4byte 0x0300000C
_0803DD9C: .4byte 0x03000064
_0803DDA0: .4byte 0x03000066
_0803DDA4: .4byte 0x03000068
_0803DDA8: .4byte 0x0300006A
_0803DDAC: .4byte gUnknown_03001D10

	thumb_func_start sub_803DDB0
sub_803DDB0: @ 0x0803DDB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r7, sb
	adds r7, #0xc
	movs r0, #0x15
	bl sub_80C3224
	mov r1, sb
	str r0, [r1, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _0803DE24 @ =0x000003DA
	mov r8, r1
	mov r1, r8
	strh r1, [r7, #0xc]
	strb r3, [r7, #0x1a]
	movs r6, #0xc0
	lsls r6, r6, #3
	strh r6, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r1, #0xff
	strb r1, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	adds r7, #0x28
	mov r1, sb
	str r0, [r1, #0x34]
	mov r0, r8
	strh r0, [r7, #0xc]
	strb r3, [r7, #0x1a]
	strh r6, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	str r4, [r7, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE24: .4byte 0x000003DA

	thumb_func_start sub_803DE28
sub_803DE28: @ 0x0803DE28
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803DE4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	movs r1, #0
_0803DE3E:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0803DE54
	ldr r0, _0803DE50 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803DE5E
	.align 2, 0
_0803DE4C: .4byte gCurTask
_0803DE50: .4byte gUnknown_030008A0
_0803DE54:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803DE5E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803DEC4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803DEA8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803DEA8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0803DEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803DECC @ =sub_803DED0
	str r0, [r1, #8]
_0803DEA8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803DE3E
	bl sub_803E32C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DEC4: .4byte gUnknown_030015C0
_0803DEC8: .4byte gCurTask
_0803DECC: .4byte sub_803DED0

	thumb_func_start sub_803DED0
sub_803DED0: @ 0x0803DED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803DF84 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _0803DF88 @ =0x0300000C
	adds r1, r1, r7
	mov sb, r1
	ldr r0, [r0, #0x60]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2, #0x5c]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0803DF8C @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _0803DFA8
	lsls r1, r0, #8
	mov r2, r8
	ldr r0, [r2, #0x60]
	adds r0, r0, r1
	str r0, [r2, #0x60]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0803DF90 @ =0x03000064
	adds r1, r7, r3
	strh r0, [r1]
	ldr r0, _0803DF94 @ =0x03000066
	adds r5, r7, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r5]
	ldr r4, _0803DF98 @ =gUnknown_082B48B4
	ldrh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldr r2, _0803DF9C @ =0x03000068
	adds r3, r7, r2
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, _0803DFA0 @ =0x0300006A
	adds r2, r7, r1
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r3, r8
	ldr r0, [r3, #0x5c]
	adds r0, r0, r1
	str r0, [r3, #0x5c]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x60]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0803DFA4 @ =sub_803E0D8
	str r0, [r1, #8]
	b _0803DFC6
	.align 2, 0
_0803DF84: .4byte gCurTask
_0803DF88: .4byte 0x0300000C
_0803DF8C: .4byte sub_805217C
_0803DF90: .4byte 0x03000064
_0803DF94: .4byte 0x03000066
_0803DF98: .4byte gUnknown_082B48B4
_0803DF9C: .4byte 0x03000068
_0803DFA0: .4byte 0x0300006A
_0803DFA4: .4byte sub_803E0D8
_0803DFA8:
	ldr r3, _0803DFD8 @ =0x03000066
	adds r2, r7, r3
	ldrh r1, [r2]
	adds r3, #4
	adds r0, r7, r3
	strh r1, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r3, r8
	ldr r0, [r3, #0x60]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldrh r0, [r2]
	adds r0, #0x30
	strh r0, [r2]
_0803DFC6:
	movs r1, #0
_0803DFC8:
	movs r5, #0
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803DFE0
	ldr r0, _0803DFDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803DFEA
	.align 2, 0
_0803DFD8: .4byte 0x03000066
_0803DFDC: .4byte gUnknown_030008A0
_0803DFE0:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803DFEA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E060 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803E0B2
	ldr r2, [r6, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803E06A
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _0803E06A
	mov r0, r8
	adds r0, #0x64
	ldrh r1, [r0]
	ldr r0, _0803E064 @ =0x000001FF
	cmp r1, r0
	bhi _0803E028
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0803E028:
	mov r0, r8
	adds r0, #0x68
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r0, r8
	adds r0, #0x6a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0803E068
	adds r0, r6, #0
	bl sub_801226C
	cmp r0, #0
	bge _0803E068
	adds r0, r6, #0
	bl sub_8008E38
	b _0803E06A
	.align 2, 0
_0803E060: .4byte gUnknown_030015C0
_0803E064: .4byte 0x000001FF
_0803E068:
	movs r5, #1
_0803E06A:
	mov r0, r8
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r0, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803E0B2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	cmp r5, #0
	bne _0803E0B2
	ldrh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x1a]
_0803E0B2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803E0C2
	b _0803DFC8
_0803E0C2:
	bl sub_803E32C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E0D8
sub_803E0D8: @ 0x0803E0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803E114 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov r8, r1
	ldr r3, _0803E118 @ =0x03000064
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, #0x80
	ldr r1, _0803E11C @ =0x000003FF
	ands r0, r1
	lsrs r4, r0, #8
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E140
	cmp r0, #1
	bgt _0803E120
	cmp r0, #0
	beq _0803E12A
	b _0803E192
	.align 2, 0
_0803E114: .4byte gCurTask
_0803E118: .4byte 0x03000064
_0803E11C: .4byte 0x000003FF
_0803E120:
	cmp r0, #2
	beq _0803E15C
	cmp r0, #3
	beq _0803E178
	b _0803E192
_0803E12A:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E13C @ =sub_805217C
	b _0803E186
	.align 2, 0
_0803E13C: .4byte sub_805217C
_0803E140:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E158 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E158: .4byte sub_805203C
_0803E15C:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E174 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E174: .4byte sub_805217C
_0803E178:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0803E1A4 @ =sub_805203C
_0803E186:
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
_0803E18C:
	bl sub_80517FC
	adds r2, r0, #0
_0803E192:
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E1BC
	cmp r0, #1
	bgt _0803E1A8
	cmp r0, #0
	beq _0803E1B2
	b _0803E1D6
	.align 2, 0
_0803E1A4: .4byte sub_805203C
_0803E1A8:
	cmp r0, #2
	beq _0803E1C4
	cmp r0, #3
	beq _0803E1CE
	b _0803E1D6
_0803E1B2:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1BC:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	subs r0, r0, r1
	b _0803E1D4
_0803E1C4:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	subs r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1CE:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
_0803E1D4:
	str r0, [r6, #0x5c]
_0803E1D6:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x64
	strh r0, [r1]
	movs r4, #0x66
	adds r4, r4, r6
	mov ip, r4
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r4]
	ldr r4, _0803E250 @ =gUnknown_082B48B4
	ldrh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r3, r6, #0
	adds r3, #0x68
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r2, ip
	movs r4, #0
	ldrsh r0, [r2, r4]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r2, r6, #0
	adds r2, #0x6a
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
	str r0, [r6, #0x5c]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	movs r1, #0
	mov sl, r3
	mov sb, r2
_0803E23E:
	movs r7, #0
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803E258
	ldr r0, _0803E254 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803E262
	.align 2, 0
_0803E250: .4byte gUnknown_082B48B4
_0803E254: .4byte gUnknown_030008A0
_0803E258:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803E262:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E2BC @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803E308
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E2C2
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _0803E2C2
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [r5, #0x14]
	mov r3, sl
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
	str r0, [r5, #0x10]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _0803E2C0
	adds r0, r5, #0
	bl sub_8008E38
	b _0803E2C2
	.align 2, 0
_0803E2BC: .4byte gUnknown_030015C0
_0803E2C0:
	movs r7, #1
_0803E2C2:
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803E308
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	cmp r7, #0
	bne _0803E308
	ldrh r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1c]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
_0803E308:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E23E
	bl sub_803E32C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E32C
sub_803E32C: @ 0x0803E32C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803E384 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	mov sl, r0
	mov r1, sb
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r2, _0803E388 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r7, r0, r1
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C1D0
	cmp r0, #0
	bne _0803E3D0
	movs r1, #0
	ldr r7, _0803E38C @ =gUnknown_030015C0
_0803E370:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803E390
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803E394
	.align 2, 0
_0803E384: .4byte gCurTask
_0803E388: .4byte gUnknown_03001D10
_0803E38C: .4byte gUnknown_030015C0
_0803E390:
	ldr r0, _0803E3C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803E394:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E370
	mov r1, sb
	ldrb r0, [r1, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0803E3CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803E3F8
	.align 2, 0
_0803E3C8: .4byte gUnknown_030008A0
_0803E3CC: .4byte gCurTask
_0803E3D0:
	ldr r5, _0803E408 @ =0x0300000C
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	ldr r5, _0803E40C @ =0x03000034
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_0803E3F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E408: .4byte 0x0300000C
_0803E40C: .4byte 0x03000034

	thumb_func_start sub_803E410
sub_803E410: @ 0x0803E410
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable087
CreateEntity_Interactable087: @ 0x0803E424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldrb r0, [r7, #7]
	movs r6, #0x1f
	ands r6, r0
	ldr r0, _0803E524 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _0803E456
	cmp r6, #3
	bls _0803E50C
_0803E456:
	ldr r0, _0803E528 @ =sub_803E544
	ldr r2, _0803E52C @ =0x00000FFF
	ldr r1, _0803E530 @ =sub_803E7D8
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r2, _0803E534 @ =0x03000014
	adds r0, r4, r2
	movs r1, #0
	mov ip, r1
	movs r5, #0
	mov r2, sb
	strh r2, [r3, #4]
	mov r1, r8
	strh r1, [r3, #6]
	str r7, [r3]
	ldrb r1, [r7]
	strb r1, [r3, #0xa]
	mov r2, sl
	strb r2, [r3, #0xb]
	ldr r1, _0803E538 @ =0x0300002F
	adds r2, r4, r1
	movs r1, #1
	strb r1, [r2]
	str r5, [r3, #0x30]
	ldr r2, _0803E53C @ =0x0300002E
	adds r4, r4, r2
	strb r6, [r4]
	ldrb r1, [r7, #7]
	lsrs r1, r1, #5
	lsls r1, r1, #6
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r1, [r3, #0x2c]
	str r5, [r3, #0x3c]
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r2, [r3, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0xc]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r2, [r3, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0x10]
	ldr r1, _0803E524 @ =gUnknown_030008A0
	adds r1, #0xbd
	mov r2, ip
	strb r2, [r1]
	ldr r2, _0803E540 @ =gUnknown_03001D10
	ldr r1, [r2, #0x18]
	strh r1, [r3, #0x34]
	ldr r1, [r2, #0x10]
	strh r1, [r3, #0x36]
	ldr r1, [r2, #0x1c]
	strh r1, [r3, #0x38]
	ldr r1, [r2, #0x14]
	strh r1, [r3, #0x3a]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0xc]
	adds r2, r2, r1
	str r2, [r0]
	ldrb r1, [r7, #5]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #4]
	movs r1, #4
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0x10]
	adds r2, r2, r1
	str r2, [r0, #8]
	ldrb r1, [r7, #6]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #0xc]
	bl sub_803E900
_0803E50C:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E524: .4byte gUnknown_030008A0
_0803E528: .4byte sub_803E544
_0803E52C: .4byte 0x00000FFF
_0803E530: .4byte sub_803E7D8
_0803E534: .4byte 0x03000014
_0803E538: .4byte 0x0300002F
_0803E53C: .4byte 0x0300002E
_0803E540: .4byte gUnknown_03001D10

	thumb_func_start sub_803E544
sub_803E544: @ 0x0803E544
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803E5A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x14
	adds r4, r3, r0
	ldr r0, [r6, #0x3c]
	adds r7, r0, #1
	str r7, [r6, #0x3c]
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _0803E58E
	ldr r2, _0803E5AC @ =gUnknown_080CFA58
	ldr r1, _0803E5B0 @ =0x0300002E
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r5, #0
	beq _0803E58E
	cmp r7, #4
	ble _0803E58E
	ldr r2, _0803E5B4 @ =0x0300002F
	adds r0, r3, r2
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	bl sub_80C8504
	str r0, [r6, #0x30]
_0803E58E:
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	cmp r2, r1
	bge _0803E5B8
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	adds r0, r2, r0
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _0803E5DC
	str r1, [r4, #0x10]
	b _0803E5DC
	.align 2, 0
_0803E5A8: .4byte gCurTask
_0803E5AC: .4byte gUnknown_080CFA58
_0803E5B0: .4byte 0x0300002E
_0803E5B4: .4byte 0x0300002F
_0803E5B8:
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #4]
	cmp r0, r1
	ble _0803E5DC
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	str r0, [r4, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E5DC
	ldr r3, _0803E5F8 @ =0xFFFF1000
	adds r0, r1, r3
	str r0, [r4, #0x10]
_0803E5DC:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #8]
	cmp r2, r1
	bge _0803E5FC
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r2, r0
	str r0, [r4, #0x14]
	cmp r0, r1
	ble _0803E622
	str r1, [r4, #0x14]
	b _0803E622
	.align 2, 0
_0803E5F8: .4byte 0xFFFF1000
_0803E5FC:
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r0, r1
	ble _0803E622
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r0, r2, r0
	str r0, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E622
	ldr r3, _0803E630 @ =0xFFFF6000
	adds r0, r1, r3
	str r0, [r4, #0x14]
_0803E622:
	ldr r2, [r4]
	ldr r0, [r4, #0x10]
	cmp r2, r0
	blt _0803E638
	ldr r1, _0803E634 @ =gUnknown_03001D10
	asrs r0, r0, #8
	b _0803E63C
	.align 2, 0
_0803E630: .4byte 0xFFFF6000
_0803E634: .4byte gUnknown_03001D10
_0803E638:
	ldr r1, _0803E654 @ =gUnknown_03001D10
	asrs r0, r2, #8
_0803E63C:
	str r0, [r1, #0x18]
	adds r3, r1, #0
	ldr r2, [r4, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0803E658
	asrs r0, r2, #8
	adds r0, #0xf0
	b _0803E65A
	.align 2, 0
_0803E654: .4byte gUnknown_03001D10
_0803E658:
	asrs r0, r1, #8
_0803E65A:
	str r0, [r3, #0x1c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	blt _0803E668
	asrs r0, r0, #8
	b _0803E66A
_0803E668:
	asrs r0, r1, #8
_0803E66A:
	str r0, [r3, #0x10]
	ldr r2, [r4, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bgt _0803E680
	asrs r0, r2, #8
	adds r0, #0xa0
	b _0803E682
_0803E680:
	asrs r0, r1, #8
_0803E682:
	str r0, [r3, #0x14]
	ldr r0, [r4]
	asrs r5, r0, #8
	ldr r1, [r3]
	cmp r1, r5
	blt _0803E6E8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	cmp r2, r0
	blt _0803E6E8
	adds r1, #0xf0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	adds r1, r2, #0
	adds r1, #0xa0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	ldr r0, [r6, #0x3c]
	cmp r0, #4
	ble _0803E6E8
	str r5, [r3, #0x18]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [r3, #0x1c]
	ldr r0, [r4, #8]
	asrs r5, r0, #8
	str r5, [r3, #0x10]
	ldr r0, [r4, #0xc]
	asrs r2, r0, #8
	str r2, [r3, #0x14]
	ldr r1, _0803E6F4 @ =gUnknown_030008A0
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _0803E6D8
	ldrb r1, [r1, #9]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0803E6D8:
	adds r1, r6, #0
	adds r1, #0x2f
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803E6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803E6FC @ =sub_803E7DC
	str r0, [r1, #8]
_0803E6E8:
	bl sub_803E700
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6F4: .4byte gUnknown_030008A0
_0803E6F8: .4byte gCurTask
_0803E6FC: .4byte sub_803E7DC

	thumb_func_start sub_803E700
sub_803E700: @ 0x0803E700
	push {r4, r5, lr}
	ldr r2, _0803E768 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _0803E76C @ =gUnknown_030008A0
	movs r0, #0xbd
	adds r0, r0, r1
	mov ip, r0
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803E7C8
	ldrb r1, [r1, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E770 @ =gUnknown_030015C0
	adds r0, r0, r1
	ldr r1, [r0, #0x10]
	lsls r1, r1, #8
	ldr r0, [r0, #0x14]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	asrs r3, r1, #0x10
	ldr r1, _0803E774 @ =gUnknown_03001D10
	ldr r0, [r1, #0x18]
	subs r0, #0xa
	cmp r3, r0
	blt _0803E778
	ldr r0, [r1, #0x1c]
	adds r0, #0xa
	cmp r3, r0
	bgt _0803E778
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	ldr r0, [r1, #0x10]
	subs r0, #0xa
	cmp r3, r0
	blt _0803E778
	ldr r0, [r1, #0x14]
	adds r0, #0xa
	cmp r3, r0
	bgt _0803E778
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	b _0803E7C8
	.align 2, 0
_0803E768: .4byte gCurTask
_0803E76C: .4byte gUnknown_030008A0
_0803E770: .4byte gUnknown_030015C0
_0803E774: .4byte gUnknown_03001D10
_0803E778:
	ldrh r0, [r4, #0x34]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x36]
	str r0, [r1, #0x10]
	ldrh r0, [r4, #0x38]
	str r0, [r1, #0x1c]
	ldrh r0, [r4, #0x3a]
	str r0, [r1, #0x14]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0803E7A4
	ldr r1, [r5]
	ldr r0, _0803E7A0 @ =sub_803E884
	b _0803E7C6
	.align 2, 0
_0803E7A0: .4byte sub_803E884
_0803E7A4:
	ldr r0, [r4]
	ldrb r1, [r4, #0xa]
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0803E7C0
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x30]
_0803E7C0:
	ldr r0, _0803E7D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803E7D4 @ =sub_803E964
_0803E7C6:
	str r0, [r1, #8]
_0803E7C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E7D0: .4byte gCurTask
_0803E7D4: .4byte sub_803E964

	thumb_func_start sub_803E7D8
sub_803E7D8: @ 0x0803E7D8
	bx lr
	.align 2, 0

	thumb_func_start sub_803E7DC
sub_803E7DC: @ 0x0803E7DC
	push {r4, r5, r6, lr}
	ldr r6, _0803E810 @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0x2f
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0803E806
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0803E800
	bl TaskDestroy
	str r4, [r5, #0x30]
_0803E800:
	ldr r1, [r6]
	ldr r0, _0803E814 @ =sub_803E818
	str r0, [r1, #8]
_0803E806:
	bl sub_803E700
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E810: .4byte gCurTask
_0803E814: .4byte sub_803E818

	thumb_func_start sub_803E818
sub_803E818: @ 0x0803E818
	push {r4, lr}
	ldr r4, _0803E868 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0803E86C @ =0x0300002E
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803E870 @ =gUnknown_080CFA58
	adds r2, r0, r1
	ldr r1, [r2, #4]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r1, r3
	beq _0803E83E
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x18]
_0803E83E:
	ldr r1, [r2, #0xc]
	cmp r1, r3
	beq _0803E848
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x10]
_0803E848:
	ldr r1, [r2, #8]
	cmp r1, r3
	beq _0803E852
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x1c]
_0803E852:
	ldr r1, [r2, #0x10]
	cmp r1, r3
	beq _0803E85C
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x14]
_0803E85C:
	ldr r0, [r4]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E868: .4byte gCurTask
_0803E86C: .4byte 0x0300002E
_0803E870: .4byte gUnknown_080CFA58
_0803E874: .4byte gUnknown_03001D10

	thumb_func_start sub_803E878
sub_803E878: @ 0x0803E878
	push {lr}
	bl sub_803E700
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E884
sub_803E884: @ 0x0803E884
	push {r4, r5, r6, lr}
	ldr r6, _0803E8EC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x14
	adds r2, r1, r0
	ldr r0, _0803E8F0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E8F4 @ =gUnknown_030015C0
	adds r3, r0, r1
	ldr r0, [r2]
	ldr r1, _0803E8F8 @ =0xFFFF8000
	adds r0, r0, r1
	ldr r1, [r3, #0x10]
	cmp r1, r0
	blt _0803E8E4
	ldr r0, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	cmp r1, r0
	bgt _0803E8E4
	ldr r0, [r2, #8]
	ldr r1, _0803E8F8 @ =0xFFFF8000
	adds r0, r0, r1
	ldr r1, [r3, #0x14]
	cmp r1, r0
	blt _0803E8E4
	ldr r0, [r2, #0xc]
	adds r0, r0, r4
	cmp r1, r0
	bgt _0803E8E4
	movs r0, #0
	str r0, [r5, #0x3c]
	adds r0, r2, #0
	bl sub_803E900
	ldr r1, [r6]
	ldr r0, _0803E8FC @ =sub_803E544
	str r0, [r1, #8]
_0803E8E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8EC: .4byte gCurTask
_0803E8F0: .4byte gUnknown_030008A0
_0803E8F4: .4byte gUnknown_030015C0
_0803E8F8: .4byte 0xFFFF8000
_0803E8FC: .4byte sub_803E544

	thumb_func_start sub_803E900
sub_803E900: @ 0x0803E900
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _0803E938 @ =gUnknown_03001D10
	ldr r5, [r0]
	lsls r1, r5, #8
	str r1, [r2, #0x10]
	ldr r4, _0803E93C @ =gUnknown_030008A0
	ldrb r1, [r4, #0xa]
	adds r3, r0, #0
	cmp r1, #7
	bne _0803E956
	ldrb r1, [r4, #9]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803E956
	cmp r1, #4
	bne _0803E956
	ldr r0, _0803E940 @ =0x000004FF
	cmp r5, r0
	bgt _0803E948
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	ldr r0, _0803E944 @ =0x00053C00
	str r0, [r2, #8]
	b _0803E95C
	.align 2, 0
_0803E938: .4byte gUnknown_03001D10
_0803E93C: .4byte gUnknown_030008A0
_0803E940: .4byte 0x000004FF
_0803E944: .4byte 0x00053C00
_0803E948:
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	movs r0, #0xa3
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	b _0803E95C
_0803E956:
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
_0803E95C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E964
sub_803E964: @ 0x0803E964
	push {lr}
	ldr r0, _0803E974 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0803E974: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable088
CreateEntity_Interactable088: @ 0x0803E978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803EA80 @ =sub_803EE78
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803EA84 @ =sub_803EEC4
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	ldr r1, _0803EA88 @ =0x0300003C
	adds r1, r1, r2
	mov sl, r1
	strh r5, [r7, #4]
	mov r3, sb
	strh r3, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #0x80
	mov r3, r8
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0803E9E4
	rsbs r1, r1, #0
_0803E9E4:
	ldr r4, _0803EA8C @ =0x0300007C
	adds r0, r2, r4
	strh r1, [r0]
	mov r1, r8
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	adds r0, r0, r1
	adds r4, #2
	adds r6, r2, r4
	strh r0, [r6]
	ldr r0, _0803EA90 @ =0x03000080
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #3
	lsls r0, r5, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	str r2, [r7, #0x74]
	ldrb r3, [r3, #1]
	lsls r3, r3, #3
	mov r4, sb
	lsls r0, r4, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	str r3, [r7, #0x78]
	ldr r5, _0803EA94 @ =gUnknown_082B48B4
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x16
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	movs r5, #0
	ldrsh r0, [r6, r5]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x6c]
	movs r2, #0
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x70]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, r8
	strb r0, [r4]
	mov r0, ip
	mov r1, sl
	bl sub_803EBE0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA80: .4byte sub_803EE78
_0803EA84: .4byte sub_803EEC4
_0803EA88: .4byte 0x0300003C
_0803EA8C: .4byte 0x0300007C
_0803EA90: .4byte 0x03000080
_0803EA94: .4byte gUnknown_082B48B4

	thumb_func_start sub_803EA98
sub_803EA98: @ 0x0803EA98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803EB18 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r6, #0x6c]
	mov sb, r1
	ldr r7, [r6, #0x70]
	ldr r4, _0803EB1C @ =gUnknown_082B48B4
	ldr r2, _0803EB20 @ =0x03000080
	adds r0, r3, r2
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r4, _0803EB24 @ =0x0300007E
	adds r3, r3, r4
	movs r4, #0
	ldrsh r0, [r3, r4]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r2, [r6, #0x74]
	adds r2, r2, r0
	str r2, [r6, #0x6c]
	movs r4, #0
	ldrsh r0, [r3, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r6, #0x78]
	adds r1, r1, r0
	str r1, [r6, #0x70]
	mov r0, sb
	subs r0, r0, r2
	mov sb, r0
	subs r7, r7, r1
	movs r4, #0
_0803EB06:
	cmp r4, #0
	beq _0803EB28
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803EB2C
	.align 2, 0
_0803EB18: .4byte gCurTask
_0803EB1C: .4byte gUnknown_082B48B4
_0803EB20: .4byte 0x03000080
_0803EB24: .4byte 0x0300007E
_0803EB28:
	ldr r0, _0803EB88 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803EB2C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803EB8C @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803EB50
	cmp r1, #8
	beq _0803EB50
	cmp r1, #0x10
	bne _0803EBC6
_0803EB50:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803EBC6
	ldr r2, [r5, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803EB9C
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _0803EB9C
	ldr r0, [r5, #0x10]
	mov r1, sb
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	subs r1, r0, r7
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _0803EB94
	ldr r2, _0803EB90 @ =0xFFFFFF00
	b _0803EB98
	.align 2, 0
_0803EB88: .4byte gUnknown_030008A0
_0803EB8C: .4byte gUnknown_030015C0
_0803EB90: .4byte 0xFFFFFF00
_0803EB94:
	movs r2, #0x80
	lsls r2, r2, #1
_0803EB98:
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0803EB9C:
	ldr r1, [r6, #0x6c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x70]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803EBC6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_0803EBC6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803EB06
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803EBE0
sub_803EBE0: @ 0x0803EBE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0803EC20 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _0803EC02
	cmp r0, #5
	beq _0803EC2C
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _0803EC2C
_0803EC02:
	mov r1, sp
	movs r4, #0
	movs r0, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldr r0, _0803EC24 @ =0x0000037D
	strh r0, [r3]
	add r2, sp, #8
	strh r4, [r2]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _0803EC28 @ =0x0000037B
	strh r0, [r3, #2]
	strh r4, [r2, #2]
	b _0803EC48
	.align 2, 0
_0803EC20: .4byte gUnknown_030008A0
_0803EC24: .4byte 0x0000037D
_0803EC28: .4byte 0x0000037B
_0803EC2C:
	mov r1, sp
	movs r5, #0
	movs r0, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldr r4, _0803ECE0 @ =0x0000039F
	strh r4, [r3]
	add r2, sp, #8
	strh r5, [r2]
	movs r0, #1
	strh r0, [r1, #2]
	strh r4, [r3, #2]
	movs r0, #2
	strh r0, [r2, #2]
_0803EC48:
	mov r0, sp
	ldrh r0, [r0]
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	bl sub_80C3224
	adds r4, r0, #0
	str r4, [r7]
	mov r1, sp
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #8]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r4, r4, r0
	str r4, [r6]
	mov r1, sp
	ldrh r0, [r1, #6]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r5, [r6, #0xe]
	strh r5, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r0, sb
	strb r0, [r6, #0x1c]
	movs r1, #0
	strb r1, [r6, #0x1f]
	mov r0, r8
	str r0, [r6, #0x20]
	mov r1, sl
	str r1, [r6, #8]
	adds r0, r6, #0
	bl sub_80BF44C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECE0: .4byte 0x0000039F

	thumb_func_start sub_803ECE4
sub_803ECE4: @ 0x0803ECE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803ED4C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r0, r6, r0
	str r0, [sp]
	ldr r1, _0803ED50 @ =0x0300003C
	adds r5, r6, r1
	ldr r2, [r7]
	mov r8, r2
	ldr r3, [r7, #0x74]
	mov sl, r3
	ldr r0, [r7, #0x78]
	str r0, [sp, #4]
	asrs r0, r3, #8
	ldr r2, [sp, #4]
	asrs r1, r2, #8
	ldr r3, _0803ED54 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	mov ip, r2
	ldr r2, [r3, #4]
	mov sb, r2
	mov r3, sb
	subs r3, r1, r3
	mov sb, r3
	mov r2, ip
	bl sub_802C140
	cmp r0, #0
	bne _0803ED9C
	movs r1, #0
	ldr r6, _0803ED58 @ =gUnknown_030015C0
_0803ED38:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803ED5C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803ED60
	.align 2, 0
_0803ED4C: .4byte gCurTask
_0803ED50: .4byte 0x0300003C
_0803ED54: .4byte gUnknown_03001D10
_0803ED58: .4byte gUnknown_030015C0
_0803ED5C:
	ldr r0, _0803ED94 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803ED60:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803ED38
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0803ED98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803EE54
	.align 2, 0
_0803ED94: .4byte gUnknown_030008A0
_0803ED98: .4byte gCurTask
_0803ED9C:
	adds r0, r5, #0
	bl sub_80BF44C
	ldr r2, _0803EE64 @ =gUnknown_082B48B4
	ldr r3, _0803EE68 @ =0x03000080
	adds r0, r6, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov sb, r0
	ldr r2, _0803EE6C @ =0x0300007E
	adds r1, r6, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, _0803EE70 @ =0xFFFFEA00
	adds r6, r0, r2
	movs r4, #0
	str r1, [sp, #8]
	cmp r4, r6
	bge _0803EE10
	ldr r7, _0803EE74 @ =gUnknown_03001D10
_0803EDDE:
	movs r3, #0xb0
	lsls r3, r3, #5
	adds r4, r4, r3
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #8
	add r0, sl
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	mov r0, sb
	muls r0, r4, r0
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80C033C
	cmp r4, r6
	blt _0803EDDE
_0803EE10:
	ldr r2, [sp, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	add r0, sl
	asrs r0, r0, #8
	ldr r2, _0803EE74 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r3, [sp]
	strh r0, [r3, #0x10]
	ldr r1, [sp, #8]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x12]
	ldr r0, [sp]
	bl sub_80BF44C
	ldr r0, [sp]
	bl sub_80C033C
_0803EE54:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE64: .4byte gUnknown_082B48B4
_0803EE68: .4byte 0x03000080
_0803EE6C: .4byte 0x0300007E
_0803EE70: .4byte 0xFFFFEA00
_0803EE74: .4byte gUnknown_03001D10

	thumb_func_start sub_803EE78
sub_803EE78: @ 0x0803EE78
	push {lr}
	bl sub_803EE8C
	bl sub_803EA98
	bl sub_803ECE4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803EE8C
sub_803EE8C: @ 0x0803EE8C
	push {r4, lr}
	ldr r0, _0803EEB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r3, _0803EEB8 @ =gUnknown_030008A0
	ldr r2, _0803EEBC @ =0x0300007C
	adds r0, r1, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r3, #0x1c]
	muls r0, r2, r0
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x16
	ldr r2, _0803EEC0 @ =0x03000080
	adds r1, r1, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EEB4: .4byte gCurTask
_0803EEB8: .4byte gUnknown_030008A0
_0803EEBC: .4byte 0x0300007C
_0803EEC0: .4byte 0x03000080

	thumb_func_start sub_803EEC4
sub_803EEC4: @ 0x0803EEC4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable089
CreateEntity_Interactable089: @ 0x0803EED8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803EFA4 @ =sub_803EFC8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803EFA8 @ =sub_803F370
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	mov r3, r8
	strb r3, [r0, #0xb]
	str r2, [r0, #0x6c]
	mov r7, sb
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r2, _0803EFAC @ =0x03000070
	adds r2, r2, r6
	mov r8, r2
	strh r1, [r2]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r3, _0803EFB0 @ =0x03000072
	adds r4, r6, r3
	strh r1, [r4]
	ldr r7, _0803EFB4 @ =0x03000074
	adds r2, r6, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0803EFB8 @ =0x03000075
	adds r2, r6, r1
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	ldr r2, _0803EFBC @ =0x0300000C
	adds r5, r6, r2
	ldr r3, _0803EFC0 @ =gUnknown_03001D10
	ldr r2, [r3]
	mov r7, r8
	ldrh r1, [r7]
	subs r1, r1, r2
	strh r1, [r5, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r5, #0x12]
	ldr r1, _0803EFC4 @ =0x03000044
	adds r5, r6, r1
	ldr r2, [r3]
	ldrh r1, [r7]
	subs r1, r1, r2
	strh r1, [r5, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r5, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_803F188
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EFA4: .4byte sub_803EFC8
_0803EFA8: .4byte sub_803F370
_0803EFAC: .4byte 0x03000070
_0803EFB0: .4byte 0x03000072
_0803EFB4: .4byte 0x03000074
_0803EFB8: .4byte 0x03000075
_0803EFBC: .4byte 0x0300000C
_0803EFC0: .4byte gUnknown_03001D10
_0803EFC4: .4byte 0x03000044

	thumb_func_start sub_803EFC8
sub_803EFC8: @ 0x0803EFC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803F00C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _0803F010 @ =0x0300000C
	adds r1, r1, r0
	mov sl, r1
	ldr r2, _0803F014 @ =0x03000070
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _0803F018 @ =0x03000072
	adds r0, r0, r3
	ldrh r0, [r0]
	mov sb, r0
	movs r2, #0
	lsls r1, r1, #0x10
	mov r8, r1
_0803EFFC:
	lsls r0, r2, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0803F020
	ldr r0, _0803F01C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803F02A
	.align 2, 0
_0803F00C: .4byte gCurTask
_0803F010: .4byte 0x0300000C
_0803F014: .4byte 0x03000070
_0803F018: .4byte 0x03000072
_0803F01C: .4byte gUnknown_030008A0
_0803F020:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803F02A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803F0B4 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _0803F0B8 @ =sub_800AB48
	cmp r1, r0
	bne _0803F042
	b _0803F164
_0803F042:
	ldr r0, _0803F0BC @ =sub_800E67C
	cmp r1, r0
	bne _0803F04A
	b _0803F164
_0803F04A:
	ldr r0, _0803F0C0 @ =sub_800E6CC
	cmp r1, r0
	bne _0803F052
	b _0803F164
_0803F052:
	adds r0, r4, #0
	bl sub_802C080
	adds r1, r0, #0
	cmp r1, #0
	bne _0803F0C8
	mov r0, r8
	asrs r5, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	str r1, [sp, #4]
	mov r0, sl
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #2
	bl sub_8020700
	cmp r0, #0
	beq _0803F0C8
	lsls r0, r5, #8
	str r0, [r4, #0x70]
	lsls r0, r6, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0803F0C4 @ =sub_800AAC0
	bl sub_800D87C
	adds r0, r4, #0
	bl sub_8016F28
	ldr r1, [sp, #8]
	adds r1, #0x74
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0803F0AE
	ldr r1, [sp, #8]
	adds r1, #0x75
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r2
	bne _0803F164
_0803F0AE:
	movs r0, #0x3e
	strb r0, [r1]
	b _0803F164
	.align 2, 0
_0803F0B4: .4byte gUnknown_030015C0
_0803F0B8: .4byte sub_800AB48
_0803F0BC: .4byte sub_800E67C
_0803F0C0: .4byte sub_800E6CC
_0803F0C4: .4byte sub_800AAC0
_0803F0C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F0DE
	cmp r1, #8
	beq _0803F0DE
	cmp r1, #0x10
	bne _0803F164
_0803F0DE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F164
	mov r3, sb
	lsls r2, r3, #0x10
	str r0, [sp]
	mov r0, sl
	mov r3, r8
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	cmp r2, #0
	beq _0803F164
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0803F118
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0803F148
_0803F118:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0803F148
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0803F13C
	ldr r3, _0803F138 @ =0xFFFFFF00
	b _0803F140
	.align 2, 0
_0803F138: .4byte 0xFFFFFF00
_0803F13C:
	movs r3, #0x80
	lsls r3, r3, #1
_0803F140:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_0803F148:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F164
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0803F164:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803F174
	b _0803EFFC
_0803F174:
	bl sub_803F1D4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803F188
sub_803F188: @ 0x0803F188
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x36
	bl sub_80C3224
	adds r1, r0, #0
	str r1, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _0803F1D0 @ =0x0000038E
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	subs r1, #0x8e
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r1, [r0, #0x28]
	str r1, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F1D0: .4byte 0x0000038E

	thumb_func_start sub_803F1D4
sub_803F1D4: @ 0x0803F1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803F240 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0803F244 @ =0x0300000C
	adds r4, r7, r1
	ldr r5, [r6]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r2, [r6, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _0803F248 @ =gUnknown_03001D10
	ldr r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r2, r0, r2
	strh r2, [r4, #0x10]
	ldr r2, [r3, #4]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _0803F24C
	ldrb r0, [r6, #0xa]
	strb r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0803F362
	.align 2, 0
_0803F240: .4byte gCurTask
_0803F244: .4byte 0x0300000C
_0803F248: .4byte gUnknown_03001D10
_0803F24C:
	adds r0, r4, #0
	bl sub_80BF44C
	movs r5, #0
	ldr r2, _0803F274 @ =0x03000074
	adds r2, r2, r7
	mov r8, r2
	ldr r3, _0803F278 @ =0x03000075
	adds r7, r7, r3
_0803F25E:
	cmp r5, #0
	beq _0803F27C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	b _0803F28A
	.align 2, 0
_0803F274: .4byte 0x03000074
_0803F278: .4byte 0x03000075
_0803F27C:
	ldr r0, [r4, #8]
	ldr r1, _0803F34C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
_0803F28A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F25E
	mov r0, r8
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803F2E8
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _0803F2E8
	ldr r0, _0803F350 @ =0x00000255
	bl sub_8003DF0
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, [r6, #0x6c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x44]
	movs r2, #0
	ldr r0, _0803F354 @ =0x000003A6
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	subs r0, #0xa6
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
_0803F2E8:
	adds r1, r7, #0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0803F2F8
	subs r0, r2, #1
	strb r0, [r1]
_0803F2F8:
	mov r5, r8
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803F362
	adds r4, r6, #0
	adds r4, #0x44
	ldr r2, _0803F358 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	subs r0, #0x30
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803F362
	ldrb r1, [r7]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	ble _0803F35C
	strb r1, [r5]
	movs r0, #0xff
	strb r0, [r7]
	b _0803F362
	.align 2, 0
_0803F34C: .4byte 0xFFFFFBFF
_0803F350: .4byte 0x00000255
_0803F354: .4byte 0x000003A6
_0803F358: .4byte gUnknown_03001D10
_0803F35C:
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3]
_0803F362:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803F370
sub_803F370: @ 0x0803F370
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803F384
sub_803F384: @ 0x0803F384
	push {r4, lr}
	adds r2, r0, #0
	adds r2, #0x44
	ldr r1, [r0, #0x6c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r0, #0x44]
	movs r4, #0
	movs r1, #0
	ldr r0, _0803F3C0 @ =0x000003A6
	strh r0, [r2, #0xc]
	strb r4, [r2, #0x1a]
	strh r3, [r2, #0x14]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3C0: .4byte 0x000003A6

	thumb_func_start sub_803F3C4
sub_803F3C4: @ 0x0803F3C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r0, _0803F3F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov r8, r0
	movs r6, #0
_0803F3DE:
	cmp r6, #0
	beq _0803F3F4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803F3F8
	.align 2, 0
_0803F3F0: .4byte gCurTask
_0803F3F4:
	ldr r0, _0803F4A8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803F3F8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803F4AC @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F41E
	cmp r1, #8
	beq _0803F41E
	adds r2, r6, #1
	cmp r1, #0x10
	bne _0803F470
_0803F41E:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r2, r6, #1
	cmp r0, #0
	bne _0803F470
	ldr r0, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _0803F470
	ldr r0, [r5, #0x20]
	cmp r0, r1
	ble _0803F470
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bge _0803F470
	ldr r0, [r5, #0x18]
	cmp r0, r1
	ble _0803F470
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x1c]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x18]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x1a]
	orrs r7, r2
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_0803F470:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F3DE
	cmp r7, #0
	bne _0803F49E
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _0803F49E
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0803F4B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803F49E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F4A8: .4byte gUnknown_030008A0
_0803F4AC: .4byte gUnknown_030015C0
_0803F4B0: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable090
CreateEntity_Interactable090: @ 0x0803F4B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803F54C @ =sub_803F3C4
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x24
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	mov r1, r8
	strb r1, [r3, #9]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	lsls r2, r2, #8
	str r2, [r3, #0x10]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r3, #0x1c]
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r3, #0x20]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r3, #0x14]
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r3, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F54C: .4byte sub_803F3C4

	thumb_func_start CreateEntity_Interactable091
CreateEntity_Interactable091: @ 0x0803F550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803F61C @ =sub_803F638
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803F620 @ =sub_803FAF4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r1, _0803F624 @ =0x03000014
	adds r0, r4, r1
	movs r2, #0
	strh r5, [r3, #4]
	mov r7, r8
	strh r7, [r3, #6]
	mov r1, sb
	str r1, [r3]
	ldrb r1, [r1]
	strb r1, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldr r6, _0803F628 @ =0x0300003C
	adds r1, r4, r6
	strb r2, [r1]
	ldr r7, _0803F62C @ =0x0300003D
	adds r1, r4, r7
	strb r2, [r1]
	ldr r1, _0803F630 @ =gUnknown_030008A0
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r6, _0803F634 @ =gUnknown_030015C0
	adds r1, r1, r6
	str r1, [r3, #0xc]
	adds r1, #0x2b
	ldrb r2, [r1]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	str r1, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r3, #0x3e]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	mov r6, r8
	lsls r6, r6, #8
	mov r8, r6
	add r1, r8
	adds r7, #3
	adds r4, r4, r7
	strh r1, [r4]
	ldrh r1, [r3, #0x3e]
	strh r1, [r0, #0x10]
	ldrh r1, [r4]
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r6, sb
	strb r1, [r6]
	bl sub_803F9F0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F61C: .4byte sub_803F638
_0803F620: .4byte sub_803FAF4
_0803F624: .4byte 0x03000014
_0803F628: .4byte 0x0300003C
_0803F62C: .4byte 0x0300003D
_0803F630: .4byte gUnknown_030008A0
_0803F634: .4byte gUnknown_030015C0

	thumb_func_start sub_803F638
sub_803F638: @ 0x0803F638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803F678 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x14
	adds r0, r0, r1
	mov sb, r0
	movs r6, #0
	movs r5, #0
	movs r1, #1
	mov r8, r1
_0803F65A:
	lsls r0, r5, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0803F67C
	mov r0, r8
	lsls r0, r5
	bics r6, r0
	b _0803F690
	.align 2, 0
_0803F678: .4byte gCurTask
_0803F67C:
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F690
	mov r0, r8
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_0803F690:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F65A
	cmp r6, #0
	beq _0803F6C0
	adds r2, r7, #0
	adds r2, #0x3c
	movs r1, #0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x3d
	strb r6, [r0]
	strb r1, [r2]
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803F6D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F6D4 @ =sub_803F6D8
	str r0, [r1, #8]
_0803F6C0:
	bl sub_803FA5C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F6D0: .4byte gCurTask
_0803F6D4: .4byte sub_803F6D8

	thumb_func_start sub_803F6D8
sub_803F6D8: @ 0x0803F6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0803F730 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x14
	adds r0, r1, r0
	str r0, [sp]
	movs r2, #0
	mov sl, r2
	movs r6, #0
	ldr r0, _0803F734 @ =0x0300000C
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _0803F738 @ =0x0300003D
	adds r2, r2, r1
	mov sb, r2
_0803F708:
	lsls r0, r6, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0803F73C
	movs r1, #1
	lsls r1, r6
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	movs r0, #0x3d
	adds r0, r0, r7
	mov r8, r0
	b _0803F7B2
	.align 2, 0
_0803F730: .4byte gCurTask
_0803F734: .4byte 0x0300000C
_0803F738: .4byte 0x0300003D
_0803F73C:
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	asrs r0, r6
	movs r5, #1
	ands r0, r5
	mov r8, r1
	cmp r0, #0
	beq _0803F79C
	ldr r0, _0803F76C @ =gUnknown_030008A0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0803F770
	adds r0, r5, #0
	lsls r0, r6
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _0803F7B2
	.align 2, 0
_0803F76C: .4byte gUnknown_030008A0
_0803F770:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	bne _0803F7B2
	ldr r0, [r4, #0x14]
	ldr r1, _0803F798 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80213B0
	b _0803F7B2
	.align 2, 0
_0803F798: .4byte 0xFFFFF800
_0803F79C:
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F7B2
	adds r0, r5, #0
	lsls r0, r6
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0803F7B2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F708
	adds r1, r7, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r1, #0
	cmp r0, #0x18
	beq _0803F7D6
	mov r0, sl
	cmp r0, #0
	beq _0803F880
_0803F7D6:
	movs r6, #0
	mov r5, r8
_0803F7DA:
	lsls r0, r6, #2
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F7F8
	cmp r1, #8
	beq _0803F7F8
	cmp r1, #0x10
	bne _0803F860
_0803F7F8:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F860
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F846
	mov r2, r8
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803F842
	mov r0, sl
	cmp r0, #0
	beq _0803F834
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803F830 @ =0xFFFFFC00
	adds r0, r2, #0
	subs r0, r0, r1
	b _0803F838
	.align 2, 0
_0803F830: .4byte 0xFFFFFC00
_0803F834:
	movs r0, #0xfc
	lsls r0, r0, #8
_0803F838:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8009E8C
	b _0803F858
_0803F842:
	strh r1, [r4, #0x1a]
	b _0803F858
_0803F846:
	cmp r6, #0
	beq _0803F850
	ldrb r1, [r5]
	movs r0, #2
	b _0803F854
_0803F850:
	ldrb r1, [r5]
	movs r0, #1
_0803F854:
	ands r0, r1
	strb r0, [r5]
_0803F858:
	adds r0, r4, #0
	ldr r1, _0803F894 @ =0x0000024E
	bl sub_8004E98
_0803F860:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F7DA
	movs r0, #0
	strb r0, [r7]
	movs r0, #2
	ldr r1, [sp]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803F898 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F89C @ =sub_803F8A0
	str r0, [r1, #8]
_0803F880:
	bl sub_803FA5C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F894: .4byte 0x0000024E
_0803F898: .4byte gCurTask
_0803F89C: .4byte sub_803F8A0

	thumb_func_start sub_803F8A0
sub_803F8A0: @ 0x0803F8A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803F930 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x14
	adds r7, r1, r0
	movs r5, #0
_0803F8B4:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F8D4
	cmp r1, #8
	beq _0803F8D4
	cmp r1, #0x10
	bne _0803F8F4
_0803F8D4:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F8F4
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F8F4
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8009E8C
_0803F8F4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F8B4
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bne _0803F924
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	ldr r0, _0803F930 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F934 @ =sub_803F638
	str r0, [r1, #8]
_0803F924:
	bl sub_803FA5C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F930: .4byte gCurTask
_0803F934: .4byte sub_803F638

	thumb_func_start sub_803F938
sub_803F938: @ 0x0803F938
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0803F980 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _0803F984 @ =0x03000014
	adds r0, r2, r3
	adds r3, #0x2c
	adds r2, r2, r3
	movs r3, #0x3e
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r5, #0
	str r5, [sp]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0803F988
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	movs r0, #1
	b _0803F9E8
	.align 2, 0
_0803F980: .4byte gCurTask
_0803F984: .4byte 0x03000014
_0803F988:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r5, r1, r0
	str r5, [r4, #0x10]
	strh r3, [r4, #0x18]
	strh r3, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0803F9C0
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803F9C0
	ldr r1, _0803F9BC @ =0xFFFFFF00
	adds r0, r5, r1
	b _0803F9DC
	.align 2, 0
_0803F9BC: .4byte 0xFFFFFF00
_0803F9C0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803F9E6
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_0803F9DC:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0803F9E6:
	movs r0, #0
_0803F9E8:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_803F9F0
sub_803F9F0: @ 0x0803F9F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803FA10 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _0803FA18
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0803FA18
	movs r0, #0x16
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA14 @ =0x000003AD
	b _0803FA24
	.align 2, 0
_0803FA10: .4byte gUnknown_030008A0
_0803FA14: .4byte 0x000003AD
_0803FA18:
	movs r0, #0x2a
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA58 @ =0x00000376
_0803FA24:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA58: .4byte 0x00000376

	thumb_func_start sub_803FA5C
sub_803FA5C: @ 0x0803FA5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803FAA4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	mov r8, r0
	ldr r0, _0803FAA8 @ =0x03000014
	adds r5, r1, r0
	adds r0, #0x2c
	adds r1, r1, r0
	movs r0, #0x3e
	ldrsh r6, [r4, r0]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0803FAAC
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _0803FAE0
	.align 2, 0
_0803FAA4: .4byte gCurTask
_0803FAA8: .4byte 0x03000014
_0803FAAC:
	ldr r1, _0803FAEC @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	ldrh r0, [r5, #0x10]
	adds r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _0803FAF0 @ =0x010F0000
	cmp r0, r1
	bhi _0803FADE
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0803FADE
	cmp r0, #0xb3
	bgt _0803FADE
	adds r0, r5, #0
	bl sub_80C033C
_0803FADE:
	movs r0, #1
_0803FAE0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FAEC: .4byte gUnknown_03001D10
_0803FAF0: .4byte 0x010F0000

	thumb_func_start sub_803FAF4
sub_803FAF4: @ 0x0803FAF4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803FB08
sub_803FB08: @ 0x0803FB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803FB78 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r3, [r6]
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	add r0, r8
	mov sl, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r7, r2, r0
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0
_0803FB68:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0803FB80
	ldr r0, _0803FB7C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803FB8A
	.align 2, 0
_0803FB78: .4byte gCurTask
_0803FB7C: .4byte gUnknown_030008A0
_0803FB80:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803FB8A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803FC1C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803FBAE
	cmp r1, #8
	beq _0803FBAE
	cmp r1, #0x10
	bne _0803FBFA
_0803FBAE:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0803FBFA
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0803FBFA
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _0803FBFA
	cmp r0, sb
	bge _0803FBFA
	ldr r0, [r4, #0x14]
	cmp r0, r8
	ble _0803FBFA
	cmp r0, sl
	bge _0803FBFA
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _0803FC20 @ =sub_800A3C0
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #0x24
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [sp]
	str r1, [r4, #0x6c]
	asrs r1, r5, #0xe
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r0, r1
	str r4, [r0]
_0803FBFA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FB68
	bl sub_803FC80
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC1C: .4byte gUnknown_030015C0
_0803FC20: .4byte sub_800A3C0

	thumb_func_start sub_803FC24
sub_803FC24: @ 0x0803FC24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803FC7C @ =0x0000037B
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x7b
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	movs r2, #0
_0803FC60:
	strh r2, [r5]
	strh r2, [r5, #2]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0803FC60
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC7C: .4byte 0x0000037B

	thumb_func_start sub_803FC80
sub_803FC80: @ 0x0803FC80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r0, _0803FD28 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0803FD2C @ =0x0300000C
	adds r6, r0, r1
	adds r1, #0x28
	adds r5, r0, r1
	mov r4, sp
	mov r0, r8
	ldr r0, [r0]
	mov sb, r0
	mov r0, sp
	bl sub_803FD5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0
	ldr r7, _0803FD30 @ =gUnknown_03001D10
	adds r3, r7, #0
_0803FCBA:
	ldr r1, [r3]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r5]
	ldr r1, [r3, #4]
	ldrh r0, [r4, #2]
	subs r0, r0, r1
	strh r0, [r5, #2]
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #4
	adds r5, #4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0803FCBA
	ldr r1, [r7]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r2, [r7, #4]
	ldrh r1, [r4, #2]
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803FD0E
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0803FD0E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0803FD34
_0803FD0E:
	mov r0, ip
	cmp r0, #0
	bne _0803FD34
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803FD28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803FD4C
	.align 2, 0
_0803FD28: .4byte gCurTask
_0803FD2C: .4byte 0x0300000C
_0803FD30: .4byte gUnknown_03001D10
_0803FD34:
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
	mov r1, r8
	adds r1, #0x34
	adds r0, r6, #0
	movs r2, #7
	bl sub_80C0CA8
_0803FD4C:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803FD5C
sub_803FD5C: @ 0x0803FD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _0803FDC0 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	adds r1, #0xc
	adds r1, r1, r2
	mov sl, r1
	adds r5, r0, #0
	ldr r0, [r6]
	mov ip, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _0803FDC4 @ =0x03000050
	adds r0, r2, r0
	str r0, [sp, #0x18]
	movs r7, #0
_0803FD8E:
	lsls r2, r4, #0x10
	asrs r1, r2, #0xe
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r0, r1
	ldr r3, [r0]
	mov r8, r2
	cmp r3, #0
	beq _0803FDF0
	ldr r0, [r3, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803FDC8
	ldr r0, [r3, #0x6c]
	cmp r0, sl
	bne _0803FDC8
	mov r1, sb
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov sb, r0
	b _0803FDD2
	.align 2, 0
_0803FDC0: .4byte gCurTask
_0803FDC4: .4byte 0x03000050
_0803FDC8:
	mov r1, r8
	asrs r0, r1, #0xe
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	str r7, [r0]
_0803FDD2:
	ldr r1, _0803FE50 @ =gUnknown_030008A0
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803FDF0
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0803FDF0
	mov r1, r8
	asrs r0, r1, #0xe
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	str r7, [r0]
_0803FDF0:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FD8E
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r2, ip
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r6, sb
	lsls r0, r6, #0x18
	asrs r1, r0, #0x18
	str r0, [sp, #0x14]
	cmp r1, #0
	bne _0803FE54
	movs r4, #0
_0803FE30:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	mov r1, sl
	strh r1, [r5, #2]
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r5, #4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0803FE30
	movs r0, #0
	b _0803FF02
	.align 2, 0
_0803FE50: .4byte gUnknown_030008A0
_0803FE54:
	movs r0, #4
	subs r0, r0, r1
	movs r4, #0
	ldr r6, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r0, r0, #0x18
	str r0, [sp, #8]
	asrs r0, r0, #0x18
	mov sb, r0
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	str r0, [sp, #0x10]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0803FE7A:
	lsls r1, r4, #0x10
	asrs r0, r1, #0xe
	ldr r6, [sp, #0x18]
	adds r0, r6, r0
	ldr r3, [r0]
	mov r8, r1
	cmp r3, #0
	beq _0803FEF0
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	strh r0, [r5]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #2]
	ldrh r0, [r5]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	lsls r4, r0, #4
	mov r2, sb
	asrs r4, r2
	ldrh r0, [r5, #2]
	ldr r6, [sp, #0xc]
	subs r0, r0, r6
	lsls r3, r0, #4
	asrs r3, r2
	movs r2, #0
	ldr r0, [sp]
	lsls r1, r0, #0x10
	mov r6, sl
	lsls r0, r6, #0x10
	ldr r6, [sp, #0x10]
	cmp r2, r6
	bge _0803FEF0
	asrs r1, r1, #0x10
	mov ip, r1
	asrs r7, r0, #0x10
	ldr r1, [sp, #8]
	asrs r0, r1, #0x18
	movs r6, #1
	lsls r6, r0
_0803FECA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	muls r1, r0, r1
	asrs r1, r1, #4
	add r1, ip
	strh r1, [r5]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #4
	adds r1, r7, r1
	strh r1, [r5, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	adds r5, #4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _0803FECA
_0803FEF0:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803FE7A
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0x18
_0803FF02:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Interactable092
CreateEntity_Interactable092: @ 0x0803FF14
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803FF98 @ =sub_803FB08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803FF9C @ =sub_803FFA4
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, r8
	strb r0, [r4]
	movs r0, #0
	ldr r4, _0803FFA0 @ =0x03000050
	adds r3, r1, r4
	movs r4, #0
_0803FF6A:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r3, r0
	str r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	ble _0803FF6A
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r2, #0
	adds r1, #0x34
	bl sub_803FC24
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF98: .4byte sub_803FB08
_0803FF9C: .4byte sub_803FFA4
_0803FFA0: .4byte 0x03000050

	thumb_func_start sub_803FFA4
sub_803FFA4: @ 0x0803FFA4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_803FFB8
sub_803FFB8: @ 0x0803FFB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08040010 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _08040014 @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [sp, #0xc]
	ldr r2, [r1]
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r1, #0
_08040000:
	lsls r0, r1, #0x10
	mov sl, r0
	cmp r0, #0
	bne _0804001C
	ldr r0, _08040018 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08040026
	.align 2, 0
_08040010: .4byte gCurTask
_08040014: .4byte 0x0300000C
_08040018: .4byte gUnknown_030008A0
_0804001C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08040026:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804008C @ =gUnknown_030015C0
	adds r6, r0, r1
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08040044
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	beq _08040114
_08040044:
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08040114
	ldr r3, [sp, #0x10]
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	mov r8, r1
	ldr r2, [sp, #0x14]
	lsls r4, r2, #0x10
	str r6, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, sb
	asrs r2, r4, #0x10
	movs r3, #0
	bl sub_8020874
	adds r7, r0, #0
	cmp r7, #0
	beq _08040114
	adds r0, r6, #0
	bl sub_8016F28
	ldr r0, [sp, #0xc]
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040090
	movs r1, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	b _080400BE
	.align 2, 0
_0804008C: .4byte gUnknown_030015C0
_08040090:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r7
	cmp r0, #0
	beq _080400A6
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r7
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	b _080400BE
_080400A6:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	cmp r0, r8
	beq _080400B8
	movs r1, #0
	cmp r0, r8
	bge _080400BE
	movs r1, #1
	b _080400D8
_080400B8:
	ldr r1, [r6, #4]
	movs r0, #1
	ands r1, r0
_080400BE:
	cmp r1, #0
	bne _080400D8
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r6, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080400EA
_080400D8:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, _08040138 @ =0xFFFFFBFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	orrs r0, r1
_080400EA:
	str r0, [r6, #4]
	ldr r0, [r6, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #4]
	mov r3, sb
	str r3, [r6, #0x6c]
	asrs r0, r5, #8
	str r0, [r6, #0x10]
	asrs r0, r4, #8
	str r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x94
	lsls r0, r0, #2
	bl sub_8003DF0
	adds r0, r6, #0
	ldr r1, _0804013C @ =sub_800A4C8
	bl sub_800D87C
_08040114:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08040124
	b _08040000
_08040124:
	bl sub_804018C
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040138: .4byte 0xFFFFFBFF
_0804013C: .4byte sub_800A4C8

	thumb_func_start sub_8040140
sub_8040140: @ 0x08040140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2a
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08040188 @ =0x0000037E
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040188: .4byte 0x0000037E

	thumb_func_start sub_804018C
sub_804018C: @ 0x0804018C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080401DC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r6, r1, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C198
	cmp r0, #0
	bne _080401E0
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08040208
	.align 2, 0
_080401DC: .4byte gCurTask
_080401E0:
	ldr r1, _08040214 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r7, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r6, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	cmp r0, #0
	bne _08040202
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	bne _08040202
	movs r0, #0
	strb r0, [r5, #0x1a]
_08040202:
	adds r0, r5, #0
	bl sub_80C033C
_08040208:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040214: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Interactable093
CreateEntity_Interactable093: @ 0x08040218
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08040288 @ =sub_803FFB8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804028C @ =sub_8040298
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08040290 @ =0x0300000C
	adds r0, r3, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r4, r8
	str r4, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #0xa]
	strb r6, [r1, #0xb]
	ldrb r2, [r4, #7]
	movs r1, #3
	ands r1, r2
	ldr r2, _08040294 @ =0x03000034
	adds r3, r3, r2
	strb r1, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_8040140
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040288: .4byte sub_803FFB8
_0804028C: .4byte sub_8040298
_08040290: .4byte 0x0300000C
_08040294: .4byte 0x03000034

	thumb_func_start sub_8040298
sub_8040298: @ 0x08040298
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_80402AC
sub_80402AC: @ 0x080402AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804036C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	mov sb, r0
	ldr r6, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r2, [r2, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	movs r2, #4
	ldrsb r2, [r6, r2]
	lsls r2, r2, #3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, r2
	lsls r2, r2, #0x10
	ldrb r3, [r6, #6]
	lsls r3, r3, #3
	lsrs r4, r2, #0x10
	str r4, [sp, #4]
	asrs r2, r2, #0x10
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r2, #3
	ldrsb r2, [r6, r2]
	lsls r2, r2, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	lsls r2, r2, #0x10
	ldrb r4, [r6, #5]
	lsls r3, r4, #3
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r4, r4, #2
	adds r2, r2, r4
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	bl sub_802C198
	cmp r0, #0
	bne _08040378
	ldr r0, _08040370 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08040374 @ =gUnknown_030015C0
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0x85
	beq _0804035A
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_8004F10
_0804035A:
	mov r1, sb
	ldrb r0, [r1, #0xa]
	strb r0, [r6]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _080404E8
	.align 2, 0
_0804036C: .4byte gCurTask
_08040370: .4byte gUnknown_030008A0
_08040374: .4byte gUnknown_030015C0
_08040378:
	movs r1, #0
	ldr r3, _08040390 @ =0x0300000D
	ldr r4, [sp, #0x10]
	adds r3, r3, r4
	mov r8, r3
_08040382:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08040398
	ldr r0, _08040394 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _080403A2
	.align 2, 0
_08040390: .4byte 0x0300000D
_08040394: .4byte gUnknown_030008A0
_08040398:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080403A2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080403E0 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080403C8
	cmp r1, #8
	beq _080403C8
	cmp r1, #0x10
	beq _080403C8
	b _080404D8
_080403C8:
	adds r0, r5, #0
	bl sub_802C0D4
	adds r4, r0, #0
	cmp r4, #0
	beq _080403E4
	adds r0, r5, #0
	movs r1, #0x91
	lsls r1, r1, #1
	bl sub_8004F10
	b _080404D8
	.align 2, 0
_080403E0: .4byte gUnknown_030015C0
_080403E4:
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	ldr r1, [r5, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	lsrs r2, r0, #0x10
	mov ip, r2
	asrs r3, r0, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	ble _080404D0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _080404D0
	lsls r0, r1, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _080404D0
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080404D0
	mov r2, sb
	ldrb r6, [r2, #0xc]
	cmp r6, #0
	beq _0804044E
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #0x85
	bne _080404D8
	adds r0, r5, #0
	movs r1, #0x91
	lsls r1, r1, #1
	bl sub_8004F10
	adds r0, r5, #0
	bl sub_800E6CC
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	str r0, [r5, #0x10]
	asrs r0, r7, #0x10
	add r0, r8
	strb r4, [r0]
	b _080404D8
_0804044E:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, #4
	adds r2, r0, #0
	cmp r1, r3
	bgt _08040488
	adds r0, r4, #4
	cmp r0, r3
	blt _08040488
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #0x85
	beq _080404D8
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	ldr r1, _08040484 @ =sub_800A5B0
	bl sub_800D87C
	lsls r0, r4, #8
	str r0, [r5, #0x10]
	asrs r0, r7, #0x10
	add r0, r8
	strb r6, [r0]
	b _080404D8
	.align 2, 0
_08040484: .4byte sub_800A5B0
_08040488:
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r6, r2, #0x10
	movs r1, #2
	cmp r2, r0
	ble _08040496
	movs r1, #1
_08040496:
	adds r2, r1, #0
	asrs r0, r7, #0x10
	mov r1, r8
	adds r4, r1, r0
	ldrb r0, [r4]
	mov r1, sb
	adds r1, #0xd
	cmp r0, #0
	beq _080404C8
	cmp r0, r2
	beq _080404C8
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	ldr r1, _080404C4 @ =sub_800A5B0
	bl sub_800D87C
	lsls r0, r6, #8
	str r0, [r5, #0x10]
	movs r0, #0
	strb r0, [r4]
	b _080404D8
	.align 2, 0
_080404C4: .4byte sub_800A5B0
_080404C8:
	asrs r0, r7, #0x10
	adds r0, r1, r0
	strb r2, [r0]
	b _080404D8
_080404D0:
	asrs r0, r7, #0x10
	add r0, r8
	movs r1, #0
	strb r1, [r0]
_080404D8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080404E8
	b _08040382
_080404E8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable094
CreateEntity_Interactable094: @ 0x080404F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08040560 @ =sub_80402AC
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r3, r8
	ldrb r0, [r3, #7]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xd]
	strb r2, [r1, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040560: .4byte sub_80402AC

	thumb_func_start CreateEntity_Interactable095
CreateEntity_Interactable095: @ 0x08040564
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0804064C @ =sub_8040664
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08040650 @ =sub_804087C
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	add r4, sl
	ldr r0, _08040654 @ =0x03000030
	add r0, sl
	movs r1, #0
	mov ip, r1
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	mov r2, sb
	str r2, [r4]
	ldrb r1, [r2]
	strb r1, [r4, #8]
	mov r1, r8
	strb r1, [r4, #9]
	ldrb r2, [r2]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	lsls r2, r2, #8
	str r2, [r4, #0xc]
	mov r5, sb
	ldrb r3, [r5, #1]
	lsls r3, r3, #3
	lsls r6, r6, #8
	adds r3, r3, r6
	lsls r3, r3, #8
	str r3, [r4, #0x10]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r4, #0x1c]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r4, #0x20]
	movs r1, #4
	ldrsb r1, [r5, r1]
	lsls r1, r1, #0xb
	adds r3, r3, r1
	str r3, [r4, #0x14]
	ldrb r1, [r5, #6]
	lsls r1, r1, #0xb
	adds r3, r3, r1
	str r3, [r4, #0x18]
	ldr r1, _08040658 @ =0x03000024
	add sl, r1
	mov r5, ip
	mov r2, sl
	strb r5, [r2]
	ldr r1, _0804065C @ =gUnknown_030008A0
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r3, _08040660 @ =gUnknown_030015C0
	adds r1, r1, r3
	str r1, [r4, #0x28]
	adds r1, #0x2b
	ldrb r2, [r1]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	str r1, [r4, #0x2c]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r5, sb
	strb r1, [r5]
	bl sub_80407AC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804064C: .4byte sub_8040664
_08040650: .4byte sub_804087C
_08040654: .4byte 0x03000030
_08040658: .4byte 0x03000024
_0804065C: .4byte gUnknown_030008A0
_08040660: .4byte gUnknown_030015C0

	thumb_func_start sub_8040664
sub_8040664: @ 0x08040664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804073C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov r8, r0
	movs r7, #0
	ldr r0, _08040740 @ =0x03000024
	adds r6, r1, r0
_08040680:
	lsls r0, r7, #2
	adds r1, r5, #0
	adds r1, #0x28
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080406A4
	cmp r1, #8
	beq _080406A4
	adds r2, r5, #0
	adds r2, #0x24
	cmp r1, #0x10
	bne _08040762
_080406A4:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08040754
	ldr r3, [r4]
	ldr r0, _08040744 @ =sub_8008A8C
	adds r2, r5, #0
	adds r2, #0x24
	cmp r3, r0
	beq _08040762
	ldr r0, _08040748 @ =sub_800ED80
	cmp r3, r0
	beq _08040762
	ldr r0, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _08040754
	ldr r0, [r5, #0x20]
	cmp r0, r1
	ble _08040754
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bge _08040754
	ldr r0, [r5, #0x18]
	cmp r0, r1
	ble _08040754
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #0x18]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804070E
	ldr r1, _0804074C @ =sub_800EB5C
	cmp r3, r1
	beq _0804070E
	movs r0, #0xb
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800D87C
_0804070E:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08040730
	ldr r0, _08040750 @ =gUnknown_030008A0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08040730
	adds r0, r4, #0
	bl sub_8006CF0
	adds r0, r4, #0
	movs r1, #0x74
	bl sub_8004E98
_08040730:
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r6]
	orrs r0, r1
	b _0804075C
	.align 2, 0
_0804073C: .4byte gCurTask
_08040740: .4byte 0x03000024
_08040744: .4byte sub_8008A8C
_08040748: .4byte sub_800ED80
_0804074C: .4byte sub_800EB5C
_08040750: .4byte gUnknown_030008A0
_08040754:
	movs r1, #1
	lsls r1, r7
	ldrb r0, [r6]
	bics r0, r1
_0804075C:
	strb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x24
_08040762:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08040680
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804079C
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _080407A0
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08040798 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407A0
	.align 2, 0
_08040798: .4byte gCurTask
_0804079C:
	bl sub_8040814
_080407A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80407AC
sub_80407AC: @ 0x080407AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080407C8 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _080407D0
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _080407CC @ =0x000003E7
	b _080407DC
	.align 2, 0
_080407C8: .4byte gUnknown_030008A0
_080407CC: .4byte 0x000003E7
_080407D0:
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _08040810 @ =0x000003B1
_080407DC:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040810: .4byte 0x000003B1

	thumb_func_start sub_8040814
sub_8040814: @ 0x08040814
	push {r4, r5, r6, r7, lr}
	ldr r0, _08040874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x30
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80BF44C
	movs r5, #0
	ldr r7, _08040878 @ =gUnknown_03001D10
_08040830:
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040864
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80C033C
_08040864:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08040830
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040874: .4byte gCurTask
_08040878: .4byte gUnknown_03001D10

	thumb_func_start sub_804087C
sub_804087C: @ 0x0804087C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_ActRing
CreateEntity_ActRing: @ 0x08040890
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08040970 @ =sub_8040984
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08040974 @ =sub_8040CA4
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r6, [r1, #4]
	strh r7, [r1, #6]
	str r5, [r1]
	ldrb r0, [r5]
	strb r0, [r1, #0xa]
	strb r4, [r1, #0xb]
	movs r3, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080408F4
	movs r2, #1
_080408DA:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _080408F4
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080408DA
_080408F4:
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	mov r4, ip
	adds r4, #0x5c
	movs r2, #0
	strh r0, [r4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	mov r6, ip
	adds r6, #0x5e
	strh r0, [r6]
	mov r0, ip
	adds r0, #0x61
	strb r3, [r0]
	subs r0, #1
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsrs r0, r0, #7
	mov r1, ip
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, _08040978 @ =gUnknown_03000530
	ldr r1, _0804097C @ =gUnknown_030008A0
	adds r0, #0x29
	ldrb r1, [r1, #9]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	mov r0, ip
	adds r0, #0x63
	strb r1, [r0]
	mov r3, ip
	adds r3, #0xc
	ldr r2, _08040980 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	mov r0, ip
	bl sub_8040B34
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040970: .4byte sub_8040984
_08040974: .4byte sub_8040CA4
_08040978: .4byte gUnknown_03000530
_0804097C: .4byte gUnknown_030008A0
_08040980: .4byte gUnknown_03001D10

	thumb_func_start sub_8040984
sub_8040984: @ 0x08040984
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r6, _08040A6C @ =gUnknown_030008A0
	ldrb r2, [r6, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _08040A70 @ =gUnknown_030015C0
	mov r8, r1
	adds r4, r0, r1
	ldr r0, _08040A74 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	ldr r1, [r4]
	ldr r0, _08040A78 @ =sub_80052C8
	cmp r1, r0
	beq _08040A98
	ldr r0, _08040A7C @ =sub_800522C
	cmp r1, r0
	beq _08040A98
	ldr r0, [r4, #4]
	ldr r1, _08040A80 @ =0x01000300
	ands r0, r1
	cmp r0, #0
	beq _080409C6
	b _08040B24
_080409C6:
	adds r3, r2, #0
	cmp r3, #0
	beq _080409CE
	b _08040B24
_080409CE:
	ldr r2, _08040A84 @ =0x0300000C
	adds r0, r5, r2
	ldr r7, _08040A88 @ =0x0300005C
	adds r1, r5, r7
	adds r7, #2
	adds r2, r5, r7
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r2, [r2, r7]
	str r4, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _080409F2
	b _08040B24
_080409F2:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _08040A8C @ =0x00000209
	adds r0, r4, #0
	bl sub_8004E98
	ldrb r1, [r6, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r2, _08040A90 @ =0x03000061
	adds r1, r5, r2
	lsls r0, r0, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #3
	movs r1, #0
	strh r0, [r6, #0x12]
	strb r1, [r6, #0xc]
	ldr r5, _08040A94 @ =sub_800AD24
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800D87C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r7, r8
	adds r2, r0, r7
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08040A56
	adds r0, r2, #0
	adds r1, r5, #0
	bl sub_800D87C
_08040A56:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bls _08040A66
	ldrb r0, [r6, #0x12]
	ldrb r2, [r6, #0xc]
	movs r1, #0
	bl sub_80275B8
_08040A66:
	movs r0, #8
	strb r0, [r6, #4]
	b _08040B24
	.align 2, 0
_08040A6C: .4byte gUnknown_030008A0
_08040A70: .4byte gUnknown_030015C0
_08040A74: .4byte gCurTask
_08040A78: .4byte sub_80052C8
_08040A7C: .4byte sub_800522C
_08040A80: .4byte 0x01000300
_08040A84: .4byte 0x0300000C
_08040A88: .4byte 0x0300005C
_08040A8C: .4byte 0x00000209
_08040A90: .4byte 0x03000061
_08040A94: .4byte sub_800AD24
_08040A98:
	movs r1, #0
	ldr r6, _08040AAC @ =gUnknown_030008A0
	ldr r5, _08040AB0 @ =gUnknown_030015C0
_08040A9E:
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _08040AB4
	ldrb r1, [r6, #6]
	b _08040ABE
	.align 2, 0
_08040AAC: .4byte gUnknown_030008A0
_08040AB0: .4byte gUnknown_030015C0
_08040AB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08040ABE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08040AE0
	cmp r1, #8
	beq _08040AE0
	cmp r1, #0x10
	bne _08040B16
_08040AE0:
	ldrb r1, [r6, #0xb]
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	bne _08040B16
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040B06
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _08040B14
_08040B06:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08040B14:
	str r0, [r4, #4]
_08040B16:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08040A9E
_08040B24:
	bl sub_8040BE4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8040B34
sub_8040B34: @ 0x08040B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xc
	adds r0, #0x61
	ldrb r4, [r0]
	movs r0, #0x10
	bl sub_80C3224
	str r0, [r6, #0xc]
	movs r7, #0
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040BD0
	adds r5, #0x28
	movs r0, #6
	bl sub_80C3224
	str r0, [r6, #0x34]
	ldr r0, _08040BE0 @ =0x000003D7
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r7, [r5, #0xe]
	strh r7, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	orrs r0, r4
	strb r0, [r5, #0x1b]
	mov r0, sl
	strb r0, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	mov r0, r8
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
_08040BD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040BE0: .4byte 0x000003D7

	thumb_func_start sub_8040BE4
sub_8040BE4: @ 0x08040BE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08040C38 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08040C3C @ =0x0300000C
	adds r4, r5, r1
	ldr r2, [r0]
	mov sb, r2
	adds r1, #0x50
	adds r0, r5, r1
	ldr r2, _08040C40 @ =0x0300005E
	adds r1, r5, r2
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08040C44
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _08040C8A
	.align 2, 0
_08040C38: .4byte gCurTask
_08040C3C: .4byte 0x0300000C
_08040C40: .4byte 0x0300005E
_08040C44:
	ldr r2, _08040C98 @ =gUnknown_03001D10
	mov r8, r2
	ldr r0, [r2]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	ldr r1, _08040C9C @ =0x03000063
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C88
	ldr r2, _08040CA0 @ =0x03000034
	adds r4, r5, r2
	mov r1, r8
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_08040C88:
	movs r0, #1
_08040C8A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040C98: .4byte gUnknown_03001D10
_08040C9C: .4byte 0x03000063
_08040CA0: .4byte 0x03000034

	thumb_func_start sub_8040CA4
sub_8040CA4: @ 0x08040CA4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0xc]
	bl sub_80C3304
	ldr r0, _08040CCC @ =0x03000063
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08040CC4
	ldr r0, [r5, #0x34]
	bl sub_80C3304
_08040CC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040CCC: .4byte 0x03000063

	thumb_func_start sub_8040CD0
sub_8040CD0: @ 0x08040CD0
	push {lr}
	bl sub_8040BE4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_SpecialSpring
CreateEntity_SpecialSpring: @ 0x08040CDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08040D78 @ =sub_8040D8C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08040D7C @ =sub_8041094
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r7, _08040D80 @ =0x030000AC
	adds r6, r3, r7
	strh r1, [r6]
	mov r4, r8
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	adds r7, #2
	adds r5, r3, r7
	strh r1, [r5]
	ldr r4, _08040D84 @ =0x030000B0
	adds r1, r3, r4
	strb r2, [r1]
	subs r7, #0xa2
	adds r3, r3, r7
	ldr r4, _08040D88 @ =gUnknown_03001D10
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, r8
	strb r1, [r4]
	bl sub_8040F10
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040D78: .4byte sub_8040D8C
_08040D7C: .4byte sub_8041094
_08040D80: .4byte 0x030000AC
_08040D84: .4byte 0x030000B0
_08040D88: .4byte gUnknown_03001D10

	thumb_func_start sub_8040D8C
sub_8040D8C: @ 0x08040D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08040E6C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _08040E70 @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [r2]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08040E74 @ =gUnknown_030008A0
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08040E78 @ =gUnknown_030015C0
	mov sb, r1
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _08040DE6
	b _08040EFE
_08040DE6:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	cmp r2, #0
	bne _08040E00
	b _08040EFE
_08040E00:
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r2
	cmp r1, #0
	beq _08040E8C
	ldr r0, _08040E7C @ =gUnknown_03000530
	adds r0, #0x22
	ldrb r1, [r7, #9]
	adds r3, r0, r1
	ldrb r1, [r3]
	cmp r1, #0
	beq _08040EF4
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne _08040EF4
	subs r0, r1, #1
	strb r0, [r3]
	ldr r1, _08040E80 @ =sub_800ABD4
	adds r0, r4, #0
	bl sub_800D87C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sb
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08040E58
	ldr r1, _08040E84 @ =sub_800AD24
	adds r0, r3, #0
	bl sub_800D87C
_08040E58:
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0x1a]
	ldr r0, _08040E88 @ =0x00000206
	bl sub_8003DF0
	movs r0, #4
	strb r0, [r7, #4]
	b _08040EFE
	.align 2, 0
_08040E6C: .4byte gCurTask
_08040E70: .4byte 0x0300000C
_08040E74: .4byte gUnknown_030008A0
_08040E78: .4byte gUnknown_030015C0
_08040E7C: .4byte gUnknown_03000530
_08040E80: .4byte sub_800ABD4
_08040E84: .4byte sub_800AD24
_08040E88: .4byte 0x00000206
_08040E8C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08040EF4
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08040ECC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08040ECC
	ldr r1, _08040EC8 @ =0xFFFFFF00
	adds r0, r3, r1
	b _08040EE8
	.align 2, 0
_08040EC8: .4byte 0xFFFFFF00
_08040ECC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08040EFE
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08040EFE
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
_08040EE8:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
	b _08040EFE
_08040EF4:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08040EFE:
	bl sub_8040FD8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8040F10
sub_8040F10: @ 0x08040F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r5, #0xc]
	movs r7, #0
	movs r6, #0
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	str r1, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	ldr r0, _08040FB8 @ =gUnknown_03000530
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _08040FBC @ =gUnknown_030008A0
	ldrb r1, [r1, #9]
	asrs r0, r1
	movs r1, #1
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	beq _08040FC4
	adds r4, #0x28
	movs r0, #6
	bl sub_80C3224
	str r0, [r5, #0x34]
	ldr r0, _08040FC0 @ =0x000003D7
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r4, #0x20]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r5, #0
	adds r0, #0xb0
	mov r1, sb
	strb r1, [r0]
	b _08040FCA
	.align 2, 0
_08040FB8: .4byte gUnknown_03000530
_08040FBC: .4byte gUnknown_030008A0
_08040FC0: .4byte 0x000003D7
_08040FC4:
	adds r0, r5, #0
	adds r0, #0xb0
	strb r7, [r0]
_08040FCA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8040FD8
sub_8040FD8: @ 0x08040FD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08041028 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0804102C @ =0x0300000C
	adds r4, r5, r1
	ldr r2, [r0]
	mov sb, r2
	adds r1, #0xa0
	adds r0, r5, r1
	ldr r2, _08041030 @ =0x030000AE
	adds r1, r5, r2
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _08041034
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _0804107A
	.align 2, 0
_08041028: .4byte gCurTask
_0804102C: .4byte 0x0300000C
_08041030: .4byte 0x030000AE
_08041034:
	ldr r2, _08041088 @ =gUnknown_03001D10
	mov r8, r2
	ldr r0, [r2]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	ldr r1, _0804108C @ =0x030000B0
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804107A
	ldr r2, _08041090 @ =0x03000034
	adds r4, r5, r2
	mov r1, r8
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	subs r0, #0x18
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0804107A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041088: .4byte gUnknown_03001D10
_0804108C: .4byte 0x030000B0
_08041090: .4byte 0x03000034

	thumb_func_start sub_8041094
sub_8041094: @ 0x08041094
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0xc]
	bl sub_80C3304
	ldr r0, _080410BC @ =0x030000B0
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080410B4
	ldr r0, [r5, #0x34]
	bl sub_80C3304
_080410B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080410BC: .4byte 0x030000B0

	thumb_func_start sub_80410C0
sub_80410C0: @ 0x080410C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080411A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _080411AC @ =0x0300000C
	adds r7, r0, r1
	ldr r3, [r2]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r6, _080411B0 @ =gUnknown_030008A0
	ldrb r3, [r6, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _080411B4 @ =gUnknown_030015C0
	mov r8, r1
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _080411B8 @ =sub_80052C8
	cmp r1, r0
	beq _080411CC
	ldr r0, _080411BC @ =sub_800522C
	cmp r1, r0
	beq _080411CC
	ldr r0, [r4, #4]
	ldr r1, _080411C0 @ =0x01000300
	ands r0, r1
	cmp r0, #0
	beq _08041124
	b _08041238
_08041124:
	adds r0, r3, #0
	cmp r0, #0
	beq _0804112C
	b _08041238
_0804112C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08041238
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _080411C4 @ =0x00000209
	adds r0, r4, #0
	bl sub_8004E98
	ldr r5, _080411C8 @ =sub_800AE14
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800D87C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, r8
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08041190
	adds r0, r2, #0
	adds r1, r5, #0
	bl sub_800D87C
_08041190:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bls _080411A0
	ldrb r1, [r6, #9]
	movs r0, #1
	movs r2, #1
	bl sub_80275B8
_080411A0:
	movs r0, #8
	strb r0, [r6, #4]
	b _08041238
	.align 2, 0
_080411A8: .4byte gCurTask
_080411AC: .4byte 0x0300000C
_080411B0: .4byte gUnknown_030008A0
_080411B4: .4byte gUnknown_030015C0
_080411B8: .4byte sub_80052C8
_080411BC: .4byte sub_800522C
_080411C0: .4byte 0x01000300
_080411C4: .4byte 0x00000209
_080411C8: .4byte sub_800AE14
_080411CC:
	movs r1, #0
	ldr r5, _080411E0 @ =gUnknown_030008A0
	ldr r3, _080411E4 @ =gUnknown_030015C0
_080411D2:
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _080411E8
	ldrb r1, [r5, #6]
	b _080411F2
	.align 2, 0
_080411E0: .4byte gUnknown_030008A0
_080411E4: .4byte gUnknown_030015C0
_080411E8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080411F2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08041214
	cmp r1, #8
	beq _08041214
	cmp r1, #0x10
	bne _0804122A
_08041214:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0804122A
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
_0804122A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080411D2
_08041238:
	bl sub_8041248
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8041248
sub_8041248: @ 0x08041248
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080412A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080412A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _080412BE
	.align 2, 0
_080412A0: .4byte gCurTask
_080412A4:
	ldr r0, _080412CC @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_080412BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080412CC: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_FactoryRing
CreateEntity_FactoryRing: @ 0x080412D0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08041348 @ =sub_80410C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804134C @ =sub_8041354
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r2, r8
	str r2, [r1]
	ldrb r2, [r2]
	strb r2, [r1, #0xa]
	strb r6, [r1, #0xb]
	ldr r3, _08041350 @ =0x0300000C
	adds r0, r0, r3
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r0, #0x10]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	strb r1, [r2]
	bl sub_8041368
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08041348: .4byte sub_80410C0
_0804134C: .4byte sub_8041354
_08041350: .4byte 0x0300000C

	thumb_func_start sub_8041354
sub_8041354: @ 0x08041354
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8041368
sub_8041368: @ 0x08041368
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x24
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _080413A8 @ =0x0000038F
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080413A8: .4byte 0x0000038F

	thumb_func_start CreateEntity_BonusUfo
CreateEntity_BonusUfo: @ 0x080413AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r1, _080414A4 @ =gUnknown_080CFBC0
	add r0, sp, #4
	movs r2, #6
	bl sub_80CA3B0
	movs r3, #0
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080413F0
	movs r2, #1
_080413D6:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _080413F0
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080413D6
_080413F0:
	ldr r0, _080414A8 @ =sub_80414B0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080414AC @ =sub_8041A30
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r5, [r1, #4]
	strh r6, [r1, #6]
	str r4, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #0xa]
	strb r7, [r1, #0xb]
	movs r3, #0
	ldrb r1, [r4, #7]
	movs r0, #1
	ands r1, r0
	lsls r5, r5, #8
	lsls r6, r6, #8
	cmp r1, #0
	bne _08041444
	movs r2, #1
_0804142A:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #2
	bgt _08041444
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804142A
_08041444:
	lsls r0, r3, #0x10
	asrs r0, r0, #0xf
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	mov r3, ip
	adds r3, #0xb1
	movs r1, #0
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x3c
	strb r0, [r3]
	mov r0, ip
	adds r0, #0xb3
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r3, #0xa6
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	adds r3, #0x28
	strh r1, [r3, #0x10]
	strh r0, [r3, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	mov r0, ip
	bl sub_80417F0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080414A4: .4byte gUnknown_080CFBC0
_080414A8: .4byte sub_80414B0
_080414AC: .4byte sub_8041A30

	thumb_func_start sub_80414B0
sub_80414B0: @ 0x080414B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080415F0 @ =gUnknown_030008A0
	ldrb r0, [r4, #9]
	mov r8, r0
	ldr r0, _080415F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r3, [r6]
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov ip, r1
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	add r0, ip
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r0, r0, r2
	mov sb, r0
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080415F8 @ =gUnknown_030015C0
	adds r5, r0, r1
	mov r1, r8
	cmp r1, #6
	bls _08041522
	movs r0, #0
	mov r8, r0
_08041522:
	ldr r1, _080415FC @ =0x030000B1
	adds r0, r7, r1
	ldrb r3, [r0]
	cmp r3, #7
	bne _0804153C
	ldr r0, _08041600 @ =gUnknown_03000530
	adds r0, #0x29
	add r0, r8
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #7
	beq _08041564
_0804153C:
	cmp r3, #8
	bne _08041550
	adds r0, r4, #0
	adds r0, #0xbe
	add r0, r8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041564
_08041550:
	cmp r3, #9
	bne _08041642
	adds r0, r4, #0
	adds r0, #0xbe
	add r0, r8
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08041642
_08041564:
	ldr r0, [r5, #4]
	ldr r1, _08041604 @ =0x01000304
	ands r0, r1
	cmp r0, #0
	bne _08041642
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0xee
	beq _08041642
	cmp r0, #0xef
	beq _08041642
	cmp r0, #0xf4
	beq _08041642
	cmp r0, #0xf5
	beq _08041642
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08041642
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08041592
	rsbs r0, r0, #0
_08041592:
	cmp r0, #0x7f
	bgt _08041642
	ldr r0, [r5, #0x10]
	cmp r0, r2
	ble _08041642
	cmp r0, sb
	bge _08041642
	ldr r0, [r5, #0x14]
	cmp r0, ip
	ble _08041642
	cmp r0, sl
	bge _08041642
	movs r7, #8
	strb r7, [r4, #4]
	adds r0, r5, #0
	bl sub_8016F28
	ldr r0, _08041608 @ =0x0000020A
	bl sub_8003DF0
	movs r4, #1
	movs r0, #1
	strh r0, [r5, #0x30]
	ldr r1, _0804160C @ =sub_800EB4C
	adds r0, r5, #0
	bl sub_800D87C
	adds r0, r6, #0
	adds r0, #0xb3
	strb r4, [r0]
	subs r0, #2
	ldrb r2, [r0]
	cmp r2, #7
	bne _0804161E
	ldr r0, _08041600 @ =gUnknown_03000530
	adds r0, #0x29
	add r0, r8
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08041610
	adds r0, r6, #0
	adds r0, #0xb0
	strb r7, [r0]
	adds r1, r0, #0
	b _08041626
	.align 2, 0
_080415F0: .4byte gUnknown_030008A0
_080415F4: .4byte gCurTask
_080415F8: .4byte gUnknown_030015C0
_080415FC: .4byte 0x030000B1
_08041600: .4byte gUnknown_03000530
_08041604: .4byte 0x01000304
_08041608: .4byte 0x0000020A
_0804160C: .4byte sub_800EB4C
_08041610:
	ands r2, r1
	adds r1, r6, #0
	adds r1, #0xb0
	cmp r2, #7
	bne _08041626
	movs r0, #4
	b _08041624
_0804161E:
	adds r1, r6, #0
	adds r1, #0xb0
	movs r0, #0
_08041624:
	strb r0, [r1]
_08041626:
	ldrb r0, [r1]
	adds r0, #1
	adds r2, r6, #0
	adds r2, #0x26
	strb r0, [r2]
	ldrb r0, [r1]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r0, _08041654 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08041658 @ =sub_804165C
	str r0, [r1, #8]
_08041642:
	bl sub_8041988
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041654: .4byte gCurTask
_08041658: .4byte sub_804165C

	thumb_func_start sub_804165C
sub_804165C: @ 0x0804165C
	push {r4, r5, lr}
	ldr r2, _080416B0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3]
	adds r0, #0xb2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r5, r2, #0
	cmp r0, #0
	bne _080416F8
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r1, #8
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r4, r1, #8
	ldr r0, _080416B4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080416B8 @ =gUnknown_030015C0
	adds r1, r0, r1
	ldr r0, [r1, #0x10]
	cmp r0, r2
	bge _080416BC
	movs r2, #0x80
	lsls r2, r2, #1
	b _080416C2
	.align 2, 0
_080416B0: .4byte gCurTask
_080416B4: .4byte gUnknown_030008A0
_080416B8: .4byte gUnknown_030015C0
_080416BC:
	cmp r0, r2
	ble _080416C6
	ldr r2, _080416F0 @ =0xFFFFFF00
_080416C2:
	adds r0, r0, r2
	str r0, [r1, #0x10]
_080416C6:
	ldr r0, [r1, #0x14]
	cmp r0, r4
	ble _080416D6
	ldr r2, _080416F0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x14]
	cmp r0, r4
	bgt _080416FC
_080416D6:
	adds r1, r3, #0
	adds r1, #0x76
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	ldr r0, _080416F4 @ =sub_8041710
	str r0, [r1, #8]
	b _080416FC
	.align 2, 0
_080416F0: .4byte 0xFFFFFF00
_080416F4: .4byte sub_8041710
_080416F8:
	subs r0, #1
	strb r0, [r1]
_080416FC:
	bl sub_8041988
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804170A
	bl sub_8041A48
_0804170A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8041710
sub_8041710: @ 0x08041710
	push {r4, r5, lr}
	ldr r0, _08041758 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r0, [r5, #0x64]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804176C
	ldr r0, _0804175C @ =0x030000B3
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804176C
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08041760 @ =0x030000B0
	adds r2, r3, r4
	ldrb r0, [r2]
	adds r0, #2
	subs r4, #0x8a
	adds r1, r3, r4
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #2
	ldr r2, _08041764 @ =0x0300004E
	adds r1, r3, r2
	strb r0, [r1]
	ldr r0, _08041768 @ =0x0000020A
	bl sub_8003E28
	b _080417C6
	.align 2, 0
_08041758: .4byte gCurTask
_0804175C: .4byte 0x030000B3
_08041760: .4byte 0x030000B0
_08041764: .4byte 0x0300004E
_08041768: .4byte 0x0000020A
_0804176C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080417C6
	adds r3, r5, #0
	adds r3, #0x26
	ldrb r1, [r3]
	adds r2, r5, #0
	adds r2, #0xb0
	ldrb r0, [r2]
	adds r0, #3
	cmp r1, r0
	beq _080417C6
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #3
	adds r1, r5, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r2, _080417E4 @ =gUnknown_030008A0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080417E8 @ =gUnknown_030015C0
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xb1
	ldrb r3, [r1]
	adds r4, r0, #0
	adds r4, #0xa4
	strb r3, [r4]
	ldrb r2, [r2, #9]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r3, r3, r1
	strb r3, [r4]
	ldr r1, _080417EC @ =sub_800AEF4
	bl sub_800D87C
_080417C6:
	bl sub_8041988
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080417DE
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080417DE
	bl sub_8041A48
_080417DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080417E4: .4byte gUnknown_030008A0
_080417E8: .4byte gUnknown_030015C0
_080417EC: .4byte sub_800AEF4

	thumb_func_start sub_80417F0
sub_80417F0: @ 0x080417F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0x27
	bl sub_80C3224
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	str r0, [sp]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, _0804186C @ =gUnknown_030008A0
	ldrb r1, [r0, #9]
	str r1, [sp, #8]
	movs r2, #0
	movs r1, #0xb0
	adds r1, r1, r6
	mov sb, r1
	adds r0, #0xbe
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #0xc]
_0804182A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, #0
	adds r1, #0xc
	adds r3, r6, r1
	adds r0, #0x5c
	adds r5, r6, r0
	ldr r0, [sp]
	str r0, [r3]
	adds r0, r6, #0
	adds r0, #0xb1
	ldrb r4, [r0]
	mov ip, r2
	cmp r4, #7
	bne _0804189C
	ldr r0, _08041870 @ =gUnknown_03000530
	adds r0, #0x29
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08041878
	ldr r0, _08041874 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r2, [r1]
	b _080418D6
	.align 2, 0
_0804186C: .4byte gUnknown_030008A0
_08041870: .4byte gUnknown_03000530
_08041874: .4byte 0x00000391
_08041878:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #7
	bne _0804188C
	ldr r0, _08041888 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #4
	b _080418D2
	.align 2, 0
_08041888: .4byte 0x00000391
_0804188C:
	ldr r0, _08041898 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r4, [r1]
	b _080418D6
	.align 2, 0
_08041898: .4byte 0x00000391
_0804189C:
	cmp r4, #8
	bne _080418AC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080418BC
_080418AC:
	cmp r4, #9
	bne _080418CC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080418CC
_080418BC:
	ldr r1, _080418C8 @ =0x00000391
	strh r1, [r3, #0xc]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	b _080418D6
	.align 2, 0
_080418C8: .4byte 0x00000391
_080418CC:
	ldr r0, _08041980 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #3
_080418D2:
	mov r1, sb
	strb r0, [r1]
_080418D6:
	adds r0, r6, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r3, #0x1a]
	movs r2, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r3, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r3, #8]
	mov r0, ip
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0804191A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r3, #8]
_0804191A:
	adds r0, r3, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	bl sub_80BF44C
	ldr r0, [sp, #4]
	str r0, [r5]
	ldr r0, _08041984 @ =0x00000392
	strh r0, [r5, #0xc]
	ldr r2, [sp, #0x14]
	strb r2, [r5, #0x1a]
	subs r0, #0x92
	strh r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	mov r1, sl
	str r1, [r5, #0x20]
	str r7, [r5, #8]
	cmp r4, #0
	beq _0804195A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r5, #8]
_0804195A:
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804196E
	b _0804182A
_0804196E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041980: .4byte 0x00000391
_08041984: .4byte 0x00000392

	thumb_func_start sub_8041988
sub_8041988: @ 0x08041988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08041A08 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r6, r0, r1
	adds r1, #0x28
	adds r7, r0, r1
	ldr r0, [r4]
	mov sb, r0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_802C198
	cmp r0, #0
	beq _08041A10
	ldr r0, _08041A0C @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r6, #0x10]
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	mov r1, r8
	subs r0, r1, r0
	strh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
	adds r0, r7, #0
	bl sub_80C033C
	movs r0, #1
	b _08041A20
	.align 2, 0
_08041A08: .4byte gCurTask
_08041A0C: .4byte gUnknown_03001D10
_08041A10:
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
_08041A20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8041A30
sub_8041A30: @ 0x08041A30
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08041A44 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_08041A44: .4byte 0x030000AC

	thumb_func_start sub_8041A48
sub_8041A48: @ 0x08041A48
	push {r4, r5, lr}
	ldr r0, _08041A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08041A90 @ =0x0300000C
	adds r1, r4, r0
	adds r0, #0x50
	adds r5, r4, r0
	adds r0, #0x28
	adds r4, r4, r0
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0x10]
	ldrh r0, [r1, #0x12]
	strh r0, [r5, #0x12]
	ldrh r0, [r1, #0x12]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041A8C: .4byte gCurTask
_08041A90: .4byte 0x0300000C

	thumb_func_start CreateEntity_Interactable100
CreateEntity_Interactable100: @ 0x08041A94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08041B24 @ =gUnknown_080CFBC8
	add r0, sp, #4
	movs r2, #0xc
	bl sub_80CA3B0
	ldr r0, _08041B28 @ =sub_8041B9C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08041B2C @ =sub_80420E4
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r7, [r0]
	ldrb r0, [r7]
	mov r3, ip
	strb r0, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r3, #0x3c]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r3, #0x40]
	ldr r3, _08041B30 @ =0x03000046
	adds r0, r1, r3
	strh r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	strh r2, [r0]
	subs r3, #6
	adds r0, r1, r3
	strh r2, [r0]
	ldrb r2, [r7, #7]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	ldr r2, _08041B34 @ =0x0300004C
	adds r1, r1, r2
	strb r0, [r1]
	movs r2, #2
	ldrb r0, [r7, #7]
	asrs r0, r0, #2
	b _08041B4C
	.align 2, 0
_08041B24: .4byte gUnknown_080CFBC8
_08041B28: .4byte sub_8041B9C
_08041B2C: .4byte sub_80420E4
_08041B30: .4byte 0x03000046
_08041B34: .4byte 0x0300004C
_08041B38:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #6
	bgt _08041B52
	ldrb r0, [r7, #7]
	asrs r0, r1
_08041B4C:
	ands r0, r3
	cmp r0, #0
	beq _08041B38
_08041B52:
	ldrb r1, [r7, #7]
	movs r0, #0xfc
	ands r0, r1
	cmp r0, #0
	beq _08041B6A
	lsls r0, r2, #0x10
	asrs r0, r0, #0xf
	subs r0, #4
	add r0, sp
	adds r0, #4
	ldrh r1, [r0]
	b _08041B6C
_08041B6A:
	movs r1, #0
_08041B6C:
	mov r0, ip
	adds r0, #0x48
	strh r1, [r0]
	subs r0, #0x3c
	mov r2, ip
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	strb r1, [r7]
	mov r1, ip
	adds r1, #0x4c
	ldrb r1, [r1]
	bl sub_8041E74
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8041B9C
sub_8041B9C: @ 0x08041B9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08041C0C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, ip
	mov r8, r0
	ldr r0, _08041C10 @ =0x0300000C
	add r0, ip
	mov sb, r0
	mov r1, r8
	ldr r3, [r1]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r2, r8
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, _08041C14 @ =gUnknown_030008A0
	ldr r2, [r0, #0x1c]
	ldr r0, _08041C18 @ =0x03000048
	add r0, ip
	ldrh r0, [r0]
	adds r4, r2, r0
	movs r2, #0x7f
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r3, #6]
	lsls r6, r0, #0xb
	mov r0, r8
	ldr r0, [r0, #0x3c]
	str r0, [sp, #4]
	mov r1, r8
	ldr r1, [r1, #0x40]
	mov sl, r1
	ands r4, r2
	cmp r4, #0x3f
	bgt _08041C1C
	adds r1, r7, r6
	adds r0, r6, #0
	muls r0, r4, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x40]
	b _08041C7C
	.align 2, 0
_08041C0C: .4byte gCurTask
_08041C10: .4byte 0x0300000C
_08041C14: .4byte gUnknown_030008A0
_08041C18: .4byte 0x03000048
_08041C1C:
	cmp r4, #0x4f
	bgt _08041C34
	mov r0, r8
	str r7, [r0, #0x40]
	ldr r1, _08041C30 @ =0x03000044
	add r1, ip
	movs r0, #0
	strh r0, [r1]
	b _08041C7C
	.align 2, 0
_08041C30: .4byte 0x03000044
_08041C34:
	cmp r4, #0x5f
	bgt _08041C46
	movs r0, #4
	ands r4, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r0, r0, #6
	adds r0, r7, r0
	b _08041C70
_08041C46:
	cmp r4, #0x67
	bgt _08041C56
	adds r0, r4, #0
	subs r0, #0x60
	muls r0, r6, r0
	asrs r0, r0, #3
	adds r0, r7, r0
	b _08041C78
_08041C56:
	cmp r4, #0x77
	bgt _08041C76
	cmp r4, #0x68
	bne _08041C66
	movs r0, #0x95
	lsls r0, r0, #2
	bl sub_8003DF0
_08041C66:
	adds r0, r7, r6
	movs r1, #3
	ands r4, r1
	lsls r1, r4, #8
	adds r0, r0, r1
_08041C70:
	mov r1, r8
	str r0, [r1, #0x40]
	b _08041C7C
_08041C76:
	adds r0, r7, r6
_08041C78:
	mov r2, r8
	str r0, [r2, #0x40]
_08041C7C:
	mov r1, r8
	ldr r0, [r1, #0x3c]
	ldr r2, [sp, #4]
	subs r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [r1, #0x40]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	movs r1, #0
_08041C90:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08041CA4
	ldr r0, _08041CA0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08041CAE
	.align 2, 0
_08041CA0: .4byte gUnknown_030008A0
_08041CA4:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08041CAE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08041D0C @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041D10
	mov r0, r8
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D10
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08041D10
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08041D10
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, sb
	movs r3, #1
	bl sub_8020CE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08041D10
	adds r0, r5, #0
	movs r1, #0x9a
	bl sub_8004E98
	b _08041E50
	.align 2, 0
_08041D0C: .4byte gUnknown_030015C0
_08041D10:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08041D1C
	b _08041E50
_08041D1C:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041D5A
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08041D5A
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	mov r1, sl
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D5A
	mov r1, r8
	adds r1, #0x4a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08041D5A
	adds r0, #1
	strh r0, [r1]
_08041D5A:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08041D70
	cmp r1, #8
	beq _08041D70
	cmp r1, #0x10
	bne _08041E50
_08041D70:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	movs r6, #0
	str r6, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl sub_8020950
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r4
	cmp r2, #0
	beq _08041DBA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	strh r6, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
	b _08041DF0
_08041DBA:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08041DF0
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8012368
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
_08041DF0:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E50
	lsls r0, r4, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	adds r2, r1, r0
	str r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _08041E24
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041E24
	ldr r1, _08041E20 @ =0xFFFFFF00
	adds r0, r2, r1
	b _08041E40
	.align 2, 0
_08041E20: .4byte 0xFFFFFF00
_08041E24:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E4A
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08041E4A
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_08041E40:
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_08041E4A:
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08041E50:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08041E60
	b _08041C90
_08041E60:
	bl sub_8041ED4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8041E74
sub_8041E74: @ 0x08041E74
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08041E8E
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	b _08041E9A
_08041E8E:
	movs r0, #0x1e
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _08041ED0 @ =0x00000389
_08041E9A:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041ED0: .4byte 0x00000389

	thumb_func_start sub_8041ED4
sub_8041ED4: @ 0x08041ED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _08041F50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r5, _08041F54 @ =0x0300000C
	add r5, r8
	ldr r2, [r7]
	mov sb, r2
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08041F58 @ =gUnknown_03001D10
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08041FA4
	movs r1, #0
	ldr r2, _08041F5C @ =gUnknown_030015C0
_08041F3C:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08041F60
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08041F64
	.align 2, 0
_08041F50: .4byte gCurTask
_08041F54: .4byte 0x0300000C
_08041F58: .4byte gUnknown_03001D10
_08041F5C: .4byte gUnknown_030015C0
_08041F60:
	ldr r0, _08041F9C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08041F64:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp, #4]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, #1
	ble _08041F3C
	ldrb r0, [r7, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08041FA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080420D0
	.align 2, 0
_08041F9C: .4byte gUnknown_030008A0
_08041FA0: .4byte gCurTask
_08041FA4:
	ldr r0, _08041FE0 @ =0x0300004C
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804208C
	ldr r2, _08041FE4 @ =0x0300004A
	add r2, r8
	ldrh r0, [r2]
	cmp r0, #0
	beq _08041FC8
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08041FE8 @ =0x013F0000
	cmp r0, r1
	bls _08041FC8
	movs r0, #0
	strh r0, [r2]
_08041FC8:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r2, r1, #0
	cmp r1, #0
	bne _08041FF0
	movs r1, #0
	ldr r0, _08041FEC @ =0x00000389
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08041FE0: .4byte 0x0300004C
_08041FE4: .4byte 0x0300004A
_08041FE8: .4byte 0x013F0000
_08041FEC: .4byte 0x00000389
_08041FF0:
	cmp r1, #0xad
	bhi _08042008
	ldr r0, _08042004 @ =0x00000389
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	lsrs r0, r1, #3
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_08042004: .4byte 0x00000389
_08042008:
	cmp r1, #0xb3
	bhi _08042020
	movs r0, #0
	ldr r1, _0804201C @ =0x00000387
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	b _0804208C
	.align 2, 0
_0804201C: .4byte 0x00000387
_08042020:
	cmp r1, #0xb5
	bls _0804205E
	cmp r1, #0xb7
	bls _08042046
	ldr r0, _08042038 @ =0x0000012F
	cmp r1, r0
	bhi _08042040
	ldr r0, _0804203C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #3
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042038: .4byte 0x0000012F
_0804203C: .4byte 0x00000387
_08042040:
	ldr r0, _08042050 @ =0x00000131
	cmp r1, r0
	bhi _08042058
_08042046:
	ldr r0, _08042054 @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042050: .4byte 0x00000131
_08042054: .4byte 0x00000387
_08042058:
	ldr r0, _08042068 @ =0x00000133
	cmp r1, r0
	bhi _08042070
_0804205E:
	ldr r0, _0804206C @ =0x00000387
	strh r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0x1a]
	b _0804208C
	.align 2, 0
_08042068: .4byte 0x00000133
_0804206C: .4byte 0x00000387
_08042070:
	ldr r0, _080420AC @ =0x0000013F
	cmp r2, r0
	bhi _0804208C
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _080420B0 @ =0x01000002
	bl sub_80C7520
	ldr r0, _080420B4 @ =0x00000389
	strh r0, [r5, #0xc]
	strb r4, [r5, #0x1a]
_0804208C:
	adds r0, r5, #0
	bl sub_80BF44C
	movs r4, #0
_08042094:
	cmp r4, #0
	beq _080420B8
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	b _080420C6
	.align 2, 0
_080420AC: .4byte 0x0000013F
_080420B0: .4byte 0x01000002
_080420B4: .4byte 0x00000389
_080420B8:
	ldr r0, [r5, #8]
	ldr r1, _080420E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
_080420C6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08042094
_080420D0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080420E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80420E4
sub_80420E4: @ 0x080420E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable101
CreateEntity_Interactable101: @ 0x080420F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080421D0 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	mov r8, r0
	ldr r0, _080421D4 @ =sub_80421E8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080421D8 @ =sub_80425E4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	movs r1, #0
	mov sl, r1
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r7, sb
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldr r6, _080421DC @ =0x03000034
	adds r1, r0, r6
	strb r3, [r1]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r2, #0x40]
	ldr r1, _080421E0 @ =gUnknown_08E2EC5C
	mov r7, r8
	lsls r7, r7, #2
	mov r8, r7
	add r8, r1
	mov r3, sb
	ldrb r1, [r3, #7]
	mov r4, r8
	ldr r3, [r4]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r3, [r1]
	str r3, [r2, #0x38]
	ldrh r1, [r3]
	lsls r1, r1, #8
	str r1, [r2, #0x44]
	ldrh r1, [r3, #2]
	lsls r1, r1, #8
	str r1, [r2, #0x48]
	ldrh r3, [r3, #4]
	adds r6, #1
	adds r1, r0, r6
	strb r3, [r1]
	mov r7, sl
	strh r7, [r2, #0x36]
	ldr r1, [r2, #0x38]
	adds r1, #6
	str r1, [r2, #0x38]
	ldr r1, _080421E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, sb
	strb r1, [r3]
	bl sub_80424B0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080421D0: .4byte gUnknown_030008A0
_080421D4: .4byte sub_80421E8
_080421D8: .4byte sub_80425E4
_080421DC: .4byte 0x03000034
_080421E0: .4byte gUnknown_08E2EC5C
_080421E4: .4byte 0x0300000C

	thumb_func_start sub_80421E8
sub_80421E8: @ 0x080421E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	mov sb, r0
	ldr r0, _08042230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08042234 @ =0x03000035
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r2, r0, #4
	ldr r0, _08042238 @ =0x03000034
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08042310
	ldr r1, [r6, #0x3c]
	str r1, [sp, #4]
	ldr r0, [r6, #0x40]
	mov sb, r0
	ldr r7, [r6, #0x44]
	cmp r1, r7
	bge _0804223C
	adds r0, r2, r1
	str r0, [r6, #0x3c]
	lsls r2, r2, #0x10
	b _0804224A
	.align 2, 0
_08042230: .4byte gCurTask
_08042234: .4byte 0x03000035
_08042238: .4byte 0x03000034
_0804223C:
	lsls r2, r2, #0x10
	ldr r1, [sp, #4]
	cmp r1, r7
	ble _0804224A
	asrs r0, r2, #0x10
	subs r0, r1, r0
	str r0, [r6, #0x3c]
_0804224A:
	ldr r1, [r6, #0x40]
	ldr r5, [r6, #0x48]
	cmp r1, r5
	bge _08042258
	asrs r0, r2, #0x10
	adds r0, r1, r0
	b _08042260
_08042258:
	cmp r1, r5
	ble _08042262
	asrs r0, r2, #0x10
	subs r0, r1, r0
_08042260:
	str r0, [r6, #0x40]
_08042262:
	asrs r3, r2, #0x10
	ldr r1, [r6, #0x3c]
	subs r0, r1, r7
	cmp r0, #0
	blt _08042272
	cmp r0, r3
	blt _08042278
	b _0804227A
_08042272:
	subs r0, r7, r1
	cmp r0, r3
	bge _0804227A
_08042278:
	str r7, [r6, #0x3c]
_0804227A:
	asrs r2, r2, #0x10
	ldr r1, [r6, #0x40]
	subs r0, r1, r5
	cmp r0, #0
	blt _0804228A
	cmp r0, r2
	blt _08042290
	b _08042292
_0804228A:
	subs r0, r5, r1
	cmp r0, r2
	bge _08042292
_08042290:
	str r5, [r6, #0x40]
_08042292:
	ldr r2, [r6, #0x38]
	ldrh r3, [r2]
	ldr r0, _080422D8 @ =0x0000FFFF
	cmp r3, r0
	beq _08042300
	ldrh r1, [r2, #2]
	cmp r1, r0
	beq _08042300
	ldr r0, [r6, #0x3c]
	cmp r0, r7
	bne _08042300
	ldr r0, [r6, #0x40]
	cmp r0, r5
	bne _08042300
	ldr r0, _080422DC @ =0x0000FFFE
	cmp r3, r0
	bne _080422E6
	ldrh r0, [r6, #0x36]
	cmp r1, r0
	bhi _080422E0
	movs r0, #0
	strh r0, [r6, #0x36]
	adds r1, r2, #6
	str r1, [r6, #0x38]
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldrh r0, [r1, #2]
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	ldrh r0, [r1, #4]
	adds r1, r6, #0
	adds r1, #0x35
	strb r0, [r1]
	b _080422FA
	.align 2, 0
_080422D8: .4byte 0x0000FFFF
_080422DC: .4byte 0x0000FFFE
_080422E0:
	adds r0, #1
	strh r0, [r6, #0x36]
	b _08042300
_080422E6:
	ldrh r0, [r2]
	lsls r0, r0, #8
	str r0, [r6, #0x44]
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	str r0, [r6, #0x48]
	ldrh r0, [r2, #4]
	adds r2, r6, #0
	adds r2, #0x35
	strb r0, [r2]
_080422FA:
	ldr r0, [r6, #0x38]
	adds r0, #6
	str r0, [r6, #0x38]
_08042300:
	ldr r0, [r6, #0x3c]
	ldr r2, [sp, #4]
	subs r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [r6, #0x40]
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
_08042310:
	movs r2, #0xc
	adds r2, r2, r6
	mov sl, r2
	movs r1, #0
_08042318:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804232C
	ldr r0, _08042328 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08042336
	.align 2, 0
_08042328: .4byte gUnknown_030008A0
_0804232C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042336:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804237C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08042350
	b _0804248C
_08042350:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042394
	ldr r0, [r4, #0x6c]
	cmp r0, sl
	bne _08042394
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #4]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08042380
	movs r0, #0x80
	lsls r0, r0, #2
	add sb, r0
	b _08042384
	.align 2, 0
_0804237C: .4byte gUnknown_030015C0
_08042380:
	ldr r1, _080423E8 @ =0xFFFFFE00
	add sb, r1
_08042384:
	ldr r0, [r4, #0x14]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r4, #0x14]
	adds r1, r6, #0
	adds r1, #0x34
	movs r0, #1
	strb r0, [r1]
_08042394:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, sl
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	cmp r0, #0
	beq _080423EC
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r6, #0x40]
	ldr r0, [r6, #0x48]
	cmp r1, r0
	beq _0804241C
	cmp r1, r0
	ble _0804241C
	adds r0, r4, #0
	bl sub_801226C
	cmp r0, #0
	bge _0804241C
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804241C
	adds r0, r4, #0
	bl sub_8008E38
	b _0804241C
	.align 2, 0
_080423E8: .4byte 0xFFFFFE00
_080423EC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804241C
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r2
	cmp r0, #0
	beq _08042410
	ldr r2, _0804240C @ =0xFFFFFF00
	b _08042414
	.align 2, 0
_0804240C: .4byte 0xFFFFFF00
_08042410:
	movs r2, #0x80
	lsls r2, r2, #1
_08042414:
	adds r0, r1, r2
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_0804241C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804248C
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r2, #4
	ands r2, r0
	adds r7, r0, #0
	cmp r2, #0
	bne _0804248C
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r5
	cmp r0, #0
	beq _08042464
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042464
	ldr r1, _08042460 @ =0xFFFFFF00
	adds r0, r3, r1
	str r0, [r4, #0x10]
	strh r2, [r4, #0x1c]
	b _08042486
	.align 2, 0
_08042460: .4byte 0xFFFFFF00
_08042464:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804248C
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804248C
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x1c]
_08042486:
	movs r0, #0x40
	orrs r0, r7
	str r0, [r4, #4]
_0804248C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804249C
	b _08042318
_0804249C:
	bl sub_8042520
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80424B0
sub_80424B0: @ 0x080424B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080424C4 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #2
	beq _080424C8
	cmp r0, #5
	beq _080424DC
	b _08042514
	.align 2, 0
_080424C4: .4byte gUnknown_030008A0
_080424C8:
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _080424D8 @ =0x00000382
	b _080424E8
	.align 2, 0
_080424D8: .4byte 0x00000382
_080424DC:
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _0804251C @ =0x000003AE
_080424E8:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
_08042514:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804251C: .4byte 0x000003AE

	thumb_func_start sub_8042520
sub_8042520: @ 0x08042520
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0804257C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldr r0, [r7, #0x3c]
	asrs r0, r0, #8
	ldr r2, _08042580 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	ldr r2, [r2, #4]
	subs r1, r1, r2
	strh r1, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802C1D0
	cmp r0, #0
	bne _080425CC
	movs r1, #0
	ldr r2, _08042584 @ =gUnknown_030015C0
_08042566:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08042588
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804258C
	.align 2, 0
_0804257C: .4byte gCurTask
_08042580: .4byte gUnknown_03001D10
_08042584: .4byte gUnknown_030015C0
_08042588:
	ldr r0, _080425C4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804258C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08042566
	ldrb r0, [r7, #0xa]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _080425C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080425D8
	.align 2, 0
_080425C4: .4byte gUnknown_030008A0
_080425C8: .4byte gCurTask
_080425CC:
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
_080425D8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80425E4
sub_80425E4: @ 0x080425E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable102
CreateEntity_Interactable102: @ 0x080425F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08042690 @ =sub_80426A4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08042694 @ =sub_8042ADC
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r1, [r1]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r2, #0x40]
	str r3, [r2, #0x44]
	ldr r7, _08042698 @ =0x03000048
	adds r1, r0, r7
	strh r3, [r1]
	ldr r4, _0804269C @ =0x0300004A
	adds r1, r0, r4
	strh r3, [r1]
	ldr r6, _080426A0 @ =0x0300000C
	adds r0, r0, r6
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_8042AF0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042690: .4byte sub_80426A4
_08042694: .4byte sub_8042ADC
_08042698: .4byte 0x03000048
_0804269C: .4byte 0x0300004A
_080426A0: .4byte 0x0300000C

	thumb_func_start sub_80426A4
sub_80426A4: @ 0x080426A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08042700 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0xc
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r6, #0x3c]
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x40]
	mov sl, r2
	bl sub_8042930
	ldr r0, [r6, #0x3c]
	ldr r3, [sp, #0xc]
	subs r3, r3, r0
	str r3, [sp, #0xc]
	ldr r0, [r6, #0x40]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	ldr r2, _08042704 @ =0x0300004A
	adds r1, r5, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080426F0
	subs r0, r2, #1
	strh r0, [r1]
_080426F0:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x1e
	ble _0804270C
	ldr r3, _08042708 @ =0x03000048
	adds r1, r5, r3
	movs r0, #0x28
	b _0804271C
	.align 2, 0
_08042700: .4byte gCurTask
_08042704: .4byte 0x0300004A
_08042708: .4byte 0x03000048
_0804270C:
	ldr r0, _08042730 @ =0x03000048
	adds r1, r5, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0804271E
	subs r0, r2, #1
_0804271C:
	strh r0, [r1]
_0804271E:
	movs r1, #0
_08042720:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _08042738
	ldr r0, _08042734 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08042742
	.align 2, 0
_08042730: .4byte 0x03000048
_08042734: .4byte gUnknown_030008A0
_08042738:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042742:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804287C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08042768
	cmp r1, #8
	beq _08042768
	cmp r1, #0x10
	beq _08042768
	b _0804290A
_08042768:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08042774
	b _0804290A
_08042774:
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804279A
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _0804279A
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r2, sl
	subs r0, r0, r2
	str r0, [r4, #0x14]
_0804279A:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r3, [r0, r2]
	adds r7, r0, #0
	cmp r3, #0
	bne _0804284E
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08042802
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08042802
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r4, [sp]
	str r3, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, r8
	movs r3, #1
	bl sub_8020874
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r5
	cmp r0, #0
	beq _08042802
	ldr r0, _08042880 @ =0x00000253
	bl sub_8003DF0
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x3c
	strh r0, [r7]
	ldr r0, _08042884 @ =0x0000FCF4
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _08042888 @ =sub_800DB30
	bl sub_800D87C
_08042802:
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r1, #0xa8
	beq _08042828
	cmp r1, #0xb8
	beq _08042828
	cmp r1, #0xcc
	beq _08042828
	cmp r1, #0xd5
	bne _0804281C
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _08042828
_0804281C:
	cmp r1, #0xe6
	beq _08042828
	cmp r1, #0xfe
	beq _08042828
	cmp r1, #0xff
	bne _0804284E
_08042828:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, r8
	movs r3, #1
	bl sub_8020874
	cmp r0, #0
	beq _0804284E
	ldr r0, _08042880 @ =0x00000253
	bl sub_8003DF0
	movs r0, #0x3c
	strh r0, [r7]
_0804284E:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r5
	cmp r2, #0
	beq _0804288C
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _080428EE
	.align 2, 0
_0804287C: .4byte gUnknown_030015C0
_08042880: .4byte 0x00000253
_08042884: .4byte 0x0000FCF4
_08042888: .4byte sub_800DB30
_0804288C:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _080428EE
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _080428C4
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080428EE
	adds r0, r4, #0
	bl sub_8008E38
	b _080428EE
_080428C4:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080428DE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _080428DE
	cmp r0, #0xf5
	bne _080428EE
_080428DE:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_080428EE:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804290A
	lsls r0, r5, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804290A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804291A
	b _08042720
_0804291A:
	bl sub_80429D0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8042930
sub_8042930: @ 0x08042930
	push {r4, r5, r6, lr}
	ldr r0, _080429A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	ldr r0, [r2]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r3, r1, #8
	ldr r0, _080429AC @ =0xFFFF4000
	adds r5, r3, r0
	ldr r0, _080429B0 @ =0x03000048
	adds r6, r4, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r2, #0x44]
	subs r0, r0, r1
	str r0, [r2, #0x44]
	ldr r1, _080429B4 @ =0xFFFFFF00
	cmp r0, r1
	bge _08042966
	str r1, [r2, #0x44]
_08042966:
	ldr r1, [r2, #0x44]
	ldr r0, _080429B8 @ =0x000007FF
	cmp r1, r0
	bgt _08042974
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x44]
_08042974:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, r5
	bge _08042982
	str r5, [r2, #0x40]
_08042982:
	ldr r0, [r2, #0x40]
	cmp r0, r3
	ble _0804298E
	str r3, [r2, #0x40]
	movs r0, #0
	str r0, [r2, #0x44]
_0804298E:
	ldr r0, [r2, #0x44]
	cmp r0, #0
	blt _0804299C
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0
	beq _080429C0
_0804299C:
	ldr r0, _080429BC @ =0x03000026
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	b _080429C6
	.align 2, 0
_080429A8: .4byte gCurTask
_080429AC: .4byte 0xFFFF4000
_080429B0: .4byte 0x03000048
_080429B4: .4byte 0xFFFFFF00
_080429B8: .4byte 0x000007FF
_080429BC: .4byte 0x03000026
_080429C0:
	ldr r2, _080429CC @ =0x03000026
	adds r0, r4, r2
	strb r1, [r0]
_080429C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080429CC: .4byte 0x03000026

	thumb_func_start sub_80429D0
sub_80429D0: @ 0x080429D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08042A48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	ldr r4, _08042A4C @ =gUnknown_03001D10
	ldr r3, [r4]
	subs r2, r2, r3
	strh r2, [r5, #0x10]
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r3, [r4, #4]
	subs r2, r2, r3
	strh r2, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	movs r4, #0x12
	ldrsh r3, [r5, r4]
	bl sub_802C140
	cmp r0, #0
	bne _08042A98
	movs r1, #0
	ldr r2, _08042A50 @ =gUnknown_030015C0
_08042A34:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042A54
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08042A58
	.align 2, 0
_08042A48: .4byte gCurTask
_08042A4C: .4byte gUnknown_03001D10
_08042A50: .4byte gUnknown_030015C0
_08042A54:
	ldr r0, _08042A90 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08042A58:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r2
	adds r0, r5, #0
	adds r1, r6, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _08042A34
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08042A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08042ACC
	.align 2, 0
_08042A90: .4byte gUnknown_030008A0
_08042A94: .4byte gCurTask
_08042A98:
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r4, #0x12
	ldrsh r1, [r5, r4]
	bl sub_802C1F8
	cmp r0, #1
	bne _08042ACC
	adds r0, r5, #0
	bl sub_80BF44C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, [r5, #8]
	ldr r1, _08042AD8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
_08042ACC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042AD8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8042ADC
sub_8042ADC: @ 0x08042ADC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8042AF0
sub_8042AF0: @ 0x08042AF0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x60
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x61
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable103
CreateEntity_Interactable103: @ 0x08042B34
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08042BF0 @ =sub_8042C1C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08042BF4 @ =sub_80430A0
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r4, _08042BF8 @ =0x030000B0
	adds r2, r3, r4
	movs r1, #2
	strb r1, [r2]
	mov r5, r8
	ldrb r1, [r5, #7]
	lsrs r1, r1, #7
	ldr r6, _08042BFC @ =0x030000B1
	adds r2, r3, r6
	strb r1, [r2]
	ldr r2, _08042C00 @ =0x030000B2
	adds r1, r3, r2
	mov r4, sb
	strh r4, [r1]
	ldr r5, _08042C04 @ =0x030000B4
	adds r1, r3, r5
	movs r2, #0x28
	strh r2, [r1]
	adds r6, #0xb
	adds r1, r3, r6
	movs r5, #0x12
	strh r5, [r1]
	ldr r4, _08042C08 @ =0x030000B6
	adds r1, r3, r4
	strh r2, [r1]
	adds r6, #2
	adds r1, r3, r6
	ldr r4, _08042C0C @ =0x0000FFE8
	strh r4, [r1]
	ldr r2, _08042C10 @ =0x030000B8
	adds r1, r3, r2
	ldr r2, _08042C14 @ =0x0000FFD8
	strh r2, [r1]
	adds r6, #2
	adds r1, r3, r6
	strh r5, [r1]
	ldr r5, _08042C18 @ =0x030000BA
	adds r1, r3, r5
	strh r2, [r1]
	adds r6, #2
	adds r3, r3, r6
	strh r4, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, r8
	strb r1, [r4]
	bl sub_8042EA8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08042BF0: .4byte sub_8042C1C
_08042BF4: .4byte sub_80430A0
_08042BF8: .4byte 0x030000B0
_08042BFC: .4byte 0x030000B1
_08042C00: .4byte 0x030000B2
_08042C04: .4byte 0x030000B4
_08042C08: .4byte 0x030000B6
_08042C0C: .4byte 0x0000FFE8
_08042C10: .4byte 0x030000B8
_08042C14: .4byte 0x0000FFD8
_08042C18: .4byte 0x030000BA

	thumb_func_start sub_8042C1C
sub_8042C1C: @ 0x08042C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08042CD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r3, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r4, [sp, #4]
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08042CDC @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	ldr r1, _08042CE0 @ =0x000001FF
	ands r0, r1
	ldr r6, _08042CE4 @ =0x030000B2
	adds r1, r2, r6
	strh r0, [r1]
	movs r1, #0
	ldr r7, _08042CE8 @ =0x030000B4
	adds r7, r7, r2
	mov sl, r7
	ldr r0, _08042CEC @ =0x030000BC
	adds r0, r2, r0
	str r0, [sp, #0x10]
_08042C76:
	ldr r3, [sp, #4]
	adds r3, #0xb2
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #7
	ldrh r3, [r3]
	adds r3, r0, r3
	ldr r4, _08042CE0 @ =0x000001FF
	adds r0, r4, #0
	lsls r1, r1, #1
	mov r7, sl
	adds r6, r7, r1
	ldrh r4, [r6]
	mov sb, r4
	ldr r7, [sp, #0x10]
	adds r4, r7, r1
	ldrh r1, [r4]
	mov r8, r1
	ands r3, r0
	str r2, [sp, #0x18]
	cmp r3, #0x3f
	bgt _08042CF4
	lsls r2, r3, #3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r7, _08042CF0 @ =gUnknown_082B48B4
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0x16
	muls r0, r3, r0
	asrs r1, r0, #0xe
	movs r7, #4
	rsbs r7, r7, #0
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r1, _08042CF0 @ =gUnknown_082B48B4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r1, r0, #0xe
	subs r3, #0x76
	adds r0, r3, #0
	b _08042D42
	.align 2, 0
_08042CD8: .4byte gCurTask
_08042CDC: .4byte gUnknown_030008A0
_08042CE0: .4byte 0x000001FF
_08042CE4: .4byte 0x030000B2
_08042CE8: .4byte 0x030000B4
_08042CEC: .4byte 0x030000BC
_08042CF0: .4byte gUnknown_082B48B4
_08042CF4:
	cmp r3, #0xff
	bgt _08042D02
	adds r0, r3, #0
	subs r0, #0xa0
	strh r0, [r6]
	movs r0, #0x12
	b _08042D5C
_08042D02:
	ldr r0, _08042D48 @ =0x0000013F
	cmp r3, r0
	bgt _08042D50
	adds r0, r3, #0
	subs r0, #0xc0
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r2, r7
	lsls r0, r0, #1
	ldr r1, _08042D4C @ =gUnknown_082B48B4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r7, #0x16
	muls r0, r7, r0
	asrs r1, r0, #0xe
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r2, #1
	ldr r4, _08042D4C @ =gUnknown_082B48B4
	adds r0, r0, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0x16
	muls r0, r1, r0
	asrs r1, r0, #0xe
	movs r0, #0x60
_08042D42:
	subs r0, r0, r1
	strh r0, [r6]
	b _08042D5E
	.align 2, 0
_08042D48: .4byte 0x0000013F
_08042D4C: .4byte gUnknown_082B48B4
_08042D50:
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r3
	strh r0, [r6]
	ldr r0, _08042DC4 @ =0x0000FFE6
_08042D5C:
	strh r0, [r4]
_08042D5E:
	ldr r0, [sp, #4]
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042D76
	ldr r3, [sp, #0x18]
	asrs r1, r3, #0xf
	add r1, sl
	movs r4, #0
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	strh r0, [r1]
_08042D76:
	ldr r6, [sp, #0x18]
	asrs r2, r6, #0x10
	lsls r3, r2, #1
	mov r7, sl
	adds r0, r7, r3
	ldrh r1, [r0]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r6, [sp, #0x10]
	adds r4, r6, r3
	ldrh r1, [r4]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	ldr r1, [sp, #4]
	adds r7, r1, r0
	movs r1, #0
	str r3, [sp, #0x14]
_08042DB4:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08042DCC
	ldr r0, _08042DC8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08042DD6
	.align 2, 0
_08042DC4: .4byte 0x0000FFE6
_08042DC8: .4byte gUnknown_030008A0
_08042DCC:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08042DD6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08042EA4 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08042DFA
	cmp r1, #8
	beq _08042DFA
	cmp r1, #0x10
	bne _08042E70
_08042DFA:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08042E70
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08042E32
	ldr r0, [r5, #0x6c]
	cmp r0, r7
	bne _08042E32
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
_08042E32:
	ldr r0, [sp, #0x14]
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08042E70
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08042E70:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042DB4
	ldr r2, [sp, #0x18]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08042E90
	b _08042C76
_08042E90:
	bl sub_8042F10
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042EA4: .4byte gUnknown_030015C0

	thumb_func_start sub_8042EA8
sub_8042EA8: @ 0x08042EA8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #9
	bl sub_80C3224
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	movs r7, #0
	movs r6, #0
_08042EBE:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	adds r1, r5, #0
	adds r1, #0xac
	ldr r1, [r1]
	str r1, [r0]
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl sub_80BF44C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08042EBE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8042F10
sub_8042F10: @ 0x08042F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #1
	mov sb, r0
	ldr r0, _08042FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	str r1, [sp]
	ldrb r5, [r6, #0xa]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802C198
	mov r2, sb
	eors r0, r2
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	mov sb, r1
	ldr r1, _08042FDC @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r0, [r1, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
	movs r4, #0
_08042F78:
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	adds r5, r6, r0
	lsls r2, r2, #1
	adds r1, r6, #0
	adds r1, #0xb4
	adds r1, r1, r2
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0xbc
	adds r1, r1, r2
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	bl sub_802C1D0
	adds r7, r4, #0
	cmp r0, #1
	bne _08043000
	adds r0, r5, #0
	bl sub_80BF44C
	movs r1, #0
_08042FC6:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08042FE0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08042FE6
	.align 2, 0
_08042FD8: .4byte gCurTask
_08042FDC: .4byte gUnknown_03001D10
_08042FE0:
	ldr r0, [r5, #8]
	ldr r1, _0804302C @ =0xFFFFFBFF
	ands r0, r1
_08042FE6:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08042FC6
	movs r0, #0
	mov sb, r0
_08043000:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08042F78
	mov r2, sb
	cmp r2, #0
	beq _08043082
	movs r1, #0
_08043016:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08043030
	mov r0, r8
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08043034
	.align 2, 0
_0804302C: .4byte 0xFFFFFBFF
_08043030:
	ldr r0, _08043094 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08043034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08043098 @ =gUnknown_030015C0
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
_08043046:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	mov r1, r8
	bl sub_80213B0
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08043046
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08043016
	ldrb r0, [r6, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0804309C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08043082:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043094: .4byte gUnknown_030008A0
_08043098: .4byte gUnknown_030015C0
_0804309C: .4byte gCurTask

	thumb_func_start sub_80430A0
sub_80430A0: @ 0x080430A0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080430B4 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_080430B4: .4byte 0x030000AC

	thumb_func_start CreateEntity_Interactable104
CreateEntity_Interactable104: @ 0x080430B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08043128 @ =sub_80431C4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804312C @ =sub_80436E8
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	strh r6, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r0, [r7]
	mov r3, ip
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	ldrb r1, [r7, #7]
	movs r0, #0xf0
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	ldr r3, _08043130 @ =0x03000069
	adds r1, r2, r3
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08043138
	ldr r0, _08043134 @ =0x03000068
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08043134 @ =0x03000068
	adds r2, r2, r1
	b _0804315A
	.align 2, 0
_08043128: .4byte sub_80431C4
_0804312C: .4byte sub_80436E8
_08043130: .4byte 0x03000069
_08043134: .4byte 0x03000068
_08043138:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	mov r2, ip
	adds r2, #0x68
	cmp r1, #7
	bgt _0804315A
	ldrb r0, [r7, #7]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08043138
	strb r3, [r2]
_0804315A:
	ldrb r0, [r2]
	cmp r0, #3
	bls _08043164
	subs r0, #4
	strb r0, [r2]
_08043164:
	mov r0, ip
	adds r0, #0x6a
	movs r5, #0
	strh r5, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	mov r4, ip
	adds r4, #0x64
	strh r0, [r4]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r1, r3, #8
	adds r0, r0, r1
	mov r6, ip
	adds r6, #0x66
	strh r0, [r6]
	mov r3, ip
	adds r3, #0x34
	ldr r2, _080431C0 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	mov r0, ip
	str r5, [r0, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	mov r0, ip
	bl sub_80433C8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080431C0: .4byte gUnknown_03001D10

	thumb_func_start sub_80431C4
sub_80431C4: @ 0x080431C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08043208 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _0804320C @ =0x03000034
	adds r7, r0, r1
	ldr r2, _08043210 @ =0x03000064
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08043214 @ =0x03000066
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r3, #0
	lsls r1, r1, #0x10
	mov sl, r1
	lsls r0, r0, #0x10
	mov sb, r0
_080431F8:
	lsls r0, r3, #0x10
	str r0, [sp, #8]
	cmp r0, #0
	bne _0804321C
	ldr r0, _08043218 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08043226
	.align 2, 0
_08043208: .4byte gCurTask
_0804320C: .4byte 0x03000034
_08043210: .4byte 0x03000064
_08043214: .4byte 0x03000066
_08043218: .4byte gUnknown_030008A0
_0804321C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08043226:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080432A0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _080432F8
	mov r0, r8
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080432B0
	ldr r1, [r4]
	ldr r0, _080432A4 @ =sub_800E3EC
	cmp r1, r0
	bne _08043254
	b _080433A2
_08043254:
	ldr r0, _080432A8 @ =sub_800B004
	cmp r1, r0
	bne _0804325C
	b _080433A2
_0804325C:
	mov r0, sl
	asrs r5, r0, #0x10
	mov r1, sb
	asrs r6, r1, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _080432F8
	mov r1, r8
	adds r1, #0x6a
	movs r0, #0x3c
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8043708
	ldr r0, _080432AC @ =0x00000251
	bl sub_8003DF0
	adds r0, r4, #0
	bl sub_8016F28
	b _080433A2
	.align 2, 0
_080432A0: .4byte gUnknown_030015C0
_080432A4: .4byte sub_800E3EC
_080432A8: .4byte sub_800B004
_080432AC: .4byte 0x00000251
_080432B0:
	ldr r1, [r4]
	ldr r0, _080432F0 @ =sub_800B128
	cmp r1, r0
	beq _080433A2
	ldr r0, _080432F4 @ =sub_800E564
	cmp r1, r0
	beq _080433A2
	mov r3, sl
	asrs r5, r3, #0x10
	mov r0, sb
	asrs r6, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _080432F8
	mov r0, r8
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80437A0
	b _080433A2
	.align 2, 0
_080432F0: .4byte sub_800B128
_080432F4: .4byte sub_800E564
_080432F8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804330E
	cmp r1, #8
	beq _0804330E
	cmp r1, #0x10
	bne _080433A2
_0804330E:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080433A2
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08043330
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _08043330
	ldr r0, [r4, #0x14]
	adds r1, #0xe0
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08043330:
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08043386
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r3, r1, r0
	str r3, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08043386
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08043378
	ldr r1, _08043374 @ =0xFFFFFF00
	b _0804337C
	.align 2, 0
_08043374: .4byte 0xFFFFFF00
_08043378:
	movs r1, #0x80
	lsls r1, r1, #1
_0804337C:
	adds r0, r3, r1
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_08043386:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080433A2
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_080433A2:
	ldr r2, [sp, #8]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080433B4
	b _080431F8
_080433B4:
	bl sub_8043530
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80433C8
sub_80433C8: @ 0x080433C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x34
	movs r0, #0
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804342C
	adds r2, r6, #0
	adds r2, #0x68
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08043418
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _08043414 @ =0x000003B5
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #4
	b _0804347E
	.align 2, 0
_08043414: .4byte 0x000003B5
_08043418:
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _08043428 @ =0x000003B6
	b _0804346C
	.align 2, 0
_08043428: .4byte 0x000003B6
_0804342C:
	adds r2, r6, #0
	adds r2, #0x68
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08043460
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _0804345C @ =0x00000385
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #4
	b _0804347E
	.align 2, 0
_0804345C: .4byte 0x00000385
_08043460:
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0x34]
	movs r1, #0
	ldr r0, _080434DC @ =0x00000386
_0804346C:
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043480
	movs r0, #0x80
	lsls r0, r0, #3
_0804347E:
	str r0, [r5, #8]
_08043480:
	movs r0, #0
	mov r8, r0
	movs r4, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r4, [r5, #0xe]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, r8
	strb r0, [r5, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r5, r6, #0
	adds r5, #0xc
	str r4, [r5, #8]
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080434E0
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0xc]
	movs r0, #0xef
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043500
	movs r0, #0x80
	lsls r0, r0, #4
	b _080434FE
	.align 2, 0
_080434DC: .4byte 0x00000386
_080434E0:
	movs r0, #0x15
	bl sub_80C3224
	str r0, [r6, #0xc]
	ldr r0, _0804352C @ =0x000003BB
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043500
	movs r0, #0x80
	lsls r0, r0, #3
_080434FE:
	str r0, [r5, #8]
_08043500:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804352C: .4byte 0x000003BB

	thumb_func_start sub_8043530
sub_8043530: @ 0x08043530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08043594 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, _08043598 @ =0x03000034
	adds r6, r4, r0
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp]
	ldr r2, _0804359C @ =0x03000064
	adds r0, r4, r2
	ldr r3, _080435A0 @ =0x03000066
	adds r1, r4, r3
	ldrh r2, [r0]
	mov sb, r2
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov r8, r3
	ldrh r3, [r1]
	str r3, [sp, #4]
	movs r0, #0
	ldrsh r7, [r1, r0]
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _080435E8
	movs r1, #0
	ldr r7, _080435A4 @ =gUnknown_030015C0
_0804357E:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080435A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080435AC
	.align 2, 0
_08043594: .4byte gCurTask
_08043598: .4byte 0x03000034
_0804359C: .4byte 0x03000064
_080435A0: .4byte 0x03000066
_080435A4: .4byte gUnknown_030015C0
_080435A8:
	ldr r0, _080435E0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080435AC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804357E
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, _080435E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080436CE
	.align 2, 0
_080435E0: .4byte gUnknown_030008A0
_080435E4: .4byte gCurTask
_080435E8:
	ldr r1, _08043604 @ =0x03000068
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08043608
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _08043610
	.align 2, 0
_08043604: .4byte 0x03000068
_08043608:
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08043610:
	ldr r2, _08043654 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r5, r3, #0x10
	asrs r0, r5, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	ldr r0, [sp, #4]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_80BF44C
	mov r0, sl
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	beq _08043678
	movs r4, #0
	mov r7, sl
	adds r7, #0x69
_08043646:
	cmp r4, #0
	beq _08043658
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804365E
	.align 2, 0
_08043654: .4byte gUnknown_03001D10
_08043658:
	ldr r0, [r6, #8]
	ldr r1, _08043674 @ =0xFFFFFBFF
	ands r0, r1
_0804365E:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08043646
	b _080436A4
	.align 2, 0
_08043674: .4byte 0xFFFFFBFF
_08043678:
	movs r4, #0
	mov r7, sl
	adds r7, #0x69
_0804367E:
	cmp r4, #0
	beq _0804368C
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08043692
_0804368C:
	ldr r0, [r6, #8]
	ldr r1, _080436E0 @ =0xFFFFF7FF
	ands r0, r1
_08043692:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_80C033C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804367E
_080436A4:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080436CE
	mov r6, sl
	adds r6, #0xc
	ldr r2, _080436E4 @ =gUnknown_03001D10
	ldr r1, [r2]
	asrs r0, r5, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
_080436CE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080436E0: .4byte 0xFFFFF7FF
_080436E4: .4byte gUnknown_03001D10

	thumb_func_start sub_80436E8
sub_80436E8: @ 0x080436E8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x34]
	bl sub_80C3304
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08043702
	bl sub_80C3304
_08043702:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8043708
sub_8043708: @ 0x08043708
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #8
	str r0, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _08043750
	cmp r1, #1
	bgt _0804372C
	cmp r1, #0
	beq _08043736
	b _08043794
_0804372C:
	cmp r5, #2
	beq _0804376C
	cmp r5, #3
	beq _08043784
	b _08043794
_08043736:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _0804374C @ =sub_800E3C4
	b _08043774
	.align 2, 0
_0804374C: .4byte sub_800E3C4
_08043750:
	ldr r1, _08043764 @ =0xFFFFEC00
	adds r0, r0, r1
	str r0, [r4, #0x70]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _08043768 @ =sub_800E398
	b _08043774
	.align 2, 0
_08043764: .4byte 0xFFFFEC00
_08043768: .4byte sub_800E398
_0804376C:
	ldr r1, _0804377C @ =0xFFFFEC00
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _08043780 @ =sub_800E348
_08043774:
	adds r0, r4, #0
	bl sub_800D87C
	b _08043794
	.align 2, 0
_0804377C: .4byte 0xFFFFEC00
_08043780: .4byte sub_800E348
_08043784:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r3, r1
	str r0, [r4, #0x74]
	ldr r1, _0804379C @ =sub_800E370
	adds r0, r4, #0
	bl sub_800D87C
_08043794:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804379C: .4byte sub_800E370

	thumb_func_start sub_80437A0
sub_80437A0: @ 0x080437A0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #8
	str r0, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _080437DC
	cmp r1, #1
	bgt _080437C4
	cmp r1, #0
	beq _080437CE
	b _08043812
_080437C4:
	cmp r5, #2
	beq _080437E8
	cmp r5, #3
	beq _08043800
	b _08043812
_080437CE:
	subs r0, #0x10
	str r0, [r4, #0x70]
	ldr r1, _080437D8 @ =sub_800E4B8
	b _080437F4
	.align 2, 0
_080437D8: .4byte sub_800E4B8
_080437DC:
	adds r0, #0x10
	str r0, [r4, #0x70]
	ldr r1, _080437E4 @ =sub_800E4E0
	b _080437F4
	.align 2, 0
_080437E4: .4byte sub_800E4E0
_080437E8:
	adds r0, #4
	str r0, [r4, #0x70]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x74]
	ldr r1, _080437FC @ =sub_800E490
_080437F4:
	adds r0, r4, #0
	bl sub_800D87C
	b _08043812
	.align 2, 0
_080437FC: .4byte sub_800E490
_08043800:
	adds r0, #4
	str r0, [r4, #0x70]
	adds r0, r3, #0
	subs r0, #0x10
	str r0, [r4, #0x74]
	ldr r1, _08043818 @ =sub_800E468
	adds r0, r4, #0
	bl sub_800D87C
_08043812:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08043818: .4byte sub_800E468

	thumb_func_start CreateEntity_Interactable105
CreateEntity_Interactable105: @ 0x0804381C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08043904 @ =sub_8043918
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08043908 @ =sub_8043D84
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	movs r7, #0
	movs r1, #0
	mov sb, r1
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r0, sl
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0xa]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r2, #0xc]
	ldr r0, _0804390C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08043910 @ =gUnknown_030015C0
	adds r0, r0, r3
	str r0, [r2, #0x10]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r2, #0x14]
	ldr r0, _08043914 @ =0x03000018
	adds r4, r4, r0
	movs r0, #1
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	adds r0, #0x9e
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	mov r1, sb
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043904: .4byte sub_8043918
_08043908: .4byte sub_8043D84
_0804390C: .4byte gUnknown_030008A0
_08043910: .4byte gUnknown_030015C0
_08043914: .4byte 0x03000018

	thumb_func_start sub_8043918
sub_8043918: @ 0x08043918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	mov sb, r0
	ldr r1, _0804396C @ =gCurTask
	mov sl, r1
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r2, [r4]
	mov r8, r2
	ldrh r0, [r4, #0xa]
	lsls r6, r0, #0x10
	asrs r5, r6, #0x10
	ldrh r0, [r4, #0xc]
	str r0, [sp]
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	ldr r0, _08043970 @ =gUnknown_03001D10
	ldr r2, [r0]
	subs r2, r5, r2
	ldr r3, [r0, #4]
	subs r3, r1, r3
	adds r0, r5, #0
	bl sub_802C140
	cmp r0, #0
	bne _08043974
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _080439EE
	.align 2, 0
_0804396C: .4byte gCurTask
_08043970: .4byte gUnknown_03001D10
_08043974:
	movs r3, #0
	ldr r0, _080439C8 @ =gUnknown_030008A0
	mov r8, r0
	ldr r1, _080439CC @ =0x03000010
	adds r4, r7, r1
	adds r2, r5, #0
_08043980:
	lsls r0, r3, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #8
	asrs r1, r0, #0x10
	adds r0, r1, #0
	subs r0, #0x28
	cmp r0, r2
	bge _0804399E
	adds r0, #0x50
	cmp r0, r2
	ble _0804399E
	movs r0, #1
	mov sb, r0
_0804399E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08043980
	mov r1, r8
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _080439D0
	mov r2, sb
	cmp r2, #0
	beq _080439D0
	asrs r0, r6, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #2
	bl sub_8043AF8
	b _080439EA
	.align 2, 0
_080439C8: .4byte gUnknown_030008A0
_080439CC: .4byte 0x03000010
_080439D0:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080439EA
	asrs r0, r6, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_8043AF8
_080439EA:
	bl sub_8043A00
_080439EE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043A00
sub_8043A00: @ 0x08043A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08043AE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08043AE4 @ =0x03000018
	adds r5, r0, r2
	ldr r2, _08043AE8 @ =gUnknown_03001D10
	ldr r0, [r2]
	ldrh r4, [r1, #0xa]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, [r2, #4]
	ldrh r0, [r1, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08043AEC @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	lsls r0, r1, #3
	subs r7, r0, r1
	ldr r0, _08043AF0 @ =0x000003FF
	adds r2, r0, #0
	ands r7, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r1
	ands r6, r2
	adds r0, r5, #0
	bl sub_80BF44C
	movs r1, #0
	mov r8, r1
	movs r3, #0
	movs r2, #0
	ldr r0, _08043AF4 @ =gUnknown_082B48B4
	mov sl, r0
	ldr r1, _08043AF0 @ =0x000003FF
	mov sb, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0xc]
_08043A68:
	adds r0, r7, r3
	mov r4, sb
	ands r0, r4
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #0xb
	ldr r4, [sp, #0xc]
	adds r0, r4, r0
	strh r0, [r5, #0x10]
	mov r1, r8
	adds r0, r6, r1
	mov r4, sb
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #0xe
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_80C033C
	ldr r2, [sp, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [sp, #8]
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r2, #7
	bls _08043A68
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043AE0: .4byte gCurTask
_08043AE4: .4byte 0x03000018
_08043AE8: .4byte gUnknown_03001D10
_08043AEC: .4byte gUnknown_030008A0
_08043AF0: .4byte 0x000003FF
_08043AF4: .4byte gUnknown_082B48B4

	thumb_func_start sub_8043AF8
sub_8043AF8: @ 0x08043AF8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08043BB0 @ =sub_8043BC4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08043BB4 @ =sub_8043DE0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #8
	str r4, [r2]
	lsls r6, r6, #0x10
	asrs r6, r6, #8
	str r6, [r2, #4]
	ldr r0, _08043BB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08043BBC @ =gUnknown_030015C0
	adds r0, r0, r3
	str r0, [r2, #0xc]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r2, #0x10]
	movs r4, #0
	strb r4, [r2, #8]
	movs r0, #9
	bl sub_80C3224
	ldr r1, _08043BC0 @ =0x03000014
	adds r5, r5, r1
	str r0, [r5]
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	adds r0, #0x9e
	strh r0, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r1, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043BB0: .4byte sub_8043BC4
_08043BB4: .4byte sub_8043DE0
_08043BB8: .4byte gUnknown_030008A0
_08043BBC: .4byte gUnknown_030015C0
_08043BC0: .4byte 0x03000014

	thumb_func_start sub_8043BC4
sub_8043BC4: @ 0x08043BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r5, _08043CC8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x14
	adds r6, r1, r0
	movs r2, #0
	mov r8, r2
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	beq _08043CD4
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	mov sb, r0
	ldr r2, _08043CCC @ =0xFFF80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08043CE8
	ldr r5, [r4, #0xc]
	adds r3, r5, #0
	adds r3, #0x24
	ldrb r0, [r3]
	rsbs r0, r0, #0
	add r1, sp, #0x10
	strb r0, [r1]
	movs r0, #0x25
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x11
	strb r0, [r2]
	ldrb r2, [r3]
	mov r0, sp
	adds r0, #0x12
	strb r2, [r0]
	mov r0, ip
	ldrb r2, [r0]
	mov r0, sp
	adds r0, #0x13
	strb r2, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl sub_80CA3B0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08043C82
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08043C82
	add r2, sp, #0xc
	str r2, [sp]
	str r5, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	mov r3, sb
	bl sub_8020A58
	cmp r0, #0
	beq _08043C82
	movs r2, #1
	mov r8, r2
	adds r0, r5, #0
	bl sub_8016D04
_08043C82:
	mov r0, r8
	cmp r0, #0
	bne _08043D50
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _08043CA2
	adds r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08043CA2
	mov r2, r8
	strb r2, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_08043CA2:
	ldr r2, _08043CD0 @ =gUnknown_030008A0
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	b _08043D14
	.align 2, 0
_08043CC8: .4byte gCurTask
_08043CCC: .4byte 0xFFF80000
_08043CD0: .4byte gUnknown_030008A0
_08043CD4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043CF0
_08043CE8:
	ldr r0, [r5]
	bl TaskDestroy
	b _08043D74
_08043CF0:
	ldr r2, _08043D5C @ =gUnknown_030008A0
	ldrb r0, [r2, #4]
	cmp r0, #4
	beq _08043D2A
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldr r1, [r4, #4]
	subs r1, #0xb0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
_08043D14:
	ldr r1, _08043D60 @ =0x000003FF
	ands r0, r1
	ldr r1, _08043D64 @ =gUnknown_082B48B4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08043D2A:
	ldr r0, [r4]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08043D68 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08043D70
_08043D50:
	ldr r0, _08043D6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08043D74
	.align 2, 0
_08043D5C: .4byte gUnknown_030008A0
_08043D60: .4byte 0x000003FF
_08043D64: .4byte gUnknown_082B48B4
_08043D68: .4byte gUnknown_03001D10
_08043D6C: .4byte gCurTask
_08043D70:
	bl sub_8043D98
_08043D74:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043D84
sub_8043D84: @ 0x08043D84
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8043D98
sub_8043D98: @ 0x08043D98
	push {r4, lr}
	ldr r0, _08043DD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	ldr r0, _08043DD8 @ =0x03000014
	adds r4, r4, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08043DDC @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043DD4: .4byte gCurTask
_08043DD8: .4byte 0x03000014
_08043DDC: .4byte gUnknown_03001D10

	thumb_func_start sub_8043DE0
sub_8043DE0: @ 0x08043DE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable106
CreateEntity_Interactable106: @ 0x08043DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08043F4C @ =gUnknown_080D0144
	add r0, sp, #4
	movs r2, #6
	bl sub_80CA3B0
	ldr r0, _08043F50 @ =sub_8043F68
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08043F54 @ =sub_8044718
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, sb
	adds r7, r1, r0
	movs r0, #0
	mov r8, r0
	movs r3, #0
	strh r4, [r7, #0xc]
	strh r5, [r7, #0xe]
	mov r1, sl
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #0x14]
	strb r6, [r7, #0x15]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r7, #4]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r7, #8]
	strh r3, [r7, #0x12]
	ldr r0, _08043F58 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08043F5C @ =gUnknown_030015C0
	adds r0, r0, r2
	str r0, [r7, #0x1c]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r7, #0x20]
	mov r0, r8
	strb r0, [r7, #0x16]
	movs r0, #1
	strb r0, [r7, #0x17]
	movs r0, #0x50
	strh r0, [r7, #0x10]
	movs r0, #7
	strb r0, [r7, #0x18]
	movs r0, #2
	strb r0, [r7, #0x19]
	movs r0, #0x10
	str r3, [sp, #0xc]
	bl sub_80C3224
	adds r5, r0, #0
	ldr r2, _08043F60 @ =0x03000024
	add r2, sb
	str r5, [r2]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	ldr r4, _08043F64 @ =0x0000039A
	strh r4, [r2, #0xc]
	mov r1, r8
	strb r1, [r2, #0x1a]
	ldr r3, [sp, #0xc]
	strh r3, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_80BF44C
	movs r3, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_08043EEE:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r2, r7, r0
	str r5, [r2]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xc]
	adds r1, r3, #1
	strb r1, [r2, #0x1a]
	strh r6, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	strh r6, [r2, #0x10]
	strh r6, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	lsls r0, r3, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	adds r5, r5, r0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r3, #2
	bls _08043EEE
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043F4C: .4byte gUnknown_080D0144
_08043F50: .4byte sub_8043F68
_08043F54: .4byte sub_8044718
_08043F58: .4byte gUnknown_030008A0
_08043F5C: .4byte gUnknown_030015C0
_08043F60: .4byte 0x03000024
_08043F64: .4byte 0x0000039A

	thumb_func_start sub_8043F68
sub_8043F68: @ 0x08043F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044028 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7]
	str r0, [sp, #8]
	ldr r2, _0804402C @ =0x03000024
	adds r2, r1, r2
	str r2, [sp, #0xc]
	ldr r0, [r7, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r7, #8]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x10]
	mov r8, r0
	ldr r2, _08044030 @ =0x0300001C
	adds r2, r1, r2
	str r2, [sp, #0x14]
_08043FA6:
	mov r1, r8
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08043FD4
	cmp r1, #8
	beq _08043FD4
	mov r2, sl
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r0, sb
	lsls r0, r0, #0x10
	str r0, [sp, #0x1c]
	cmp r1, #0x10
	bne _0804404C
_08043FD4:
	adds r0, r4, #0
	bl sub_802C0D4
	mov r1, sl
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _0804404C
	asrs r5, r1, #0x10
	asrs r6, r2, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08044034
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldr r2, [sp, #0x10]
	orrs r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	b _0804404C
	.align 2, 0
_08044028: .4byte gCurTask
_0804402C: .4byte 0x03000024
_08044030: .4byte 0x0300001C
_08044034:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804404C
	str r4, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0804404C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08043FA6
	movs r0, #0
	mov r8, r0
	movs r6, #0
_08044060:
	mov r1, r8
	lsls r0, r1, #2
	ldr r2, [sp, #0x14]
	adds r5, r2, r0
	ldr r2, [r5]
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x10]
	ldr r2, [r7, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_80BF30C
	mov r2, r8
	lsls r1, r2, #1
	mov r4, sp
	adds r4, r4, r1
	adds r4, #4
	strh r0, [r4]
	movs r1, #0
	subs r0, #0x81
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0804409C
	movs r1, #1
_0804409C:
	strh r1, [r4]
	cmp r1, #0
	beq _080440D6
	ldr r2, [r5]
	ldr r0, [r2, #0x10]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	asrs r3, r0, #8
	cmp r3, #0
	bge _080440B2
	rsbs r3, r3, #0
_080440B2:
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	ldr r0, [r2, #0x14]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	bge _080440C6
	rsbs r0, r0, #0
_080440C6:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r3, r3, r0
	ldr r0, _08044134 @ =0x00002710
	cmp r3, r0
	ble _080440D6
	strh r6, [r4]
_080440D6:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08044060
	ldrb r0, [r7, #0x16]
	cmp r0, #0
	beq _080440F0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08044100
_080440F0:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08044100
	add r0, sp, #4
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _08044108
_08044100:
	ldr r0, _08044138 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804413C @ =sub_8044160
	str r0, [r1, #8]
_08044108:
	ldr r1, [sp, #0x18]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x1c]
	asrs r1, r2, #0x10
	ldr r3, _08044140 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08044144
	ldrb r0, [r7, #0x14]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _08044138 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044150
	.align 2, 0
_08044134: .4byte 0x00002710
_08044138: .4byte gCurTask
_0804413C: .4byte sub_8044160
_08044140: .4byte gUnknown_03001D10
_08044144:
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r7, #0x16]
	adds r0, r7, #0
	bl sub_80446E0
_08044150:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044160
sub_8044160: @ 0x08044160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044240 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, _08044244 @ =0x03000024
	adds r1, r5, r1
	str r1, [sp, #0xc]
	mov r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	ldr r2, [r2, #8]
	lsls r3, r2, #8
	mov r4, r8
	ldrh r0, [r4, #0x12]
	adds r0, #0x20
	strh r0, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	adds r2, r2, r0
	str r2, [r4, #8]
	ldr r2, _08044248 @ =gUnknown_03001D10
	ldr r0, [r2]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x10]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r6, [sp, #0xc]
	strh r1, [r6, #0x10]
	ldr r0, [r2, #4]
	lsrs r1, r3, #0x10
	str r1, [sp, #0x14]
	asrs r3, r3, #0x10
	subs r3, r3, r0
	strh r3, [r6, #0x12]
	movs r2, #0
	mov sb, r2
	ldr r4, _0804424C @ =0x0300001C
	adds r4, r5, r4
	str r4, [sp, #0x1c]
_080441C4:
	mov r6, sb
	lsls r0, r6, #2
	mov r1, r8
	adds r1, #0x1c
	adds r1, r1, r0
	ldr r6, [r1]
	adds r0, r6, #0
	bl sub_802C080
	ldr r1, [sp, #0x10]
	lsls r1, r1, #0x10
	mov sl, r1
	ldr r2, [sp, #0x14]
	lsls r5, r2, #0x10
	cmp r0, #0
	bne _0804425E
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044202
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0xc]
	cmp r0, r4
	bne _08044202
	mov r0, r8
	movs r2, #0x12
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_08044202:
	ldr r4, [sp, #0x10]
	lsls r5, r4, #0x10
	asrs r4, r5, #0x10
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	asrs r7, r0, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	mov sl, r5
	ldr r5, [sp, #0x18]
	cmp r0, #0
	beq _08044250
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _0804425E
	.align 2, 0
_08044240: .4byte gCurTask
_08044244: .4byte 0x03000024
_08044248: .4byte gUnknown_03001D10
_0804424C: .4byte 0x0300001C
_08044250:
	str r6, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
_0804425E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _080441C4
	asrs r4, r5, #0x10
	adds r0, r4, #6
	mov r1, sl
	asrs r5, r1, #0x10
	mov r6, r8
	ldrb r2, [r6, #0x17]
	movs r1, #0
	str r1, [sp]
	ldr r1, _080442FC @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _0804430C
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	ldr r0, _08044300 @ =gCurTask
	ldr r0, [r0]
	ldr r5, _08044304 @ =sub_8044350
	str r5, [r0, #8]
	mov r0, r8
	bl sub_80443B0
	bl sub_80C8504
	movs r0, #0
	mov sb, r0
_080442AC:
	mov r1, sb
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r6, [r0]
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080442EA
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080442EA
	ldr r0, [r6, #0x6c]
	ldr r4, [sp, #0xc]
	cmp r0, r4
	bne _080442EA
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80213B0
	adds r0, r6, #0
	bl sub_800E67C
	ldr r1, _08044308 @ =0xFFFFFD00
	adds r0, r1, #0
	ldrh r2, [r6, #0x1a]
	adds r0, r0, r2
	strh r0, [r6, #0x1a]
_080442EA:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _080442AC
	b _0804433E
	.align 2, 0
_080442FC: .4byte sub_805217C
_08044300: .4byte gCurTask
_08044304: .4byte sub_8044350
_08044308: .4byte 0xFFFFFD00
_0804430C:
	ldr r6, [sp, #0xc]
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r1, #0x12
	ldrsh r3, [r6, r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _08044338
	mov r2, r8
	ldrb r0, [r2, #0x14]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _08044334 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804433E
	.align 2, 0
_08044334: .4byte gCurTask
_08044338:
	mov r0, r8
	bl sub_80446E0
_0804433E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044350
sub_8044350: @ 0x08044350
	push {r4, r5, lr}
	ldr r3, _0804437C @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	ldrb r1, [r4, #0x19]
	ldrh r0, [r4, #0x10]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044380
	ldrb r0, [r4, #0x14]
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _080443AA
	.align 2, 0
_0804437C: .4byte gCurTask
_08044380:
	movs r5, #0
	b _08044390
_08044384:
	adds r0, r4, #0
	bl sub_8044544
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08044390:
	ldrb r0, [r4, #0x19]
	cmp r5, r0
	blo _08044384
	ldrh r1, [r4, #0x10]
	cmp r1, #0x1d
	bhi _080443A4
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080443AA
_080443A4:
	adds r0, r4, #0
	bl sub_804464C
_080443AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80443B0
sub_80443B0: @ 0x080443B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c0
	adds r5, r0, #0
	ldr r0, [r5, #4]
	mov sb, r0
	ldr r2, [r5, #8]
	mov r8, r2
	adds r7, r5, #0
	adds r7, #0x54
	adds r4, r5, #0
	adds r4, #0xc4
	ldr r1, _080443E4 @ =gUnknown_080D014C
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r0, sp
	bl sub_80CA3B0
	ldr r0, _080443E8 @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0x10
	movs r3, #0
	b _0804442E
	.align 2, 0
_080443E4: .4byte gUnknown_080D014C
_080443E8: .4byte gUnknown_030008A0
_080443EC:
	lsls r1, r3, #4
	mov r2, sp
	adds r0, r2, r1
	ldr r0, [r0]
	add r0, sb
	stm r7!, {r0}
	add r0, sp, #8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #1
	strh r0, [r4]
	adds r4, #2
	add r0, sp, #4
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, r8
	stm r7!, {r0}
	add r0, sp, #0xc
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x40
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
_0804442E:
	ldrb r0, [r5, #0x18]
	cmp r3, r0
	blo _080443EC
	movs r0, #2
	strb r0, [r5, #0x19]
	ldr r0, _0804444C @ =0x0000024A
	bl sub_8003DF0
	add sp, #0x1c0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804444C: .4byte 0x0000024A

	thumb_func_start sub_8044450
sub_8044450: @ 0x08044450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c4
	str r0, [sp, #0x1c0]
	adds r0, #0x54
	mov sb, r0
	ldr r4, [sp, #0x1c0]
	adds r4, #0xc4
	ldr r1, [sp, #0x1c0]
	adds r1, #0x8c
	mov r8, r1
	ldr r6, [sp, #0x1c0]
	adds r6, #0xe0
	ldr r1, _080444C8 @ =gUnknown_080D014C
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r0, sp
	bl sub_80CA3B0
	ldr r0, _080444CC @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x10
	movs r5, #0
	add r2, sp, #8
	mov sl, r2
	add r7, sp, #0xc
	mov ip, r7
_0804448E:
	lsls r3, r5, #4
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	ldr r0, [r0]
	asrs r0, r0, #1
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	movs r7, #0xff
	ands r1, r7
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	add r3, ip
	ldr r0, [r3]
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #0x40
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	cmp r5, #6
	bls _0804448E
	b _08044526
	.align 2, 0
_080444C8: .4byte gUnknown_080D014C
_080444CC: .4byte gUnknown_030008A0
_080444D0:
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	ldm r2!, {r0}
	mov r4, r8
	adds r4, #4
	mov r8, r4
	subs r4, #4
	stm r4!, {r0}
	lsls r3, r5, #4
	mov r7, sl
	adds r0, r7, r3
	ldr r0, [r0]
	asrs r0, r0, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xff
	ands r2, r1
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	mov r4, sb
	adds r4, #4
	mov sb, r4
	subs r4, #4
	ldm r4!, {r0}
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	add r3, ip
	ldr r0, [r3]
	adds r0, r0, r2
	strh r0, [r6]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, #0x40
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_08044526:
	ldr r0, [sp, #0x1c0]
	ldrb r0, [r0, #0x18]
	cmp r5, r0
	blo _080444D0
	movs r0, #1
	ldr r1, [sp, #0x1c0]
	strb r0, [r1, #0x19]
	add sp, #0x1c4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044544
sub_8044544: @ 0x08044544
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x54
	adds r4, r6, #0
	adds r4, #0xc4
	ldrh r0, [r6, #0x10]
	cmp r0, #0xf
	bls _08044618
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bne _08044574
	ldrb r0, [r6, #0x18]
	cmp r0, #0xe
	beq _08044574
	movs r0, #0xe
	strb r0, [r6, #0x18]
	movs r0, #0x50
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl sub_8044450
_08044574:
	ldr r3, _08044614 @ =gUnknown_082B48B4
	lsls r0, r7, #0x10
	asrs r0, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x40
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #9
	movs r0, #0x60
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080445D0
	movs r7, #0xa
_080445D0:
	movs r2, #0
	ldrb r0, [r6, #0x18]
	cmp r2, r0
	bhs _08044646
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
_080445DC:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r6, #0x18]
	cmp r2, r0
	blo _080445DC
	b _08044646
	.align 2, 0
_08044614: .4byte gUnknown_082B48B4
_08044618:
	movs r2, #0
	b _08044640
_0804461C:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08044640:
	ldrb r1, [r6, #0x18]
	cmp r2, r1
	blo _0804461C
_08044646:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804464C
sub_804464C: @ 0x0804464C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x54
	ldr r1, _080446D8 @ =gUnknown_080D030C
	mov r0, sp
	movs r2, #0x1c
	bl sub_80CA3B0
	movs r0, #0
	mov r8, r0
	ldrb r0, [r5, #0x18]
	cmp r0, #0xe
	bne _08044672
	movs r1, #1
	mov r8, r1
_08044672:
	movs r4, #0
_08044674:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r0, r5, r0
	bl sub_80BF44C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08044674
	movs r4, #0
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	bhs _080446CC
	ldr r6, _080446DC @ =gUnknown_03001D10
_08044696:
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	add r1, r8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xfc
	adds r0, r5, r0
	ldm r7!, {r1}
	asrs r1, r1, #8
	ldr r2, [r6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldm r7!, {r1}
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl sub_80C033C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	blo _08044696
_080446CC:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080446D8: .4byte gUnknown_080D030C
_080446DC: .4byte gUnknown_03001D10

	thumb_func_start sub_80446E0
sub_80446E0: @ 0x080446E0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	ldr r3, _08044714 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r4, #0x12]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _08044708
	adds r0, r4, #0
	bl sub_80BF44C
_08044708:
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044714: .4byte gUnknown_03001D10

	thumb_func_start sub_8044718
sub_8044718: @ 0x08044718
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable107
CreateEntity_Interactable107: @ 0x0804472C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080447E4 @ =sub_8044840
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080447E8 @ =sub_8044C34
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r2, #0xc0
	lsls r2, r2, #0x12
	add r2, sb
	movs r7, #0
	movs r0, #0
	mov sl, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r0, [r1]
	strb r0, [r2, #8]
	strb r6, [r2, #9]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0xc]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	ldr r4, _080447EC @ =gUnknown_030008A0
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _080447F0 @ =gUnknown_030015C0
	adds r0, r0, r3
	str r0, [r2, #0x18]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	strb r7, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	ldr r5, _080447F4 @ =0x03000020
	add r5, sb
	movs r0, #0x24
	bl sub_80C3224
	str r0, [r5]
	ldrb r0, [r4, #0xa]
	cmp r0, #9
	bne _080447FC
	ldr r0, _080447F8 @ =0x000003E5
	b _080447FE
	.align 2, 0
_080447E4: .4byte sub_8044840
_080447E8: .4byte sub_8044C34
_080447EC: .4byte gUnknown_030008A0
_080447F0: .4byte gUnknown_030015C0
_080447F4: .4byte 0x03000020
_080447F8: .4byte 0x000003E5
_080447FC:
	ldr r0, _0804483C @ =0x000003CE
_080447FE:
	strh r0, [r5, #0xc]
	strb r7, [r5, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804483C: .4byte 0x000003CE

	thumb_func_start sub_8044840
sub_8044840: @ 0x08044840
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080448B8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4]
	mov sb, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl sub_8044AA0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0804488E
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080448BC @ =sub_80448D8
	str r0, [r1, #8]
_0804488E:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080448C0 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _080448C4
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _080448CC
	.align 2, 0
_080448B8: .4byte gCurTask
_080448BC: .4byte sub_80448D8
_080448C0: .4byte gUnknown_03001D10
_080448C4:
	strb r5, [r4, #0x16]
	adds r0, r4, #0
	bl sub_8044C00
_080448CC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80448D8
sub_80448D8: @ 0x080448D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08044974 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldr r5, [r6, #0xc]
	lsls r5, r5, #8
	lsrs r5, r5, #0x10
	ldr r4, [r6, #0x10]
	ldr r0, _08044978 @ =0xFFFFFE80
	adds r4, r4, r0
	str r4, [r6, #0x10]
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x18]
	movs r1, #0
	bl sub_8044AA0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [r6, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	ldr r0, _0804497C @ =0xFFF00000
	adds r4, r4, r0
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804494C
	ldr r0, _08044980 @ =0x0000FF80
	strh r0, [r6, #0x14]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08044984 @ =sub_80449A4
	str r0, [r1, #8]
_0804494C:
	ldr r0, _08044988 @ =gUnknown_03001D10
	ldr r2, [r0]
	subs r2, r5, r2
	ldr r3, [r0, #4]
	mov r1, r8
	subs r3, r1, r3
	adds r0, r5, #0
	bl sub_802C140
	cmp r0, #0
	bne _0804498C
	ldrb r0, [r6, #8]
	mov r1, sl
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08044994
	.align 2, 0
_08044974: .4byte gCurTask
_08044978: .4byte 0xFFFFFE80
_0804497C: .4byte 0xFFF00000
_08044980: .4byte 0x0000FF80
_08044984: .4byte sub_80449A4
_08044988: .4byte gUnknown_03001D10
_0804498C:
	strb r7, [r6, #0x16]
	adds r0, r6, #0
	bl sub_8044C00
_08044994:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80449A4
sub_80449A4: @ 0x080449A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080449E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	mov sb, r0
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #8
	movs r5, #0
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_8004E20
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080449EC
	ldrh r0, [r4, #0x14]
	adds r0, #8
	b _080449F0
	.align 2, 0
_080449E8: .4byte gCurTask
_080449EC:
	ldrh r0, [r4, #0x14]
	subs r0, #8
_080449F0:
	strh r0, [r4, #0x14]
	movs r0, #0x14
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl sub_8044AA0
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08044A8C
	movs r1, #0
	movs r2, #0x20
	adds r2, r2, r4
	mov r8, r2
	ldr r7, _08044A48 @ =gUnknown_030015C0
_08044A34:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08044A4C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08044A50
	.align 2, 0
_08044A48: .4byte gUnknown_030015C0
_08044A4C:
	ldr r0, _08044A84 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08044A50:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	mov r0, r8
	adds r1, r6, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08044A34
	ldrb r0, [r4, #8]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _08044A88 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044A94
	.align 2, 0
_08044A84: .4byte gUnknown_030008A0
_08044A88: .4byte gCurTask
_08044A8C:
	strb r5, [r4, #0x16]
	adds r0, r4, #0
	bl sub_8044C00
_08044A94:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044AA0
sub_8044AA0: @ 0x08044AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08044AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x20
	adds r7, r1, r0
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	movs r1, #0
	mov sb, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08044AE8
	movs r0, #0
	b _08044BEE
	.align 2, 0
_08044AE4: .4byte gCurTask
_08044AE8:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044B02
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _08044B02
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08044B02:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	movs r5, #1
	str r5, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08044B4C
	adds r1, r2, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, _08044B48 @ =0xFFFFFF00
	ands r0, r1
	subs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	mov r1, sl
	lsls r0, r1
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _08044BEC
	.align 2, 0
_08044B48: .4byte 0xFFFFFF00
_08044B4C:
	movs r5, #0x80
	lsls r5, r5, #0xa
	ands r5, r2
	cmp r5, #0
	beq _08044B6A
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
	b _08044BEC
_08044B6A:
	movs r3, #0x80
	lsls r3, r3, #0xb
	ands r3, r2
	cmp r3, #0
	beq _08044BA8
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08044B90
	strh r5, [r4, #0x18]
_08044B90:
	strh r5, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	ldr r1, _08044BA4 @ =0xFFFFFF00
	b _08044BE0
	.align 2, 0
_08044BA4: .4byte 0xFFFFFF00
_08044BA8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08044BEC
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08044BCE
	strh r3, [r4, #0x18]
_08044BCE:
	strh r3, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044BEC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
_08044BE0:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08044BEC:
	mov r0, sb
_08044BEE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8044C00
sub_8044C00: @ 0x08044C00
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08044C30 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044C30: .4byte gUnknown_03001D10

	thumb_func_start sub_8044C34
sub_8044C34: @ 0x08044C34
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable108
CreateEntity_Interactable108: @ 0x08044C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08044D5C @ =sub_8044DD4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08044D60 @ =sub_8045134
	str r1, [sp]
	movs r1, #0xa8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _08044D64 @ =0x03000080
	add r3, r8
	mov sl, r3
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sb
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	mov r1, sb
	ldrb r3, [r1]
	lsls r3, r3, #3
	lsls r4, r4, #8
	adds r3, r3, r4
	str r3, [r7, #0xc]
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x10]
	ldr r0, _08044D68 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _08044D6C @ =gUnknown_030015C0
	adds r0, r0, r4
	str r0, [r7, #0x74]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r7, #0x78]
	mov r4, sb
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r2, r1
	strh r1, [r7, #0x16]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x1a]
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r3, r1
	strh r1, [r7, #0x14]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	lsls r3, r3, #8
	str r3, [r7, #0xc]
	lsls r2, r2, #8
	str r2, [r7, #0x10]
	movs r0, #0x20
	str r0, [r7, #0x6c]
	str r0, [r7, #0x70]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	movs r1, #0x18
	bl sub_80C8960
	ldr r2, _08044D70 @ =0x03000068
	add r2, r8
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08044D2A
	movs r0, #0x10
	strh r0, [r2]
_08044D2A:
	mov r1, sb
	ldrb r0, [r1, #5]
	lsls r0, r0, #2
	strh r0, [r7, #0x20]
	movs r3, #0x14
	ldrsh r0, [r7, r3]
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r7, #0x1c]
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	strh r0, [r7, #0x22]
	ldrh r0, [r2]
	cmp r0, #1
	bls _08044D74
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_80C8960
	b _08044D78
	.align 2, 0
_08044D5C: .4byte sub_8044DD4
_08044D60: .4byte sub_8045134
_08044D64: .4byte 0x03000080
_08044D68: .4byte gUnknown_030008A0
_08044D6C: .4byte gUnknown_030015C0
_08044D70: .4byte 0x03000068
_08044D74:
	movs r0, #0x80
	lsls r0, r0, #2
_08044D78:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	bl sub_8045060
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sb
	strb r0, [r4]
	movs r0, #0xc
	bl sub_80C3224
	mov r1, sl
	str r0, [r1]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x14]
	movs r0, #0xdf
	lsls r0, r0, #2
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	mov r0, sl
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044DD4
sub_8044DD4: @ 0x08044DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r0, [r6]
	str r0, [sp, #0xc]
	ldr r1, _08044E9C @ =0x03000080
	adds r1, r1, r2
	mov sb, r1
	ldr r3, [r6, #0xc]
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	ldr r1, [r6, #0x10]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldr r0, _08044EA0 @ =0x03000068
	adds r2, r2, r0
	ldrh r2, [r2]
	str r2, [sp, #0x10]
	movs r0, #0
	str r0, [r6, #0x7c]
	movs r2, #0
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x1c]
_08044E18:
	lsls r0, r2, #2
	adds r1, r6, #0
	adds r1, #0x74
	adds r1, r1, r0
	ldr r5, [r1]
	movs r1, #0
	mov r8, r1
	movs r7, #0
	ldrh r0, [r6, #0x14]
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #1
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x10]
	cmp r8, r2
	bhs _08044EB8
_08044E3A:
	lsls r1, r7, #2
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x70]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	ldr r3, [sp, #0x14]
	asrs r2, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08044EA4
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08044EA4
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #4]
	mov r2, sb
	str r2, [r5, #0x6c]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80450D8
	movs r3, #1
	mov r8, r3
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bne _08044EB8
	str r5, [r6, #0x7c]
	b _08044EB8
	.align 2, 0
_08044E98: .4byte gCurTask
_08044E9C: .4byte 0x03000080
_08044EA0: .4byte 0x03000068
_08044EA4:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp, #0x10]
	cmp r7, r2
	blo _08044E3A
_08044EB8:
	mov r3, r8
	cmp r3, #0
	bne _08044ED8
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044ED8
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08044ED8
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	str r3, [r5, #0x6c]
_08044ED8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08044E18
	ldr r2, [sp, #0x1c]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	ldr r3, _08044F14 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08044F5C
	movs r1, #0
	ldr r5, _08044F18 @ =gUnknown_030015C0
_08044F00:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08044F1C
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08044F20
	.align 2, 0
_08044F14: .4byte gUnknown_03001D10
_08044F18: .4byte gUnknown_030015C0
_08044F1C:
	ldr r0, _08044F54 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08044F20:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	mov sl, r0
	mov r0, sb
	mov r1, sl
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08044F00
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r0, _08044F58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044F62
	.align 2, 0
_08044F54: .4byte gUnknown_030008A0
_08044F58: .4byte gCurTask
_08044F5C:
	adds r0, r6, #0
	bl sub_8044F74
_08044F62:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044F74
sub_8044F74: @ 0x08044F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x80
	adds r0, r0, r5
	mov r8, r0
	ldr r2, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _08044FD0 @ =gUnknown_03001D10
	ldr r1, [r1, #4]
	subs r0, r0, r1
	adds r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r2, #0
	beq _08044FD4
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x1c]
	subs r4, r1, r0
	cmp r4, #0
	bge _08044FB2
	subs r4, r0, r1
_08044FB2:
	movs r0, #0x20
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl sub_80C8960
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	subs r4, r0, r4
	cmp r4, #0
	blt _08044FD4
	cmp r4, r0
	ble _08044FD6
	adds r4, r0, #0
	b _08044FD6
	.align 2, 0
_08044FD0: .4byte gUnknown_03001D10
_08044FD4:
	movs r4, #0
_08044FD6:
	ldr r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	cmp r4, r1
	bge _08044FEC
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _08044FE8
	str r4, [r5, #0x6c]
	b _08044FF4
_08044FE8:
	subs r0, r1, #4
	b _08044FF2
_08044FEC:
	cmp r4, r1
	ble _08044FF4
	adds r0, r1, #4
_08044FF2:
	str r0, [r5, #0x6c]
_08044FF4:
	ldr r4, [r5, #0x70]
	cmp r4, #0x1f
	bgt _08044FFE
	movs r4, #0x20
	b _08045008
_08044FFE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	ble _08045008
	adds r4, r0, #0
_08045008:
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	adds r7, r0, #0
	adds r7, #0xc
	movs r6, #0
	cmp r6, sl
	bge _0804504E
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
_0804501E:
	ldr r0, _0804505C @ =gUnknown_03001D10
	ldr r0, [r0]
	subs r0, r7, r0
	mov r1, r8
	strh r0, [r1, #0x10]
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	muls r0, r4, r0
	asrs r0, r0, #8
	add r0, sb
	mov r1, r8
	strh r0, [r1, #0x12]
	mov r0, r8
	bl sub_80C033C
	adds r7, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sl
	blt _0804501E
_0804504E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804505C: .4byte gUnknown_03001D10

	thumb_func_start sub_8045060
sub_8045060: @ 0x08045060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r0, #0x68
	ldrh r5, [r0]
	movs r1, #0
	movs r4, #0
	cmp r4, r5
	bge _080450AE
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldr r2, _080450D4 @ =gUnknown_082B48B4
	mov sb, r2
_08045080:
	lsls r3, r4, #2
	add r3, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	add r0, sb
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r7, ip
	movs r6, #0x22
	ldrsh r0, [r7, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r7, #0x24]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r4, r5
	blt _08045080
_080450AE:
	cmp r4, #0xf
	bhi _080450C8
	mov r1, ip
	adds r1, #0x28
	movs r2, #0
_080450B8:
	lsls r0, r4, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _080450B8
_080450C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080450D4: .4byte gUnknown_082B48B4

	thumb_func_start sub_80450D8
sub_80450D8: @ 0x080450D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	lsls r2, r0, #1
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0x14
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _080450F4
	movs r0, #0
_080450F4:
	lsls r0, r0, #9
	adds r1, r2, #0
	bl sub_80C8960
	ldr r1, _08045130 @ =gUnknown_082B48B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #6
	ldr r1, [r4, #0x6c]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045130: .4byte gUnknown_082B48B4

	thumb_func_start sub_8045134
sub_8045134: @ 0x08045134
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08045148 @ =0x03000080
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_08045148: .4byte 0x03000080

	thumb_func_start CreateEntity_Interactable109
CreateEntity_Interactable109: @ 0x0804514C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804522C @ =sub_80452AC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08045230 @ =sub_804564C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0
	mov r8, r0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r1, sb
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0xc]
	mov r3, sb
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x10]
	strh r1, [r7, #0x34]
	strh r2, [r7, #0x36]
	movs r4, #4
	ldrsb r4, [r3, r4]
	lsls r4, r4, #3
	adds r4, r2, r4
	lsls r4, r4, #8
	str r4, [r7, #0x1c]
	ldrb r5, [r3, #6]
	lsls r5, r5, #0xa
	str r5, [r7, #0x20]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #8
	str r0, [r7, #0x24]
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xa
	str r3, [r7, #0x28]
	adds r0, r0, r3
	str r0, [r7, #0x2c]
	adds r4, r4, r5
	str r4, [r7, #0x30]
	ldr r0, _08045234 @ =gUnknown_030008A0
	ldrb r3, [r0, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r4, _08045238 @ =gUnknown_030015C0
	adds r0, r0, r4
	str r0, [r7, #0x38]
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	movs r0, #0
	mov r3, sb
	bl sub_804DC38
	strh r0, [r7, #0x16]
	mov r6, r8
	strh r6, [r7, #0x14]
	ldr r0, [r7, #0xc]
	lsls r0, r0, #8
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #8
	str r0, [r7, #0x10]
	movs r2, #0
	mov r1, sb
	ldrb r0, [r1, #7]
	movs r1, #1
	b _0804524C
	.align 2, 0
_0804522C: .4byte sub_80452AC
_08045230: .4byte sub_804564C
_08045234: .4byte gUnknown_030008A0
_08045238: .4byte gUnknown_030015C0
_0804523C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bhi _08045252
	mov r3, sb
	ldrb r0, [r3, #7]
	asrs r0, r2
_0804524C:
	ands r0, r1
	cmp r0, #0
	beq _0804523C
_08045252:
	adds r0, r2, #1
	movs r5, #0
	strb r0, [r7, #0x18]
	movs r6, #2
	rsbs r6, r6, #0
	adds r0, r6, #0
	mov r1, sb
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x40
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r7, #0x40]
	movs r1, #0
	ldr r0, _080452A8 @ =0x00000399
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080452A8: .4byte 0x00000399

	thumb_func_start sub_80452AC
sub_80452AC: @ 0x080452AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _080452F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	str r0, [sp, #4]
	ldr r2, _080452F4 @ =0x03000040
	adds r2, r2, r1
	mov r8, r2
	ldr r4, [r5, #0xc]
	ldr r3, [r5, #0x10]
	mov ip, r3
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _08045300
	ldr r0, _080452F8 @ =gUnknown_030008A0
	ldrb r1, [r5, #0x18]
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	ldrh r6, [r5, #0x16]
	adds r0, r0, r6
	ldr r2, _080452FC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #0x14]
	b _08045312
	.align 2, 0
_080452F0: .4byte gCurTask
_080452F4: .4byte 0x03000040
_080452F8: .4byte gUnknown_030008A0
_080452FC: .4byte 0x000003FF
_08045300:
	ldr r0, _08045448 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	ldrh r0, [r5, #0x16]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
_08045312:
	ldr r6, [r5, #0xc]
	ldr r3, [r5, #0x10]
	mov sb, r3
	ldr r3, _0804544C @ =gUnknown_082B48B4
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x28]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r2, [r5, #0x2c]
	adds r2, r2, r0
	str r2, [r5, #0xc]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x20]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, [r5, #0x30]
	adds r1, r1, r0
	str r1, [r5, #0x10]
	subs r6, r6, r2
	mov r0, sb
	subs r0, r0, r1
	mov sb, r0
	movs r7, #0
	movs r1, #0x38
	adds r1, r1, r5
	mov sl, r1
	asrs r4, r4, #8
	str r4, [sp, #8]
	mov r2, ip
	asrs r2, r2, #8
	str r2, [sp, #0xc]
_08045360:
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804537E
	cmp r1, #8
	beq _0804537E
	cmp r1, #0x10
	beq _0804537E
	b _08045554
_0804537E:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0804538A
	b _08045554
_0804538A:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080453AE
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080453AE
	ldr r0, [r4, #0x10]
	subs r0, r0, r6
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	mov r1, sb
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080453AE:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08045400
	adds r0, r4, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _08045400
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045400
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _080453E8
	b _08045554
_080453E8:
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #2
	bl sub_8020CE0
	cmp r0, #0
	beq _08045400
	b _08045554
_08045400:
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r1, #0
	ands r2, r3
	cmp r2, #0
	beq _08045464
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldrh r0, [r4, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804545C
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _08045454
	ldr r2, _08045450 @ =0xFFFFE000
	adds r0, r1, r2
	b _0804545A
	.align 2, 0
_08045448: .4byte gUnknown_030008A0
_0804544C: .4byte gUnknown_082B48B4
_08045450: .4byte 0xFFFFE000
_08045454:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, r3
_0804545A:
	str r0, [r4, #0x14]
_0804545C:
	adds r0, r4, #0
	bl sub_801226C
	b _080454D8
_08045464:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08045488
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	b _080454D8
_08045488:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080454EE
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080454D2
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _080454BE
	movs r3, #0x90
	lsls r3, r3, #5
	adds r0, r1, r3
	b _080454C4
_080454BE:
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r1, r2
_080454C4:
	str r0, [r4, #0x10]
	rsbs r0, r6, #0
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_080454D2:
	adds r0, r4, #0
	bl sub_801246C
_080454D8:
	cmp r0, #0
	bge _08045554
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045554
	adds r0, r4, #0
	bl sub_8008E38
	b _08045554
_080454EE:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08045554
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804553A
	ldr r1, [r5, #0xc]
	ldr r3, _08045520 @ =0xFFFFF000
	adds r0, r1, r3
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _08045528
	ldr r2, _08045524 @ =0xFFFFEE00
	adds r0, r1, r2
	b _0804552C
	.align 2, 0
_08045520: .4byte 0xFFFFF000
_08045524: .4byte 0xFFFFEE00
_08045528:
	ldr r3, _08045598 @ =0xFFFFEF00
	adds r0, r1, r3
_0804552C:
	str r0, [r4, #0x10]
	rsbs r0, r6, #0
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0804553A:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _08045554
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045554
	adds r0, r4, #0
	bl sub_8008E38
_08045554:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bhi _08045560
	b _08045360
_08045560:
	movs r6, #0x34
	ldrsh r0, [r5, r6]
	movs r2, #0x36
	ldrsh r1, [r5, r2]
	ldr r3, _0804559C @ =gUnknown_03001D10
	ldr r2, [r3]
	ldr r6, [sp, #8]
	subs r2, r6, r2
	ldr r3, [r3, #4]
	ldr r6, [sp, #0xc]
	subs r3, r6, r3
	bl sub_802C140
	cmp r0, #0
	bne _080455E4
	movs r1, #0
	ldr r7, _080455A0 @ =gUnknown_030015C0
_08045582:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _080455A4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080455A8
	.align 2, 0
_08045598: .4byte 0xFFFFEF00
_0804559C: .4byte gUnknown_03001D10
_080455A0: .4byte gUnknown_030015C0
_080455A4:
	ldr r0, _080455DC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080455A8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	mov r0, r8
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08045582
	ldrb r0, [r5, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r0, _080455E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080455EA
	.align 2, 0
_080455DC: .4byte gUnknown_030008A0
_080455E0: .4byte gCurTask
_080455E4:
	adds r0, r5, #0
	bl sub_80455FC
_080455EA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80455FC
sub_80455FC: @ 0x080455FC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x40
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08045644 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, [r4, #8]
	ldr r1, _08045648 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045644: .4byte gUnknown_03001D10
_08045648: .4byte 0xFFFFFBFF

	thumb_func_start sub_804564C
sub_804564C: @ 0x0804564C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x40]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable110
CreateEntity_Interactable110: @ 0x08045660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08045754 @ =sub_804576C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08045758 @ =sub_8045BE4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	movs r1, #0
	mov sl, r1
	movs r7, #0
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r0, sb
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0xa]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r2, #0xc]
	ldr r0, _0804575C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, _08045760 @ =gUnknown_030015C0
	adds r0, r0, r3
	str r0, [r2, #0x14]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r2, #0x18]
	mov r0, sl
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	mov r1, sb
	ldrb r0, [r1, #5]
	strb r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08045764 @ =0x0300001C
	adds r4, r4, r0
	movs r0, #0x20
	bl sub_80C3224
	str r0, [r4]
	ldr r0, _08045768 @ =0x00000396
	strh r0, [r4, #0xc]
	mov r1, sl
	strb r1, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045754: .4byte sub_804576C
_08045758: .4byte sub_8045BE4
_0804575C: .4byte gUnknown_030008A0
_08045760: .4byte gUnknown_030015C0
_08045764: .4byte 0x0300001C
_08045768: .4byte 0x00000396

	thumb_func_start sub_804576C
sub_804576C: @ 0x0804576C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08045850 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, _08045854 @ =0x0300001C
	adds r0, r0, r1
	mov sb, r0
	ldrh r0, [r6, #0xa]
	mov sl, r0
	ldrh r0, [r6, #0xc]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, _08045858 @ =0x03000014
	adds r0, r1, r0
	str r0, [sp, #0xc]
_080457A2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080457D2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8045A5C
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080457D2
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r5
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_080457D2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080457A2
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _08045802
	ldr r0, _0804585C @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08045802
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080457F8
	movs r0, #2
_080457F8:
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
_08045802:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08045816
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	bne _08045826
	movs r0, #1
	strb r0, [r6, #0xe]
	movs r0, #0x1e
	strb r0, [r6, #0xf]
_08045816:
	ldrb r0, [r6, #0xe]
	mov r1, sl
	lsls r1, r1, #0x10
	mov r8, r1
	ldr r1, [sp, #4]
	lsls r7, r1, #0x10
	cmp r0, #0
	beq _080458AA
_08045826:
	ldrb r0, [r6, #0xf]
	subs r0, #1
	strb r0, [r6, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r0, [sp, #4]
	lsls r7, r0, #0x10
	cmp r1, #0
	bne _080458AA
	movs r0, #0x18
	strb r0, [r6, #0xf]
	strb r1, [r6, #0xe]
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08045860
	movs r0, #1
	b _08045864
	.align 2, 0
_08045850: .4byte gCurTask
_08045854: .4byte 0x0300001C
_08045858: .4byte 0x03000014
_0804585C: .4byte gUnknown_030008A0
_08045860:
	movs r0, #3
	mov r1, sb
_08045864:
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
	ldr r0, _080458D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080458D8 @ =sub_80458FC
	str r0, [r1, #8]
	ldr r0, _080458DC @ =0x00000259
	bl sub_8003DF0
	movs r5, #0
	mov r0, sl
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #4]
	lsls r7, r1, #0x10
_08045886:
	ldr r0, [sp, #8]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080458A0
	lsls r0, r5, #2
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C080
_080458A0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045886
_080458AA:
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	ldr r3, _080458E0 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _080458E4
	ldrb r0, [r6, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _080458D4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080458EA
	.align 2, 0
_080458D4: .4byte gCurTask
_080458D8: .4byte sub_80458FC
_080458DC: .4byte 0x00000259
_080458E0: .4byte gUnknown_03001D10
_080458E4:
	adds r0, r6, #0
	bl sub_8045B40
_080458EA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80458FC
sub_80458FC: @ 0x080458FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804595C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	str r0, [sp]
	ldr r2, _08045960 @ =0x0300001C
	adds r2, r2, r1
	mov r8, r2
	ldrh r3, [r5, #0xa]
	mov sb, r3
	ldrh r0, [r5, #0xc]
	mov sl, r0
	movs r6, #0
_08045928:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r4, r0, r1
	ldr r0, [r4]
	bl sub_802C080
	cmp r0, #0
	bne _08045984
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_8045A5C
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _08045984
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #1
	bne _08045964
	ldr r0, [r4]
	bl sub_80213F0
	b _08045984
	.align 2, 0
_0804595C: .4byte gCurTask
_08045960: .4byte 0x0300001C
_08045964:
	ldr r2, [r4]
	ldrb r1, [r5, #0x10]
	lsls r1, r1, #5
	ldr r3, _080459B0 @ =0xFFFFFA00
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2, #0x1a]
	ldr r2, [r4]
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	bl sub_8009E8C
_08045984:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08045928
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080459CA
	ldr r0, _080459B4 @ =gUnknown_030008A0
	ldr r1, [r0, #0x1c]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080459B8
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0x1a]
	b _080459BC
	.align 2, 0
_080459B0: .4byte 0xFFFFFA00
_080459B4: .4byte gUnknown_030008A0
_080459B8:
	mov r2, r8
	strb r1, [r2, #0x1a]
_080459BC:
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3, #0x1b]
	ldr r0, _080459F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080459FC @ =sub_804576C
	str r0, [r1, #8]
_080459CA:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08045A44
	movs r1, #0
	ldr r6, _08045A00 @ =gUnknown_030015C0
_080459E2:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08045A04
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08045A08
	.align 2, 0
_080459F8: .4byte gCurTask
_080459FC: .4byte sub_804576C
_08045A00: .4byte gUnknown_030015C0
_08045A04:
	ldr r0, _08045A3C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08045A08:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r0, r6
	mov r0, r8
	adds r1, r7, #0
	bl sub_80213B0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080459E2
	ldrb r0, [r5, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08045A40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08045A4A
	.align 2, 0
_08045A3C: .4byte gUnknown_030008A0
_08045A40: .4byte gCurTask
_08045A44:
	adds r0, r5, #0
	bl sub_8045B40
_08045A4A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8045A5C
sub_8045A5C: @ 0x08045A5C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x1c
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	movs r5, #0xc
	ldrsh r2, [r0, r5]
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08045A94
	adds r1, r2, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08045B36
_08045A94:
	movs r5, #0x80
	lsls r5, r5, #0xa
	ands r5, r2
	cmp r5, #0
	beq _08045AB2
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
	b _08045B36
_08045AB2:
	movs r3, #0x80
	lsls r3, r3, #0xb
	ands r3, r2
	cmp r3, #0
	beq _08045AF0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08045ADA
	strh r5, [r4, #0x18]
_08045ADA:
	strh r5, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08045B36
	ldr r0, [r4, #0x10]
	ldr r5, _08045AEC @ =0xFFFFFF00
	b _08045B2A
	.align 2, 0
_08045AEC: .4byte 0xFFFFFF00
_08045AF0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08045B36
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08045B18
	strh r3, [r4, #0x18]
_08045B18:
	strh r3, [r4, #0x1c]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08045B36
	ldr r0, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #1
_08045B2A:
	adds r0, r0, r5
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08045B36:
	adds r0, r2, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8045B40
sub_8045B40: @ 0x08045B40
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x1c
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	beq _08045B78
	ldr r0, _08045B70 @ =gUnknown_030008A0
	ldr r2, [r0, #0x1c]
	movs r0, #2
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _08045B5E
	ldr r1, _08045B74 @ =0x0000FFFF
_08045B5E:
	movs r0, #4
	ands r2, r0
	movs r0, #1
	cmp r2, #0
	beq _08045B6A
	ldr r0, _08045B74 @ =0x0000FFFF
_08045B6A:
	adds r5, r0, #0
	b _08045B7C
	.align 2, 0
_08045B70: .4byte gUnknown_030008A0
_08045B74: .4byte 0x0000FFFF
_08045B78:
	movs r1, #0
	movs r5, #0
_08045B7C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	ldr r2, _08045BDC @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r3, #0xc]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	subs r2, r0, r2
	strh r2, [r4, #0x12]
	adds r1, #0xf
	lsls r1, r1, #0x10
	movs r0, #0x87
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08045BD6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbd
	bgt _08045BD6
	cmp r0, #0
	ble _08045BD6
	adds r0, r4, #0
	bl sub_80BF44C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, [r4, #8]
	ldr r1, _08045BE0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
_08045BD6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045BDC: .4byte gUnknown_03001D10
_08045BE0: .4byte 0xFFFFFBFF

	thumb_func_start sub_8045BE4
sub_8045BE4: @ 0x08045BE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable111
CreateEntity_Interactable111: @ 0x08045BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08045D8C @ =gUnknown_080D0328
	add r0, sp, #4
	movs r2, #8
	bl sub_80CA3B0
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, _08045D90 @ =gUnknown_080D0330
	movs r2, #0x80
	bl sub_80CA3B0
	ldr r0, _08045D94 @ =sub_8045DE4
	movs r1, #0xc4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08045D98 @ =sub_804646C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r1, #0
	mov r8, r1
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sl
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x18]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x1a]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	str r0, [r7, #0x10]
	movs r0, #0x1a
	ldrsh r2, [r7, r0]
	lsls r2, r2, #8
	str r2, [r7, #0x14]
	ldr r1, _08045D9C @ =0x030000E0
	adds r5, r3, r1
	ldr r0, _08045DA0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _08045DA4 @ =gUnknown_030015C0
	adds r0, r0, r4
	str r0, [r5]
	ldr r1, _08045DA8 @ =0x030000E4
	adds r3, r3, r1
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r3]
	mov r3, r8
	strb r3, [r7, #0xa]
	mov r1, sl
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r7, #0x1c]
	movs r4, #0
	movs r3, #0xe
	add r3, sp
	mov r8, r3
	add r6, sp, #0x10
	mov r5, sp
	adds r5, #0x12
_08045CD2:
	lsls r3, r4, #3
	adds r2, r7, #0
	adds r2, #0x60
	adds r2, r2, r3
	mov r1, sb
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r7, #0
	adds r2, #0x64
	adds r2, r2, r3
	mov r1, r8
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r7, #0x1c]
	adds r0, r0, r1
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r7, r1
	adds r0, r6, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x20]
	adds r3, r5, r3
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x22]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _08045CD2
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sl
	strb r0, [r1]
	add r0, sp, #4
	ldrb r0, [r0, #1]
	bl sub_80C3224
	adds r5, r0, #0
	movs r4, #0
	movs r3, #0
	mov r8, r3
	movs r6, #0
_08045D3A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe8
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08045DAC @ =0x00000393
	strh r0, [r2, #0xc]
	lsls r1, r4, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	cmp r4, #0
	bne _08045D66
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
_08045D66:
	strh r0, [r2, #0x14]
	strh r6, [r2, #0xe]
	strh r6, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	cmp r4, #0
	bne _08045DB0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	b _08045DB2
	.align 2, 0
_08045D8C: .4byte gUnknown_080D0328
_08045D90: .4byte gUnknown_080D0330
_08045D94: .4byte sub_8045DE4
_08045D98: .4byte sub_804646C
_08045D9C: .4byte 0x030000E0
_08045DA0: .4byte gUnknown_030008A0
_08045DA4: .4byte gUnknown_030015C0
_08045DA8: .4byte 0x030000E4
_08045DAC: .4byte 0x00000393
_08045DB0:
	str r6, [r2, #8]
_08045DB2:
	cmp r4, #0
	beq _08045DC4
	mov r0, sp
	adds r0, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r5, r5, r0
	b _08045DCA
_08045DC4:
	adds r0, r2, #0
	bl sub_80BF44C
_08045DCA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08045D3A
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8045DE4
sub_8045DE4: @ 0x08045DE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp, #8]
	ldr r2, _08045F10 @ =0x030000E8
	adds r2, r2, r1
	mov r8, r2
	ldr r7, [r6, #0x18]
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r5, #0
	ldr r3, _08045F14 @ =0x030000E0
	adds r3, r1, r3
	str r3, [sp, #0xc]
	lsls r0, r7, #0x10
	mov sl, r0
	asrs r0, r7, #0x10
	lsls r0, r0, #0x10
	mov sb, r0
_08045E1E:
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0xe0
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r2, [r4, #4]
	ldr r3, _08045F18 @ =0x01000100
	ands r3, r2
	lsls r1, r7, #0x10
	str r1, [sp, #0x10]
	asrs r0, r7, #0x10
	str r0, [sp, #0x14]
	cmp r3, #0
	bne _08045E86
	ldr r1, [r4]
	ldr r0, _08045F1C @ =sub_801D73C
	cmp r1, r0
	beq _08045E86
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08045E86
	str r4, [sp]
	str r3, [sp, #4]
	mov r0, r8
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08045E86
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r0, r8
	str r0, [r4, #0x6c]
	lsls r1, r5, #1
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r6, #0xa]
	orrs r0, r1
	strb r0, [r6, #0xa]
_08045E86:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045E1E
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08045EA4
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003DF0
	ldr r0, _08045F0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045F24 @ =sub_8045F48
	str r0, [r1, #8]
_08045EA4:
	ldr r1, [sp, #0x10]
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x14]
	ldr r3, _08045F28 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08045F30
	movs r5, #0
	movs r7, #0
_08045EC0:
	lsls r0, r5, #2
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldr r4, [r0]
	ldrb r1, [r6, #0xa]
	lsls r0, r5, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08045EEC
	adds r0, r4, #0
	bl sub_8009E8C
	ldr r0, [r4, #4]
	ldr r1, _08045F2C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r7, [r4, #0x18]
_08045EEC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045EC0
	ldrb r0, [r6, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08045F36
	.align 2, 0
_08045F0C: .4byte gCurTask
_08045F10: .4byte 0x030000E8
_08045F14: .4byte 0x030000E0
_08045F18: .4byte 0x01000100
_08045F1C: .4byte sub_801D73C
_08045F20: .4byte 0x00000256
_08045F24: .4byte sub_8045F48
_08045F28: .4byte gUnknown_03001D10
_08045F2C: .4byte 0xEFFFFFFF
_08045F30:
	adds r0, r6, #0
	bl sub_8046438
_08045F36:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8045F48
sub_8045F48: @ 0x08045F48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08046028 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r2, _0804602C @ =0x030000E8
	adds r2, r1, r2
	str r2, [sp, #0xc]
	mov r4, r8
	ldr r5, [r4, #0x10]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r2, _08046030 @ =0xFFFFFA00
	adds r6, r6, r2
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r2, _08046034 @ =0x030000E0
	adds r2, r1, r2
	str r2, [sp, #0x1c]
_08045F88:
	ldr r4, [sp, #0x14]
	lsls r0, r4, #2
	mov r1, r8
	adds r1, #0xe0
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08046038 @ =0x01000100
	ands r0, r1
	ldr r2, [sp, #0x14]
	lsls r7, r2, #1
	cmp r0, #0
	beq _08045FB4
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
_08045FB4:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	movs r3, #3
	lsls r3, r7
	ands r3, r0
	cmp r3, #0
	bne _0804603C
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ldr r2, _08046038 @ =0x01000100
	ands r0, r2
	asrs r2, r5, #8
	mov sl, r2
	asrs r2, r6, #8
	mov sb, r2
	cmp r0, #0
	beq _08045FD8
	b _08046160
_08045FD8:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08045FE2
	b _08046160
_08045FE2:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08045FEC
	b _08046160
_08045FEC:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046000
	b _08046160
_08046000:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7
	mov r4, r8
	ldrb r1, [r4, #0xa]
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08046160
	.align 2, 0
_08046028: .4byte gCurTask
_0804602C: .4byte 0x030000E8
_08046030: .4byte 0xFFFFFA00
_08046034: .4byte 0x030000E0
_08046038: .4byte 0x01000100
_0804603C:
	movs r2, #1
	lsls r2, r7
	ands r0, r2
	asrs r1, r5, #8
	mov sl, r1
	asrs r1, r6, #8
	mov sb, r1
	cmp r3, r0
	beq _08046050
	b _08046160
_08046050:
	ldr r0, [r4, #0x14]
	ldr r1, _080460A8 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804606A
	ldr r0, [r4, #0x6c]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0804607A
_0804606A:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	bics r1, r2
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	mov r2, r8
	strb r1, [r2, #0xa]
_0804607A:
	ldr r1, [r4]
	ldr r0, _080460AC @ =sub_800D944
	cmp r1, r0
	beq _08046088
	ldr r0, _080460B0 @ =sub_800EB58
	cmp r1, r0
	beq _080460B8
_08046088:
	ldr r0, [r4, #4]
	ldr r1, _080460B4 @ =0xEFFFFFDF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	b _08046158
	.align 2, 0
_080460A8: .4byte 0xFFFFFA00
_080460AC: .4byte sub_800D944
_080460B0: .4byte sub_800EB58
_080460B4: .4byte 0xEFFFFFDF
_080460B8:
	ldr r0, _08046104 @ =gUnknown_030008A0
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08046128
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldr r0, [r4, #4]
	ldr r1, _08046108 @ =0xEFFFFFD7
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046110
	adds r0, r4, #0
	ldr r1, _0804610C @ =sub_8006250
	bl sub_800D87C
	asrs r2, r5, #8
	mov sl, r2
	asrs r4, r6, #8
	mov sb, r4
	b _08046160
	.align 2, 0
_08046104: .4byte gUnknown_030008A0
_08046108: .4byte 0xEFFFFFD7
_0804610C: .4byte sub_8006250
_08046110:
	adds r0, r4, #0
	ldr r1, _08046124 @ =sub_8006310
	bl sub_800D87C
	asrs r0, r5, #8
	mov sl, r0
	asrs r1, r6, #8
	mov sb, r1
	b _08046160
	.align 2, 0
_08046124: .4byte sub_8006310
_08046128:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0804614C
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r2, _08046148 @ =0xFFFFFC00
	b _08046154
	.align 2, 0
_08046148: .4byte 0xFFFFFC00
_0804614C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
_08046154:
	adds r0, r0, r2
	str r0, [r4, #0x10]
_08046158:
	asrs r4, r5, #8
	mov sl, r4
	asrs r0, r6, #8
	mov sb, r0
_08046160:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _08046170
	b _08045F88
_08046170:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldr r2, [sp, #0x10]
	lsls r7, r2, #0x10
	asrs r4, r2, #0x10
	str r4, [sp, #0x18]
	cmp r6, r0
	bge _080461E8
	movs r0, #0
	str r0, [sp, #0x14]
	movs r5, #0
_08046186:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]
	mov r0, r8
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080461C0
	adds r0, r4, #0
	bl sub_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_080461C0:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bls _08046186
	movs r0, #0x5a
	mov r4, r8
	strh r0, [r4, #0xc]
	ldr r0, _0804626C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08046270 @ =sub_8046298
	str r0, [r1, #8]
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08046278 @ =0x00000299
	bl sub_8003DF0
_080461E8:
	asrs r0, r7, #0x10
	ldr r1, [sp, #0x18]
	ldr r3, _0804627C @ =gUnknown_03001D10
	ldr r2, [r3]
	mov r4, sl
	subs r2, r4, r2
	ldr r3, [r3, #4]
	mov r4, sb
	subs r3, r4, r3
	bl sub_802C140
	cmp r0, #0
	bne _08046280
	movs r0, #0
	str r0, [sp, #0x14]
	movs r5, #0
_08046208:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]
	mov r0, r8
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08046242
	adds r0, r4, #0
	bl sub_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_08046242:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bls _08046208
	mov r4, r8
	ldrb r0, [r4, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _0804626C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	b _08046286
	.align 2, 0
_08046268: .4byte 0xEFFFFFFF
_0804626C: .4byte gCurTask
_08046270: .4byte sub_8046298
_08046274: .4byte 0x00000256
_08046278: .4byte 0x00000299
_0804627C: .4byte gUnknown_03001D10
_08046280:
	mov r0, r8
	bl sub_8046438
_08046286:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8046298
sub_8046298: @ 0x08046298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, _080462CC @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r5, [r6]
	ldr r1, _080462D0 @ =gUnknown_080D03B0
	mov r0, sp
	movs r2, #0x10
	bl sub_80CA3B0
	ldrh r0, [r6, #0xc]
	subs r0, #1
	strh r0, [r6, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080462D4
	ldrb r0, [r6, #8]
	strb r0, [r5]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804633C
	.align 2, 0
_080462CC: .4byte gCurTask
_080462D0: .4byte gUnknown_080D03B0
_080462D4:
	adds r0, r6, #0
	bl sub_8046358
	ldrh r1, [r6, #0xc]
	cmp r1, #0x1d
	bhi _080462E8
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804633C
_080462E8:
	ldr r1, _08046344 @ =0x03000110
	adds r0, r4, r1
	bl sub_80BF44C
	ldr r1, _08046348 @ =0x03000138
	adds r0, r4, r1
	bl sub_80BF44C
	ldr r1, _0804634C @ =0x03000160
	adds r0, r4, r1
	bl sub_80BF44C
	movs r5, #0
	ldr r0, _08046350 @ =0x03000060
	adds r4, r4, r0
	ldr r7, _08046354 @ =gUnknown_03001D10
_08046308:
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xe8
	adds r0, r6, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r7]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	adds r4, #8
	bl sub_80C033C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08046308
_0804633C:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046344: .4byte 0x03000110
_08046348: .4byte 0x03000138
_0804634C: .4byte 0x03000160
_08046350: .4byte 0x03000060
_08046354: .4byte gUnknown_03001D10

	thumb_func_start sub_8046358
sub_8046358: @ 0x08046358
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x60
	adds r4, r0, #0
	adds r4, #0x20
	ldrh r0, [r0, #0xc]
	cmp r0, #0x19
	bls _08046408
	subs r0, #0x1a
	ldr r3, _08046404 @ =gUnknown_082B48B4
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x40
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #9
	movs r0, #0x60
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080463C6
	movs r1, #0xa
_080463C6:
	movs r2, #0
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
_080463CC:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r5, #8
	adds r4, #4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _080463CC
	b _08046432
	.align 2, 0
_08046404: .4byte gUnknown_082B48B4
_08046408:
	movs r2, #0
_0804640A:
	ldrh r0, [r4, #2]
	adds r0, #0x20
	strh r0, [r4, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r5, #8
	adds r4, #4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804640A
_08046432:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8046438
sub_8046438: @ 0x08046438
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xe8
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldr r3, _08046468 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046468: .4byte gUnknown_03001D10

	thumb_func_start sub_804646C
sub_804646C: @ 0x0804646C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08046480 @ =0x030000E8
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_08046480: .4byte 0x030000E8

	thumb_func_start sub_8046484
sub_8046484: @ 0x08046484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804655C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08046560 @ =0x0300000C
	adds r2, r2, r0
	mov r8, r2
	ldr r0, [r1, #0x64]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #8]
	ldr r0, [r1, #0x68]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	bl sub_80467F0
	ldr r0, _08046564 @ =gUnknown_030008A0
	mov sl, r0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08046568 @ =gUnknown_030015C0
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r0, r2
	mov r1, sl
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08046574
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	bne _0804650E
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_0804650E:
	ldr r3, [r7, #4]
	mov r0, sb
	ands r3, r0
	cmp r3, #0
	bne _08046530
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_08046530:
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _080465E0
_08046538:
	ldr r1, _0804656C @ =0x00000207
	adds r0, r5, #0
	bl sub_8004E98
	adds r0, r5, #0
	bl sub_8016F28
	ldr r1, _08046564 @ =gUnknown_030008A0
	movs r0, #5
	strb r0, [r1, #4]
	ldr r1, _08046570 @ =sub_800613C
	adds r0, r5, #0
	bl sub_800D87C
	bl sub_80469AC
	b _080465E0
	.align 2, 0
_0804655C: .4byte gCurTask
_08046560: .4byte 0x0300000C
_08046564: .4byte gUnknown_030008A0
_08046568: .4byte gUnknown_030015C0
_0804656C: .4byte 0x00000207
_08046570: .4byte sub_800613C
_08046574:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080465E0
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080465E0
	ldr r1, _080465CC @ =0x00000207
	adds r0, r5, #0
	bl sub_8004E98
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #5
	mov r1, sl
	strb r0, [r1, #4]
	ldrb r0, [r1, #3]
	cmp r0, #4
	beq _080465D4
	ldr r4, _080465D0 @ =sub_800613C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800D87C
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_800D87C
	b _080465DC
	.align 2, 0
_080465CC: .4byte 0x00000207
_080465D0: .4byte sub_800613C
_080465D4:
	ldr r1, _080465F0 @ =sub_8005BD4
	adds r0, r5, #0
	bl sub_800D87C
_080465DC:
	bl sub_80469AC
_080465E0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080465F0: .4byte sub_8005BD4

	thumb_func_start sub_80465F4
sub_80465F4: @ 0x080465F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08046630 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046634 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x54
	adds r3, r0, r1
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	bgt _08046614
	b _08046710
_08046614:
	ldr r7, _08046638 @ =gUnknown_030008A0
	ldrb r0, [r7, #3]
	cmp r0, #4
	bne _08046680
	movs r5, #0
	ldr r6, _0804663C @ =gUnknown_030015C0
_08046620:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08046640
	ldr r0, _08046638 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804664A
	.align 2, 0
_08046630: .4byte gCurTask
_08046634: .4byte 0x0300000C
_08046638: .4byte gUnknown_030008A0
_0804663C: .4byte gUnknown_030015C0
_08046640:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804664A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r4, #0
	ldr r1, _08046678 @ =sub_8005E80
	bl sub_800D87C
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046620
	ldr r0, _0804667C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08046754
	.align 2, 0
_08046678: .4byte sub_8005E80
_0804667C: .4byte gCurTask
_08046680:
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _080466F4 @ =gUnknown_030015C0
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r6, r0, #0x1c
	adds r4, #0x2b
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	bl sub_8003D2C
	ldr r1, _080466F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080466FC @ =gUnknown_03003F94
	ldr r0, _08046700 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08046704 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08046708 @ =gUnknown_03006208
	ldr r0, _0804670C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	ldrb r1, [r7, #6]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bls _080466EA
	adds r0, r6, #0
	adds r6, r5, #0
	adds r5, r0, #0
_080466EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8053128
	b _08046754
	.align 2, 0
_080466F4: .4byte gUnknown_030015C0
_080466F8: .4byte 0x0000FFFF
_080466FC: .4byte gUnknown_03003F94
_08046700: .4byte gUnknown_03003D20
_08046704: .4byte gUnknown_03006840
_08046708: .4byte gUnknown_03006208
_0804670C: .4byte gUnknown_03003F34
_08046710:
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	ldr r4, _0804675C @ =0x0000FFF0
_08046718:
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _0804672E
	strh r4, [r2, #0x12]
_0804672E:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0x3f
	bhi _0804673E
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r1, r0
	strb r0, [r2, #0x1c]
_0804673E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046718
	bl sub_80469E0
_08046754:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804675C: .4byte 0x0000FFF0

	thumb_func_start sub_8046760
sub_8046760: @ 0x08046760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r6, #0
	movs r5, #0
	movs r0, #0xed
	lsls r0, r0, #2
	mov sl, r0
	mov r0, sl
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r7, #0xc0
	lsls r7, r7, #3
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r4, #0x28
	movs r0, #6
	bl sub_80C3224
	str r0, [r4]
	mov r0, sl
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	subs r0, #9
	strb r0, [r4, #0x1b]
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	mov r0, r8
	str r0, [r4, #0x20]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80467F0
sub_80467F0: @ 0x080467F0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804681C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r6, [r5]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x68]
	bl sub_802C198
	cmp r0, #0
	bne _08046820
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804685A
	.align 2, 0
_0804681C: .4byte gCurTask
_08046820:
	ldr r0, [r5, #0x64]
	ldr r2, _08046860 @ =gUnknown_03001D10
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r5, #0x68]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
_08046838:
	strh r7, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046838
_0804685A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046860: .4byte gUnknown_03001D10

	thumb_func_start sub_8046864
sub_8046864: @ 0x08046864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _080468D4 @ =sub_8046484
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080468D8 @ =sub_80468E4
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r2, r1, r0
	str r4, [r3, #0x5c]
	adds r0, #0x54
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	str r6, [r3, #0x64]
	str r5, [r3, #0x68]
	movs r1, #0
_0804689E:
	strh r6, [r2, #0x10]
	strh r5, [r2, #0x12]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804689E
	adds r0, r3, #0
	adds r0, #0xc
	bl sub_8046760
	ldr r0, _080468DC @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _080468C8
	ldr r0, _080468E0 @ =sub_8046900
	str r0, [r7, #8]
_080468C8:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080468D4: .4byte sub_8046484
_080468D8: .4byte sub_80468E4
_080468DC: .4byte gUnknown_030008A0
_080468E0: .4byte sub_8046900

	thumb_func_start sub_80468E4
sub_80468E4: @ 0x080468E4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl sub_80C3304
	ldr r0, [r4, #0x34]
	bl sub_80C3304
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8046900
sub_8046900: @ 0x08046900
	push {r4, lr}
	ldr r4, _08046920 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08046924
	adds r0, r2, #0
	bl TaskDestroy
	b _0804693C
	.align 2, 0
_08046920: .4byte gCurTask
_08046924:
	cmp r0, #2
	bne _08046938
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046938
	ldr r1, [r4]
	ldr r0, _08046944 @ =sub_8046948
	str r0, [r1, #8]
_08046938:
	bl sub_80467F0
_0804693C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046944: .4byte sub_8046948

	thumb_func_start sub_8046948
sub_8046948: @ 0x08046948
	push {r4, r5, lr}
	ldr r5, _08046974 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804696A
	movs r0, #0
	strh r0, [r4, #8]
	ldr r1, [r5]
	ldr r0, _08046978 @ =sub_804697C
	str r0, [r1, #8]
_0804696A:
	bl sub_80467F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046974: .4byte gCurTask
_08046978: .4byte sub_804697C

	thumb_func_start sub_804697C
sub_804697C: @ 0x0804697C
	push {lr}
	ldr r0, _080469A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0804699C
	ldr r0, _080469A8 @ =sub_8046484
	str r0, [r2, #8]
_0804699C:
	bl sub_80467F0
	pop {r0}
	bx r0
	.align 2, 0
_080469A4: .4byte gCurTask
_080469A8: .4byte sub_8046484

	thumb_func_start sub_80469AC
sub_80469AC: @ 0x080469AC
	ldr r3, _080469D0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _080469D4 @ =0x03000060
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080469D8 @ =0x0300000C
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0x1a]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r1, [r3]
	ldr r0, _080469DC @ =sub_80465F4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080469D0: .4byte gCurTask
_080469D4: .4byte 0x03000060
_080469D8: .4byte 0x0300000C
_080469DC: .4byte sub_80465F4

	thumb_func_start sub_80469E0
sub_80469E0: @ 0x080469E0
	push {r4, r5, lr}
	ldr r0, _08046A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046A3C @ =0x0300000C
	adds r4, r0, r1
	ldrh r2, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08046A32
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08046A32
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08046A32
	movs r5, #0
_08046A14:
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046A14
_08046A32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046A38: .4byte gCurTask
_08046A3C: .4byte 0x0300000C

	thumb_func_start CreateEntity_Interactable112
CreateEntity_Interactable112: @ 0x08046A40
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08046B00 @ =sub_8046B1C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08046B04 @ =sub_8046FAC
	str r1, [sp]
	movs r1, #0xd0
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r6, r8
	ldrb r2, [r6, #7]
	movs r1, #1
	ands r1, r2
	ldr r6, _08046B08 @ =0x030000BC
	adds r2, r3, r6
	strh r1, [r2]
	ldr r2, _08046B0C @ =0x030000BE
	adds r1, r3, r2
	mov r6, sl
	strh r6, [r1]
	adds r2, #4
	adds r1, r3, r2
	mov r6, sb
	strb r6, [r1]
	adds r2, #1
	adds r1, r3, r2
	strb r6, [r1]
	ldr r6, _08046B10 @ =0x030000C0
	adds r2, r3, r6
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08046B14 @ =0x030000C1
	adds r2, r3, r1
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r6, #4
	adds r2, r3, r6
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r2]
	ldr r1, _08046B18 @ =0x030000C8
	adds r3, r3, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	str r1, [r3]
	bl sub_8046E20
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046B00: .4byte sub_8046B1C
_08046B04: .4byte sub_8046FAC
_08046B08: .4byte 0x030000BC
_08046B0C: .4byte 0x030000BE
_08046B10: .4byte 0x030000C0
_08046B14: .4byte 0x030000C1
_08046B18: .4byte 0x030000C8

	thumb_func_start sub_8046B1C
sub_8046B1C: @ 0x08046B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08046B50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08046B54 @ =0x03000034
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r2, _08046B58 @ =0x030000BC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08046B60
	ldr r3, _08046B5C @ =0x030000BE
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #6
	b _08046B68
	.align 2, 0
_08046B50: .4byte gCurTask
_08046B54: .4byte 0x03000034
_08046B58: .4byte 0x030000BC
_08046B5C: .4byte 0x030000BE
_08046B60:
	ldr r0, _08046BF0 @ =0x030000BE
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #6
_08046B68:
	strh r0, [r1]
	mov r3, r8
	adds r3, #0xbe
	ldrh r0, [r3]
	ldr r2, _08046BF4 @ =0x000003FF
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r3]
	ldrh r6, [r3]
	movs r1, #0
	ldr r7, _08046BF8 @ =gUnknown_082B48B4
	mov sb, r2
_08046B80:
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r1, r8
	adds r4, r1, r0
	lsls r0, r6, #1
	adds r0, r0, r7
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r2, #0x18
	lsls r0, r2, #4
	adds r0, r0, r2
	asrs r0, r0, #4
	strh r0, [r4]
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #2]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r0, r0, #2
	strh r0, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #6]
	adds r6, #0x80
	mov r2, sb
	ands r6, r2
	strh r6, [r4, #8]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #7
	ble _08046B80
	movs r1, #0
_08046BE0:
	lsls r0, r1, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _08046C00
	ldr r0, _08046BFC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08046C0A
	.align 2, 0
_08046BF0: .4byte 0x030000BE
_08046BF4: .4byte 0x000003FF
_08046BF8: .4byte gUnknown_082B48B4
_08046BFC: .4byte gUnknown_030008A0
_08046C00:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08046C0A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08046C70 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08046C30
	cmp r1, #8
	beq _08046C30
	cmp r1, #0x10
	beq _08046C30
	b _08046DEE
_08046C30:
	ldr r3, [sp, #0x14]
	asrs r4, r3, #0x10
	mov r0, r8
	adds r0, #0xc2
	adds r6, r0, r4
	ldrb r0, [r6]
	cmp r0, #0
	beq _08046C44
	subs r0, #1
	strb r0, [r6]
_08046C44:
	ldrb r0, [r6]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08046C5C
	ldr r1, [r5]
	ldr r0, _08046C74 @ =sub_800D944
	cmp r1, r0
	bne _08046C7C
_08046C5C:
	mov r0, r8
	adds r0, #0xc0
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08046C78 @ =0xCFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	b _08046DEE
	.align 2, 0
_08046C70: .4byte gUnknown_030015C0
_08046C74: .4byte sub_800D944
_08046C78: .4byte 0xCFFFFFFF
_08046C7C:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08046C88
	b _08046DEE
_08046C88:
	ldr r1, [r5]
	ldr r0, _08046D0C @ =sub_8008A8C
	cmp r1, r0
	bne _08046C92
	b _08046DEE
_08046C92:
	ldr r0, _08046D10 @ =sub_800ED80
	cmp r1, r0
	bne _08046C9A
	b _08046DEE
_08046C9A:
	ldr r0, _08046D14 @ =sub_800E5CC
	cmp r1, r0
	bne _08046D76
	mov r0, r8
	adds r0, #0xc0
	adds r3, r0, r4
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08046D76
	ldr r0, _08046D18 @ =gUnknown_030008A0
	ldrh r1, [r5, #0x20]
	ldrh r2, [r0, #0x14]
	ands r2, r1
	cmp r2, #0
	beq _08046D24
	movs r0, #0x1e
	strb r0, [r6]
	movs r0, #0xff
	strb r0, [r3]
	movs r0, #0x74
	bl sub_8003DF0
	adds r0, r5, #0
	bl sub_800D880
	ldr r0, [r5, #4]
	ldr r1, _08046D1C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r4, #0
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r5, #0x1c]
	mov r0, r8
	adds r0, #0xbc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08046CF4
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1c]
_08046CF4:
	adds r0, r5, #0
	bl sub_801479C
	adds r0, r5, #0
	adds r0, #0x26
	strb r4, [r0]
	adds r0, r5, #0
	ldr r1, _08046D20 @ =sub_800DB30
	bl sub_800D87C
	b _08046DEE
	.align 2, 0
_08046D0C: .4byte sub_8008A8C
_08046D10: .4byte sub_800ED80
_08046D14: .4byte sub_800E5CC
_08046D18: .4byte gUnknown_030008A0
_08046D1C: .4byte 0xEFFFFFFF
_08046D20: .4byte sub_800DB30
_08046D24:
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r3, r8
	adds r4, r3, r0
	ldr r1, _08046E14 @ =0x00000387
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	rsbs r0, r0, #0
	ldr r3, _08046E18 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r1, #0x8c
	strh r1, [r5, #0x30]
	lsrs r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xc4
	movs r3, #4
	ldrsh r1, [r4, r3]
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	mov r0, r8
	adds r0, #0xc8
	movs r3, #6
	ldrsh r1, [r4, r3]
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	strh r2, [r5, #0x1c]
_08046D76:
	movs r7, #0
	mov r0, r8
	adds r0, #0xc4
	str r0, [sp, #0x10]
	movs r1, #0xc8
	add r1, r8
	mov sl, r1
	ldr r2, [sp, #0x14]
	asrs r1, r2, #0x10
	subs r0, #4
	adds r0, r0, r1
	mov sb, r0
_08046D8E:
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r3, r8
	adds r4, r3, r0
	movs r0, #4
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x10]
	ldr r0, [r3]
	adds r6, r0, r1
	movs r0, #6
	ldrsh r1, [r4, r0]
	mov r3, sl
	ldr r0, [r3]
	adds r3, r0, r1
	ldr r1, [r5]
	ldr r0, _08046E1C @ =sub_800E5CC
	adds r4, r2, #0
	cmp r1, r0
	beq _08046DE0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08046DE0
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r2, r3, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08046DE0
	adds r0, r5, #0
	bl sub_800BA78
	mov r1, sb
	strb r7, [r1]
_08046DE0:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08046D8E
_08046DEE:
	ldr r3, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08046E00
	b _08046BE0
_08046E00:
	bl sub_8046EC0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046E14: .4byte 0x00000387
_08046E18: .4byte 0x000003FF
_08046E1C: .4byte sub_800E5CC

	thumb_func_start sub_8046E20
sub_8046E20: @ 0x08046E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #2
	bl sub_80C3224
	adds r1, r0, #0
	adds r6, r7, #0
	adds r6, #0xcc
	str r1, [r6]
	adds r0, r7, #0
	adds r0, #0xc
	str r1, [r7, #0xc]
	movs r4, #0
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	mov sl, r1
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r0, #0x20]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r0, #8]
	bl sub_80BF44C
	adds r0, r7, #0
	adds r0, #0x34
	ldr r1, [r6]
	adds r1, #0x20
	str r1, [r7, #0x34]
	movs r1, #0xe5
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x1a]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	mov r1, r8
	str r1, [r0, #0x20]
	str r5, [r0, #8]
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8046EC0
sub_8046EC0: @ 0x08046EC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08046F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r1, [r0]
	str r1, [sp]
	ldr r2, _08046F98 @ =0x030000C4
	adds r0, r3, r2
	ldr r2, [r0]
	ldr r4, _08046F9C @ =gUnknown_03001D10
	ldr r0, [r4]
	subs r2, r2, r0
	ldr r1, _08046FA0 @ =0x030000C8
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	ldr r0, _08046FA4 @ =0x0300000C
	adds r7, r3, r0
	adds r0, #0x28
	adds r6, r3, r0
	movs r3, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
_08046F0E:
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r1, sl
	adds r4, r1, r0
	ldrh r0, [r4, #4]
	add r0, sb
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #6]
	add r0, r8
	strh r0, [r6, #0x12]
	movs r2, #0x10
	ldrsh r0, [r6, r2]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _08046F56
	adds r0, r7, #0
	bl sub_80C033C
	ldrh r0, [r4]
	add r0, sb
	strh r0, [r7, #0x10]
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl sub_80C033C
	movs r0, #1
	str r0, [sp, #4]
_08046F56:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08046F0E
	mov r0, sl
	adds r0, #0xc0
	ldr r1, _08046FA8 @ =0x0000FFFF
	ldrh r0, [r0]
	cmp r0, r1
	bne _08046F84
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08046F84
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08046F94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08046F84:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046F94: .4byte gCurTask
_08046F98: .4byte 0x030000C4
_08046F9C: .4byte gUnknown_03001D10
_08046FA0: .4byte 0x030000C8
_08046FA4: .4byte 0x0300000C
_08046FA8: .4byte 0x0000FFFF

	thumb_func_start sub_8046FAC
sub_8046FAC: @ 0x08046FAC
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08046FC0 @ =0x030000CC
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_08046FC0: .4byte 0x030000CC

	thumb_func_start CreateEntity_Interactable113
CreateEntity_Interactable113: @ 0x08046FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804708C @ =sub_804713C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08047090 @ =sub_8047ADC
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	movs r0, #0
	mov r8, r0
	mov r1, ip
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r3, sb
	str r3, [r1]
	ldrb r0, [r3]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	ldr r3, _08047094 @ =0x0300005C
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, _08047098 @ =0x03000064
	adds r7, r2, r1
	strh r0, [r7]
	adds r3, #0xc
	adds r6, r2, r3
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	subs r3, #0xa
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, _0804709C @ =0x03000066
	adds r5, r2, r1
	strh r0, [r5]
	adds r3, #0xc
	adds r4, r2, r3
	strh r0, [r4]
	ldr r0, _080470A0 @ =0x0300006C
	adds r3, r2, r0
	ldrb r1, [r3]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _080470A4 @ =0x0300006E
	adds r0, r2, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sb
	ldrb r1, [r0, #7]
	movs r0, #3
	ands r0, r1
	ldr r3, _080470A8 @ =0x0300006F
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _080470AC @ =0x0300006D
	adds r2, r2, r0
	mov r3, r8
	strb r3, [r2]
	ldrb r1, [r1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080470B0
	ldrh r0, [r4]
	subs r0, #0x60
	strh r0, [r4]
	ldrh r0, [r5]
	subs r0, #0x10
	strh r0, [r5]
	b _080470D0
	.align 2, 0
_0804708C: .4byte sub_804713C
_08047090: .4byte sub_8047ADC
_08047094: .4byte 0x0300005C
_08047098: .4byte 0x03000064
_0804709C: .4byte 0x03000066
_080470A0: .4byte 0x0300006C
_080470A4: .4byte 0x0300006E
_080470A8: .4byte 0x0300006F
_080470AC: .4byte 0x0300006D
_080470B0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080470C4
	ldrh r0, [r6]
	adds r0, #0x60
	strh r0, [r6]
	ldrh r0, [r7]
	adds r0, #0x10
	b _080470CE
_080470C4:
	ldrh r0, [r6]
	subs r0, #0x60
	strh r0, [r6]
	ldrh r0, [r7]
	subs r0, #0x10
_080470CE:
	strh r0, [r7]
_080470D0:
	mov r3, ip
	adds r3, #0x68
	ldrh r1, [r3]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	mov r5, ip
	adds r5, #0x6a
	ldrh r0, [r5]
	mov r1, ip
	adds r1, #0x62
	strh r0, [r1]
	mov r4, ip
	adds r4, #0xc
	mov r0, ip
	adds r0, #0x5c
	ldr r2, _08047138 @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r0, ip
	adds r0, #0x5e
	ldr r1, [r2, #4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r4, #0x28
	ldr r1, [r2]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, sb
	strb r0, [r3]
	mov r0, ip
	bl sub_804783C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047138: .4byte gUnknown_03001D10

	thumb_func_start sub_804713C
sub_804713C: @ 0x0804713C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0804716C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08047170 @ =0x03000034
	adds r0, r1, r0
	str r0, [sp, #8]
	movs r1, #0
_0804715E:
	lsls r0, r1, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _08047178
	ldr r0, _08047174 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08047182
	.align 2, 0
_0804716C: .4byte gCurTask
_08047170: .4byte 0x03000034
_08047174: .4byte gUnknown_030008A0
_08047178:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08047182:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08047210 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	mov r1, sl
	adds r1, #0x6f
	str r1, [sp, #0x10]
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]
	movs r3, #0x6c
	add r3, sl
	mov sb, r3
	cmp r7, #0
	beq _080471B0
	b _08047654
_080471B0:
	mov r5, sl
	adds r5, #0x68
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r4, sl
	adds r4, #0x6a
	movs r0, #0
	ldrsh r2, [r4, r0]
	str r7, [sp]
	ldr r0, [sp, #8]
	adds r3, r6, #0
	bl sub_8020950
	mov r8, r0
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	movs r3, #1
	ands r3, r0
	mov ip, r4
	cmp r3, #0
	bne _080471DC
	b _08047364
_080471DC:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080471E6
	b _08047302
_080471E6:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080472AA
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #8]
	cmp r0, r3
	bne _080472AA
	movs r2, #0
	ldr r0, _08047214 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08047218
	movs r4, #0x30
	ldrsh r0, [r6, r4]
	cmp r0, #2
	beq _08047244
	cmp r0, #5
	bne _0804723A
	b _08047244
	.align 2, 0
_08047210: .4byte gUnknown_030015C0
_08047214: .4byte gUnknown_030008A0
_08047218:
	ldr r1, _080472C4 @ =gUnknown_080CE7D8
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r6, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #2
	beq _08047238
	cmp r0, #5
	bne _0804723A
_08047238:
	movs r2, #1
_0804723A:
	movs r5, #0x6c
	add r5, sl
	mov sb, r5
	cmp r2, #0
	beq _080472AA
_08047244:
	mov r3, sl
	adds r3, #0x6c
	ldrb r2, [r3]
	lsrs r1, r2, #6
	subs r1, #1
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0xc0
	movs r1, #0xc0
	ands r0, r1
	mov sb, r3
	cmp r0, #0
	bne _08047272
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
_08047272:
	ldr r0, [r6, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x14]
	mov r3, sb
	ldrb r0, [r3]
	movs r4, #0x40
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
	ldr r5, [sp, #0xc]
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x66
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _080472AA
	ldr r0, _080472C8 @ =0x0000025D
	bl sub_8003E0C
_080472AA:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r5, r8
	ands r2, r5
	cmp r2, #0
	beq _080472CC
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _080472EC
	.align 2, 0
_080472C4: .4byte gUnknown_080CE7D8
_080472C8: .4byte 0x0000025D
_080472CC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080472EC
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_080472EC:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	bne _080472FA
	b _08047654
_080472FA:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	b _08047654
_08047302:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r3, ip
	movs r4, #0
	ldrsh r2, [r3, r4]
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0804731E
	b _08047654
_0804731E:
	mov r0, sl
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	ldr r0, [r6, #0x14]
	ldr r5, _0804735C @ =0xFFFFF800
	adds r0, r0, r5
	str r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	adds r0, r6, #0
	ldr r1, _08047360 @ =sub_800DB30
	bl sub_800D87C
	b _08047654
	.align 2, 0
_0804735C: .4byte 0xFFFFF800
_08047360: .4byte sub_800DB30
_08047364:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r0, r8
	ands r2, r0
	cmp r2, #0
	beq _0804737E
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r3, [r6, #0x1a]
	b _0804739E
_0804737E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804739E
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_0804739E:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r1, r8
	ands r0, r1
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]
	movs r3, #0x6c
	add r3, sl
	mov sb, r3
	cmp r0, #0
	bne _080473B8
	b _08047654
_080473B8:
	ldrb r4, [r2]
	cmp r4, #2
	bne _080473C0
	b _080475E4
_080473C0:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047460
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080473DA
	b _08047508
_080473DA:
	mov r0, sl
	adds r0, #0x64
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _080473EC
	b _08047508
_080473EC:
	mov r4, r8
	lsrs r2, r4, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08047406
	b _0804751C
_08047406:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0804741C
	cmp r0, #8
	beq _0804741C
	cmp r0, #0x21
	beq _0804741C
	cmp r0, #9
	beq _0804741C
	b _0804751C
_0804741C:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047444
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_08047444:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r4, _0804745C @ =0xFFFFFF00
	b _080474E6
	.align 2, 0
_0804745C: .4byte 0xFFFFFF00
_08047460:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08047508
	mov r0, sl
	adds r0, #0x64
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _08047508
	lsrs r2, r2, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0804751C
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080474A6
	cmp r0, #8
	beq _080474A6
	cmp r0, #0x21
	beq _080474A6
	cmp r0, #9
	bne _0804751C
_080474A6:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080474CE
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_080474CE:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
_080474E6:
	adds r0, r0, r4
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	mov sb, r2
_080474F4:
	movs r0, #1
	ldr r5, [sp, #0xc]
	strb r0, [r5]
	ldr r0, _08047504 @ =0x0000025D
	bl sub_8003E0C
	b _0804751C
	.align 2, 0
_08047504: .4byte 0x0000025D
_08047508:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r1, #0x6c
	add r1, sl
	mov sb, r1
_0804751C:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804752E
	b _08047654
_0804752E:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _08047544
	cmp r0, #8
	beq _08047544
	cmp r0, #0x21
	beq _08047544
	cmp r0, #9
	beq _08047544
	b _08047654
_08047544:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047590
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047568
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654
_08047568:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047584
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_08047584:
	ldr r0, [r6, #0x10]
	ldr r2, _0804758C @ =0xFFFFFF00
	b _080475D6
	.align 2, 0
_0804758C: .4byte 0xFFFFFF00
_08047590:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047654
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080475B4
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654
_080475B4:
	ldr r4, [sp, #0x10]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080475D0
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_080475D0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
_080475D6:
	adds r0, r0, r2
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08047654
_080475E4:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r5, ip
	movs r0, #0
	ldrsh r2, [r5, r0]
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08047654
	mov r0, sl
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #7
	strh r0, [r6, #0x1c]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	ands r4, r0
	cmp r4, #0
	beq _08047624
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #1
	orrs r0, r1
	b _0804762C
_08047624:
	ldr r0, [r6, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0804762C:
	str r0, [r6, #4]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #9
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	ldr r1, _0804768C @ =sub_800891C
	bl sub_800D87C
	movs r4, #0x6c
	add r4, sl
	mov sb, r4
_08047654:
	ldr r5, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08047666
	b _0804715E
_08047666:
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047690
	mov r2, sl
	adds r2, #0x6a
	mov r0, sl
	adds r0, #0x66
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080476DA
	b _080476AE
	.align 2, 0
_0804768C: .4byte sub_800891C
_08047690:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080476BC
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080476DA
_080476AE:
	strh r3, [r2]
	ldr r0, _080476B8 @ =0x0000025D
	bl sub_8003E28
	b _080476DA
	.align 2, 0
_080476B8: .4byte 0x0000025D
_080476BC:
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _080476DA
	strh r3, [r2]
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
_080476DA:
	mov r3, sb
	ldrb r2, [r3]
	movs r0, #0x3f
	ands r0, r2
	cmp r0, #0
	beq _080476FA
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080476FA:
	mov r5, sb
	ldrh r0, [r5]
	ldr r1, _08047758 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804778A
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
	movs r0, #2
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x68
	movs r2, #0
	ldrsh r4, [r1, r2]
	mov r0, sl
	adds r0, #0x60
	movs r5, #0
	ldrsh r3, [r0, r5]
	subs r2, r4, r3
	adds r5, r1, #0
	mov r8, r0
	cmp r2, #0
	bge _08047732
	subs r2, r3, r4
_08047732:
	mov r1, sl
	adds r1, #0x6a
	movs r0, #0
	ldrsh r7, [r1, r0]
	mov r0, sl
	adds r0, #0x62
	movs r3, #0
	ldrsh r6, [r0, r3]
	subs r3, r7, r6
	mov ip, r1
	adds r4, r0, #0
	cmp r3, #0
	blt _0804775C
	cmp r2, r3
	bgt _08047762
	b _0804776E
	.align 2, 0
_08047754: .4byte 0x0000025D
_08047758: .4byte 0x0000FF3F
_0804775C:
	subs r0, r6, r7
	cmp r2, r0
	ble _0804776E
_08047762:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, r8
	movs r0, #0
	ldrsh r2, [r5, r0]
	b _08047778
_0804776E:
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r5, #0
	ldrsh r2, [r4, r5]
_08047778:
	subs r0, r1, r2
	cmp r0, #0
	bge _08047780
	subs r0, r2, r1
_08047780:
	asrs r0, r0, #2
	adds r0, #1
	mov r1, sl
	adds r1, #0x6e
	strb r0, [r1]
_0804778A:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	cmp r0, #2
	bne _08047828
	mov r2, sl
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x60]
	cmp r1, r0
	bne _080477A4
	movs r0, #0
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	b _08047828
_080477A4:
	mov r4, sl
	adds r4, #0x68
	mov r2, sl
	adds r2, #0x60
	ldrh r0, [r4]
	movs r5, #0
	ldrsh r3, [r4, r5]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r3, r1
	bge _080477CE
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	ble _080477E6
	b _080477E4
_080477CE:
	cmp r3, r1
	ble _080477E6
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080477E6
_080477E4:
	strh r3, [r4]
_080477E6:
	mov r3, sl
	adds r3, #0x6a
	mov r1, sl
	adds r1, #0x62
	ldrh r0, [r3]
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0
	ldrsh r6, [r1, r5]
	cmp r2, r6
	bge _08047810
	adds r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _08047828
	b _08047826
_08047810:
	cmp r2, r6
	ble _08047828
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bge _08047828
_08047826:
	strh r2, [r3]
_08047828:
	bl sub_80479B0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804783C
sub_804783C: @ 0x0804783C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0xc
	adds r5, r6, #0
	adds r5, #0x6f
	ldrb r1, [r5]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080478A2
	ldr r0, _08047870 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08047878
	movs r0, #3
	bl sub_80C3224
	str r0, [r6, #0xc]
	ldr r0, _08047874 @ =0x000003C9
	b _08047884
	.align 2, 0
_08047870: .4byte gUnknown_030008A0
_08047874: .4byte 0x000003C9
_08047878:
	movs r0, #9
	bl sub_80C3224
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047884:
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	adds r2, r6, #0
	adds r2, #0x6f
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080478D0
	movs r1, #0x80
	lsls r1, r1, #3
	mov r8, r1
	b _080478D0
_080478A2:
	ldr r0, _080478B8 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _080478C0
	movs r0, #3
	bl sub_80C3224
	str r0, [r6, #0xc]
	ldr r0, _080478BC @ =0x000003C9
	b _080478CC
	.align 2, 0
_080478B8: .4byte gUnknown_030008A0
_080478BC: .4byte 0x000003C9
_080478C0:
	movs r0, #9
	bl sub_80C3224
	str r0, [r6, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #2
_080478CC:
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
_080478D0:
	movs r7, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r4, r6, #0
	adds r4, #0x34
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047940
	ldr r1, _08047924 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _0804792C
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0804792C
	movs r0, #9
	bl sub_80C3224
	str r0, [r6, #0x34]
	ldr r0, _08047928 @ =0x000003C9
	b _08047938
	.align 2, 0
_08047924: .4byte gUnknown_030008A0
_08047928: .4byte 0x000003C9
_0804792C:
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xe7
	lsls r0, r0, #2
_08047938:
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	b _0804797A
_08047940:
	ldr r1, _08047960 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #6
	bne _08047968
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _08047968
	movs r0, #9
	bl sub_80C3224
	str r0, [r6, #0x34]
	ldr r0, _08047964 @ =0x000003C9
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	b _0804797A
	.align 2, 0
_08047960: .4byte gUnknown_030008A0
_08047964: .4byte 0x000003C9
_08047968:
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	movs r0, #0xe7
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
_0804797A:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80479B0
sub_80479B0: @ 0x080479B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08047A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08047A3C @ =0x03000034
	adds r6, r4, r1
	ldr r2, _08047A40 @ =0x03000068
	adds r0, r4, r2
	ldr r7, _08047A44 @ =gUnknown_03001D10
	ldr r1, [r7]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r3, _08047A48 @ =0x0300006A
	adds r0, r4, r3
	ldr r1, [r7, #4]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldr r0, _08047A4C @ =0x0300005C
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, #0xa
	adds r2, r2, r4
	mov sb, r2
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #4]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #4]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08047A98
	ldr r0, _08047A50 @ =0x0000025D
	bl sub_8003E28
	movs r1, #0
	ldr r7, _08047A54 @ =gUnknown_030015C0
_08047A22:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08047A58
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08047A5C
	.align 2, 0
_08047A38: .4byte gCurTask
_08047A3C: .4byte 0x03000034
_08047A40: .4byte 0x03000068
_08047A44: .4byte gUnknown_03001D10
_08047A48: .4byte 0x0300006A
_08047A4C: .4byte 0x0300005C
_08047A50: .4byte 0x0000025D
_08047A54: .4byte gUnknown_030015C0
_08047A58:
	ldr r0, _08047A90 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08047A5C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r7
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08047A22
	mov r2, sl
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, _08047A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08047AC8
	.align 2, 0
_08047A90: .4byte gUnknown_030008A0
_08047A94: .4byte gCurTask
_08047A98:
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
	ldr r0, _08047AD8 @ =0x0300000C
	adds r4, r4, r0
	ldr r1, [r7]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r7, #4]
	mov r3, sb
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_08047AC8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047AD8: .4byte 0x0300000C

	thumb_func_start sub_8047ADC
sub_8047ADC: @ 0x08047ADC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl sub_80C3304
	ldr r0, [r4, #0x34]
	bl sub_80C3304
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable114
CreateEntity_Interactable114: @ 0x08047AF8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08047BF0 @ =sub_8047C18
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08047BF4 @ =sub_8048618
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	mov r8, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	str r2, [r0, #0x68]
	mov r2, sl
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r4, _08047BF8 @ =0x0300006C
	adds r6, r3, r4
	strh r1, [r6]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r2, _08047BFC @ =0x0300006E
	adds r5, r3, r2
	strh r1, [r5]
	adds r4, #4
	adds r1, r3, r4
	mov r2, sb
	strb r2, [r1]
	adds r4, #1
	adds r1, r3, r4
	strb r2, [r1]
	mov r1, sl
	ldrb r2, [r1, #7]
	movs r1, #1
	ands r1, r2
	adds r4, #1
	adds r2, r3, r4
	strb r1, [r2]
	ldr r2, _08047C00 @ =0x03000073
	adds r1, r3, r2
	mov r4, sb
	strb r4, [r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	str r1, [r0, #0x7c]
	ldr r4, _08047C04 @ =0x03000080
	adds r2, r3, r4
	movs r4, #0
	ldrsh r1, [r5, r4]
	lsls r1, r1, #8
	str r1, [r2]
	ldr r2, _08047C08 @ =0x03000084
	adds r1, r3, r2
	mov r4, r8
	str r4, [r1]
	adds r2, #4
	adds r1, r3, r2
	str r4, [r1]
	ldr r4, _08047C0C @ =0x0300008C
	adds r1, r3, r4
	mov r2, r8
	str r2, [r1]
	adds r4, #4
	adds r1, r3, r4
	str r2, [r1]
	ldr r1, _08047C10 @ =0x03000034
	adds r3, r3, r1
	ldr r4, _08047C14 @ =gUnknown_03001D10
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #6]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #8]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, sl
	strb r1, [r4]
	bl sub_804831C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047BF0: .4byte sub_8047C18
_08047BF4: .4byte sub_8048618
_08047BF8: .4byte 0x0300006C
_08047BFC: .4byte 0x0300006E
_08047C00: .4byte 0x03000073
_08047C04: .4byte 0x03000080
_08047C08: .4byte 0x03000084
_08047C0C: .4byte 0x0300008C
_08047C10: .4byte 0x03000034
_08047C14: .4byte gUnknown_03001D10

	thumb_func_start sub_8047C18
sub_8047C18: @ 0x08047C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08047C5C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r0, [r5, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _08047C60 @ =0x03000080
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0
	mov r8, r1
_08047C4C:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08047C68
	ldr r0, _08047C64 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08047C72
	.align 2, 0
_08047C5C: .4byte gCurTask
_08047C60: .4byte 0x03000080
_08047C64: .4byte gUnknown_030008A0
_08047C68:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08047C72:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08047CE0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #1
	beq _08047D2C
	ldr r1, [r4]
	ldr r0, _08047CE4 @ =sub_8008A8C
	cmp r1, r0
	beq _08047D2C
	ldr r0, _08047CE8 @ =sub_800ED80
	cmp r1, r0
	beq _08047D2C
	mov r0, sl
	lsls r1, r0, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	str r4, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r6, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08047D2C
	adds r1, r5, #0
	adds r1, #0x71
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047D2C
	movs r2, #1
	strb r2, [r1]
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047CEC
	adds r1, #0x13
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08047CF8
	.align 2, 0
_08047CE0: .4byte gUnknown_030015C0
_08047CE4: .4byte sub_8008A8C
_08047CE8: .4byte sub_800ED80
_08047CEC:
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, _08047D54 @ =0xFFFFFB00
	str r0, [r1]
	ldr r0, [r4, #4]
	orrs r0, r2
_08047CF8:
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x88
	mov r1, r8
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r0, _08047D58 @ =0x0000039D
	strh r0, [r6, #0xc]
	movs r0, #1
	strb r0, [r6, #0x1a]
	adds r1, r5, #0
	adds r1, #0x90
	ldr r0, [r1]
	cmp r0, #0
	bne _08047D2C
	str r4, [r1]
	adds r0, r4, #0
	ldr r1, _08047D5C @ =sub_800DBE8
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
_08047D2C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08047C4C
	bl sub_8047D60
	bl sub_8048420
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047D54: .4byte 0xFFFFFB00
_08047D58: .4byte 0x0000039D
_08047D5C: .4byte sub_800DBE8

	thumb_func_start sub_8047D60
sub_8047D60: @ 0x08047D60
	push {r4, r5, lr}
	ldr r0, _08047D84 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0x71
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08047E64
	lsls r0, r0, #2
	ldr r1, _08047D88 @ =_08047D8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047D84: .4byte gCurTask
_08047D88: .4byte _08047D8C
_08047D8C: @ jump table
	.4byte _08047EE4 @ case 0
	.4byte _08047DA0 @ case 1
	.4byte _08047E0A @ case 2
	.4byte _08047E32 @ case 3
	.4byte _08047E5C @ case 4
_08047DA0:
	bl sub_8047EEC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08047DE4
	adds r2, r5, #0
	adds r2, #0x71
	movs r1, #0
	movs r0, #3
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x73
	strb r1, [r0]
	adds r0, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _08047DE0 @ =0x0000FFEC
	strh r0, [r1]
	adds r1, #2
	adds r0, #4
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_8048384
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_8003DF0
	b _08047EE4
	.align 2, 0
_08047DE0: .4byte 0x0000FFEC
_08047DE4:
	bl sub_8048044
	bl sub_8048218
	adds r1, r5, #0
	adds r1, #0x88
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r5, #0x7c]
	adds r2, r5, #0
	adds r2, #0x80
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	b _08047E64
_08047E0A:
	adds r1, r5, #0
	adds r1, #0x88
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r5, #0x7c]
	adds r2, r5, #0
	adds r2, #0x80
	adds r4, r5, #0
	adds r4, #0x8c
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	bl sub_8048044
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	b _08047E64
_08047E32:
	adds r4, r5, #0
	adds r4, #0x73
	ldrb r0, [r4]
	cmp r0, #0
	bne _08047E44
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_8003DF0
_08047E44:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08047EE4
	adds r1, r5, #0
	adds r1, #0x71
	movs r0, #4
	strb r0, [r1]
	b _08047EE4
_08047E5C:
	adds r0, r5, #0
	bl sub_804831C
	b _08047EE4
_08047E64:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _08047EE4
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r0, _08047E8C @ =sub_8008A8C
	cmp r1, r0
	beq _08047E80
	ldr r0, _08047E90 @ =sub_800ED80
	cmp r1, r0
	bne _08047E98
_08047E80:
	ldr r1, _08047E94 @ =0x0000025E
	adds r0, r2, #0
	bl sub_8004F10
	b _08047EE0
	.align 2, 0
_08047E8C: .4byte sub_8008A8C
_08047E90: .4byte sub_800ED80
_08047E94: .4byte 0x0000025E
_08047E98:
	ldr r1, _08047EDC @ =gUnknown_030008A0
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08047EAC
	ldrb r0, [r1, #3]
	cmp r0, #5
	beq _08047E80
_08047EAC:
	ldr r0, [r2, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08047EE0
	adds r1, r5, #0
	adds r1, #0xc
	ldr r0, [r2, #0x6c]
	cmp r0, r1
	bne _08047EE0
	ldr r0, [r5, #0x7c]
	str r0, [r2, #0x10]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x70
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x26
	strb r1, [r0]
	b _08047EE4
	.align 2, 0
_08047EDC: .4byte gUnknown_030008A0
_08047EE0:
	movs r0, #0
	str r0, [r4]
_08047EE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8047EEC
sub_8047EEC: @ 0x08047EEC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _08047F18 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08047F1C @ =0x03000070
	adds r0, r1, r2
	ldrb r2, [r0]
	add r0, sp, #8
	strb r2, [r0]
	ldr r3, _08047F20 @ =0x03000084
	adds r1, r1, r3
	ldr r0, [r1]
	cmp r0, #0
	bge _08047F24
	adds r1, r2, #0
	adds r1, #0x40
	b _08047F28
	.align 2, 0
_08047F18: .4byte gCurTask
_08047F1C: .4byte 0x03000070
_08047F20: .4byte 0x03000084
_08047F24:
	adds r1, r2, #0
	subs r1, #0x40
_08047F28:
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _08047F74 @ =gUnknown_082B48B4
	add r0, sp, #8
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	rsbs r0, r0, #0
	asrs r5, r0, #6
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #4
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r1, r1, #6
	cmp r1, #1
	beq _08047FA0
	cmp r1, #1
	bgt _08047F78
	cmp r1, #0
	beq _08047F82
	b _08048010
	.align 2, 0
_08047F74: .4byte gUnknown_082B48B4
_08047F78:
	cmp r1, #2
	beq _08047FC0
	cmp r1, #3
	beq _08047FE8
	b _08048010
_08047F82:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r4, #0x7c]
	adds r1, r1, r5
	asrs r1, r1, #8
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08047F9C @ =sub_805217C
	b _08047FFE
	.align 2, 0
_08047F9C: .4byte sub_805217C
_08047FA0:
	ldr r0, [r4, #0x7c]
	adds r0, r0, r5
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08047FBC @ =sub_805203C
	b _08047FDA
	.align 2, 0
_08047FBC: .4byte sub_805203C
_08047FC0:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r4, #0x7c]
	adds r1, r1, r5
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08047FE4 @ =sub_805217C
_08047FDA:
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	b _08048014
	.align 2, 0
_08047FE4: .4byte sub_805217C
_08047FE8:
	ldr r0, [r4, #0x7c]
	adds r0, r0, r5
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0804800C @ =sub_805203C
_08047FFE:
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	b _08048014
	.align 2, 0
_0804800C: .4byte sub_805203C
_08048010:
	movs r0, #0
	b _0804803C
_08048014:
	lsrs r6, r0, #0x1f
	cmp r6, #0
	beq _0804803A
	adds r5, r4, #0
	adds r5, #0x90
	ldr r3, [r5]
	cmp r3, #0
	beq _0804803A
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r2, #0
	strh r0, [r3, #0x18]
	ldr r0, [r3, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #4]
	str r2, [r5]
_0804803A:
	adds r0, r6, #0
_0804803C:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8048044
sub_8048044: @ 0x08048044
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _080480A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0x70
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _080480AC @ =gUnknown_082B48B4
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	rsbs r0, r0, #0
	asrs r0, r0, #6
	mov ip, r0
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #3
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r4, r1, #6
	cmp r4, #1
	beq _080480F4
	cmp r4, #1
	bgt _080480B0
	cmp r4, #0
	beq _080480BA
	b _080481B6
	.align 2, 0
_080480A8: .4byte gCurTask
_080480AC: .4byte gUnknown_082B48B4
_080480B0:
	cmp r4, #2
	beq _0804813C
	cmp r4, #3
	beq _08048178
	b _080481B6
_080480BA:
	ldr r0, _080480EC @ =0x03000080
	adds r4, r7, r0
	ldr r0, [r4]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r6, #0x7c]
	add r1, ip
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080480F0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	b _080481A6
	.align 2, 0
_080480EC: .4byte 0x03000080
_080480F0: .4byte sub_805217C
_080480F4:
	ldr r0, [r6, #0x7c]
	add r0, ip
	asrs r0, r0, #8
	ldr r3, _08048134 @ =0x03000080
	adds r1, r7, r3
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048138 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r0, r5, #8
	ldr r1, [r6, #0x7c]
	subs r1, r1, r0
	str r1, [r6, #0x7c]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _080481B6
	mov r3, r8
	strb r0, [r3]
	b _080481B6
	.align 2, 0
_08048134: .4byte 0x03000080
_08048138: .4byte sub_805203C
_0804813C:
	ldr r0, _08048170 @ =0x03000080
	adds r4, r7, r0
	ldr r0, [r4]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r6, #0x7c]
	add r1, ip
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048174 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	b _080481A6
	.align 2, 0
_08048170: .4byte 0x03000080
_08048174: .4byte sub_805217C
_08048178:
	ldr r0, [r6, #0x7c]
	add r0, ip
	asrs r0, r0, #8
	ldr r4, _080481CC @ =0x03000080
	adds r1, r7, r4
	ldr r1, [r1]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080481D0 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r5, r0, #0
	cmp r5, #3
	bgt _080481B6
	lsls r1, r5, #8
	ldr r0, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x7c]
_080481A6:
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080481B6
	mov r3, r8
	strb r1, [r3]
_080481B6:
	adds r4, r6, #0
	adds r4, #0x71
	ldrb r0, [r4]
	cmp r0, #1
	bne _080481D4
	cmp r5, #8
	ble _08048208
	movs r0, #2
	strb r0, [r4]
	b _08048208
	.align 2, 0
_080481CC: .4byte 0x03000080
_080481D0: .4byte sub_805203C
_080481D4:
	cmp r0, #2
	bne _08048208
	cmp r5, #0
	bgt _08048208
	bl sub_8047EEC
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	adds r0, r6, #0
	adds r0, #0x73
	strb r1, [r0]
	adds r0, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x78
	ldr r0, _08048214 @ =0x0000FFEC
	strh r0, [r1]
	adds r1, #2
	adds r0, #4
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_8048384
_08048208:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048214: .4byte 0x0000FFEC

	thumb_func_start sub_8048218
sub_8048218: @ 0x08048218
	push {r4, r5, lr}
	ldr r0, _08048258 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	ldr r1, _0804825C @ =0x03000071
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08048304
	ldr r5, _08048260 @ =0x03000070
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r3, r0, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	beq _08048268
	cmp r1, #0x40
	bgt _08048268
	ldr r0, _08048264 @ =0x03000084
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	adds r5, r3, #0
	ldr r1, _08048264 @ =0x03000084
	adds r2, r2, r1
	b _0804827C
	.align 2, 0
_08048258: .4byte gCurTask
_0804825C: .4byte 0x03000071
_08048260: .4byte 0x03000070
_08048264: .4byte 0x03000084
_08048268:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	mov r2, ip
	adds r2, #0x84
	cmp r1, #0xbf
	ble _0804827C
	ldr r0, [r2]
	subs r0, #0x10
	str r0, [r2]
_0804827C:
	ldr r0, [r2]
	cmp r0, #0
	bge _08048284
	rsbs r0, r0, #0
_08048284:
	movs r1, #0xc0
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804829E
	ldr r0, [r2]
	cmp r0, #0
	bge _0804829C
	ldr r0, _08048298 @ =0xFFFFF400
	str r0, [r2]
	b _0804829E
	.align 2, 0
_08048298: .4byte 0xFFFFF400
_0804829C:
	str r1, [r2]
_0804829E:
	ldr r1, [r2]
	cmp r1, #0
	bge _080482A6
	rsbs r1, r1, #0
_080482A6:
	ldr r0, _080482B8 @ =0x000004FF
	cmp r1, r0
	bgt _080482C6
	ldr r0, [r2]
	cmp r0, #0
	bge _080482C0
	ldr r0, _080482BC @ =0xFFFFFB00
	b _080482C4
	.align 2, 0
_080482B8: .4byte 0x000004FF
_080482BC: .4byte 0xFFFFFB00
_080482C0:
	movs r0, #0xa0
	lsls r0, r0, #3
_080482C4:
	str r0, [r2]
_080482C6:
	mov r3, ip
	adds r3, #0x88
	movs r0, #0
	ldrsh r4, [r2, r0]
	ldr r2, _08048300 @ =gUnknown_082B48B4
	asrs r1, r5, #0x10
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	str r0, [r3]
	adds r3, #4
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	str r0, [r3]
	b _08048312
	.align 2, 0
_08048300: .4byte gUnknown_082B48B4
_08048304:
	cmp r0, #2
	bne _08048312
	ldr r0, _08048318 @ =0x0300008C
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
_08048312:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048318: .4byte 0x0300008C

	thumb_func_start sub_804831C
sub_804831C: @ 0x0804831C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	adds r6, r5, #0
	adds r6, #0x34
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _08048336
	movs r0, #0x40
	bl sub_80C3224
	str r0, [r5, #0x68]
_08048336:
	ldr r0, [r5, #0x68]
	str r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0
	ldr r0, _08048380 @ =0x0000039D
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x9d
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x81
	lsls r0, r0, #5
	str r0, [r4, #8]
	strh r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048380: .4byte 0x0000039D

	thumb_func_start sub_8048384
sub_8048384: @ 0x08048384
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xc
	adds r7, r2, #0
	adds r7, #0x40
	ldr r0, [r2, #0x68]
	cmp r0, #0
	beq _0804840A
	str r0, [r2, #0xc]
	movs r0, #0
	mov sl, r0
	movs r4, #0
	ldr r0, _0804841C @ =0x0000039D
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	mov r8, r0
	mov r0, r8
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r6, #0x10
	strb r6, [r1, #0x1c]
	mov r0, sl
	strb r0, [r1, #0x1f]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl sub_80BF44C
	ldr r2, [sp]
	ldr r0, [r2, #0x68]
	adds r0, #0x80
	str r0, [r2, #0x40]
	mov r0, sb
	strh r0, [r7, #0xc]
	movs r0, #3
	strb r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	adds r0, r5, #0
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r0, sl
	strb r0, [r7, #0x1f]
	str r5, [r7, #0x20]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
_0804840A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804841C: .4byte 0x0000039D

	thumb_func_start sub_8048420
sub_8048420: @ 0x08048420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r7, _080484AC @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sb, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _080484B0 @ =0x03000071
	adds r4, r6, r1
	ldrb r0, [r4]
	cmp r0, #4
	beq _0804849C
	mov r1, sb
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #8
	ldr r2, _080484B4 @ =0x03000080
	adds r1, r6, r2
	ldr r1, [r1]
	lsls r1, r1, #8
	lsrs r3, r0, #0x10
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	mov r8, r0
	lsrs r0, r1, #0x10
	str r0, [sp, #8]
	asrs r1, r1, #0x10
	mov sl, r1
	mov r0, r8
	bl sub_802C198
	adds r5, r0, #0
	cmp r5, #0
	bne _080484C4
	ldr r0, _080484B8 @ =0x0000025E
	bl sub_8003E28
	ldr r1, _080484BC @ =0x03000090
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0804849C
	ldr r0, [r4, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	str r5, [r4, #0x6c]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _080484C0 @ =sub_8005380
	adds r0, r4, #0
	bl sub_800D87C
_0804849C:
	mov r2, sb
	ldrb r0, [r2, #0xa]
	ldr r3, [sp]
	strb r0, [r3]
	ldr r0, [r7]
	bl TaskDestroy
	b _08048602
	.align 2, 0
_080484AC: .4byte gCurTask
_080484B0: .4byte 0x03000071
_080484B4: .4byte 0x03000080
_080484B8: .4byte 0x0000025E
_080484BC: .4byte 0x03000090
_080484C0: .4byte sub_8005380
_080484C4:
	ldrb r0, [r4]
	cmp r0, #3
	beq _0804852C
	ldr r0, _08048518 @ =0x0300000C
	adds r7, r6, r0
	ldr r1, _0804851C @ =0x03000034
	adds r4, r6, r1
	ldr r2, _08048520 @ =0x03000070
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, _08048524 @ =gUnknown_03001D10
	ldr r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r4, #6]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r4, #8]
	ldr r2, _08048528 @ =gUnknown_03002C24
	ldrb r0, [r2]
	movs r1, #0x81
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r7, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80C033C
	b _08048602
	.align 2, 0
_08048518: .4byte 0x0300000C
_0804851C: .4byte 0x03000034
_08048520: .4byte 0x03000070
_08048524: .4byte gUnknown_03001D10
_08048528: .4byte gUnknown_03002C24
_0804852C:
	ldr r2, _08048554 @ =0x03000073
	adds r0, r6, r2
	ldrb r0, [r0]
	mov sl, r0
	mov r3, sl
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	ldr r0, _08048558 @ =0x0300000C
	adds r7, r6, r0
	ldr r0, _0804855C @ =gUnknown_03001D10
	ldr r0, [r0]
	mov r1, r8
	subs r2, r1, r0
	mov r1, sl
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08048560
	subs r0, r2, r3
	b _08048562
	.align 2, 0
_08048554: .4byte 0x03000073
_08048558: .4byte 0x0300000C
_0804855C: .4byte gUnknown_03001D10
_08048560:
	adds r0, r2, r1
_08048562:
	strh r0, [r7, #0x10]
	ldr r4, _080485A8 @ =gUnknown_03001D10
	ldr r0, [r4, #4]
	ldr r2, [sp, #8]
	lsls r6, r2, #0x10
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r5, sb
	adds r5, #0x74
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	mov r7, sb
	adds r7, #0x40
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	subs r3, r0, r1
	mov r2, sl
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080485AC
	ldr r1, [sp, #0xc]
	lsrs r0, r1, #1
	b _080485B0
	.align 2, 0
_080485A8: .4byte gUnknown_03001D10
_080485AC:
	rsbs r0, r2, #0
	asrs r0, r0, #1
_080485B0:
	adds r0, r3, r0
	strh r0, [r7, #0x10]
	ldr r0, _08048614 @ =gUnknown_03001D10
	ldr r0, [r0, #4]
	asrs r1, r6, #0x10
	subs r1, r1, r0
	mov r4, sb
	adds r4, #0x76
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	strh r1, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	mov r2, sb
	adds r2, #0x78
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	mov r1, sb
	adds r1, #0x7a
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08048602:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048614: .4byte gUnknown_03001D10

	thumb_func_start sub_8048618
sub_8048618: @ 0x08048618
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable115
CreateEntity_Interactable115: @ 0x0804862C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080486FC @ =sub_8048714
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08048700 @ =sub_8048FE4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	movs r3, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	mov r1, sb
	str r1, [r4]
	ldrb r1, [r1]
	strb r1, [r4, #0xa]
	mov r7, r8
	strb r7, [r4, #0xb]
	mov r7, sb
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r4, #0x3c]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r6, r6, #8
	adds r1, r1, r6
	lsls r1, r1, #8
	str r1, [r4, #0x40]
	str r2, [r4, #0x44]
	str r2, [r4, #0x48]
	str r2, [r4, #0x4c]
	str r2, [r4, #0x50]
	ldrb r2, [r7, #7]
	movs r1, #1
	ands r1, r2
	ldr r5, _08048704 @ =0x03000054
	adds r2, r0, r5
	strb r1, [r2]
	ldr r7, _08048708 @ =0x03000055
	adds r1, r0, r7
	strb r3, [r1]
	ldr r2, _0804870C @ =0x03000056
	adds r1, r0, r2
	strb r3, [r1]
	adds r5, #3
	adds r1, r0, r5
	strb r3, [r1]
	subs r7, #0x49
	adds r0, r0, r7
	ldr r1, [r4, #0x3c]
	asrs r1, r1, #8
	ldr r3, _08048710 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r5, sb
	strb r1, [r5]
	bl sub_8048FF8
	adds r0, r4, #0
	bl sub_8048D98
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080486FC: .4byte sub_8048714
_08048700: .4byte sub_8048FE4
_08048704: .4byte 0x03000054
_08048708: .4byte 0x03000055
_0804870C: .4byte 0x03000056
_08048710: .4byte gUnknown_03001D10

	thumb_func_start sub_8048714
sub_8048714: @ 0x08048714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08048750 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x40]
	asrs r7, r0, #8
	movs r1, #0
	mov sb, r1
_08048740:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08048758
	ldr r0, _08048754 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08048762
	.align 2, 0
_08048750: .4byte gCurTask
_08048754: .4byte gUnknown_030008A0
_08048758:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08048762:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08048840 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r2, r0, #0
	cmp r2, #0
	beq _0804877E
	b _080488F2
_0804877E:
	ldr r1, [r4]
	ldr r0, _08048844 @ =sub_8008A8C
	cmp r1, r0
	bne _08048788
	b _080488F2
_08048788:
	ldr r0, _08048848 @ =sub_800ED80
	cmp r1, r0
	bne _08048790
	b _080488F2
_08048790:
	ldr r0, _0804884C @ =sub_800DCB4
	cmp r1, r0
	beq _0804885C
	str r4, [sp]
	str r2, [sp, #4]
	mov r0, r8
	mov r1, sl
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _0804885C
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _08048850 @ =sub_800DB7C
	bl sub_800D87C
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r1, r8
	str r1, [r4, #0x6c]
	str r4, [r5, #0x50]
	movs r2, #0
	adds r6, r5, #0
	adds r6, #0x54
	movs r0, #0x55
	adds r0, r0, r5
	mov ip, r0
	adds r7, r5, #0
	adds r7, #0x56
_080487D8:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08048840 @ =gUnknown_030015C0
	adds r1, r0, r1
	cmp r1, r4
	beq _0804880A
	ldr r3, [r1, #4]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0804880A
	ldr r0, [r1, #0x6c]
	cmp r0, r8
	bne _0804880A
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r1, #4]
	mov r0, sb
	str r0, [r1, #0x6c]
_0804880A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080487D8
	movs r1, #0xc0
	lsls r1, r1, #2
	str r1, [r5, #0x44]
	ldrb r0, [r6]
	cmp r0, #0
	beq _08048828
	rsbs r0, r1, #0
	str r0, [r5, #0x44]
_08048828:
	mov r1, sb
	mov r0, ip
	strb r1, [r0]
	movs r0, #1
	strb r0, [r7]
	mov r1, r8
	strb r0, [r1, #0x1a]
	ldr r0, _08048854 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08048858 @ =sub_804891C
	str r0, [r1, #8]
	b _08048906
	.align 2, 0
_08048840: .4byte gUnknown_030015C0
_08048844: .4byte sub_8008A8C
_08048848: .4byte sub_800ED80
_0804884C: .4byte sub_800DCB4
_08048850: .4byte sub_800DB7C
_08048854: .4byte gCurTask
_08048858: .4byte sub_804891C
_0804885C:
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _08048884
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _080488A0
_08048884:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080488A0
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_080488A0:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080488F2
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _080488C6
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080488E0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	b _080488D4
_080488C6:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080488E0
	ldr r0, [r4, #0x10]
	ldr r1, _08048918 @ =0xFFFFFF00
_080488D4:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_080488E0:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_080488F2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08048902
	b _08048740
_08048902:
	bl sub_8048C18
_08048906:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048918: .4byte 0xFFFFFF00

	thumb_func_start sub_804891C
sub_804891C: @ 0x0804891C
	push {r4, r5, r6, lr}
	ldr r0, _08048958 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	bl sub_8048A50
	ldr r1, _0804895C @ =0x03000056
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _080489C4
	subs r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0
	beq _08048960
	cmp r2, #0x40
	bgt _08048960
	ldr r0, [r5, #0x44]
	adds r0, #0x10
	str r0, [r5, #0x44]
	adds r4, r1, #0
	b _08048970
	.align 2, 0
_08048958: .4byte gCurTask
_0804895C: .4byte 0x03000056
_08048960:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0xbf
	ble _08048970
	ldr r0, [r5, #0x44]
	subs r0, #0x10
	str r0, [r5, #0x44]
_08048970:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bge _08048978
	rsbs r0, r0, #0
_08048978:
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _08048992
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bge _08048990
	ldr r0, _0804898C @ =0xFFFFF800
	str r0, [r5, #0x44]
	b _08048992
	.align 2, 0
_0804898C: .4byte 0xFFFFF800
_08048990:
	str r1, [r5, #0x44]
_08048992:
	ldr r3, [r5, #0x44]
	ldr r2, _080489C0 @ =gUnknown_082B48B4
	asrs r1, r4, #0x10
	lsls r0, r1, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	str r0, [r5, #0x48]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r0, r0, r4
	b _080489D0
	.align 2, 0
_080489C0: .4byte gUnknown_082B48B4
_080489C4:
	cmp r0, #3
	beq _080489CC
	cmp r0, #1
	bne _080489D2
_080489CC:
	ldr r0, [r5, #0x4c]
	adds r0, #0x20
_080489D0:
	str r0, [r5, #0x4c]
_080489D2:
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r2, [r5, #0x50]
	cmp r2, #0
	beq _08048A44
	ldr r1, [r2]
	ldr r0, _08048A00 @ =sub_8008A8C
	cmp r1, r0
	beq _080489F6
	ldr r0, _08048A04 @ =sub_800ED80
	cmp r1, r0
	bne _08048A0C
_080489F6:
	ldr r1, _08048A08 @ =0x00000257
	adds r0, r2, #0
	bl sub_8004F10
	b _08048A40
	.align 2, 0
_08048A00: .4byte sub_8008A8C
_08048A04: .4byte sub_800ED80
_08048A08: .4byte 0x00000257
_08048A0C:
	ldr r1, _08048A3C @ =gUnknown_030008A0
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08048A20
	ldrb r0, [r1, #3]
	cmp r0, #5
	beq _080489F6
_08048A20:
	ldr r0, [r2, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08048A40
	ldr r0, [r2, #0x6c]
	cmp r0, r6
	bne _08048A40
	ldr r0, [r5, #0x3c]
	str r0, [r2, #0x10]
	ldr r0, [r5, #0x40]
	str r0, [r2, #0x14]
	b _08048A44
	.align 2, 0
_08048A3C: .4byte gUnknown_030008A0
_08048A40:
	movs r0, #0
	str r0, [r5, #0x50]
_08048A44:
	bl sub_8048C18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048A50
sub_8048A50: @ 0x08048A50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08048AB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x55
	adds r0, r0, r1
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r3, _08048AB8 @ =gUnknown_082B48B4
	lsls r0, r1, #3
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	rsbs r0, r0, #0
	asrs r7, r0, #6
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r2, r0, #3
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	lsrs r4, r1, #6
	cmp r4, #1
	beq _08048B08
	cmp r4, #1
	bgt _08048ABC
	cmp r4, #0
	beq _08048AC6
	b _08048B8A
	.align 2, 0
_08048AB4: .4byte gCurTask
_08048AB8: .4byte gUnknown_082B48B4
_08048ABC:
	cmp r4, #2
	beq _08048B48
	cmp r4, #3
	beq _08048B50
	b _08048B8A
_08048AC6:
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	asrs r0, r0, #8
	ldr r1, [r5, #0x3c]
	adds r1, r1, r7
	asrs r1, r1, #8
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _08048B04 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r1, r6, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08048B8A
	mov r0, r8
	strb r1, [r0]
	b _08048B8A
	.align 2, 0
_08048B04: .4byte sub_805217C
_08048B08:
	ldr r0, [r5, #0x3c]
	adds r0, r0, r7
	asrs r0, r0, #8
	ldr r1, [r5, #0x40]
	adds r1, r1, r2
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048B44 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r0, r6, #8
	ldr r1, [r5, #0x3c]
	subs r1, r1, r0
	str r1, [r5, #0x3c]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08048B8A
	mov r3, r8
	strb r0, [r3]
	b _08048B8A
	.align 2, 0
_08048B44: .4byte sub_805203C
_08048B48:
	movs r0, #0
	mov r4, r8
	strb r0, [r4]
	b _08048B8A
_08048B50:
	ldr r0, [r5, #0x3c]
	adds r0, r0, r7
	asrs r0, r0, #8
	ldr r1, [r5, #0x40]
	adds r1, r1, r2
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08048BCC @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r6, r0, #0
	cmp r6, #7
	bgt _08048B8A
	lsls r1, r6, #8
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08048B8A
	mov r3, r8
	strb r1, [r3]
_08048B8A:
	cmp r6, #8
	ble _08048BEC
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #2
	bne _08048C0A
	movs r0, #3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _08048BBE
	movs r1, #0xc0
	lsls r1, r1, #2
	str r1, [r5, #0x48]
	subs r0, #3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048BBA
	rsbs r0, r1, #0
	str r0, [r5, #0x48]
_08048BBA:
	ldr r0, _08048BD0 @ =0xFFFFFA00
	str r0, [r5, #0x4c]
_08048BBE:
	ldrb r0, [r2]
	cmp r0, #7
	bhi _08048BD4
	adds r0, #1
	strb r0, [r2]
	b _08048BDC
	.align 2, 0
_08048BCC: .4byte sub_805203C
_08048BD0: .4byte 0xFFFFFA00
_08048BD4:
	adds r1, r5, #0
	adds r1, #0x55
	movs r0, #0
	strb r0, [r1]
_08048BDC:
	ldr r0, [r5, #0x50]
	ldr r1, _08048BE8 @ =0x00000257
	bl sub_8004F10
	b _08048C0A
	.align 2, 0
_08048BE8: .4byte 0x00000257
_08048BEC:
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #1
	bne _08048BFA
	movs r0, #2
	b _08048C00
_08048BFA:
	cmp r0, #3
	bne _08048C02
	movs r0, #4
_08048C00:
	strb r0, [r1]
_08048C02:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_08048C0A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048C18
sub_8048C18: @ 0x08048C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08048CCC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08048CD0 @ =0x0300000C
	adds r7, r5, r1
	ldr r0, [r4]
	mov sl, r0
	ldr r0, [r4, #0x3c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x40]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	adds r1, #0x4a
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08048C80
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08048C70
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r4, #0x50]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r2, #0
	bl sub_8004E98
_08048C70:
	ldr r0, _08048CD4 @ =0x03000057
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08048CD8 @ =sub_8048D0C
	str r0, [r1, #8]
_08048C80:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802C198
	adds r3, r0, #0
	cmp r3, #0
	bne _08048CE0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08048CBA
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #4]
	str r3, [r2, #0x6c]
	strh r3, [r2, #0x18]
	strh r3, [r2, #0x1a]
	strh r3, [r2, #0x1c]
	ldr r1, _08048CDC @ =sub_8005380
	adds r0, r2, #0
	bl sub_800D87C
_08048CBA:
	ldrb r0, [r4, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _08048CCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08048CFA
	.align 2, 0
_08048CCC: .4byte gCurTask
_08048CD0: .4byte 0x0300000C
_08048CD4: .4byte 0x03000057
_08048CD8: .4byte sub_8048D0C
_08048CDC: .4byte sub_8005380
_08048CE0:
	ldr r0, _08048D08 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_08048CFA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048D08: .4byte gUnknown_03001D10

	thumb_func_start sub_8048D0C
sub_8048D0C: @ 0x08048D0C
	push {r4, lr}
	ldr r3, _08048D30 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4]
	adds r0, #0x57
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _08048D50
	cmp r0, #0xa
	bgt _08048D34
	cmp r0, #0
	beq _08048D3E
	b _08048D8A
	.align 2, 0
_08048D30: .4byte gCurTask
_08048D34:
	cmp r0, #0x14
	beq _08048D64
	cmp r0, #0x64
	beq _08048D7E
	b _08048D8A
_08048D3E:
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8048E74
	b _08048D8A
_08048D50:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08048D74
	movs r0, #0x3c
	strh r0, [r4, #8]
	movs r0, #0x14
	b _08048D72
_08048D64:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08048D74
	movs r0, #0x64
_08048D72:
	strb r0, [r1]
_08048D74:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8048E74
	b _08048D8A
_08048D7E:
	ldrb r0, [r4, #0xa]
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08048D90
_08048D8A:
	adds r0, r4, #0
	bl sub_8048F70
_08048D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048D98
sub_8048D98: @ 0x08048D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, _08048E68 @ =gUnknown_080D03C0
	mov r0, sp
	movs r2, #8
	bl sub_80CA3B0
	movs r6, #0
	movs r0, #1
	add r0, sp
	mov sb, r0
	movs r3, #0
	adds r7, r5, #0
	adds r7, #0x78
	adds r4, r5, #0
	adds r4, #0x7c
_08048DC2:
	lsls r0, r6, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x58
	strh r3, [r1]
	adds r0, #0x5a
	strh r3, [r0]
	lsls r1, r6, #3
	adds r2, r7, r1
	ldr r0, [r5, #0x3c]
	str r0, [r2]
	adds r1, r4, r1
	ldr r0, [r5, #0x40]
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _08048DC2
	ldr r7, [r5, #0xc]
	movs r6, #0
	mov r8, r6
	ldr r1, _08048E6C @ =0x00000393
	mov sl, r1
_08048DF2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xb8
	adds r0, r5, r0
	str r7, [r0]
	mov r2, sl
	strh r2, [r0, #0xc]
	lsls r4, r6, #1
	mov r2, sp
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	mov r1, r8
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	mov r1, r8
	str r1, [r0, #8]
	ldr r2, [r5, #0x3c]
	asrs r2, r2, #8
	ldr r3, _08048E70 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl sub_80BF44C
	add r4, sb
	ldrb r0, [r4]
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08048DF2
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048E68: .4byte gUnknown_080D03C0
_08048E6C: .4byte 0x00000393
_08048E70: .4byte gUnknown_03001D10

	thumb_func_start sub_8048E74
sub_8048E74: @ 0x08048E74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08048F20
	movs r4, #0
	movs r0, #0x78
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x7c
	adds r1, r1, r6
	mov r8, r1
	ldr r2, _08048F10 @ =gUnknown_03006868
	mov ip, r2
	ldr r7, _08048F14 @ =gUnknown_082B48B4
_08048E98:
	mov r3, ip
	ldr r1, [r3]
	ldr r0, _08048F18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08048F1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xff
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r5, r0, #0
	movs r0, #1
	ands r0, r4
	adds r0, #3
	adds r2, r0, #0
	lsls r0, r4, #2
	adds r3, r6, r0
	adds r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048ED2
	adds r0, #0x3f
_08048ED2:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08048EEA
	adds r0, #0x3f
_08048EEA:
	asrs r1, r0, #6
	adds r0, r3, #0
	adds r0, #0x5a
	strh r1, [r0]
	lsls r1, r4, #3
	mov r3, sb
	adds r2, r3, r1
	ldr r0, [r6, #0x3c]
	str r0, [r2]
	add r1, r8
	ldr r0, [r6, #0x40]
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048E98
	b _08048F64
	.align 2, 0
_08048F10: .4byte gUnknown_03006868
_08048F14: .4byte gUnknown_082B48B4
_08048F18: .4byte 0x00196225
_08048F1C: .4byte 0x3C6EF35F
_08048F20:
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x78
	adds r5, r6, #0
	adds r5, #0x7c
_08048F2A:
	lsls r1, r4, #2
	adds r1, r6, r1
	movs r0, #0x5a
	adds r0, r0, r1
	mov ip, r0
	ldrh r0, [r0]
	adds r0, #0x20
	mov r2, ip
	strh r0, [r2]
	lsls r2, r4, #3
	adds r3, r7, r2
	adds r1, #0x58
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, r5, r2
	mov r3, ip
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08048F2A
_08048F64:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8048F70
sub_8048F70: @ 0x08048F70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #0
	movs r5, #0
	ldr r0, _08048FE0 @ =gUnknown_03001D10
	mov r8, r0
_08048F80:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xb8
	adds r4, r7, r0
	lsls r2, r6, #3
	adds r0, r7, #0
	adds r0, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r7, #0
	adds r0, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r6, #2
	bhi _08048FB8
	adds r0, r4, #0
	bl sub_80BF44C
_08048FB8:
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08048FCA
	movs r5, #0
_08048FCA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _08048F80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048FE0: .4byte gUnknown_03001D10

	thumb_func_start sub_8048FE4
sub_8048FE4: @ 0x08048FE4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_8048FF8
sub_8048FF8: @ 0x08048FF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x22
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08049038 @ =0x00000397
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	subs r0, #0x97
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049038: .4byte 0x00000397

	thumb_func_start CreateEntity_Interactable116
CreateEntity_Interactable116: @ 0x0804903C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080490D8 @ =sub_80490E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080490DC @ =sub_804936C
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r1, r8
	strb r1, [r3, #0xb]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	strh r2, [r3, #0xe]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x14]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x12]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x16]
	ldrb r1, [r6, #7]
	movs r0, #1
	ands r0, r1
	strb r0, [r3, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080490D8: .4byte sub_80490E0
_080490DC: .4byte sub_804936C

	thumb_func_start sub_80490E0
sub_80490E0: @ 0x080490E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08049110 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sl, r0
	movs r1, #0
_08049100:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _08049118
	ldr r0, _08049114 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08049122
	.align 2, 0
_08049110: .4byte gCurTask
_08049114: .4byte gUnknown_030008A0
_08049118:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049122:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049304 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08049148
	cmp r1, #8
	beq _08049148
	cmp r1, #0x10
	beq _08049148
	b _08049324
_08049148:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08049154
	b _08049324
_08049154:
	ldr r6, [r4]
	ldr r0, _08049308 @ =sub_8008A8C
	cmp r6, r0
	bne _0804915E
	b _08049324
_0804915E:
	ldr r0, _0804930C @ =sub_800ED80
	cmp r6, r0
	bne _08049166
	b _08049324
_08049166:
	ldr r1, [r4, #0x10]
	lsls r1, r1, #8
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r3, r4, #0
	adds r3, #0x24
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r5, r8
	movs r0, #0x10
	ldrsh r2, [r5, r0]
	asrs r5, r1, #0x10
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r5, r3
	cmp r2, r0
	ble _0804919A
	b _08049324
_0804919A:
	mov r2, r8
	movs r0, #0x14
	ldrsh r1, [r2, r0]
	subs r0, r5, r3
	cmp r1, r0
	bge _080491A8
	b _08049324
_080491A8:
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, r2
	cmp r1, r0
	ble _080491BE
	b _08049324
_080491BE:
	mov r0, r8
	movs r5, #0x16
	ldrsh r1, [r0, r5]
	subs r0, r3, r2
	cmp r1, r0
	bge _080491CC
	b _08049324
_080491CC:
	movs r7, #0
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080491E8
	ldr r0, _08049310 @ =sub_800B240
	cmp r6, r0
	bne _080491E0
	b _08049324
_080491E0:
	ldr r0, _08049314 @ =sub_800B3FC
	cmp r6, r0
	bne _080491E8
	b _08049324
_080491E8:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08049214
	movs r0, #0
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049214
	movs r7, #1
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049214:
	cmp r7, #0
	bne _08049244
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08049244
	movs r0, #1
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049244
	movs r7, #1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049244:
	movs r3, #0x1a
	ldrsh r5, [r4, r3]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08049256
	rsbs r5, r5, #0
_08049256:
	cmp r7, #0
	bne _080492AE
	cmp r5, #0
	bgt _08049282
	movs r0, #2
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _08049282
	movs r7, #1
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_08049282:
	cmp r7, #0
	bne _080492AE
	cmp r5, #0
	blt _080492AE
	movs r0, #3
	adds r1, r4, #0
	mov r2, sp
	movs r3, #0
	bl sub_80110E8
	adds r1, r0, #0
	cmp r1, #7
	bgt _080492AE
	movs r7, #1
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
_080492AE:
	cmp r7, #0
	beq _08049324
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080492DA
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r0, [r2]
	adds r0, #0x80
	rsbs r0, r0, #0
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	strb r0, [r2]
_080492DA:
	adds r0, r4, #0
	bl sub_8016F28
	mov r1, r8
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r4, #0x70]
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0804931C
	adds r0, r4, #0
	ldr r1, _08049318 @ =sub_800B374
	bl sub_800D87C
	b _08049324
	.align 2, 0
_08049304: .4byte gUnknown_030015C0
_08049308: .4byte sub_8008A8C
_0804930C: .4byte sub_800ED80
_08049310: .4byte sub_800B240
_08049314: .4byte sub_800B3FC
_08049318: .4byte sub_800B374
_0804931C:
	adds r0, r4, #0
	ldr r1, _08049364 @ =sub_800B1B8
	bl sub_800D87C
_08049324:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08049334
	b _08049100
_08049334:
	mov r5, r8
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	bl sub_802C198
	cmp r0, #0
	bne _08049354
	ldrb r0, [r5, #0xa]
	mov r3, sl
	strb r0, [r3]
	ldr r0, _08049368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08049354:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049364: .4byte sub_800B1B8
_08049368: .4byte gCurTask

	thumb_func_start sub_804936C
sub_804936C: @ 0x0804936C
	bx lr
	.align 2, 0

	thumb_func_start sub_8049370
sub_8049370: @ 0x08049370
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08049424 @ =sub_804942C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08049428 @ =sub_8049600
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	movs r1, #0
	mov sl, r1
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r0, r8
	strb r0, [r3, #0xb]
	mov r1, sb
	strb r1, [r3, #0x18]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	strh r2, [r3, #0xe]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x14]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x12]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x18]
	mov r1, sl
	strb r1, [r3, #0x19]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049424: .4byte sub_804942C
_08049428: .4byte sub_8049600

	thumb_func_start sub_804942C
sub_804942C: @ 0x0804942C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804944C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5]
	movs r1, #0
_0804943E:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049454
	ldr r0, _08049450 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804945E
	.align 2, 0
_0804944C: .4byte gCurTask
_08049450: .4byte gUnknown_030008A0
_08049454:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804945E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080494F8 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08049482
	cmp r1, #8
	beq _08049482
	cmp r1, #0x10
	bne _08049540
_08049482:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08049540
	ldr r1, [r4]
	ldr r0, _080494FC @ =sub_800DDD0
	cmp r1, r0
	beq _08049540
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	lsrs r3, r1, #0x10
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	asrs r2, r0, #0x10
	cmp r1, r2
	bgt _080494C4
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	cmp r0, r2
	blt _080494C4
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bgt _080494C4
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	cmp r0, r2
	bge _0804950A
_080494C4:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08049540
	ldrb r1, [r5, #0x19]
	asrs r2, r6, #0x10
	adds r0, r1, #0
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08049540
	adds r0, r3, #0
	lsls r0, r2
	bics r1, r0
	strb r1, [r5, #0x19]
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08049504
	ldr r0, _08049500 @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #4]
	b _08049540
	.align 2, 0
_080494F8: .4byte gUnknown_030015C0
_080494FC: .4byte sub_800DDD0
_08049500: .4byte 0xFFFEFFFF
_08049504:
	orrs r1, r2
	str r1, [r4, #4]
	b _08049540
_0804950A:
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	beq _0804952E
	cmp r0, #1
	bgt _0804951A
	cmp r0, #0
	beq _08049520
	b _08049540
_0804951A:
	cmp r0, #2
	beq _08049538
	b _08049540
_08049520:
	asrs r0, r6, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r5, #0x19]
	orrs r1, r0
	strb r1, [r5, #0x19]
	b _08049540
_0804952E:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	b _0804953E
_08049538:
	ldr r0, [r4, #4]
	ldr r1, _08049574 @ =0xFFFEFFFF
	ands r0, r1
_0804953E:
	str r0, [r4, #4]
_08049540:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08049550
	b _0804943E
_08049550:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	bl sub_802C198
	cmp r0, #0
	bne _0804956C
	ldrb r0, [r5, #0xa]
	strb r0, [r7]
	ldr r0, _08049578 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0804956C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049574: .4byte 0xFFFEFFFF
_08049578: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable117
CreateEntity_Interactable117: @ 0x0804957C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8049370
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable118
CreateEntity_Interactable118: @ 0x080495A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8049370
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable119
CreateEntity_Interactable119: @ 0x080495D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8049370
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
    
	thumb_func_start sub_8049600
sub_8049600: @ 0x08049600
	bx lr
	.align 2, 0

	thumb_func_start CreateEntity_Interactable120
CreateEntity_Interactable120: @ 0x08049604
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080496BC @ =sub_804971C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080496C0 @ =sub_80499A4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	movs r3, #0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x34]
	movs r0, #0x80
	strh r0, [r7, #0x36]
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r7, #0x38]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x3a]
	movs r4, #0x38
	ldrsh r0, [r7, r4]
	lsls r0, r0, #8
	str r0, [r7, #0x3c]
	movs r5, #0x3a
	ldrsh r0, [r7, r5]
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	ldr r0, _080496C4 @ =0x03000044
	adds r4, r2, r0
	strh r1, [r4]
	ldrh r0, [r7, #0x3a]
	adds r0, #0xc0
	ldr r5, _080496C8 @ =0x03000046
	adds r1, r2, r5
	strh r0, [r1]
	ldr r1, _080496CC @ =0x03000048
	adds r0, r2, r1
	strb r3, [r0]
	mov r5, r8
	ldrb r1, [r5, #7]
	movs r0, #1
	ands r0, r1
	ldr r5, _080496D0 @ =0x0300004A
	adds r1, r2, r5
	strb r0, [r1]
	ldr r0, _080496D4 @ =0x03000049
	adds r2, r2, r0
	strb r3, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080496DC
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	rsbs r0, r0, #0
	strh r0, [r7, #0x34]
	ldr r2, _080496D8 @ =0xFFFFFD00
	adds r0, r2, #0
	ldrh r5, [r4]
	adds r0, r0, r5
	b _080496E6
	.align 2, 0
_080496BC: .4byte sub_804971C
_080496C0: .4byte sub_80499A4
_080496C4: .4byte 0x03000044
_080496C8: .4byte 0x03000046
_080496CC: .4byte 0x03000048
_080496D0: .4byte 0x0300004A
_080496D4: .4byte 0x03000049
_080496D8: .4byte 0xFFFFFD00
_080496DC:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r4]
	adds r0, r0, r2
_080496E6:
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r3, _08049718 @ =gUnknown_03001D10
	ldr r2, [r3]
	ldrh r1, [r7, #0x38]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldrh r1, [r7, #0x3a]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	mov r5, r8
	strb r1, [r5]
	bl sub_80499B8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049718: .4byte gUnknown_03001D10

	thumb_func_start sub_804971C
sub_804971C: @ 0x0804971C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08049748 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0
_08049738:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08049750
	ldr r0, _0804974C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804975A
	.align 2, 0
_08049748: .4byte gCurTask
_0804974C: .4byte gUnknown_030008A0
_08049750:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804975A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080497F8 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08049792
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08049792
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08049792:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _080497D6
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x40]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080497D6
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	strh r5, [r4, #0x1a]
	adds r1, r6, #0
	adds r1, #0x49
	ldrb r0, [r1]
	cmp r0, #0
	bne _080497D6
	movs r0, #1
	strb r0, [r1]
_080497D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049738
	bl sub_80497FC
	bl sub_80498B4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080497F8: .4byte gUnknown_030015C0

	thumb_func_start sub_80497FC
sub_80497FC: @ 0x080497FC
	push {r4, r5, lr}
	ldr r0, _08049824 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08049828 @ =0x03000049
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804982C
	cmp r0, #1
	ble _080498AC
	cmp r0, #2
	beq _080498AC
	cmp r0, #3
	beq _0804989C
	b _080498AC
	.align 2, 0
_08049824: .4byte gCurTask
_08049828: .4byte 0x03000049
_0804982C:
	movs r2, #0x34
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, _08049890 @ =0x00000261
	bl sub_8003E0C
	ldr r1, _08049894 @ =0x0300004A
	adds r0, r5, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _08049860
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	ldr r3, _08049898 @ =0x03000044
	adds r1, r5, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _08049874
_08049860:
	cmp r2, #1
	bne _080498AC
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	ldr r2, _08049898 @ =0x03000044
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bgt _080498AC
_08049874:
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	strh r2, [r4, #0x36]
	strh r2, [r4, #0x34]
	ldr r0, _08049890 @ =0x00000261
	bl sub_8003E28
	b _080498AC
	.align 2, 0
_08049890: .4byte 0x00000261
_08049894: .4byte 0x0300004A
_08049898: .4byte 0x03000044
_0804989C:
	ldrh r0, [r4, #0x36]
	adds r0, #4
	strh r0, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080498AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80498B4
sub_80498B4: @ 0x080498B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08049910 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7]
	mov r8, r0
	ldr r1, _08049914 @ =0x0300000C
	adds r6, r4, r1
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #8
	ldr r1, [r7, #0x40]
	lsls r1, r1, #8
	ldr r3, _08049918 @ =gUnknown_03001D10
	ldr r2, [r3]
	asrs r0, r0, #0x10
	subs r2, r0, r2
	strh r2, [r6, #0x10]
	ldr r2, [r3, #4]
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x12]
	bl sub_802C198
	cmp r0, #0
	bne _08049968
	ldr r0, _0804991C @ =0x00000261
	bl sub_8003E28
	movs r1, #0
	ldr r2, _08049920 @ =gUnknown_030015C0
_080498FC:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08049924
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08049928
	.align 2, 0
_08049910: .4byte gCurTask
_08049914: .4byte 0x0300000C
_08049918: .4byte gUnknown_03001D10
_0804991C: .4byte 0x00000261
_08049920: .4byte gUnknown_030015C0
_08049924:
	ldr r0, _08049960 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08049928:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _080498FC
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08049964 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08049994
	.align 2, 0
_08049960: .4byte gUnknown_030008A0
_08049964: .4byte gCurTask
_08049968:
	movs r1, #0
	ldr r2, _080499A0 @ =0x03000049
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08049976
	movs r1, #1
_08049976:
	strb r1, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_80BF44C
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1F8
	cmp r0, #1
	bne _08049994
	adds r0, r6, #0
	bl sub_80C033C
_08049994:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080499A0: .4byte 0x03000049

	thumb_func_start sub_80499A4
sub_80499A4: @ 0x080499A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_80499B8
sub_80499B8: @ 0x080499B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1a
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xe8
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable121
CreateEntity_Interactable121: @ 0x080499FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08049AC4 @ =sub_8049AE4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08049AC8 @ =sub_804A3D8
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r7, r8
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r4, _08049ACC @ =0x0300005C
	adds r6, r3, r4
	strh r1, [r6]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r7, _08049AD0 @ =0x0300005E
	adds r5, r3, r7
	strh r1, [r5]
	movs r4, #0
	ldrsh r1, [r6, r4]
	lsls r1, r1, #8
	str r1, [r0, #0x60]
	movs r7, #0
	ldrsh r1, [r5, r7]
	lsls r1, r1, #8
	str r1, [r0, #0x64]
	str r2, [r0, #0x68]
	str r2, [r0, #0x6c]
	str r2, [r0, #0x70]
	ldr r4, _08049AD4 @ =0x03000078
	adds r1, r3, r4
	strh r2, [r1]
	ldr r7, _08049AD8 @ =0x0300007A
	adds r1, r3, r7
	mov r4, sb
	strb r4, [r1]
	adds r7, #1
	adds r1, r3, r7
	strb r4, [r1]
	str r2, [r0, #0x74]
	ldr r1, _08049ADC @ =0x0300000C
	adds r3, r3, r1
	ldr r4, _08049AE0 @ =gUnknown_03001D10
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, r8
	strb r1, [r4]
	bl sub_804A0B0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049AC4: .4byte sub_8049AE4
_08049AC8: .4byte sub_804A3D8
_08049ACC: .4byte 0x0300005C
_08049AD0: .4byte 0x0300005E
_08049AD4: .4byte 0x03000078
_08049AD8: .4byte 0x0300007A
_08049ADC: .4byte 0x0300000C
_08049AE0: .4byte gUnknown_03001D10

	thumb_func_start sub_8049AE4
sub_8049AE4: @ 0x08049AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _08049B30 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, _08049B34 @ =gUnknown_030008A0
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	ldr r3, _08049B38 @ =0x03000078
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, [r5, #0x78]
	ldr r0, _08049B3C @ =0x00FFFFFF
	ands r1, r0
	cmp r1, #0
	bne _08049B9C
	str r1, [r5, #0x68]
	str r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	ldr r0, _08049B40 @ =0x0300007A
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08049B44 @ =0x0300000C
	adds r7, r2, r1
	movs r1, #0
_08049B20:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049B48
	ldr r0, _08049B34 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08049B52
	.align 2, 0
_08049B30: .4byte gCurTask
_08049B34: .4byte gUnknown_030008A0
_08049B38: .4byte 0x03000078
_08049B3C: .4byte 0x00FFFFFF
_08049B40: .4byte 0x0300007A
_08049B44: .4byte 0x0300000C
_08049B48:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049B52:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049BC0 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	ldr r2, [r5, #0x64]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	cmp r0, #0
	beq _08049B8E
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08049B8E
	adds r0, r4, #0
	bl sub_8008E38
_08049B8E:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049B20
_08049B9C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08049C94
	adds r7, r5, #0
	adds r7, #0xc
	movs r1, #0
_08049BB2:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049BC8
	ldr r0, _08049BC4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08049BD2
	.align 2, 0
_08049BC0: .4byte gUnknown_030015C0
_08049BC4: .4byte gUnknown_030008A0
_08049BC8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08049BD2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08049C1C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08049C86
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	ldr r2, [r5, #0x64]
	asrs r2, r2, #8
	str r4, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	adds r1, r0, #0
	cmp r1, #0
	beq _08049C86
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08049C20
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _08049C2C
	.align 2, 0
_08049C1C: .4byte gUnknown_030015C0
_08049C20:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08049C2C:
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08049C46
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _08049C46
	cmp r0, #0xf5
	bne _08049C56
_08049C46:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_08049C56:
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	ldr r1, [r5, #0x60]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08049CA4 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r1, r0, #0
	cmp r1, #0
	bge _08049C80
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08049C80:
	adds r0, r4, #0
	bl sub_8014550
_08049C86:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08049BB2
_08049C94:
	bl sub_8049CA8
	bl sub_804A1E0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049CA4: .4byte sub_805217C

	thumb_func_start sub_8049CA8
sub_8049CA8: @ 0x08049CA8
	push {r4, lr}
	ldr r0, _08049CCC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x7a
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bhi _08049D58
	lsls r0, r0, #2
	ldr r1, _08049CD0 @ =_08049CD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049CCC: .4byte gCurTask
_08049CD0: .4byte _08049CD4
_08049CD4: @ jump table
	.4byte _08049CEC @ case 0
	.4byte _08049D00 @ case 1
	.4byte _08049D00 @ case 2
	.4byte _08049D00 @ case 3
	.4byte _08049D0A @ case 4
	.4byte _08049D2E @ case 5
_08049CEC:
	ldr r0, _08049CFC @ =0x00000246
	bl sub_8003E28
	adds r0, r4, #0
	bl sub_804A0B0
	b _08049D58
	.align 2, 0
_08049CFC: .4byte 0x00000246
_08049D00:
	bl sub_8049D70
	bl sub_8049FD0
	b _08049D58
_08049D0A:
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08049D58
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #5
	b _08049D56
_08049D2E:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x60]
	adds r0, r4, #0
	adds r0, #0x5e
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	adds r1, #1
_08049D56:
	strb r0, [r1]
_08049D58:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049D70
sub_8049D70: @ 0x08049D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08049DE8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x7b
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r0]
	add r0, sp, #8
	strb r1, [r0]
	ldr r4, _08049DEC @ =gUnknown_082B48B4
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r5, r0, #4
	lsls r0, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r4
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r0, r0, #4
	mov sb, r0
	adds r1, #0x20
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp, #8
	strb r1, [r0]
	movs r0, #8
	mov sl, r0
	ldr r2, _08049DF0 @ =0x0300007A
	adds r3, r3, r2
	ldrb r0, [r3]
	cmp r0, #1
	bne _08049DD6
	movs r4, #4
	mov sl, r4
_08049DD6:
	lsrs r4, r1, #6
	cmp r4, #1
	beq _08049E2C
	cmp r4, #1
	bgt _08049DF4
	cmp r4, #0
	beq _08049DFE
	b _08049EEA
	.align 2, 0
_08049DE8: .4byte gCurTask
_08049DEC: .4byte gUnknown_082B48B4
_08049DF0: .4byte 0x0300007A
_08049DF4:
	cmp r4, #2
	beq _08049E6C
	cmp r4, #3
	beq _08049EB0
	b _08049EEA
_08049DFE:
	ldr r0, [r6, #0x64]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08049E28 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, sl
	bge _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x64]
	adds r0, r0, r1
	b _08049E96
	.align 2, 0
_08049E28: .4byte sub_805217C
_08049E2C:
	ldr r0, [r6, #0x60]
	adds r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	add r1, sb
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08049E68 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r0, r7, #8
	ldr r1, [r6, #0x60]
	subs r1, r1, r0
	str r1, [r6, #0x60]
	add r0, sp, #8
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _08049EEA
	mov r4, r8
	strb r0, [r4]
	b _08049EEA
	.align 2, 0
_08049E68: .4byte sub_805203C
_08049E6C:
	ldr r0, [r6, #0x64]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	adds r1, r1, r5
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #8
	str r5, [sp]
	ldr r2, _08049EAC @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x64]
	subs r0, r0, r1
_08049E96:
	str r0, [r6, #0x64]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08049EEA
	mov r0, r8
	strb r1, [r0]
	b _08049EEA
	.align 2, 0
_08049EAC: .4byte sub_805217C
_08049EB0:
	ldr r0, [r6, #0x60]
	adds r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	add r1, sb
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08049F5C @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	adds r7, r0, #0
	cmp r7, #3
	bgt _08049EEA
	lsls r1, r7, #8
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	add r0, sp, #8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08049EEA
	mov r4, r8
	strb r1, [r4]
_08049EEA:
	adds r0, r6, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _08049F64
	ldr r0, [r6, #0x60]
	mov r5, sb
	subs r0, r0, r5
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r4, _08049F5C @ =sub_805203C
	str r4, [sp, #4]
	movs r2, #1
	bl sub_80517FC
	adds r5, r0, #0
	ldr r0, [r6, #0x60]
	add r0, sb
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_80517FC
	cmp r5, #0
	blt _08049F36
	cmp r0, #0
	bge _08049F50
_08049F36:
	movs r0, #0
	movs r1, #4
	mov r4, r8
	strb r1, [r4]
	str r0, [r6, #0x68]
	str r0, [r6, #0x6c]
	str r0, [r6, #0x70]
	adds r0, r6, #0
	bl sub_804A104
	ldr r0, _08049F60 @ =0x00000246
	bl sub_8003DF0
_08049F50:
	cmp r7, #0x10
	ble _08049F9E
	movs r0, #3
	mov r5, r8
	strb r0, [r5]
	b _08049F9E
	.align 2, 0
_08049F5C: .4byte sub_805203C
_08049F60: .4byte 0x00000246
_08049F64:
	cmp r1, #3
	beq _08049F6C
	cmp r1, #1
	bne _08049F9E
_08049F6C:
	cmp r7, #0
	bgt _08049F9E
	cmp r1, #1
	bne _08049F84
	movs r1, #0
	movs r0, #2
	mov r2, r8
	strb r0, [r2]
	str r1, [r6, #0x68]
	str r1, [r6, #0x6c]
	str r1, [r6, #0x70]
	b _08049F9E
_08049F84:
	movs r0, #0
	movs r1, #4
	mov r4, r8
	strb r1, [r4]
	str r0, [r6, #0x68]
	str r0, [r6, #0x6c]
	str r0, [r6, #0x70]
	adds r0, r6, #0
	bl sub_804A104
	ldr r0, _08049FCC @ =0x00000246
	bl sub_8003DF0
_08049F9E:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	bl sub_802C198
	cmp r0, #0
	bne _08049FBA
	movs r0, #5
	mov r5, r8
	strb r0, [r5]
	ldr r0, _08049FCC @ =0x00000246
	bl sub_8003E28
_08049FBA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049FCC: .4byte 0x00000246

	thumb_func_start sub_8049FD0
sub_8049FD0: @ 0x08049FD0
	push {r4, r5, r6, lr}
	ldr r0, _0804A004 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0804A008 @ =0x0300007A
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804A078
	ldr r6, _0804A00C @ =0x0300007B
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0
	beq _0804A010
	cmp r2, #0x40
	bgt _0804A010
	ldr r0, [r5, #0x68]
	adds r0, #4
	str r0, [r5, #0x68]
	adds r6, r1, #0
	b _0804A020
	.align 2, 0
_0804A004: .4byte gCurTask
_0804A008: .4byte 0x0300007A
_0804A00C: .4byte 0x0300007B
_0804A010:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0xbf
	ble _0804A020
	ldr r0, [r5, #0x68]
	subs r0, #4
	str r0, [r5, #0x68]
_0804A020:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _0804A028
	rsbs r0, r0, #0
_0804A028:
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804A042
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bge _0804A040
	ldr r0, _0804A03C @ =0xFFFFF800
	str r0, [r5, #0x68]
	b _0804A042
	.align 2, 0
_0804A03C: .4byte 0xFFFFF800
_0804A040:
	str r1, [r5, #0x68]
_0804A042:
	ldr r4, [r5, #0x68]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0804A074 @ =gUnknown_082B48B4
	asrs r1, r6, #0x10
	lsls r0, r1, #3
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [r5, #0x6c]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [r5, #0x70]
	b _0804A08A
	.align 2, 0
_0804A074: .4byte gUnknown_082B48B4
_0804A078:
	cmp r0, #1
	beq _0804A082
	ldr r4, [r5, #0x68]
	cmp r0, #3
	bne _0804A08A
_0804A082:
	ldr r0, [r5, #0x70]
	adds r0, #0x10
	str r0, [r5, #0x70]
	ldr r4, [r5, #0x68]
_0804A08A:
	cmp r4, #0
	bge _0804A098
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804A0A2
_0804A098:
	cmp r4, #0
	ble _0804A0A4
	ldr r0, [r5, #0x14]
	ldr r1, _0804A0AC @ =0xFFFFFBFF
	ands r0, r1
_0804A0A2:
	str r0, [r5, #0x14]
_0804A0A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A0AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_804A0B0
sub_804A0B0: @ 0x0804A0B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _0804A0C6
	movs r0, #0x19
	bl sub_80C3224
	str r0, [r5, #0x74]
_0804A0C6:
	ldr r0, [r5, #0x74]
	str r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804A100 @ =0x000003A1
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A100: .4byte 0x000003A1

	thumb_func_start sub_804A104
sub_804A104: @ 0x0804A104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _0804A1D8 @ =gUnknown_080D03C8
	mov r0, sp
	movs r2, #0x10
	bl sub_80CA3B0
	adds r1, r7, #0
	adds r1, #0xc
	ldr r0, [r7, #0x74]
	str r0, [r7, #0xc]
	movs r5, #0
	movs r4, #0
	ldr r0, _0804A1DC @ =0x000003A1
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	bl sub_80BF44C
	adds r1, r7, #0
	adds r1, #0x34
	ldr r0, [r7, #0x74]
	adds r0, #0x80
	str r0, [r7, #0x34]
	mov r0, sl
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	adds r0, r6, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r6, [r1, #0x20]
	str r4, [r1, #8]
	adds r0, r1, #0
	bl sub_80BF44C
	adds r0, r7, #0
	adds r0, #0x7c
	strb r5, [r0]
	movs r2, #0
	adds r5, r7, #0
	adds r5, #0x7d
_0804A198:
	movs r1, #0
	lsls r4, r2, #0x10
	asrs r3, r4, #0xe
_0804A19E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r3
	adds r2, r5, r1
	add r1, sp
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0804A19E
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0804A198
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1D8: .4byte gUnknown_080D03C8
_0804A1DC: .4byte 0x000003A1

	thumb_func_start sub_804A1E0
sub_804A1E0: @ 0x0804A1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov sb, r0
	ldr r1, _0804A260 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _0804A264 @ =0x0300000C
	adds r7, r6, r2
	ldr r3, [r4]
	mov sl, r3
	ldr r1, _0804A268 @ =0x0300005C
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _0804A26C @ =0x0300005E
	adds r1, r6, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_802C198
	cmp r0, #1
	bne _0804A220
	movs r3, #1
	mov sb, r3
_0804A220:
	ldr r0, [r4, #0x60]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x64]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	str r0, [sp]
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	asrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl sub_802C198
	cmp r0, #1
	bne _0804A248
	movs r0, #1
	mov sb, r0
_0804A248:
	mov r1, sb
	cmp r1, #0
	bne _0804A270
	ldrb r0, [r4, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldr r3, _0804A260 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _0804A3C4
	.align 2, 0
_0804A260: .4byte gCurTask
_0804A264: .4byte 0x0300000C
_0804A268: .4byte 0x0300005C
_0804A26C: .4byte 0x0300005E
_0804A270:
	ldr r1, _0804A374 @ =0x0300007A
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804A27C
	b _0804A38C
_0804A27C:
	ldr r2, _0804A378 @ =0x0300007C
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #2
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	mov sl, r1
	movs r3, #0
	ldr r0, [sp]
	mov ip, r0
	ldr r1, [sp, #4]
	str r1, [sp, #8]
	adds r2, #1
	adds r2, r2, r6
	mov r8, r2
	ldr r0, _0804A37C @ =0x0300007F
	adds r5, r6, r0
	ldr r1, _0804A380 @ =0x0300007E
	adds r1, r6, r1
	str r1, [sp, #0xc]
	ldr r2, _0804A384 @ =0x03000080
	adds r4, r6, r2
	subs r0, #0x4b
	adds r0, r0, r6
	mov sb, r0
_0804A2B4:
	lsls r1, r3, #1
	add r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	mov r6, r8
	adds r2, r6, r1
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r6, [r2]
	adds r0, r0, r6
	strb r0, [r2]
	ldr r0, [sp, #0xc]
	adds r2, r0, r1
	adds r1, r4, r1
	ldrb r0, [r1]
	ldrb r6, [r2]
	adds r0, r0, r6
	strb r0, [r2]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804A2B4
	ldr r2, _0804A388 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, ip
	asrs r5, r3, #0x10
	subs r1, r5, r1
	mov r6, sl
	lsls r2, r6, #2
	mov r3, r8
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r6, _0804A388 @ =gUnknown_03001D10
	ldr r1, [r6, #4]
	ldr r0, [sp, #8]
	asrs r4, r0, #0x10
	subs r1, r4, r1
	ldr r3, [sp, #0xc]
	adds r2, r3, r2
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r1
	strh r0, [r7, #0x12]
	movs r6, #0x10
	strb r6, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
	ldr r1, _0804A388 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r5, r5, r0
	mov r1, sl
	adds r1, #2
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r5
	mov r3, sb
	strh r0, [r3, #0x10]
	ldr r2, _0804A388 @ =gUnknown_03001D10
	ldr r0, [r2, #4]
	subs r4, r4, r0
	ldr r3, [sp, #0xc]
	adds r1, r3, r1
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r0, r0, r4
	mov r1, sb
	strh r0, [r1, #0x12]
	strb r6, [r1, #0x1c]
	mov r0, sb
	bl sub_80BF44C
	mov r0, sb
	bl sub_80C033C
	b _0804A3C4
	.align 2, 0
_0804A374: .4byte 0x0300007A
_0804A378: .4byte 0x0300007C
_0804A37C: .4byte 0x0300007F
_0804A380: .4byte 0x0300007E
_0804A384: .4byte 0x03000080
_0804A388: .4byte gUnknown_03001D10
_0804A38C:
	cmp r0, #5
	beq _0804A3C4
	ldr r1, _0804A3D4 @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r7, #0x10]
	ldr r0, [r1, #4]
	mov r2, r8
	subs r0, r2, r0
	strh r0, [r7, #0x12]
	ldr r0, [r4, #0x68]
	asrs r0, r0, #4
	cmp r0, #0
	bge _0804A3AA
	rsbs r0, r0, #0
_0804A3AA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0x40
	bls _0804A3B6
	movs r1, #0x40
_0804A3B6:
	strb r1, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0804A3C4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3D4: .4byte gUnknown_03001D10

	thumb_func_start sub_804A3D8
sub_804A3D8: @ 0x0804A3D8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _0804A3F4 @ =0x00000246
	bl sub_8003E28
	ldr r0, [r4, #0x74]
	bl sub_80C3304
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A3F4: .4byte 0x00000246

	thumb_func_start CreateEntity_Interactable122
CreateEntity_Interactable122: @ 0x0804A3F8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804A4D0 @ =sub_804A4EC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804A4D4 @ =sub_804A8E0
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	movs r1, #0
	mov sb, r1
	movs r2, #0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	mov r7, r8
	str r7, [r3]
	ldrb r1, [r7]
	strb r1, [r3, #0xb]
	strb r6, [r3, #0xc]
	ldr r6, _0804A4D8 @ =0x03000040
	adds r1, r0, r6
	strh r2, [r1]
	ldr r7, _0804A4DC @ =0x03000042
	adds r1, r0, r7
	strh r2, [r1]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	adds r7, #2
	adds r6, r0, r7
	strh r1, [r6]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r2, _0804A4E0 @ =0x03000046
	adds r4, r0, r2
	strh r1, [r4]
	movs r5, #0
	ldrsh r1, [r6, r5]
	lsls r1, r1, #8
	str r1, [r3, #0x38]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #8
	str r1, [r3, #0x3c]
	mov r2, r8
	movs r1, #3
	ldrsb r1, [r2, r1]
	lsls r1, r1, #3
	ldrh r5, [r6]
	adds r1, r1, r5
	ldr r7, _0804A4E4 @ =0x03000048
	adds r2, r0, r7
	strh r1, [r2]
	mov r2, r8
	movs r1, #4
	ldrsb r1, [r2, r1]
	lsls r1, r1, #3
	ldrh r5, [r4]
	adds r1, r1, r5
	adds r7, #2
	adds r2, r0, r7
	strh r1, [r2]
	mov r1, sb
	strb r1, [r3, #0xa]
	ldr r2, _0804A4E8 @ =0x03000010
	adds r0, r0, r2
	ldrh r1, [r6]
	strh r1, [r0, #0x10]
	ldrh r1, [r4]
	strh r1, [r0, #0x12]
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	mov r6, r8
	strb r1, [r6]
	bl sub_804A8F4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A4D0: .4byte sub_804A4EC
_0804A4D4: .4byte sub_804A8E0
_0804A4D8: .4byte 0x03000040
_0804A4DC: .4byte 0x03000042
_0804A4E0: .4byte 0x03000046
_0804A4E4: .4byte 0x03000048
_0804A4E8: .4byte 0x03000010

	thumb_func_start sub_804A4EC
sub_804A4EC: @ 0x0804A4EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804A51C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x10
	adds r0, r0, r1
	mov sb, r0
	movs r7, #0
	movs r1, #0
_0804A50C:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804A524
	ldr r0, _0804A520 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804A52E
	.align 2, 0
_0804A51C: .4byte gCurTask
_0804A520: .4byte gUnknown_030008A0
_0804A524:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804A52E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804A59C @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r2, [r4]
	ldr r0, _0804A5A0 @ =sub_8008CD0
	cmp r2, r0
	bne _0804A546
	b _0804A690
_0804A546:
	ldr r0, _0804A5A4 @ =sub_800E1E4
	cmp r2, r0
	bne _0804A54E
	b _0804A690
_0804A54E:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A5B0
	ldr r0, [r4, #0x6c]
	cmp r0, sb
	bne _0804A5B0
	ldr r0, _0804A5A8 @ =sub_800B81C
	cmp r2, r0
	beq _0804A574
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0804A574
	adds r0, r4, #0
	ldr r1, _0804A5AC @ =sub_800DE64
	bl sub_800D87C
_0804A574:
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, #0xc
	lsls r1, r1, #8
	ldr r0, [r6, #0x3c]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldrh r1, [r4, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0804A690
	.align 2, 0
_0804A59C: .4byte gUnknown_030015C0
_0804A5A0: .4byte sub_8008CD0
_0804A5A4: .4byte sub_800E1E4
_0804A5A8: .4byte sub_800B81C
_0804A5AC: .4byte sub_800DE64
_0804A5B0:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804A690
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldr r2, [r6, #0x3c]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, sb
	adds r3, r4, #0
	bl sub_8020950
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r5
	cmp r2, #0
	beq _0804A610
	adds r0, r4, #0
	bl sub_8016F28
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_801226C
	cmp r0, #0
	bge _0804A5FA
	adds r0, r4, #0
	bl sub_8008E38
	b _0804A63C
_0804A5FA:
	ldr r1, [r4]
	ldr r0, _0804A60C @ =sub_800B81C
	cmp r1, r0
	beq _0804A63C
	adds r0, r4, #0
	bl sub_800DE64
	b _0804A63C
	.align 2, 0
_0804A60C: .4byte sub_800B81C
_0804A610:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804A63C
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	cmp r0, #0
	bge _0804A63C
	adds r0, r4, #0
	bl sub_8008E38
_0804A63C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804A690
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804A664
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804A67E
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	b _0804A674
_0804A664:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A67E
	ldr r0, [r4, #0x10]
	ldr r1, _0804A6B8 @ =0xFFFFFF00
	adds r0, r0, r1
_0804A674:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0804A67E:
	movs r2, #0
	strh r2, [r4, #0x1c]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r2, [r4, #0x18]
_0804A690:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804A6A0
	b _0804A50C
_0804A6A0:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0804A6C8
	cmp r0, #0
	bge _0804A6BC
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	ble _0804A6C8
	b _0804A6C6
	.align 2, 0
_0804A6B8: .4byte 0xFFFFFF00
_0804A6BC:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bge _0804A6C8
_0804A6C6:
	movs r7, #0
_0804A6C8:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	ldrh r0, [r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
	lsls r0, r7, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804A704
	ldr r0, [r4, #4]
	movs r4, #1
	ands r0, r4
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0804A70E
	ldr r0, _0804A700 @ =0x00000263
	bl sub_8003DF0
	strb r4, [r6, #0xa]
	b _0804A70E
	.align 2, 0
_0804A700: .4byte 0x00000263
_0804A704:
	ldr r0, _0804A768 @ =0x00000263
	bl sub_8003E28
	movs r0, #0
	strb r0, [r6, #0xa]
_0804A70E:
	asrs r2, r5, #0x10
	cmp r2, #0
	ble _0804A78A
	ldr r1, [r6, #0x38]
	asrs r3, r1, #8
	adds r4, r6, #0
	adds r4, #0x48
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	blt _0804A730
	adds r4, r6, #0
	adds r4, #0x44
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	bge _0804A744
_0804A730:
	lsls r0, r2, #6
	adds r0, r1, r0
	str r0, [r6, #0x38]
	asrs r0, r0, #8
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0804A744
	lsls r0, r1, #8
	str r0, [r6, #0x38]
_0804A744:
	ldr r1, [r6, #0x3c]
	asrs r2, r1, #8
	adds r3, r6, #0
	adds r3, #0x4a
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0804A76C
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	bge _0804A7EE
	b _0804A7EA
	.align 2, 0
_0804A768: .4byte 0x00000263
_0804A76C:
	adds r3, r6, #0
	adds r3, #0x46
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0804A7EE
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	bge _0804A7EE
	b _0804A7EA
_0804A78A:
	cmp r2, #0
	bge _0804A7EE
	ldr r1, [r6, #0x38]
	asrs r3, r1, #8
	adds r4, r6, #0
	adds r4, #0x48
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	bgt _0804A7AA
	adds r4, r6, #0
	adds r4, #0x44
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	ble _0804A7BE
_0804A7AA:
	lsls r0, r2, #6
	adds r0, r1, r0
	str r0, [r6, #0x38]
	asrs r0, r0, #8
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bge _0804A7BE
	lsls r0, r1, #8
	str r0, [r6, #0x38]
_0804A7BE:
	ldr r1, [r6, #0x3c]
	asrs r2, r1, #8
	adds r3, r6, #0
	adds r3, #0x4a
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	blt _0804A7DA
	adds r3, r6, #0
	adds r3, #0x46
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bge _0804A7EE
_0804A7DA:
	asrs r0, r5, #0xa
	subs r0, r1, r0
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r0, r1
	ble _0804A7EE
_0804A7EA:
	lsls r0, r1, #8
	str r0, [r6, #0x3c]
_0804A7EE:
	bl sub_804A800
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804A800
sub_804A800: @ 0x0804A800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0804A870 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0x10
	adds r6, r3, r0
	ldr r1, [r7]
	mov r8, r1
	ldr r0, [r7, #0x38]
	lsls r0, r0, #8
	ldr r1, [r7, #0x3c]
	lsls r1, r1, #8
	ldr r4, _0804A874 @ =gUnknown_03001D10
	ldr r2, [r4]
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x10]
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	ldr r2, _0804A878 @ =0x03000044
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, _0804A87C @ =0x03000046
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	movs r4, #0x12
	ldrsh r3, [r6, r4]
	bl sub_802C140
	cmp r0, #0
	bne _0804A8C8
	movs r1, #0
	ldr r2, _0804A880 @ =gUnknown_030015C0
_0804A85A:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A884
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804A888
	.align 2, 0
_0804A870: .4byte gCurTask
_0804A874: .4byte gUnknown_03001D10
_0804A878: .4byte 0x03000044
_0804A87C: .4byte 0x03000046
_0804A880: .4byte gUnknown_030015C0
_0804A884:
	ldr r0, _0804A8C0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804A888:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0804A85A
	ldrb r0, [r7, #0xb]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0804A8C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804A8D4
	.align 2, 0
_0804A8C0: .4byte gUnknown_030008A0
_0804A8C4: .4byte gCurTask
_0804A8C8:
	adds r0, r6, #0
	bl sub_80BF44C
	adds r0, r6, #0
	bl sub_80C033C
_0804A8D4:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804A8E0
sub_804A8E0: @ 0x0804A8E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804A8F4
sub_804A8F4: @ 0x0804A8F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x12
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804A934 @ =0x000003A3
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A934: .4byte 0x000003A3

	thumb_func_start CreateEntity_Interactable123
CreateEntity_Interactable123: @ 0x0804A938
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804A9F0 @ =sub_804AA08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804A9F4 @ =sub_804AE64
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r6, _0804A9F8 @ =0x0300005C
	adds r1, r3, r6
	strb r2, [r1]
	ldr r7, _0804A9FC @ =0x0300005D
	adds r1, r3, r7
	strb r2, [r1]
	mov r2, r8
	ldrb r1, [r2, #5]
	lsls r1, r1, #2
	adds r6, #2
	adds r2, r3, r6
	strh r1, [r2]
	ldr r1, _0804AA00 @ =gUnknown_030008A0
	ldr r2, [r1, #0x1c]
	adds r7, #3
	adds r1, r3, r7
	strh r2, [r1]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	adds r6, #4
	adds r4, r3, r6
	strh r1, [r4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	adds r7, #4
	adds r2, r3, r7
	strh r1, [r2]
	ldr r1, _0804AA04 @ =0x0300000C
	adds r5, r3, r1
	ldrh r1, [r4]
	strh r1, [r5, #0x10]
	ldrh r1, [r2]
	strh r1, [r5, #0x12]
	subs r6, #0x2e
	adds r5, r3, r6
	ldrh r1, [r4]
	strh r1, [r5, #0x10]
	ldrh r1, [r2]
	strh r1, [r5, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_804AC58
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A9F0: .4byte sub_804AA08
_0804A9F4: .4byte sub_804AE64
_0804A9F8: .4byte 0x0300005C
_0804A9FC: .4byte 0x0300005D
_0804AA00: .4byte gUnknown_030008A0
_0804AA04: .4byte 0x0300000C

	thumb_func_start sub_804AA08
sub_804AA08: @ 0x0804AA08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0804AA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r1, _0804AA68 @ =0x0300005C
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804AA78
	ldr r2, _0804AA6C @ =0x03000062
	adds r0, r3, r2
	ldr r4, _0804AA70 @ =0x0300005E
	adds r2, r3, r4
	ldrh r1, [r0]
	ldrh r2, [r2]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, _0804AA74 @ =0x03000064
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	b _0804AA88
	.align 2, 0
_0804AA64: .4byte gCurTask
_0804AA68: .4byte 0x0300005C
_0804AA6C: .4byte 0x03000062
_0804AA70: .4byte 0x0300005E
_0804AA74: .4byte 0x03000064
_0804AA78:
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	str r3, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x10]
_0804AA88:
	movs r1, #0
	mov r2, sl
	adds r2, #0x62
	str r2, [sp, #0x18]
	movs r3, #0x5e
	add r3, sl
	mov r8, r3
	mov r4, sl
	adds r4, #0x64
	str r4, [sp, #0x1c]
	movs r0, #0x5c
	add r0, sl
	mov sb, r0
	subs r2, #2
	str r2, [sp, #0x14]
_0804AAA6:
	lsls r0, r1, #0x10
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0804AAB8
	ldr r0, _0804AAB4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804AAC2
	.align 2, 0
_0804AAB4: .4byte gUnknown_030008A0
_0804AAB8:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804AAC2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804AAF8 @ =gUnknown_030015C0
	adds r6, r0, r1
	movs r2, #0
_0804AAD2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xc
	mov r3, sl
	adds r7, r3, r0
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r3, [r4, r0]
	str r2, [sp, #0x24]
	cmp r1, #0
	beq _0804AAFC
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r3, r0
	b _0804AB02
	.align 2, 0
_0804AAF8: .4byte gUnknown_030015C0
_0804AAFC:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r3, r0
_0804AB02:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x1c]
	ldrh r5, [r3]
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804ABEA
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0804AB3E
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _0804AB5A
_0804AB3E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804AB5A
	ldr r1, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r3, [r6, #0x1a]
_0804AB5A:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804AB76
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	str r1, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
_0804AB76:
	mov r0, sb
	ldrb r3, [r0]
	cmp r3, #2
	beq _0804ABEA
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804ABEA
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804ABEA
	lsls r0, r1, #0x10
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _0804ABEA
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804ABEA
	cmp r3, #0
	bne _0804ABD2
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _0804ABEA
	cmp r1, #0x14
	beq _0804ABEA
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	b _0804ABEA
_0804ABD2:
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x25
	bhi _0804ABEA
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804ABEA
	adds r0, r6, #0
	bl sub_8008E38
_0804ABEA:
	ldr r3, [sp, #0x24]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804ABFC
	b _0804AAD2
_0804ABFC:
	ldr r1, [sp, #0x20]
	adds r0, r1, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804AC0A
	b _0804AAA6
_0804AC0A:
	mov r2, sb
	ldrb r0, [r2]
	ldr r2, _0804AC54 @ =gUnknown_030008A0
	cmp r0, #1
	bne _0804AC3A
	ldr r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, r8
	ldrh r0, [r4]
	cmp r0, #0x20
	bls _0804AC34
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _0804AC3A
_0804AC34:
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
_0804AC3A:
	ldr r0, [r2, #0x1c]
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	bl sub_804ACF0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC54: .4byte gUnknown_030008A0

	thumb_func_start sub_804AC58
sub_804AC58: @ 0x0804AC58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x1b
	bl sub_80C3224
	str r0, [r7, #0x68]
	adds r1, r7, #0
	adds r1, #0xc
	str r0, [r7, #0xc]
	movs r5, #0
	movs r4, #0
	ldr r0, _0804ACE8 @ =0x000003A2
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	adds r0, r1, #0
	bl sub_80BF44C
	adds r1, r7, #0
	adds r1, #0x34
	ldr r0, [r7, #0x68]
	str r0, [r7, #0x34]
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	adds r0, r6, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r6, [r1, #0x20]
	ldr r0, _0804ACEC @ =0x00081400
	str r0, [r1, #8]
	adds r0, r1, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACE8: .4byte 0x000003A2
_0804ACEC: .4byte 0x00081400

	thumb_func_start sub_804ACF0
sub_804ACF0: @ 0x0804ACF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804AD58 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0804AD5C @ =0x03000062
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0804AD60 @ =0x03000064
	adds r0, r4, r2
	ldrh r2, [r0]
	lsls r7, r1, #0x10
	asrs r0, r7, #0x10
	lsls r5, r2, #0x10
	asrs r1, r5, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _0804ADBC
	movs r2, #0
	ldr r3, _0804AD64 @ =gUnknown_030015C0
_0804AD2E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xc
	mov r4, r8
	adds r5, r4, r0
	movs r1, #0
	adds r7, r2, #0
_0804AD42:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804AD68
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804AD6C
	.align 2, 0
_0804AD58: .4byte gCurTask
_0804AD5C: .4byte 0x03000062
_0804AD60: .4byte 0x03000064
_0804AD64: .4byte gUnknown_030015C0
_0804AD68:
	ldr r0, _0804ADB4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804AD6C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #1
	ble _0804AD42
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804AD2E
	mov r4, r8
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0804ADB8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804AE4E
	.align 2, 0
_0804ADB4: .4byte gUnknown_030008A0
_0804ADB8: .4byte gCurTask
_0804ADBC:
	movs r3, #0
	mov sl, r7
	mov sb, r5
	ldr r2, _0804ADF0 @ =0x0300005E
	adds r7, r4, r2
_0804ADC6:
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	mov r4, r8
	adds r5, r4, r0
	ldr r0, _0804ADF4 @ =gUnknown_03001D10
	ldr r1, [r0]
	mov r4, sl
	asrs r0, r4, #0x10
	subs r1, r0, r1
	strh r1, [r5, #0x10]
	adds r6, r3, #0
	cmp r2, #0
	bne _0804ADF8
	ldrh r0, [r7]
	subs r0, r1, r0
	b _0804ADFC
	.align 2, 0
_0804ADF0: .4byte 0x0300005E
_0804ADF4: .4byte gUnknown_03001D10
_0804ADF8:
	ldrh r0, [r7]
	adds r0, r1, r0
_0804ADFC:
	strh r0, [r5, #0x10]
	ldr r0, _0804AE20 @ =gUnknown_03001D10
	ldr r1, [r0, #4]
	mov r2, sb
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r1, #0
_0804AE0C:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804AE24
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0804AE2A
	.align 2, 0
_0804AE20: .4byte gUnknown_03001D10
_0804AE24:
	ldr r0, [r5, #8]
	ldr r1, _0804AE60 @ =0xFFFFF7FF
	ands r0, r1
_0804AE2A:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_80C033C
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804AE0C
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804ADC6
_0804AE4E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE60: .4byte 0xFFFFF7FF

	thumb_func_start sub_804AE64
sub_804AE64: @ 0x0804AE64
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable124
CreateEntity_Interactable124: @ 0x0804AE78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804AF18 @ =sub_804AF2C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804AF1C @ =sub_804B3CC
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r1, [r1]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	strh r3, [r2, #0x3c]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r2, #0x3e]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r7, _0804AF20 @ =0x03000040
	adds r5, r0, r7
	strh r1, [r5]
	ldrb r3, [r3, #7]
	movs r1, #3
	ands r1, r3
	ldr r3, _0804AF24 @ =0x03000042
	adds r6, r0, r3
	strb r1, [r6]
	subs r7, #0x34
	adds r0, r0, r7
	ldr r4, _0804AF28 @ =gUnknown_03001D10
	ldr r3, [r4]
	ldrh r1, [r2, #0x3e]
	subs r1, r1, r3
	strh r1, [r0, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, r8
	strb r1, [r3]
	ldrb r1, [r6]
	bl sub_804B0F8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AF18: .4byte sub_804AF2C
_0804AF1C: .4byte sub_804B3CC
_0804AF20: .4byte 0x03000040
_0804AF24: .4byte 0x03000042
_0804AF28: .4byte gUnknown_03001D10

	thumb_func_start sub_804AF2C
sub_804AF2C: @ 0x0804AF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804AF68 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov sb, r1
	ldrh r1, [r5, #0x3e]
	ldr r2, _0804AF6C @ =0x03000040
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r7, r0, #0x10
_0804AF58:
	lsls r0, r3, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0804AF74
	ldr r0, _0804AF70 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804AF7E
	.align 2, 0
_0804AF68: .4byte gCurTask
_0804AF6C: .4byte 0x03000040
_0804AF70: .4byte gUnknown_030008A0
_0804AF74:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804AF7E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804AFF4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804B004
	ldr r1, [r4]
	ldr r0, _0804AFF8 @ =sub_800B920
	cmp r1, r0
	bne _0804AFA2
	b _0804B0D6
_0804AFA2:
	ldr r0, _0804AFFC @ =sub_800DEC4
	cmp r1, r0
	bne _0804AFAA
	b _0804B0D6
_0804AFAA:
	str r4, [sp]
	str r2, [sp, #4]
	mov r0, sb
	mov r3, r8
	asrs r1, r3, #0x10
	asrs r2, r7, #0x10
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _0804B004
	movs r0, #0x1e
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	orrs r1, r0
	str r1, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0804B000 @ =sub_800B8A8
	bl sub_800D87C
	adds r0, r4, #0
	bl sub_8016F28
	b _0804B0D6
	.align 2, 0
_0804AFF4: .4byte gUnknown_030015C0
_0804AFF8: .4byte sub_800B920
_0804AFFC: .4byte sub_800DEC4
_0804B000: .4byte sub_800B8A8
_0804B004:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804B01A
	cmp r1, #8
	beq _0804B01A
	cmp r1, #0x10
	bne _0804B0D6
_0804B01A:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B0D6
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #0x10
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	ldr r1, [r4]
	ldr r0, _0804B068 @ =sub_800B9CC
	cmp r1, r0
	bne _0804B070
	cmp r2, #0
	beq _0804B070
	movs r3, #0x3e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	orrs r1, r0
	str r1, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0804B06C @ =sub_800B8A8
	bl sub_800D87C
	b _0804B0D6
	.align 2, 0
_0804B068: .4byte sub_800B9CC
_0804B06C: .4byte sub_800B8A8
_0804B070:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0804B088
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804B0BA
_0804B088:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804B0BA
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804B0AC
	ldr r3, _0804B0A8 @ =0xFFFFFF00
	b _0804B0B0
	.align 2, 0
_0804B0A8: .4byte 0xFFFFFF00
_0804B0AC:
	movs r3, #0x80
	lsls r3, r3, #1
_0804B0B0:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804B0BA:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804B0D6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804B0D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804B0E6
	b _0804AF58
_0804B0E6:
	bl sub_804B168
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804B0F8
sub_804B0F8: @ 0x0804B0F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r6, #0
	movs r0, #0x30
	bl sub_80C3224
	str r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bne _0804B120
	movs r1, #0
	ldr r0, _0804B11C @ =0x0000039B
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	b _0804B130
	.align 2, 0
_0804B11C: .4byte 0x0000039B
_0804B120:
	ldr r0, _0804B164 @ =0x0000039B
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	cmp r4, #1
	bne _0804B130
	movs r6, #0x80
	lsls r6, r6, #3
_0804B130:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r5, #8]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B164: .4byte 0x0000039B

	thumb_func_start sub_804B168
sub_804B168: @ 0x0804B168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B1B0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0804B1B4 @ =0x0300000C
	adds r4, r5, r1
	ldr r7, [r6]
	ldr r2, _0804B1B8 @ =0x03000040
	adds r1, r5, r2
	ldrh r3, [r6, #0x3e]
	mov sb, r3
	movs r2, #0x3e
	ldrsh r0, [r6, r2]
	ldrh r3, [r1]
	mov sl, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_802C198
	cmp r0, #0
	bne _0804B1BC
	ldrb r0, [r6, #0xa]
	strb r0, [r7]
	mov r3, r8
	ldr r0, [r3]
	bl TaskDestroy
	b _0804B232
	.align 2, 0
_0804B1B0: .4byte gCurTask
_0804B1B4: .4byte 0x0300000C
_0804B1B8: .4byte 0x03000040
_0804B1BC:
	ldrh r0, [r6, #0x3c]
	cmp r0, #0
	beq _0804B1DC
	subs r0, #1
	strh r0, [r6, #0x3c]
	ldr r1, _0804B1D4 @ =0x03000042
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B1D8
	movs r0, #1
	b _0804B1E8
	.align 2, 0
_0804B1D4: .4byte 0x03000042
_0804B1D8:
	movs r0, #3
	b _0804B1E8
_0804B1DC:
	ldr r2, _0804B240 @ =0x03000042
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B1E8
	movs r0, #2
_0804B1E8:
	strb r0, [r4, #0x1a]
	ldr r2, _0804B244 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B226
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80C033C
	ldr r0, [r4, #8]
	ldr r1, _0804B248 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
_0804B226:
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0804B232:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B240: .4byte 0x03000042
_0804B244: .4byte gUnknown_03001D10
_0804B248: .4byte 0xFFFFFBFF

	thumb_func_start sub_804B24C
sub_804B24C: @ 0x0804B24C
	push {r4, lr}
	ldr r2, _0804B274 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B278
	ldr r0, [r2]
	bl TaskDestroy
	b _0804B2B8
	.align 2, 0
_0804B274: .4byte gCurTask
_0804B278:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _0804B2C0 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r1, [r3, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B2B8
	adds r0, r4, #0
	bl sub_80C033C
_0804B2B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2C0: .4byte gUnknown_03001D10

	thumb_func_start sub_804B2C4
sub_804B2C4: @ 0x0804B2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x30]
	mov r8, r0
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0804B3B4 @ =gUnknown_080D03D8
	add r0, sp, #4
	movs r2, #6
	bl sub_80CA3B0
	ldr r0, _0804B3B8 @ =sub_804B24C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B3BC @ =sub_804B3E0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r3, _0804B3C0 @ =0x03000010
	adds r4, r4, r3
	movs r7, #0
	mov r0, r8
	strb r0, [r6, #0xe]
	movs r2, #0
	mov r8, r2
	movs r0, #0x20
	strh r0, [r6, #0xc]
	ldr r2, _0804B3C4 @ =gUnknown_082B48B4
	ldr r1, _0804B3C8 @ =0x000003FF
	ldr r3, [sp, #0xc]
	ands r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #0xa]
	movs r0, #4
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	mov r3, r8
	strb r3, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r7, [r4, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r6]
	mov r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r6, #4]
	adds r0, r4, #0
	bl sub_80BF44C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B3B4: .4byte gUnknown_080D03D8
_0804B3B8: .4byte sub_804B24C
_0804B3BC: .4byte sub_804B3E0
_0804B3C0: .4byte 0x03000010
_0804B3C4: .4byte gUnknown_082B48B4
_0804B3C8: .4byte 0x000003FF

	thumb_func_start sub_804B3CC
sub_804B3CC: @ 0x0804B3CC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804B3E0
sub_804B3E0: @ 0x0804B3E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable125
CreateEntity_Interactable125: @ 0x0804B3F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B450
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable126
CreateEntity_Interactable126: @ 0x0804B420
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B450
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804B44C
sub_804B44C: @ 0x0804B44C
	bx lr
	.align 2, 0

	thumb_func_start sub_804B450
sub_804B450: @ 0x0804B450
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804B4D0 @ =sub_804B4DC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B4D4 @ =sub_804B44C
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	strh r2, [r0, #0x34]
	strh r2, [r0, #0x36]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	ldr r7, _0804B4D8 @ =0x0300000C
	adds r3, r3, r7
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r3, #0x10]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r3, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4D0: .4byte sub_804B4DC
_0804B4D4: .4byte sub_804B44C
_0804B4D8: .4byte 0x0300000C

	thumb_func_start sub_804B4DC
sub_804B4DC: @ 0x0804B4DC
	bx lr
	.align 2, 0

	thumb_func_start sub_804B4E0
sub_804B4E0: @ 0x0804B4E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B51C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r5, [r1]
	ldr r7, [r1, #0xc]
	ldr r6, [r1, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804B520
	mov r1, r8
	ldrb r0, [r1, #0xa]
	strb r0, [r5]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804B5EA
	.align 2, 0
_0804B51C: .4byte gCurTask
_0804B520:
	lsls r1, r6, #8
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	lsls r1, r7, #8
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r6, r1, r0
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r7, r6, r0
	movs r1, #0
_0804B546:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804B558
	ldr r0, _0804B554 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804B562
	.align 2, 0
_0804B554: .4byte gUnknown_030008A0
_0804B558:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B562:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B5C8 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804B586
	cmp r1, #8
	beq _0804B586
	cmp r1, #0x10
	bne _0804B5DC
_0804B586:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B5DC
	ldr r1, [r4]
	ldr r0, _0804B5CC @ =sub_800E604
	cmp r1, r0
	beq _0804B5DC
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0804B5DC
	ldr r0, [r4, #0x10]
	cmp r0, r6
	ble _0804B5DC
	cmp r0, r7
	bge _0804B5DC
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _0804B5DC
	cmp r0, sl
	bge _0804B5DC
	mov r1, r8
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _0804B5D4
	adds r0, r4, #0
	ldr r1, _0804B5D0 @ =sub_800E5EC
	bl sub_800D87C
	b _0804B5DC
	.align 2, 0
_0804B5C8: .4byte gUnknown_030015C0
_0804B5CC: .4byte sub_800E604
_0804B5D0: .4byte sub_800E5EC
_0804B5D4:
	adds r0, r4, #0
	ldr r1, _0804B5F8 @ =sub_800E5D0
	bl sub_800D87C
_0804B5DC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B546
_0804B5EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B5F8: .4byte sub_800E5D0

	thumb_func_start sub_804B5FC
sub_804B5FC: @ 0x0804B5FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B638 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldr r1, [r5, #0xc]
	mov r8, r1
	ldr r7, [r5, #0x10]
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804B63C
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804B6D8
	.align 2, 0
_0804B638: .4byte gCurTask
_0804B63C:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r6, r7, r0
	movs r1, #0
_0804B664:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804B678
	ldr r0, _0804B674 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804B682
	.align 2, 0
_0804B674: .4byte gUnknown_030008A0
_0804B678:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B682:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B6E8 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B6CA
	ldr r1, [r4]
	ldr r0, _0804B6EC @ =sub_800E604
	cmp r1, r0
	bne _0804B6CA
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _0804B6CA
	cmp r0, r6
	bge _0804B6CA
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _0804B6CA
	cmp r0, sl
	bge _0804B6CA
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _0804B6F0 @ =0x00000257
	bl sub_8004F10
	adds r0, r4, #0
	bl sub_8006824
_0804B6CA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B664
_0804B6D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6E8: .4byte gUnknown_030015C0
_0804B6EC: .4byte sub_800E604
_0804B6F0: .4byte 0x00000257

	thumb_func_start CreateEntity_Interactable127
CreateEntity_Interactable127: @ 0x0804B6F4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804B774 @ =sub_804B4E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B778 @ =sub_804B7F8
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r2, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0xc]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x10]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B774: .4byte sub_804B4E0
_0804B778: .4byte sub_804B7F8

	thumb_func_start CreateEntity_Interactable128
CreateEntity_Interactable128: @ 0x0804B77C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804B7F0 @ =sub_804B5FC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B7F4 @ =0x0804B7FD
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r2, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0xc]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B7F0: .4byte sub_804B5FC
_0804B7F4: .4byte sub_804B7FC

	thumb_func_start sub_804B7F8
sub_804B7F8: @ 0x0804B7F8
	bx lr
	.align 2, 0

	thumb_func_start sub_804B7FC
sub_804B7FC: @ 0x0804B7FC
	bx lr
	.align 2, 0

	thumb_func_start sub_804B800
sub_804B800: @ 0x0804B800
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804B8AC @ =sub_804B8B8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B8B0 @ =sub_804BA90
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r2, #0
	strh r6, [r3, #4]
	strh r7, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	strh r2, [r3, #0x34]
	ldrb r0, [r5, #7]
	lsrs r0, r0, #6
	ldr r2, _0804B8B4 @ =0x03000036
	adds r1, r1, r2
	strb r0, [r1]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804B870
	movs r4, #1
_0804B856:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _0804B870
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0804B856
_0804B870:
	adds r1, r3, #0
	adds r1, #0x37
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	str r0, [r3, #0x3c]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r3, #0
	adds r1, #0x36
	ldrb r1, [r1]
	bl sub_804BAA4
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B8AC: .4byte sub_804B8B8
_0804B8B0: .4byte sub_804BA90
_0804B8B4: .4byte 0x03000036

	thumb_func_start sub_804B8B8
sub_804B8B8: @ 0x0804B8B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804B8EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	movs r1, #0
	ldr r0, _0804B8F0 @ =0x00000395
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #2
	mov r8, r0
_0804B8DE:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0804B8F8
	ldr r0, _0804B8F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804B902
	.align 2, 0
_0804B8EC: .4byte gCurTask
_0804B8F0: .4byte 0x00000395
_0804B8F4: .4byte gUnknown_030008A0
_0804B8F8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B902:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B948 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _0804B980
	ldrh r0, [r6, #0xc]
	cmp r0, sb
	bne _0804B980
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	str r4, [sp]
	str r3, [sp, #4]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804B980
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, r8
	ble _0804B950
	adds r0, r4, #0
	ldr r1, _0804B94C @ =sub_8009B4C
	bl sub_800D87C
	b _0804B958
	.align 2, 0
_0804B948: .4byte gUnknown_030015C0
_0804B94C: .4byte sub_8009B4C
_0804B950:
	adds r0, r4, #0
	ldr r1, _0804B9A0 @ =sub_800EA0C
	bl sub_800D87C
_0804B958:
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0xa4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_804BAEC
	ldr r0, _0804B9A4 @ =0x0000FFF6
	strh r0, [r5, #0x34]
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_8003DF0
_0804B980:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B8DE
	bl sub_804B9A8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9A0: .4byte sub_800EA0C
_0804B9A4: .4byte 0x0000FFF6

	thumb_func_start sub_804B9A8
sub_804B9A8: @ 0x0804B9A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _0804B9FC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r4]
	ldrh r1, [r4, #0x38]
	mov r8, r1
	movs r2, #0x38
	ldrsh r0, [r4, r2]
	ldrh r3, [r4, #0x3c]
	mov sb, r3
	movs r2, #0x3c
	ldrsh r1, [r4, r2]
	bl sub_802C198
	cmp r0, #0
	beq _0804B9EE
	ldrh r1, [r4, #0x34]
	movs r3, #0x34
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0804BA00
	adds r0, r1, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804BA00
_0804B9EE:
	ldrb r0, [r4, #0xa]
	strb r0, [r7]
	ldr r0, [r6]
	bl TaskDestroy
	b _0804BA26
	.align 2, 0
_0804B9FC: .4byte gCurTask
_0804BA00:
	ldr r2, _0804BA34 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_0804BA26:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA34: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Interactable129
CreateEntity_Interactable129: @ 0x0804BA38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B800
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable130
CreateEntity_Interactable130: @ 0x0804BA64
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B800
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804BA90
sub_804BA90: @ 0x0804BA90
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804BAA4
sub_804BAA4: @ 0x0804BAA4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804BAE8 @ =0x00000395
	strh r0, [r4, #0xc]
	strb r5, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BAE8: .4byte 0x00000395

	thumb_func_start sub_804BAEC
sub_804BAEC: @ 0x0804BAEC
	movs r2, #0xf4
	lsls r2, r2, #2
	strh r2, [r0, #0xc]
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0

	thumb_func_start CreateEntity_Interactable131
CreateEntity_Interactable131: @ 0x0804BAF8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804BBA4 @ =sub_804BBC8
	movs r1, #0xc2
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0804BBA8 @ =sub_804C214
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r6, _0804BBAC @ =0x0300016C
	adds r1, r3, r6
	mov r2, sb
	strh r2, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r1, _0804BBB0 @ =0x0000FFE8
	strh r1, [r2]
	ldr r1, _0804BBB4 @ =0x03000170
	adds r2, r3, r1
	movs r1, #0x18
	strh r1, [r2]
	adds r6, #4
	adds r2, r3, r6
	ldr r1, _0804BBB8 @ =0x0000FF40
	strh r1, [r2]
	ldr r2, _0804BBBC @ =0x03000174
	adds r1, r3, r2
	mov r6, sb
	strh r6, [r1]
	ldr r1, _0804BBC0 @ =0x0300017C
	adds r2, r3, r1
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r2]
	ldr r1, _0804BBC4 @ =0x03000180
	adds r3, r3, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	str r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r6]
	bl sub_804BEE4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BBA4: .4byte sub_804BBC8
_0804BBA8: .4byte sub_804C214
_0804BBAC: .4byte 0x0300016C
_0804BBB0: .4byte 0x0000FFE8
_0804BBB4: .4byte 0x03000170
_0804BBB8: .4byte 0x0000FF40
_0804BBBC: .4byte 0x03000174
_0804BBC0: .4byte 0x0300017C
_0804BBC4: .4byte 0x03000180

	thumb_func_start sub_804BBC8
sub_804BBC8: @ 0x0804BBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0804BC24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r0, [sp, #0xc]
	ldr r0, _0804BC28 @ =0x0300016C
	adds r5, r3, r0
	ldrh r4, [r5]
	cmp r4, #0
	bne _0804BC68
	ldr r1, _0804BC2C @ =0x0300016E
	adds r2, r3, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0804BC38
	ldr r0, _0804BC30 @ =0x03000172
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	adds r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0804BC34 @ =0xFFFFFF00
	cmp r1, r0
	bge _0804BCBC
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	b _0804BCBC
	.align 2, 0
_0804BC24: .4byte gCurTask
_0804BC28: .4byte 0x0300016C
_0804BC2C: .4byte 0x0300016E
_0804BC30: .4byte 0x03000172
_0804BC34: .4byte 0xFFFFFF00
_0804BC38:
	movs r0, #1
	strh r0, [r5]
	ldr r1, _0804BC58 @ =0x03000172
	adds r0, r3, r1
	strh r4, [r0]
	ldr r0, _0804BC5C @ =0x03000174
	adds r1, r3, r0
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, _0804BC60 @ =0x0000FFE8
	strh r0, [r2]
	ldr r0, _0804BC64 @ =0x0000025B
	bl sub_8003DF0
	b _0804BCBC
	.align 2, 0
_0804BC58: .4byte 0x03000172
_0804BC5C: .4byte 0x03000174
_0804BC60: .4byte 0x0000FFE8
_0804BC64: .4byte 0x0000025B
_0804BC68:
	ldr r1, _0804BC98 @ =0x03000170
	adds r4, r3, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x17
	ble _0804BCA0
	ldr r0, _0804BC9C @ =0x03000174
	adds r1, r3, r0
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _0804BCBC
	strh r1, [r4]
	b _0804BCBC
	.align 2, 0
_0804BC98: .4byte 0x03000170
_0804BC9C: .4byte 0x03000174
_0804BCA0:
	movs r2, #0
	strh r2, [r5]
	ldr r0, _0804BDC0 @ =0x03000172
	adds r1, r3, r0
	ldr r0, _0804BDC4 @ =0x0000FF40
	strh r0, [r1]
	ldr r1, _0804BDC8 @ =0x03000174
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x18
	strh r0, [r4]
	ldr r0, _0804BDCC @ =0x0000025B
	bl sub_8003DF0
_0804BCBC:
	movs r2, #0
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x1c]
	ldr r0, _0804BDD0 @ =gUnknown_082B48B4
	mov ip, r0
	movs r3, #0xb7
	lsls r3, r3, #1
	ldr r1, [sp, #0xc]
	adds r3, r1, r3
	str r3, [sp, #0x18]
_0804BCD2:
	lsls r2, r2, #0x10
	mov sb, r2
	mov r0, sb
	asrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0x2c
	mov r0, r8
	muls r0, r1, r0
	adds r0, #0xc
	ldr r2, [sp, #0xc]
	adds r7, r2, r0
	mov r3, r8
	lsls r4, r3, #1
	mov r3, sp
	adds r3, r3, r4
	adds r3, #4
	ldrh r0, [r7]
	strh r0, [r3]
	ldr r0, [sp, #0x1c]
	adds r5, r0, r4
	ldrh r0, [r7, #2]
	strh r0, [r5]
	ldr r1, [sp, #0x18]
	adds r6, r1, r4
	ldrh r1, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x17
	strh r2, [r7]
	ldrh r1, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	strh r0, [r7, #2]
	ldrh r0, [r3]
	subs r0, r0, r2
	strh r0, [r3]
	ldrh r0, [r5]
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r5]
	movs r2, #0
	mov r5, sb
	add r4, r8
_0804BD40:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, r1
	movs r2, #0x2c
	muls r0, r2, r0
	adds r0, #0x64
	ldr r3, [sp, #0xc]
	adds r7, r3, r0
	ldrh r2, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	adds r1, #1
	muls r0, r1, r0
	strh r0, [r7]
	ldrh r2, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r2
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	muls r0, r1, r0
	strh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _0804BD40
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804BCD2
	ldr r1, [sp, #0xc]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0
_0804BDB0:
	lsls r0, r2, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0804BDDC
	ldr r0, _0804BDD8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804BDE6
	.align 2, 0
_0804BDC0: .4byte 0x03000172
_0804BDC4: .4byte 0x0000FF40
_0804BDC8: .4byte 0x03000174
_0804BDCC: .4byte 0x0000025B
_0804BDD0: .4byte gUnknown_082B48B4
_0804BDD4: .4byte 0x000003FF
_0804BDD8: .4byte gUnknown_030008A0
_0804BDDC:
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804BDE6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804BEE0 @ =gUnknown_030015C0
	adds r0, r0, r1
	mov sl, r0
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804BE0C
	cmp r1, #8
	beq _0804BE0C
	cmp r1, #0x10
	bne _0804BEBA
_0804BE0C:
	mov r0, sl
	bl sub_802C0D4
	cmp r0, #0
	bne _0804BEBA
	movs r2, #0
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #0x14]
	lsls r6, r1, #0x10
_0804BE22:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x2c
	muls r0, r3, r0
	adds r0, #0xc
	ldr r1, [sp, #0xc]
	adds r7, r1, r0
	adds r4, r7, #4
	mov r0, sl
	ldr r1, [r0, #4]
	movs r0, #0x20
	ands r1, r0
	adds r5, r2, #0
	cmp r1, #0
	beq _0804BE76
	mov r1, sl
	ldr r0, [r1, #0x6c]
	cmp r0, r4
	bne _0804BE76
	lsls r2, r3, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	mov r3, sl
	ldr r0, [r3, #0x10]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r3, [sp, #0x1c]
	adds r2, r3, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #8
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0, #0x14]
_0804BE76:
	movs r2, #0
	ldrsh r1, [r7, r2]
	mov r3, r8
	asrs r0, r3, #0x10
	adds r1, r1, r0
	movs r0, #2
	ldrsh r2, [r7, r0]
	asrs r0, r6, #0x10
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r3, sl
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804BEAC
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	mov r2, sl
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_0804BEAC:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804BE22
_0804BEBA:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804BECA
	b _0804BDB0
_0804BECA:
	bl sub_804C008
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BEE0: .4byte gUnknown_030015C0

	thumb_func_start sub_804BEE4
sub_804BEE4: @ 0x0804BEE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0804BF04 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #5
	bne _0804BF0C
	ldr r0, _0804BF08 @ =0x000003AF
	mov sb, r0
	mov r1, sb
	str r1, [sp]
	b _0804BF16
	.align 2, 0
_0804BF04: .4byte gUnknown_030008A0
_0804BF08: .4byte 0x000003AF
_0804BF0C:
	movs r3, #0xe6
	lsls r3, r3, #2
	mov sb, r3
	mov r0, sb
	str r0, [sp]
_0804BF16:
	movs r0, #0x1a
	bl sub_80C3224
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0x10
	str r0, [r7, #0x10]
	movs r4, #0
	mov r3, sb
	strh r3, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	mov r8, r3
	mov r0, r8
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2, #0x20]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r2, #8]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0x3c
	mov r3, sl
	ldr r0, [r3]
	str r0, [r7, #0x3c]
	mov r0, sb
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r3, #0xc0
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	adds r0, r6, #0
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	str r6, [r2, #0x20]
	str r5, [r2, #8]
	adds r0, r2, #0
	bl sub_80BF44C
	movs r0, #0
	movs r1, #0x19
	lsls r6, r1, #5
	movs r3, #0
	mov r8, r3
	movs r5, #0
_0804BF9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x2c
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, #0x64
	adds r1, r7, r1
	adds r2, r1, #4
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	adds r0, r0, r6
	str r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0x1a]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #5
	ble _0804BF9E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804C008
sub_804C008: @ 0x0804C008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, _0804C108 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r1, [r0]
	str r1, [sp]
	ldr r2, _0804C10C @ =0x0300017C
	adds r0, r4, r2
	ldrh r1, [r0]
	ldr r3, _0804C110 @ =0x03000180
	adds r0, r4, r3
	ldrh r0, [r0]
	mov ip, r0
	ldr r0, _0804C114 @ =0x0300000C
	adds r5, r4, r0
	ldr r2, _0804C118 @ =0x03000010
	adds r7, r4, r2
	ldrh r2, [r5]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r0, r1, #0x10
	adds r2, r0, r2
	ldr r3, _0804C11C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r7, #0x10]
	ldrh r2, [r5, #2]
	mov r5, ip
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	asrs r1, r5, #0x10
	adds r2, r1, r2
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r7, #0x12]
	ldr r2, _0804C120 @ =0x03000038
	adds r5, r4, r2
	ldr r3, _0804C124 @ =0x0300003C
	adds r4, r4, r3
	ldrh r2, [r5]
	adds r2, r0, r2
	str r2, [sp, #0xc]
	ldr r2, _0804C11C @ =gUnknown_03001D10
	ldr r2, [r2]
	ldr r3, [sp, #0xc]
	subs r3, r3, r2
	strh r3, [r4, #0x10]
	ldrh r2, [r5, #2]
	adds r2, r1, r2
	ldr r5, _0804C11C @ =gUnknown_03001D10
	ldr r3, [r5, #4]
	subs r2, r2, r3
	strh r2, [r4, #0x12]
	bl sub_802C198
	cmp r0, #1
	bne _0804C094
	movs r0, #1
	mov r8, r0
_0804C094:
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #0x12
	ldrsh r1, [r7, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0B4
	movs r1, #2
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0B4:
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0D4
	movs r1, #4
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0D4:
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0804C17C
	movs r2, #0
	ldr r3, _0804C128 @ =gUnknown_030015C0
_0804C0E2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, #0xc
	mov r1, sl
	adds r5, r1, r0
	movs r1, #0
	adds r7, r2, #0
_0804C0F4:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804C12C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804C130
	.align 2, 0
_0804C108: .4byte gCurTask
_0804C10C: .4byte 0x0300017C
_0804C110: .4byte 0x03000180
_0804C114: .4byte 0x0300000C
_0804C118: .4byte 0x03000010
_0804C11C: .4byte gUnknown_03001D10
_0804C120: .4byte 0x03000038
_0804C124: .4byte 0x0300003C
_0804C128: .4byte gUnknown_030015C0
_0804C12C:
	ldr r0, _0804C174 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804C130:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl sub_80213B0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #8]
	cmp r0, #1
	ble _0804C0F4
	adds r0, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804C0E2
	mov r3, sl
	ldrb r0, [r3, #0xa]
	ldr r5, [sp]
	strb r0, [r5]
	ldr r0, _0804C178 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804C200
	.align 2, 0
_0804C174: .4byte gUnknown_030008A0
_0804C178: .4byte gCurTask
_0804C17C:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804C190
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0804C190:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804C1A4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0804C1A4:
	movs r1, #0
	ldr r0, [sp, #4]
	mov r8, r0
	ldr r7, _0804C210 @ =gUnknown_03001D10
_0804C1AC:
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x2c
	muls r0, r6, r0
	adds r0, #0x64
	mov r1, sl
	adds r5, r1, r0
	adds r4, r5, #4
	mov r2, sb
	asrs r0, r2, #0x10
	ldrh r3, [r5]
	adds r0, r0, r3
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	movs r3, #0x12
	ldrsh r1, [r4, r3]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C1F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
_0804C1F4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C1AC
_0804C200:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C210: .4byte gUnknown_03001D10

	thumb_func_start sub_804C214
sub_804C214: @ 0x0804C214
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804C228 @ =0x03000178
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80C3304
	pop {r0}
	bx r0
	.align 2, 0
_0804C228: .4byte 0x03000178

	thumb_func_start sub_804C22C
sub_804C22C: @ 0x0804C22C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804C358 @ =sub_804C364
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804C35C @ =sub_804C6D4
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	str r7, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r3, sl
	str r3, [r7]
	ldrb r0, [r3]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	lsls r6, r0, #8
	str r6, [r7, #0xc]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	lsls r4, r0, #8
	str r4, [r7, #0x10]
	asrs r1, r6, #8
	strh r1, [r7, #0x24]
	asrs r2, r4, #8
	strh r2, [r7, #0x26]
	mov r5, sb
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x28]
	ldr r0, _0804C360 @ =0x0300002B
	add r8, r0
	mov r1, r8
	strb r5, [r1]
	mov r3, sl
	movs r2, #4
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0xb
	adds r2, r4, r2
	ldrb r3, [r3, #6]
	lsls r3, r3, #0xa
	mov r5, sl
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r0, r6, r0
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xa
	str r3, [r7, #0x14]
	str r1, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r2, r2, r3
	str r2, [r7, #0x20]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C308
	movs r3, #1
_0804C2EC:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #4
	bgt _0804C308
	mov r5, sl
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0804C2EC
_0804C308:
	adds r1, r2, #1
	ldr r0, [sp, #4]
	adds r0, #0x2a
	strb r1, [r0]
	mov r1, sl
	ldrb r0, [r1, #7]
	lsrs r0, r0, #6
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	mov r3, sl
	ldrb r0, [r3, #7]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	adds r2, r7, #0
	adds r2, #0x5d
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x2c
	asrs r1, r6, #8
	strh r1, [r0, #0x10]
	asrs r1, r4, #8
	strh r1, [r0, #0x12]
	movs r5, #2
	rsbs r5, r5, #0
	adds r1, r5, #0
	strb r1, [r3]
	ldrb r1, [r2]
	bl sub_804C608
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C358: .4byte sub_804C364
_0804C35C: .4byte sub_804C6D4
_0804C360: .4byte 0x0300002B

	thumb_func_start sub_804C364
sub_804C364: @ 0x0804C364
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r0, _0804C398 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	mov sb, r6
	adds r0, #0x2c
	adds r7, r1, r0
	adds r0, r6, #0
	bl sub_804DD68
	movs r1, #0
_0804C388:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804C3A0
	ldr r0, _0804C39C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804C3AA
	.align 2, 0
_0804C398: .4byte gCurTask
_0804C39C: .4byte gUnknown_030008A0
_0804C3A0:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804C3AA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804C460 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0804C3C4
	b _0804C59E
_0804C3C4:
	movs r5, #0
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	cmp r1, #0xa8
	beq _0804C406
	cmp r1, #0xb8
	beq _0804C406
	cmp r1, #0xcc
	beq _0804C406
	cmp r1, #0xd5
	bne _0804C3E0
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _0804C406
_0804C3E0:
	cmp r1, #0xe6
	beq _0804C406
	cmp r1, #0xfe
	beq _0804C406
	cmp r1, #0xff
	beq _0804C406
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _0804C406
	adds r0, #1
	cmp r1, r0
	beq _0804C406
	adds r0, #1
	cmp r1, r0
	beq _0804C406
	subs r0, #4
	cmp r1, r0
	bne _0804C422
_0804C406:
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804C422
	movs r5, #1
_0804C422:
	cmp r5, #0
	bne _0804C43E
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804C49C
_0804C43E:
	ldrb r2, [r7, #0x1a]
	cmp r2, #0
	bne _0804C450
	ldr r0, [r7, #8]
	ldr r1, _0804C464 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r2, #1
	strb r0, [r7, #0x1a]
_0804C450:
	cmp r5, #0
	beq _0804C46C
	adds r0, r4, #0
	ldr r1, _0804C468 @ =sub_800EA74
	bl sub_800D87C
	b _0804C474
	.align 2, 0
_0804C460: .4byte gUnknown_030015C0
_0804C464: .4byte 0xFFFFBFFF
_0804C468: .4byte sub_800EA74
_0804C46C:
	adds r0, r4, #0
	ldr r1, _0804C498 @ =sub_800E9A4
	bl sub_800D87C
_0804C474:
	mov r0, sb
	adds r0, #0x5d
	ldrb r1, [r0]
	lsls r1, r1, #4
	subs r0, #1
	ldrb r2, [r0]
	movs r0, #0xf
	ands r0, r2
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0xa4
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x94
	bl sub_8004E98
	b _0804C59E
	.align 2, 0
_0804C498: .4byte sub_800E9A4
_0804C49C:
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020874
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r5
	cmp r0, #0
	beq _0804C516
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0804C4D8
	ldr r1, [r4, #0x14]
	ldr r0, _0804C4D4 @ =0xFFFFFC00
	b _0804C4DE
	.align 2, 0
_0804C4D4: .4byte 0xFFFFFC00
_0804C4D8:
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
_0804C4DE:
	adds r1, r1, r0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0804C506
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf4
	beq _0804C506
	cmp r0, #0xf5
	bne _0804C516
_0804C506:
	adds r0, r4, #0
	bl sub_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_800DAF4
_0804C516:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r5
	cmp r0, #0
	beq _0804C59E
	ldr r0, [r4, #4]
	ldr r1, _0804C554 @ =0x00040004
	ands r0, r1
	subs r1, #4
	cmp r0, r1
	bne _0804C558
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r2, r1, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _0804C53E
	rsbs r0, r2, #0
_0804C53E:
	cmp r0, #0xc
	bgt _0804C564
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C564
	adds r0, r4, #0
	bl sub_8008E38
	b _0804C564
	.align 2, 0
_0804C554: .4byte 0x00040004
_0804C558:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0804C564:
	adds r0, r4, #0
	bl sub_801246C
	cmp r0, #0
	bge _0804C580
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C59A
	adds r0, r4, #0
	bl sub_8008E38
	b _0804C59A
_0804C580:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _0804C59A
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804C59A
	adds r0, r4, #0
	bl sub_8008E38
_0804C59A:
	movs r0, #0
	strh r0, [r4, #0x18]
_0804C59E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804C5AE
	b _0804C388
_0804C5AE:
	ldr r0, [r6, #0xc]
	asrs r2, r0, #8
	ldr r3, [r6, #0x10]
	asrs r3, r3, #8
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r4, #0x26
	ldrsh r1, [r6, r4]
	ldr r4, [r6]
	bl sub_802C140
	cmp r0, #0
	bne _0804C5DC
	ldrb r0, [r6, #0xa]
	strb r0, [r4]
	ldr r0, _0804C5D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804C5FA
	.align 2, 0
_0804C5D8: .4byte gCurTask
_0804C5DC:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_804DDD4
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0804C5FA
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804C5FA
	movs r0, #0
	strb r0, [r7, #0x1a]
_0804C5FA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804C608
sub_804C608: @ 0x0804C608
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0804C628 @ =gUnknown_030008A0
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _0804C62C
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	b _0804C638
	.align 2, 0
_0804C628: .4byte gUnknown_030008A0
_0804C62C:
	movs r0, #0x18
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	ldr r0, _0804C678 @ =0x000003AB
_0804C638:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	cmp r5, #0
	beq _0804C66C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r4, #8]
_0804C66C:
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C678: .4byte 0x000003AB

	thumb_func_start CreateEntity_Interactable132
CreateEntity_Interactable132: @ 0x0804C67C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804C22C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable133
CreateEntity_Interactable133: @ 0x0804C6A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804C22C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804C6D4
sub_804C6D4: @ 0x0804C6D4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable134
CreateEntity_Interactable134: @ 0x0804C6E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804C768 @ =sub_804C770
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804C76C @ =sub_804C99C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0xe]
	ldrb r2, [r2, #7]
	movs r0, #1
	ands r0, r2
	strb r0, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r3, [r1, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C768: .4byte sub_804C770
_0804C76C: .4byte sub_804C99C

	thumb_func_start sub_804C770
sub_804C770: @ 0x0804C770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804C7FC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r7, [r1]
	movs r3, #4
	ldrsb r3, [r7, r3]
	lsls r3, r3, #3
	movs r2, #0xe
	ldrsh r1, [r1, r2]
	adds r3, r1, r3
	lsls r3, r3, #0x10
	ldrb r5, [r7, #6]
	lsls r0, r5, #3
	lsrs r4, r3, #0x10
	str r4, [sp, #4]
	asrs r3, r3, #0x10
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r2, #3
	ldrsb r2, [r7, r2]
	lsls r2, r2, #3
	mov sl, r2
	mov r2, sb
	movs r4, #0xc
	ldrsh r0, [r2, r4]
	mov r4, sl
	adds r2, r0, r4
	lsls r2, r2, #0x10
	ldrb r4, [r7, #5]
	lsls r4, r4, #3
	mov sl, r4
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r5, r5, #2
	adds r3, r3, r5
	adds r3, #4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x10]
	bl sub_802C198
	cmp r0, #0
	bne _0804C800
	mov r1, sb
	ldrb r0, [r1, #0xa]
	strb r0, [r7]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _0804C98C
	.align 2, 0
_0804C7FC: .4byte gCurTask
_0804C800:
	movs r1, #0
_0804C802:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804C814
	ldr r0, _0804C810 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804C81E
	.align 2, 0
_0804C810: .4byte gUnknown_030008A0
_0804C814:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804C81E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804C85C @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804C844
	cmp r1, #8
	beq _0804C844
	cmp r1, #0x10
	beq _0804C844
	b _0804C97C
_0804C844:
	adds r0, r6, #0
	bl sub_802C0D4
	mov sl, r0
	cmp r0, #0
	beq _0804C864
	adds r0, r6, #0
	ldr r1, _0804C860 @ =0x0000025F
	bl sub_8004F10
	b _0804C97C
	.align 2, 0
_0804C85C: .4byte gUnknown_030015C0
_0804C860: .4byte 0x0000025F
_0804C864:
	ldr r7, [r6]
	ldr r0, _0804C8F4 @ =sub_8008A8C
	cmp r7, r0
	bne _0804C86E
	b _0804C97C
_0804C86E:
	ldr r0, _0804C8F8 @ =sub_800ED80
	cmp r7, r0
	bne _0804C876
	b _0804C97C
_0804C876:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804C96E
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804C96E
	lsls r0, r1, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r3, r0, #0x10
	adds r5, r0, #0
	cmp r5, r1
	ble _0804C96E
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _0804C96E
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, #4
	adds r2, r0, #0
	cmp r1, r3
	bgt _0804C908
	adds r0, r4, #4
	cmp r0, r3
	blt _0804C908
	ldr r0, _0804C8FC @ =sub_800A724
	cmp r7, r0
	beq _0804C97C
	ldr r0, _0804C900 @ =sub_800A860
	cmp r7, r0
	beq _0804C97C
	adds r0, r6, #0
	bl sub_8016F28
	lsls r0, r4, #8
	str r0, [r6, #0x14]
	mov r2, r8
	asrs r1, r2, #0x10
	mov r0, sb
	adds r0, #0x11
	adds r0, r0, r1
	mov r3, sl
	strb r3, [r0]
	mov r4, sb
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0804C938
	ldr r0, _0804C904 @ =0xFFFFFE80
	strh r0, [r6, #0x18]
	b _0804C950
	.align 2, 0
_0804C8F4: .4byte sub_8008A8C
_0804C8F8: .4byte sub_800ED80
_0804C8FC: .4byte sub_800A724
_0804C900: .4byte sub_800A860
_0804C904: .4byte 0xFFFFFE80
_0804C908:
	asrs r4, r2, #0x10
	movs r0, #2
	cmp r2, r5
	ble _0804C912
	movs r0, #1
_0804C912:
	adds r3, r0, #0
	mov r1, r8
	asrs r0, r1, #0x10
	mov r1, sb
	adds r1, #0x11
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804C964
	cmp r0, r3
	beq _0804C964
	lsls r0, r4, #8
	str r0, [r6, #0x14]
	movs r0, #0
	strb r0, [r2]
	mov r2, sb
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	beq _0804C94C
_0804C938:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	ldr r1, _0804C948 @ =sub_800A690
	bl sub_800D87C
	b _0804C97C
	.align 2, 0
_0804C948: .4byte sub_800A690
_0804C94C:
	ldr r3, _0804C95C @ =0xFFFFFE80
	strh r3, [r6, #0x18]
_0804C950:
	adds r0, r6, #0
	ldr r1, _0804C960 @ =sub_800A7CC
	bl sub_800D87C
	b _0804C97C
	.align 2, 0
_0804C95C: .4byte 0xFFFFFE80
_0804C960: .4byte sub_800A7CC
_0804C964:
	mov r4, r8
	asrs r0, r4, #0x10
	adds r0, r1, r0
	strb r3, [r0]
	b _0804C97C
_0804C96E:
	mov r1, r8
	asrs r0, r1, #0x10
	mov r1, sb
	adds r1, #0x11
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_0804C97C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804C98C
	b _0804C802
_0804C98C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804C99C
sub_804C99C: @ 0x0804C99C
	bx lr
	.align 2, 0

	thumb_func_start sub_804C9A0
sub_804C9A0: @ 0x0804C9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804C9E8 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	mov r8, r1
	movs r3, #0xe
	ldrsh r7, [r5, r3]
	mov r0, r8
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804C9F0
	ldr r0, _0804C9EC @ =0x00000262
	bl sub_8003E28
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r5, sb
	ldr r0, [r5]
	bl TaskDestroy
	b _0804CB1C
	.align 2, 0
_0804C9E8: .4byte gCurTask
_0804C9EC: .4byte 0x00000262
_0804C9F0:
	movs r1, #4
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldrb r3, [r6, #6]
	lsls r0, r3, #3
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r1, r1, #0x10
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	add r0, r8
	lsls r0, r0, #0x10
	ldrb r2, [r6, #5]
	lsls r2, r2, #3
	lsrs r5, r0, #0x10
	mov sb, r5
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0
_0804CA32:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0804CA44
	ldr r0, _0804CA40 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804CA4E
	.align 2, 0
_0804CA40: .4byte gUnknown_030008A0
_0804CA44:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804CA4E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804CAC0 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _0804CAC4 @ =sub_8008A8C
	cmp r1, r0
	beq _0804CB0E
	ldr r0, _0804CAC8 @ =sub_800ED80
	cmp r1, r0
	beq _0804CB0E
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804CB0E
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804CB0E
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r1, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r3, r1
	ble _0804CB0E
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r2, r1
	bge _0804CACC
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0804CB0E
	b _0804CAD4
	.align 2, 0
_0804CAC0: .4byte gUnknown_030015C0
_0804CAC4: .4byte sub_8008A8C
_0804CAC8: .4byte sub_800ED80
_0804CACC:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0804CB0E
_0804CAD4:
	ldr r1, [r4]
	ldr r0, _0804CAF0 @ =sub_800A98C
	cmp r1, r0
	beq _0804CB0E
	asrs r0, r5, #0x10
	lsls r1, r0, #8
	str r1, [r4, #0x74]
	asrs r1, r3, #0x10
	cmp r1, r0
	bge _0804CAF4
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x80
	b _0804CAFA
	.align 2, 0
_0804CAF0: .4byte sub_800A98C
_0804CAF4:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
_0804CAFA:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	asrs r0, r5, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_800A90C
_0804CB0E:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804CA32
_0804CB1C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable135
CreateEntity_Interactable135: @ 0x0804CB2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804CB9C @ =sub_804C9A0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CBA0 @ =sub_804CBA4
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CB9C: .4byte sub_804C9A0
_0804CBA0: .4byte sub_804CBA4

    thumb_func_start sub_804CBA4
sub_804CBA4:
    bx lr
    .align 2 , 0

	thumb_func_start CreateEntity_Interactable136
CreateEntity_Interactable136: @ 0x0804CBA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804CC74 @ =sub_804CE74
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CC78 @ =sub_804D7B4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r6, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CC12
	movs r2, #1
_0804CBF8:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CC12
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CBF8
_0804CC12:
	adds r0, r3, #0
	adds r0, #0x3c
	movs r1, #0
	strb r6, [r0]
	adds r0, #1
	strb r1, [r0]
	strh r1, [r3, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r3, _0804CC7C @ =gUnknown_03001D10
	ldr r2, [r3]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	mov r3, ip
	ldrh r1, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r5]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_804D08C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC74: .4byte sub_804CE74
_0804CC78: .4byte sub_804D7B4
_0804CC7C: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Interactable137
CreateEntity_Interactable137: @ 0x0804CC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804CD94 @ =sub_804D218
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CD98 @ =sub_804D7C8
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r6, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r4, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CCEE
	movs r2, #1
_0804CCD4:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CCEE
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CCD4
_0804CCEE:
	adds r2, r3, #0
	adds r2, #0x3c
	strb r4, [r2]
	movs r4, #0
	ldrb r1, [r5, #7]
	asrs r1, r1, #4
	movs r0, #1
	ands r1, r0
	str r2, [sp, #4]
	movs r2, #0x3d
	adds r2, r2, r3
	mov sb, r2
	lsls r6, r6, #8
	mov r8, r6
	adds r7, r3, #0
	adds r7, #0x40
	mov r0, sl
	lsls r0, r0, #8
	mov sl, r0
	movs r2, #0x42
	adds r2, r2, r3
	mov ip, r2
	adds r6, r3, #0
	adds r6, #0xc
	cmp r1, #0
	bne _0804CD40
	movs r2, #1
_0804CD24:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CD40
	ldrb r0, [r5, #7]
	adds r1, #4
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CD24
_0804CD40:
	movs r0, #0
	mov r2, sb
	strb r4, [r2]
	strh r0, [r3, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r7]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	add r0, sl
	mov r1, ip
	strh r0, [r1]
	ldr r2, _0804CD9C @ =gUnknown_03001D10
	ldr r1, [r2]
	ldrh r0, [r7]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, ip
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	mov r0, sb
	ldrb r2, [r0]
	adds r0, r6, #0
	bl sub_804D360
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD94: .4byte sub_804D218
_0804CD98: .4byte sub_804D7C8
_0804CD9C: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Interactable138
CreateEntity_Interactable138: @ 0x0804CDA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804CE68 @ =sub_804D484
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CE6C @ =sub_804D7DC
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	movs r6, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CE0A
	movs r2, #1
_0804CDF0:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #3
	bgt _0804CE0A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0804CDF0
_0804CE0A:
	adds r0, r3, #0
	adds r0, #0x3c
	movs r1, #0
	strb r6, [r0]
	strh r1, [r3, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r3, _0804CE70 @ =gUnknown_03001D10
	ldr r2, [r3]
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r3, #4]
	mov r3, ip
	ldrh r1, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r5]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_804D658
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE68: .4byte sub_804D484
_0804CE6C: .4byte sub_804D7DC
_0804CE70: .4byte gUnknown_03001D10

	thumb_func_start sub_804CE74
sub_804CE74: @ 0x0804CE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0804CECC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _0804CED0 @ =0x0300000C
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0804CED4 @ =0x03000040
	adds r0, r2, r1
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, _0804CED8 @ =0x03000042
	adds r0, r2, r3
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0804CEDC @ =0x0300003D
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	movs r1, #0
	ldr r3, _0804CEDC @ =0x0300003D
	adds r7, r2, r3
_0804CEBC:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0804CEE4
	ldr r0, _0804CEE0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804CEEE
	.align 2, 0
_0804CECC: .4byte gCurTask
_0804CED0: .4byte 0x0300000C
_0804CED4: .4byte 0x03000040
_0804CED8: .4byte 0x03000042
_0804CEDC: .4byte 0x0300003D
_0804CEE0: .4byte gUnknown_030008A0
_0804CEE4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804CEEE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804CF20 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804CF32
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _0804CF32
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0804CF28
	ldr r0, [r4, #0x14]
	ldr r1, _0804CF24 @ =0xFFFFFE00
	adds r0, r0, r1
	b _0804CF30
	.align 2, 0
_0804CF20: .4byte gUnknown_030015C0
_0804CF24: .4byte 0xFFFFFE00
_0804CF28:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
_0804CF30:
	str r0, [r4, #0x14]
_0804CF32:
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804CFC8
	ldr r1, [r4]
	ldr r0, _0804CF7C @ =sub_800B5A4
	cmp r1, r0
	beq _0804CF52
	ldr r0, _0804CF80 @ =sub_800DD44
	cmp r1, r0
	beq _0804CF52
	ldr r0, _0804CF84 @ =sub_800DDD0
	cmp r1, r0
	bne _0804CF96
_0804CF52:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	beq _0804CF62
	b _0804D066
_0804CF62:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _0804CF72
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0804CF88
_0804CF72:
	ldrb r0, [r7]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	b _0804CF90
	.align 2, 0
_0804CF7C: .4byte sub_800B5A4
_0804CF80: .4byte sub_800DD44
_0804CF84: .4byte sub_800DDD0
_0804CF88:
	ldrb r0, [r7]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x20
_0804CF90:
	orrs r1, r0
	strb r1, [r7]
	b _0804D066
_0804CF96:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804CFC8
	ldr r0, [sp, #8]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_804D7F0
	b _0804D066
_0804CFC8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804CFDE
	cmp r1, #8
	beq _0804CFDE
	cmp r1, #0x10
	bne _0804D066
_0804CFDE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804D066
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	mov r3, sl
	lsls r2, r3, #0x10
	str r0, [sp]
	mov r0, r8
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0804D016
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804D04A
_0804D016:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804D04A
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804D03C
	ldr r3, _0804D038 @ =0xFFFFFF00
	b _0804D040
	.align 2, 0
_0804D038: .4byte 0xFFFFFF00
_0804D03C:
	movs r3, #0x80
	lsls r3, r3, #1
_0804D040:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804D04A:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804D066
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804D066:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804D076
	b _0804CEBC
_0804D076:
	bl sub_804D114
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D08C
sub_804D08C: @ 0x0804D08C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804D0C2
	movs r0, #0x30
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r1, #1
	ands r1, r5
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r6, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #4
	ands r6, r0
	b _0804D0E0
_0804D0C2:
	movs r0, #0x30
	bl sub_80C3224
	str r0, [r4]
	movs r1, #0
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804D0E0
	movs r6, #0x80
	lsls r6, r6, #3
_0804D0E0:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D114
sub_804D114: @ 0x0804D114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804D160 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0804D164 @ =0x0300000C
	adds r5, r4, r1
	ldr r7, [r6]
	ldr r2, _0804D168 @ =0x03000040
	adds r0, r4, r2
	ldr r3, _0804D16C @ =0x03000042
	adds r1, r4, r3
	ldrh r2, [r0]
	mov sb, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r2, [r1]
	mov sl, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl sub_802C198
	cmp r0, #0
	bne _0804D170
	ldrb r0, [r6, #0xa]
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D200
	.align 2, 0
_0804D160: .4byte gCurTask
_0804D164: .4byte 0x0300000C
_0804D168: .4byte 0x03000040
_0804D16C: .4byte 0x03000042
_0804D170:
	ldr r2, _0804D188 @ =0x0300003D
	adds r0, r4, r2
	ldrb r0, [r0]
	lsrs r2, r0, #4
	cmp r2, #1
	beq _0804D1AC
	cmp r2, #1
	bgt _0804D18C
	cmp r2, #0
	beq _0804D192
	b _0804D1DA
	.align 2, 0
_0804D188: .4byte 0x0300003D
_0804D18C:
	cmp r2, #2
	beq _0804D1C8
	b _0804D1DA
_0804D192:
	ldr r3, _0804D1A8 @ =0x0300003C
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804D1BE
	movs r1, #3
	b _0804D1BE
	.align 2, 0
_0804D1A8: .4byte 0x0300003C
_0804D1AC:
	ldr r1, _0804D1C4 @ =0x0300003C
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0804D1BE
	movs r1, #4
_0804D1BE:
	strb r1, [r5, #0x1a]
	b _0804D1DA
	.align 2, 0
_0804D1C4: .4byte 0x0300003C
_0804D1C8:
	ldr r3, _0804D210 @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	ands r2, r0
	movs r0, #2
	cmp r2, #0
	beq _0804D1D8
	movs r0, #5
_0804D1D8:
	strb r0, [r5, #0x1a]
_0804D1DA:
	ldr r2, _0804D214 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_0804D200:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D210: .4byte 0x0300003C
_0804D214: .4byte gUnknown_03001D10

	thumb_func_start sub_804D218
sub_804D218: @ 0x0804D218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804D258 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _0804D25C @ =0x0300000C
	adds r1, r1, r0
	mov sl, r1
	ldr r2, _0804D260 @ =0x03000040
	adds r1, r0, r2
	ldrh r1, [r1]
	mov sb, r1
	ldr r1, _0804D264 @ =0x03000042
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r8, r0
	movs r1, #0
_0804D24A:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0804D26C
	ldr r0, _0804D268 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804D276
	.align 2, 0
_0804D258: .4byte gCurTask
_0804D25C: .4byte 0x0300000C
_0804D260: .4byte 0x03000040
_0804D264: .4byte 0x03000042
_0804D268: .4byte gUnknown_030008A0
_0804D26C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804D276:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804D2F0 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804D2CE
	ldr r1, [r5]
	ldr r0, _0804D2F4 @ =sub_800DDD0
	cmp r1, r0
	bne _0804D2CE
	ldr r0, _0804D2F8 @ =sub_800B628
	cmp r1, r0
	beq _0804D2CE
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	str r5, [sp]
	str r2, [sp, #4]
	mov r0, sl
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0804D2CE
	ldr r0, [sp, #8]
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_804D2FC
_0804D2CE:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804D24A
	bl sub_804D3FC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D2F0: .4byte gUnknown_030015C0
_0804D2F4: .4byte sub_800DDD0
_0804D2F8: .4byte sub_800B628

	thumb_func_start sub_804D2FC
sub_804D2FC: @ 0x0804D2FC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	movs r2, #0
	strh r2, [r4, #0x1c]
	cmp r1, #1
	beq _0804D332
	cmp r1, #1
	bgt _0804D322
	cmp r1, #0
	beq _0804D32C
	b _0804D34C
_0804D322:
	cmp r1, #2
	beq _0804D33C
	cmp r1, #3
	beq _0804D344
	b _0804D34C
_0804D32C:
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D336
_0804D332:
	movs r0, #0x80
	lsls r0, r0, #4
_0804D336:
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	b _0804D34C
_0804D33C:
	strh r2, [r4, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D34A
_0804D344:
	strh r2, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
_0804D34A:
	strh r0, [r4, #0x1a]
_0804D34C:
	ldr r1, _0804D35C @ =sub_800DDB4
	adds r0, r4, #0
	bl sub_800D87C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D35C: .4byte sub_800DDB4

	thumb_func_start sub_804D360
sub_804D360: @ 0x0804D360
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r5, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _0804D396
	cmp r1, #1
	bgt _0804D37C
	cmp r1, #0
	beq _0804D386
	b _0804D3B8
_0804D37C:
	cmp r1, #2
	beq _0804D3A0
	cmp r1, #3
	beq _0804D3B0
	b _0804D3B8
_0804D386:
	movs r5, #0x80
	lsls r5, r5, #3
	cmp r2, #2
	bne _0804D3B8
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r5, r0
	b _0804D3B8
_0804D396:
	cmp r2, #2
	bne _0804D3B8
	movs r5, #0x80
	lsls r5, r5, #4
	b _0804D3B8
_0804D3A0:
	movs r5, #0x80
	lsls r5, r5, #4
	cmp r2, #0
	bne _0804D3B8
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
	b _0804D3B8
_0804D3B0:
	cmp r2, #0
	bne _0804D3B8
	movs r5, #0x80
	lsls r5, r5, #3
_0804D3B8:
	movs r0, #9
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r5, r0
	str r5, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D3FC
sub_804D3FC: @ 0x0804D3FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804D454 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804D458
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D472
	.align 2, 0
_0804D454: .4byte gCurTask
_0804D458:
	ldr r0, _0804D480 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
_0804D472:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D480: .4byte gUnknown_03001D10

	thumb_func_start sub_804D484
sub_804D484: @ 0x0804D484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804D4D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _0804D4DC @ =0x0300000C
	adds r7, r2, r0
	ldr r1, _0804D4E0 @ =0x03000040
	adds r0, r2, r1
	ldrh r3, [r0]
	adds r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0804D4E4 @ =0x0300003D
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r1, #0
	lsls r3, r3, #0x10
	mov sb, r3
_0804D4C8:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804D4EC
	ldr r0, _0804D4E8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804D4F6
	.align 2, 0
_0804D4D8: .4byte gCurTask
_0804D4DC: .4byte 0x0300000C
_0804D4E0: .4byte 0x03000040
_0804D4E4: .4byte 0x0300003D
_0804D4E8: .4byte gUnknown_030008A0
_0804D4EC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804D4F6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804D528 @ =gUnknown_030015C0
	adds r4, r0, r1
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804D53A
	ldr r0, [r4, #0x6c]
	cmp r0, r7
	bne _0804D53A
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _0804D530
	ldr r0, [r4, #0x14]
	ldr r1, _0804D52C @ =0xFFFFFE00
	adds r0, r0, r1
	b _0804D538
	.align 2, 0
_0804D528: .4byte gUnknown_030015C0
_0804D52C: .4byte 0xFFFFFE00
_0804D530:
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
_0804D538:
	str r0, [r4, #0x14]
_0804D53A:
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804D598
	ldr r1, [r4]
	ldr r0, _0804D55C @ =sub_800DDD0
	cmp r1, r0
	beq _0804D568
	ldr r0, _0804D560 @ =sub_800B6C4
	cmp r1, r0
	beq _0804D632
	ldr r0, _0804D564 @ =sub_800B748
	cmp r1, r0
	bne _0804D598
	b _0804D632
	.align 2, 0
_0804D55C: .4byte sub_800DDD0
_0804D560: .4byte sub_800B6C4
_0804D564: .4byte sub_800B748
_0804D568:
	mov r0, sb
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804D632
	ldr r0, [sp, #8]
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_804D83C
	b _0804D632
_0804D598:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804D5AE
	cmp r1, #8
	beq _0804D5AE
	cmp r1, #0x10
	bne _0804D632
_0804D5AE:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804D632
	mov r3, sl
	lsls r2, r3, #0x10
	str r0, [sp]
	adds r0, r7, #0
	mov r3, sb
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r0, r3
	cmp r0, #0
	beq _0804D5E4
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804D616
_0804D5E4:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804D616
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804D608
	ldr r3, _0804D604 @ =0xFFFFFF00
	b _0804D60C
	.align 2, 0
_0804D604: .4byte 0xFFFFFF00
_0804D608:
	movs r3, #0x80
	lsls r3, r3, #1
_0804D60C:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804D616:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804D632
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804D632:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804D642
	b _0804D4C8
_0804D642:
	bl sub_804D6D8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804D658
sub_804D658: @ 0x0804D658
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804D68A
	movs r0, #0x2a
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0804D6A8
	movs r6, #0x80
	lsls r6, r6, #4
	b _0804D6A8
_0804D68A:
	movs r0, #0x2a
	bl sub_80C3224
	str r0, [r4]
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0804D6A8
	movs r6, #0x80
	lsls r6, r6, #3
_0804D6A8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804D6D8
sub_804D6D8: @ 0x0804D6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804D73C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0804D740 @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804D788
	movs r1, #0
	ldr r6, _0804D744 @ =gUnknown_030015C0
_0804D726:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804D748
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804D74C
	.align 2, 0
_0804D73C: .4byte gCurTask
_0804D740: .4byte 0x0300000C
_0804D744: .4byte gUnknown_030015C0
_0804D748:
	ldr r0, _0804D780 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804D74C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804D726
	mov r3, r8
	ldrb r0, [r3, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0804D784 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804D7A2
	.align 2, 0
_0804D780: .4byte gUnknown_030008A0
_0804D784: .4byte gCurTask
_0804D788:
	ldr r0, _0804D7B0 @ =gUnknown_03001D10
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80BF44C
	adds r0, r7, #0
	bl sub_80C033C
_0804D7A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D7B0: .4byte gUnknown_03001D10

	thumb_func_start sub_804D7B4
sub_804D7B4: @ 0x0804D7B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804D7C8
sub_804D7C8: @ 0x0804D7C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804D7DC
sub_804D7DC: @ 0x0804D7DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804D7F0
sub_804D7F0: @ 0x0804D7F0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	cmp r1, #0
	blt _0804D830
	cmp r1, #1
	bgt _0804D824
	ldr r1, _0804D820 @ =sub_800DD0C
	adds r0, r4, #0
	bl sub_800D87C
	b _0804D830
	.align 2, 0
_0804D820: .4byte sub_800DD0C
_0804D824:
	cmp r5, #3
	bgt _0804D830
	ldr r1, _0804D838 @ =sub_800DD28
	adds r0, r4, #0
	bl sub_800D87C
_0804D830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D838: .4byte sub_800DD28

	thumb_func_start sub_804D83C
sub_804D83C: @ 0x0804D83C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r4, #0x70]
	lsls r3, r3, #0x10
	asrs r3, r3, #8
	str r3, [r4, #0x74]
	cmp r1, #1
	beq _0804D86E
	cmp r1, #1
	bgt _0804D85E
	cmp r1, #0
	beq _0804D868
	b _0804D88E
_0804D85E:
	cmp r1, #2
	beq _0804D87A
	cmp r1, #3
	beq _0804D884
	b _0804D88E
_0804D868:
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D874
_0804D86E:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
_0804D874:
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x1a]
	b _0804D88E
_0804D87A:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #8
	b _0804D88C
_0804D884:
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
_0804D88C:
	strh r0, [r4, #0x1a]
_0804D88E:
	ldr r1, _0804D89C @ =sub_800DE48
	adds r0, r4, #0
	bl sub_800D87C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D89C: .4byte sub_800DE48

	thumb_func_start CreateEntity_Interactable139
CreateEntity_Interactable139: @ 0x0804D8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804D958 @ =sub_804D970
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804D95C @ =sub_804DBE0
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r1, #0
	mov sb, r1
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r7, r8
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r2, #0x34]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r2, #0x36]
	movs r4, #0x34
	ldrsh r1, [r2, r4]
	lsls r1, r1, #8
	str r1, [r2, #0x38]
	movs r6, #0x36
	ldrsh r1, [r2, r6]
	lsls r1, r1, #8
	str r1, [r2, #0x3c]
	ldr r7, _0804D960 @ =0x03000040
	adds r1, r0, r7
	strh r3, [r1]
	ldr r3, _0804D964 @ =0x03000042
	adds r1, r0, r3
	mov r4, sb
	strb r4, [r1]
	ldr r6, _0804D968 @ =0x03000043
	adds r3, r0, r6
	movs r1, #1
	strb r1, [r3]
	subs r7, #0x34
	adds r0, r0, r7
	ldr r4, _0804D96C @ =gUnknown_03001D10
	ldr r3, [r4]
	ldrh r1, [r2, #0x34]
	subs r1, r1, r3
	strh r1, [r0, #0x10]
	ldr r3, [r4, #4]
	ldrh r1, [r2, #0x36]
	subs r1, r1, r3
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, r8
	strb r1, [r3]
	bl sub_804DBF4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D958: .4byte sub_804D970
_0804D95C: .4byte sub_804DBE0
_0804D960: .4byte 0x03000040
_0804D964: .4byte 0x03000042
_0804D968: .4byte 0x03000043
_0804D96C: .4byte gUnknown_03001D10

	thumb_func_start sub_804D970
sub_804D970: @ 0x0804D970
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0804DA34 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	mov sb, r1
	ldr r0, _0804DA38 @ =gUnknown_030008A0
	ldrb r0, [r0, #4]
	cmp r0, #4
	beq _0804DA22
	ldr r0, _0804DA3C @ =0x03000042
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804DA22
	movs r3, #7
	ands r3, r1
	adds r0, r1, #1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0804DA40 @ =0x03000043
	adds r1, r4, r2
	cmp r0, #0
	bne _0804D9C8
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_0804D9C8:
	adds r2, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x20
	bls _0804D9D4
	movs r0, #0x20
	strb r0, [r2]
_0804D9D4:
	ldr r2, _0804DA44 @ =0x03000040
	adds r0, r4, r2
	ldrb r5, [r1]
	lsrs r5, r5, #2
	ldrh r2, [r0]
	adds r5, r5, r2
	strh r5, [r0]
	ldr r2, _0804DA48 @ =gUnknown_080D03E8
	lsls r3, r3, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #4
	adds r4, r0, #0
	muls r4, r1, r4
	adds r2, #1
	adds r3, r3, r2
	movs r0, #0
	ldrsb r0, [r3, r0]
	muls r1, r0, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	str r0, [r7, #0x38]
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
_0804DA22:
	movs r1, #0
_0804DA24:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DA4C
	ldr r0, _0804DA38 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804DA56
	.align 2, 0
_0804DA34: .4byte gCurTask
_0804DA38: .4byte gUnknown_030008A0
_0804DA3C: .4byte 0x03000042
_0804DA40: .4byte 0x03000043
_0804DA44: .4byte 0x03000040
_0804DA48: .4byte gUnknown_080D03E8
_0804DA4C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804DA56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804DAA4 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804DAE8
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804DAB0
	ldr r0, [r6, #0x6c]
	cmp r0, r8
	bne _0804DAB0
	movs r0, #3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_80110E8
	cmp r0, #0
	ble _0804DAA8
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	b _0804DAB0
	.align 2, 0
_0804DAA4: .4byte gUnknown_030015C0
_0804DAA8:
	lsls r1, r0, #8
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0804DAB0:
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, [r7, #0x3c]
	asrs r2, r2, #8
	movs r4, #0
	str r4, [sp]
	mov r0, r8
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804DAE8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r4, [r6, #0x1a]
	adds r2, r7, #0
	adds r2, #0x42
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
_0804DAE8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DA24
	bl sub_804DB08
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804DB08
sub_804DB08: @ 0x0804DB08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804DB58 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	mov r3, r8
	ldr r1, [r3, #0x38]
	lsls r1, r1, #8
	ldr r0, [r3, #0x3c]
	lsls r0, r0, #8
	ldr r3, _0804DB5C @ =0x0300000C
	adds r6, r2, r3
	asrs r5, r1, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804DBA4
	movs r1, #0
	ldr r7, _0804DB60 @ =gUnknown_030015C0
_0804DB44:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0804DB64
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804DB68
	.align 2, 0
_0804DB58: .4byte gCurTask
_0804DB5C: .4byte 0x0300000C
_0804DB60: .4byte gUnknown_030015C0
_0804DB64:
	ldr r0, _0804DB9C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0804DB68:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804DB44
	mov r2, r8
	ldrb r0, [r2, #0xa]
	mov r3, sb
	strb r0, [r3]
	ldr r0, _0804DBA0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804DBCE
	.align 2, 0
_0804DB9C: .4byte gUnknown_030008A0
_0804DBA0: .4byte gCurTask
_0804DBA4:
	ldr r1, _0804DBDC @ =gUnknown_03001D10
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r6, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl sub_80BF44C
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	bl sub_802C1F8
	cmp r0, #1
	bne _0804DBCE
	adds r0, r6, #0
	bl sub_80C033C
_0804DBCE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DBDC: .4byte gUnknown_03001D10

	thumb_func_start sub_804DBE0
sub_804DBE0: @ 0x0804DBE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl sub_80C3304
	pop {r0}
	bx r0

	thumb_func_start sub_804DBF4
sub_804DBF4: @ 0x0804DBF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl sub_80C3224
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804DC34 @ =0x000003A5
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804DC34: .4byte 0x000003A5

	thumb_func_start sub_804DC38
sub_804DC38: @ 0x0804DC38
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r3, #4]
	ldr r1, _0804DC68 @ =0x00FFFF00
	ands r0, r1
	cmp r0, #0
	bne _0804DC4E
	b _0804DD60
_0804DC4E:
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #5]
	cmp r0, r1
	bhs _0804DC6C
	ldrb r0, [r3, #5]
	lsls r2, r0, #2
	adds r1, r6, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #0
	b _0804DC7C
	.align 2, 0
_0804DC68: .4byte 0x00FFFF00
_0804DC6C:
	ldrb r0, [r3, #6]
	lsls r2, r0, #2
	adds r1, r5, #0
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r6, #1
_0804DC7C:
	adds r0, r0, r2
	subs r0, r1, r0
	lsls r0, r0, #0xe
	adds r1, r2, #0
	bl sub_80C8960
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0804DCE8
	movs r1, #0
	ldr r3, _0804DCC0 @ =gUnknown_082B48B4
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r2, r0
	ble _0804DCB2
_0804DC9C:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xff
	bhi _0804DCB2
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bgt _0804DC9C
_0804DCB2:
	cmp r4, #1
	beq _0804DCD2
	cmp r4, #1
	bgt _0804DCC4
	cmp r4, #0
	beq _0804DCCA
	b _0804DD46
	.align 2, 0
_0804DCC0: .4byte gUnknown_082B48B4
_0804DCC4:
	cmp r4, #2
	beq _0804DCDE
	b _0804DD46
_0804DCCA:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	b _0804DD58
_0804DCD2:
	cmp r6, #0
	bne _0804DD46
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	b _0804DD58
_0804DCDE:
	cmp r6, #0
	beq _0804DD46
	movs r7, #0x80
	lsls r7, r7, #2
	b _0804DD56
_0804DCE8:
	ldr r3, _0804DD24 @ =gUnknown_082B48B4
	movs r1, #0x80
	lsls r1, r1, #2
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r3, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	bge _0804DD14
	ldr r5, _0804DD28 @ =0x000002FF
_0804DCFE:
	adds r0, r1, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	bhi _0804DD14
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r2, r0
	blt _0804DCFE
_0804DD14:
	cmp r4, #1
	beq _0804DD36
	cmp r4, #1
	bgt _0804DD2C
	cmp r4, #0
	beq _0804DD46
	b _0804DD60
	.align 2, 0
_0804DD24: .4byte gUnknown_082B48B4
_0804DD28: .4byte 0x000002FF
_0804DD2C:
	cmp r4, #2
	beq _0804DD42
	cmp r4, #3
	beq _0804DD52
	b _0804DD60
_0804DD36:
	cmp r6, #0
	beq _0804DD46
	movs r2, #0xc0
	lsls r2, r2, #3
	b _0804DD58
