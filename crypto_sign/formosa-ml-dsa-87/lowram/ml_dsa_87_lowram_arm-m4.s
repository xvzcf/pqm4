	.thumb
	.syntax unified
	.global	_ml_dsa_87_verify
	.global	ml_dsa_87_verify
	.global	_ml_dsa_87_sign
	.global	ml_dsa_87_sign
	.global	_ml_dsa_87_keygen
	.global	ml_dsa_87_keygen
_ml_dsa_87_verify:
ml_dsa_87_verify:
	push	{lr}
	SUB 	lr, sp, #2320
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	STR 	r4, [sp, #2284]
	STR 	r5, [sp, #2288]
	STR 	r6, [sp, #2292]
	STR 	r7, [sp, #2296]
	STR 	r8, [sp, #2300]
	STR 	r9, [sp, #2304]
	STR 	r10, [sp, #2308]
	STR 	r11, [sp, #2312]
	STR 	r12, [sp, #2316]
	LDR 	r12, [r2]
	CMP 	r12, #255
	bhi 	Lml_dsa_87_verify$2
	STR 	r2, [sp]
	STR 	r1, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #12]
	STR 	r0, [sp, #16]
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #12]
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_87_verify$492:
	ADD 	sp, sp, #8
	LDR 	r2, [sp]
	LDR 	r1, [r2]
	MOV 	r8, #0
	STRB	r8, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	STRH	r1, [r0, #66]
	MOV 	r2, #17
	b   	Lml_dsa_87_verify$490
Lml_dsa_87_verify$491:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_verify$490:
	CMP 	r2, #50
	bcc 	Lml_dsa_87_verify$491
	MOV 	r2, #66
	LDR 	r1, [sp, #4]
	LDR 	r3, [r1]
	STR 	r1, [sp, #4]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_87_verify$489:
	ADD 	sp, sp, #8
	LDR 	r1, [sp]
	LDR 	r12, [r1, #4]
	LDR 	r1, [sp, #4]
	LDR 	r3, [r1, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_87_verify$488:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_87_verify$487:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_verify$486:
	ADD 	sp, sp, #212
	LDR 	r8, [r0]
	STR 	r8, [sp, #288]
	LDR 	r8, [r0, #4]
	STR 	r8, [sp, #292]
	LDR 	r8, [r0, #8]
	STR 	r8, [sp, #296]
	LDR 	r8, [r0, #12]
	STR 	r8, [sp, #300]
	LDR 	r8, [r0, #16]
	STR 	r8, [sp, #304]
	LDR 	r8, [r0, #20]
	STR 	r8, [sp, #308]
	LDR 	r8, [r0, #24]
	STR 	r8, [sp, #312]
	LDR 	r8, [r0, #28]
	STR 	r8, [sp, #316]
	LDR 	r8, [r0, #32]
	STR 	r8, [sp, #320]
	LDR 	r8, [r0, #36]
	STR 	r8, [sp, #324]
	LDR 	r8, [r0, #40]
	STR 	r8, [sp, #328]
	LDR 	r8, [r0, #44]
	STR 	r8, [sp, #332]
	LDR 	r8, [r0, #48]
	STR 	r8, [sp, #336]
	LDR 	r8, [r0, #52]
	STR 	r8, [sp, #340]
	LDR 	r8, [r0, #56]
	STR 	r8, [sp, #344]
	LDR 	r8, [r0, #60]
	STR 	r8, [sp, #348]
	LDR 	r1, [sp, #16]
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_87_verify$485:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #20
	ADDw	r2, sp, #1260
	bl  	L_poly_compress_challenge$1
Lml_dsa_87_verify$484:
	ADD 	r12, sp, #288
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$482
Lml_dsa_87_verify$483:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_verify$482:
	CMP 	r2, #16
	bcc 	Lml_dsa_87_verify$483
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_87_verify$480
Lml_dsa_87_verify$481:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_verify$480:
	CMP 	r2, #50
	bcc 	Lml_dsa_87_verify$481
	MOV 	r2, #64
	STR 	r2, [sp, #4]
	MOV 	r0, #0
	STR 	r0, [sp]
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$421
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$479:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$478:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$421
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$477:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$475
Lml_dsa_87_verify$476:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$475:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$476
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$474:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$468
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$473:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$472:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$468
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$471:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$470:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$469:
Lml_dsa_87_verify$468:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$462
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$467:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$466:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$462
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$465:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$464:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$463:
Lml_dsa_87_verify$462:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$456
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$461:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$460:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$456
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$459:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$458:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$457:
Lml_dsa_87_verify$456:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$450
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$455:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$454:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$450
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$453:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$452:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$451:
Lml_dsa_87_verify$450:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$444
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$449:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$448:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$444
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$447:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$446:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$445:
Lml_dsa_87_verify$444:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$438
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$443:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$442:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$438
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$441:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$440:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$439:
Lml_dsa_87_verify$438:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$421
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$437:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$436:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$435:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$434:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$433:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #32
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$432:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$431:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$430:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$429:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #0
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$428:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$421
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$427:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$426:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$425:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$424:
Lml_dsa_87_verify$423:
Lml_dsa_87_verify$422:
Lml_dsa_87_verify$421:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$362
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$420:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$419:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$362
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$418:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$416
Lml_dsa_87_verify$417:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$416:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$417
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$415:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$409
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$414:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$413:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$409
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$412:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$411:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$410:
Lml_dsa_87_verify$409:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$403
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$408:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$407:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$403
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$406:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$405:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$404:
Lml_dsa_87_verify$403:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$397
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$402:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$401:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$397
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$400:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$399:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$398:
Lml_dsa_87_verify$397:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$391
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$396:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$395:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$391
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$394:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$393:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$392:
Lml_dsa_87_verify$391:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$385
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$390:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$389:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$385
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$388:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$387:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$386:
Lml_dsa_87_verify$385:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$379
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$384:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$383:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$379
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$382:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$381:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$380:
Lml_dsa_87_verify$379:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$362
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$378:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$377:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$376:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$375:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$374:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #352
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$373:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$372:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$371:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$370:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #1
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$369:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$362
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$368:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$367:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$366:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$365:
Lml_dsa_87_verify$364:
Lml_dsa_87_verify$363:
Lml_dsa_87_verify$362:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$303
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$361:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$360:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$303
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$359:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$357
Lml_dsa_87_verify$358:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$357:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$358
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$356:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$350
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$355:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$354:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$350
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$353:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$352:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$351:
Lml_dsa_87_verify$350:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$344
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$349:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$348:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$344
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$347:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$346:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$345:
Lml_dsa_87_verify$344:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$338
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$343:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$342:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$338
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$341:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$340:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$339:
Lml_dsa_87_verify$338:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$332
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$337:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$336:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$332
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$335:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$334:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$333:
Lml_dsa_87_verify$332:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$326
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$331:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$330:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$326
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$329:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$328:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$327:
Lml_dsa_87_verify$326:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$320
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$325:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$324:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$320
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$323:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$322:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$321:
Lml_dsa_87_verify$320:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$303
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$319:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$318:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$317:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$316:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$315:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #672
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$314:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$313:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$312:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$311:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #2
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$310:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$303
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$309:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$308:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$307:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$306:
Lml_dsa_87_verify$305:
Lml_dsa_87_verify$304:
Lml_dsa_87_verify$303:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$244
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$302:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$301:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$244
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$300:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$298
Lml_dsa_87_verify$299:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$298:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$299
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$297:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$291
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$296:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$295:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$291
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$294:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$293:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$292:
Lml_dsa_87_verify$291:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$285
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$290:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$289:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$285
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$288:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$287:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$286:
Lml_dsa_87_verify$285:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$279
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$284:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$283:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$279
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$282:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$281:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$280:
Lml_dsa_87_verify$279:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$273
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$278:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$277:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$273
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$276:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$275:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$274:
Lml_dsa_87_verify$273:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$267
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$272:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$271:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$267
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$270:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$269:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$268:
Lml_dsa_87_verify$267:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$261
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$266:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$265:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$261
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$264:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$263:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$262:
Lml_dsa_87_verify$261:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$244
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$260:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$259:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$258:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$257:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$256:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #992
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$255:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$254:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$253:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$252:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #3
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$251:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$244
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$250:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$249:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$248:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$247:
Lml_dsa_87_verify$246:
Lml_dsa_87_verify$245:
Lml_dsa_87_verify$244:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$185
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$243:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$242:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$185
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$241:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$239
Lml_dsa_87_verify$240:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$239:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$240
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$238:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$232
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$237:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$236:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$232
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$235:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$234:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$233:
Lml_dsa_87_verify$232:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$226
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$231:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$230:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$226
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$229:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$228:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$227:
Lml_dsa_87_verify$226:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$220
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$225:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$224:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$220
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$223:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$222:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$221:
Lml_dsa_87_verify$220:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$214
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$219:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$218:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$214
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$217:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$216:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$215:
Lml_dsa_87_verify$214:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$208
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$213:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$212:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$208
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$211:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$210:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$209:
Lml_dsa_87_verify$208:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$202
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$207:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$206:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$202
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$205:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$204:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$203:
Lml_dsa_87_verify$202:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$185
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$201:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$200:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$199:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$198:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$197:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #1312
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$196:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$195:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$194:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$193:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #4
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$192:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$185
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$191:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$190:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$189:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$188:
Lml_dsa_87_verify$187:
Lml_dsa_87_verify$186:
Lml_dsa_87_verify$185:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$126
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$184:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$183:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$126
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$182:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$180
Lml_dsa_87_verify$181:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$180:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$181
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$179:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$173
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$178:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$177:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$173
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$176:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$175:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$174:
Lml_dsa_87_verify$173:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$167
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$172:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$171:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$167
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$170:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$169:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$168:
Lml_dsa_87_verify$167:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$161
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$166:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$165:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$161
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$164:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$163:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$162:
Lml_dsa_87_verify$161:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$155
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$160:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$159:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$155
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$158:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$157:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$156:
Lml_dsa_87_verify$155:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$149
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$154:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$153:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$149
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$152:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$151:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$150:
Lml_dsa_87_verify$149:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$143
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$148:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$147:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$143
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$146:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$145:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$144:
Lml_dsa_87_verify$143:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$126
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$142:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$141:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$140:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$139:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$138:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #1632
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$137:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$136:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$135:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$134:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #5
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$133:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$126
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$132:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$131:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$130:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$129:
Lml_dsa_87_verify$128:
Lml_dsa_87_verify$127:
Lml_dsa_87_verify$126:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$67
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$125:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$124:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$67
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$123:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$121
Lml_dsa_87_verify$122:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$121:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$122
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$120:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$114
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$119:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$118:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$114
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$117:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$116:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$115:
Lml_dsa_87_verify$114:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$108
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$113:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$112:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$108
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$111:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$110:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$109:
Lml_dsa_87_verify$108:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$102
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$107:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$106:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$102
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$105:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$104:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$103:
Lml_dsa_87_verify$102:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$96
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$101:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$100:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$96
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$99:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$98:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$97:
Lml_dsa_87_verify$96:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$90
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$95:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$94:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$90
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$93:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$92:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$91:
Lml_dsa_87_verify$90:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$84
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$89:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$88:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$84
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$87:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$86:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$85:
Lml_dsa_87_verify$84:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$67
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$83:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$82:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$81:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$80:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$79:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #1952
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$78:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$77:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$76:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$75:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #6
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$74:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$67
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$73:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$72:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$71:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$70:
Lml_dsa_87_verify$69:
Lml_dsa_87_verify$68:
Lml_dsa_87_verify$67:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$8
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #64
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$66:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$65:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$8
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$64:
	ADD 	r0, sp, #488
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_verify$62
Lml_dsa_87_verify$63:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_verify$62:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_verify$63
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #288
	MOV 	r2, #0
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$61:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$55
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #704
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$60:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$59:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$55
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$58:
	ADD 	r1, sp, #288
	MOV 	r2, #1
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$57:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$56:
Lml_dsa_87_verify$55:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$49
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1344
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$54:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$53:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$49
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$52:
	ADD 	r1, sp, #288
	MOV 	r2, #2
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$51:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$50:
Lml_dsa_87_verify$49:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$43
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #1984
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$48:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$47:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$43
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$46:
	ADD 	r1, sp, #288
	MOV 	r2, #3
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$45:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$44:
Lml_dsa_87_verify$43:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$37
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #2624
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$42:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$41:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$37
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$40:
	ADD 	r1, sp, #288
	MOV 	r2, #4
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$39:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$38:
Lml_dsa_87_verify$37:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$31
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3264
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$36:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$35:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$31
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$34:
	ADD 	r1, sp, #288
	MOV 	r2, #5
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$33:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$32:
Lml_dsa_87_verify$31:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$25
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1260
	ADD 	r1, r1, #3904
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_87_verify$30:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1260
	bl  	L_poly_check_norm$1
Lml_dsa_87_verify$29:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$25
	ADDw	r0, sp, #1260
	bl  	L_poly_ntt$1
Lml_dsa_87_verify$28:
	ADD 	r1, sp, #288
	MOV 	r2, #6
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #488
	ADDw	r2, sp, #1260
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_verify$27:
	ADD 	sp, sp, #12
Lml_dsa_87_verify$26:
Lml_dsa_87_verify$25:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_87_verify$8
	LDR 	r3, [sp, #12]
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_verify$24:
	ADDw	r0, sp, #1260
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_verify$23:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$22:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$21:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_verify$20:
	ADDw	r0, sp, #1260
	ADD 	r5, r3, #2272
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_87_verify$19:
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #488
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_verify$18:
	ADDw	r0, sp, #1260
	bl  	L_poly_reduce$1
Lml_dsa_87_verify$17:
	ADDw	r0, sp, #1260
	bl  	L_poly_caddq$1
Lml_dsa_87_verify$16:
	ADD 	r0, sp, #288
	LDR 	r1, [sp, #16]
	MOV 	r4, #7
	ADD 	r1, r1, #4544
	bl  	L_unpack_hint_at_index$1
Lml_dsa_87_verify$15:
	STR 	r3, [sp]
	CMP 	r3, #0
	bne 	Lml_dsa_87_verify$8
	ADDw	r0, sp, #1260
	ADD 	r1, sp, #288
	bl  	L_poly_use_hint$1
Lml_dsa_87_verify$14:
	ADD 	r1, sp, #488
	ADDw	r0, sp, #1260
	bl  	L_polyw1_pack$1
Lml_dsa_87_verify$13:
	ADD 	r0, sp, #88
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_87_verify$12:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_87_verify$11:
Lml_dsa_87_verify$10:
Lml_dsa_87_verify$9:
Lml_dsa_87_verify$8:
	LDR 	r2, [sp, #4]
	LDR 	lr, [sp]
	CMP 	lr, #0
	bne 	Lml_dsa_87_verify$2
	ADD 	r0, sp, #88
	bl  	L_shake256_add_block_end$1
Lml_dsa_87_verify$7:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_verify$6:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #16]
	MOV 	r4, #0
	MOV 	lr, #0
	b   	Lml_dsa_87_verify$4
Lml_dsa_87_verify$5:
	LDR 	r2, [r1, r4]
	LDR 	r3, [r0, r4]
	EOR 	r2, r2, r3
	ORR 	lr, lr, r2
	ADD 	r4, r4, #4
Lml_dsa_87_verify$4:
	CMP 	r4, #64
	bcc 	Lml_dsa_87_verify$5
Lml_dsa_87_verify$3:
Lml_dsa_87_verify$2:
	CMP 	lr, #0
	beq 	Lml_dsa_87_verify$1
	MOV 	lr, #4294967295
Lml_dsa_87_verify$1:
	MOV 	r0, lr
	LDR 	r4, [sp, #2284]
	LDR 	r5, [sp, #2288]
	LDR 	r6, [sp, #2292]
	LDR 	r7, [sp, #2296]
	LDR 	r8, [sp, #2300]
	LDR 	r9, [sp, #2304]
	LDR 	r10, [sp, #2308]
	LDR 	r11, [sp, #2312]
	LDR 	sp, [sp, #2316]
	pop 	{pc}
_ml_dsa_87_sign:
ml_dsa_87_sign:
	push	{lr}
	MOVw	lr, #8656
	SUB 	lr, sp, lr
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	MOVw	lr, #8620
	ADD 	lr, sp, lr
	STR 	r4, [lr]
	STR 	r5, [lr, #4]
	STR 	r6, [lr, #8]
	STR 	r7, [lr, #12]
	STR 	r8, [lr, #16]
	STR 	r9, [lr, #20]
	STR 	r10, [lr, #24]
	STR 	r11, [lr, #28]
	STR 	r12, [lr, #32]
	MOV 	r12, r0
	MOV 	r0, #4294967295
	LDR 	lr, [r2]
	CMP 	lr, #255
	bhi 	Lml_dsa_87_sign$1
	STR 	r1, [sp]
	STR 	r12, [sp, #4]
	STR 	lr, [sp, #8]
	STR 	r2, [sp, #12]
	STR 	r3, [sp, #16]
	ADD 	r0, sp, #220
	LDR 	r1, [sp, #16]
	ADD 	r12, r1, #64
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$411
Lml_dsa_87_sign$412:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_sign$411:
	CMP 	r2, #16
	bcc 	Lml_dsa_87_sign$412
	LDR 	r1, [sp, #12]
	LDR 	r1, [r1]
	MOV 	r8, #0
	STRB	r8, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	MOV 	r2, #66
	b   	Lml_dsa_87_sign$409
Lml_dsa_87_sign$410:
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
Lml_dsa_87_sign$409:
	CMP 	r2, #200
	bcc 	Lml_dsa_87_sign$410
	MOV 	r2, #66
	LDR 	r1, [sp]
	LDR 	r3, [r1]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_87_sign$408:
	ADD 	sp, sp, #8
	LDR 	r1, [sp, #12]
	LDR 	r12, [r1, #4]
	LDR 	r1, [sp]
	LDR 	r3, [r1, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_87_sign$407:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_87_sign$406:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_sign$405:
	ADD 	sp, sp, #212
	LDR 	r1, [r0]
	STR 	r1, [sp, #24]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #28]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #32]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #36]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #40]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #44]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #48]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #52]
	LDR 	r1, [r0, #32]
	STR 	r1, [sp, #56]
	LDR 	r1, [r0, #36]
	STR 	r1, [sp, #60]
	LDR 	r1, [r0, #40]
	STR 	r1, [sp, #64]
	LDR 	r1, [r0, #44]
	STR 	r1, [sp, #68]
	LDR 	r1, [r0, #48]
	STR 	r1, [sp, #72]
	LDR 	r1, [r0, #52]
	STR 	r1, [sp, #76]
	LDR 	r1, [r0, #56]
	STR 	r1, [sp, #80]
	LDR 	r1, [r0, #60]
	STR 	r1, [sp, #84]
	LDR 	r1, [sp, #16]
	ADD 	r0, r1, #32
	LDR 	r1, [r0]
	STR 	r1, [sp, #220]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #224]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #228]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #232]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #236]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #240]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #244]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #248]
	ADD 	r0, sp, #252
	LDR 	r1, [sp]
	LDR 	r1, [r1, #8]
	LDR 	r8, [r1]
	STR 	r8, [r0]
	LDR 	r8, [r1, #4]
	STR 	r8, [r0, #4]
	LDR 	r8, [r1, #8]
	STR 	r8, [r0, #8]
	LDR 	r8, [r1, #12]
	STR 	r8, [r0, #12]
	LDR 	r8, [r1, #16]
	STR 	r8, [r0, #16]
	LDR 	r8, [r1, #20]
	STR 	r8, [r0, #20]
	LDR 	r8, [r1, #24]
	STR 	r8, [r0, #24]
	LDR 	r8, [r1, #28]
	STR 	r8, [r0, #28]
	ADD 	r0, sp, #284
	LDR 	r1, [sp, #24]
	STR 	r1, [r0]
	LDR 	r1, [sp, #28]
	STR 	r1, [r0, #4]
	LDR 	r1, [sp, #32]
	STR 	r1, [r0, #8]
	LDR 	r1, [sp, #36]
	STR 	r1, [r0, #12]
	LDR 	r1, [sp, #40]
	STR 	r1, [r0, #16]
	LDR 	r1, [sp, #44]
	STR 	r1, [r0, #20]
	LDR 	r1, [sp, #48]
	STR 	r1, [r0, #24]
	LDR 	r1, [sp, #52]
	STR 	r1, [r0, #28]
	LDR 	r1, [sp, #56]
	STR 	r1, [r0, #32]
	LDR 	r1, [sp, #60]
	STR 	r1, [r0, #36]
	LDR 	r1, [sp, #64]
	STR 	r1, [r0, #40]
	LDR 	r1, [sp, #68]
	STR 	r1, [r0, #44]
	LDR 	r1, [sp, #72]
	STR 	r1, [r0, #48]
	LDR 	r1, [sp, #76]
	STR 	r1, [r0, #52]
	LDR 	r1, [sp, #80]
	STR 	r1, [r0, #56]
	LDR 	r1, [sp, #84]
	STR 	r1, [r0, #60]
	ADD 	r0, sp, #220
	MOV 	r1, #0
	MOV 	r2, #32
	b   	Lml_dsa_87_sign$403
Lml_dsa_87_sign$404:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_sign$403:
	CMP 	r2, #50
	bcc 	Lml_dsa_87_sign$404
	LDRB	r9, [r0, #128]
	EOR 	r9, r9, #31
	STRB	r9, [r0, #128]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_sign$402:
	ADD 	sp, sp, #212
	ADD 	r1, sp, #88
	LDR 	r2, [r0]
	STR 	r2, [r1]
	LDR 	r2, [r0, #4]
	STR 	r2, [r1, #4]
	LDR 	r2, [r0, #8]
	STR 	r2, [r1, #8]
	LDR 	r2, [r0, #12]
	STR 	r2, [r1, #12]
	LDR 	r2, [r0, #16]
	STR 	r2, [r1, #16]
	LDR 	r2, [r0, #20]
	STR 	r2, [r1, #20]
	LDR 	r2, [r0, #24]
	STR 	r2, [r1, #24]
	LDR 	r2, [r0, #28]
	STR 	r2, [r1, #28]
	LDR 	r2, [r0, #32]
	STR 	r2, [r1, #32]
	LDR 	r2, [r0, #36]
	STR 	r2, [r1, #36]
	LDR 	r2, [r0, #40]
	STR 	r2, [r1, #40]
	LDR 	r2, [r0, #44]
	STR 	r2, [r1, #44]
	LDR 	r2, [r0, #48]
	STR 	r2, [r1, #48]
	LDR 	r2, [r0, #52]
	STR 	r2, [r1, #52]
	LDR 	r2, [r0, #56]
	STR 	r2, [r1, #56]
	LDR 	r2, [r0, #60]
	STR 	r2, [r1, #60]
	MOV 	r0, #4294967295
	STR 	r0, [sp]
Lml_dsa_87_sign$2:
	LDR 	r0, [sp]
	ADD 	r0, r0, #1
	STR 	r0, [sp]
	ADDw	r0, sp, #2468
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$400
Lml_dsa_87_sign$401:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$400:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$401
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #3237
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$398
Lml_dsa_87_sign$399:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$398:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$399
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #4006
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$396
Lml_dsa_87_sign$397:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$396:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$397
	STRB	r1, [r0, #768]
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$394
Lml_dsa_87_sign$395:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$394:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$395
	STRB	r1, [r0, #768]
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$392
Lml_dsa_87_sign$393:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$392:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$393
	STRB	r1, [r0, #768]
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$390
Lml_dsa_87_sign$391:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$390:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$391
	STRB	r1, [r0, #768]
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$388
Lml_dsa_87_sign$389:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$388:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$389
	STRB	r1, [r0, #768]
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$386
Lml_dsa_87_sign$387:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_87_sign$386:
	CMP 	r2, #768
	bcc 	Lml_dsa_87_sign$387
	STRB	r1, [r0, #768]
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$385:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$384:
	MOV 	r2, #0
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$383:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$382:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$381:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$380:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$379:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$378:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$377:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$376:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #1
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$375:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$374:
	MOV 	r2, #1
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$373:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$372:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$371:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$370:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$369:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$368:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$367:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$366:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #2
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$365:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$364:
	MOV 	r2, #2
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$363:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$362:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$361:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$360:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$359:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$358:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$357:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$356:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #3
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$355:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$354:
	MOV 	r2, #3
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$353:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$352:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$351:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$350:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$349:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$348:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$347:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$346:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #4
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$345:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$344:
	MOV 	r2, #4
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$343:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$342:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$341:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$340:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$339:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$338:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$337:
	ADD 	sp, sp, #12
	MOV 	r2, #4
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$336:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #5
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$335:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$334:
	MOV 	r2, #5
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$333:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$332:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$331:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$330:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$329:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$328:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$327:
	ADD 	sp, sp, #12
	MOV 	r2, #5
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$326:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r10, #7
	MUL 	r10, r10, r0
	ADD 	r10, r10, #6
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$325:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$324:
	MOV 	r2, #6
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #2468
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$323:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #3237
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$322:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	ADDw	r0, sp, #4006
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$321:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #4775
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$320:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #5544
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$319:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #6313
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$318:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7082
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$317:
	ADD 	sp, sp, #12
	MOV 	r2, #6
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #220
	MOVw	r0, #7851
	ADD 	r0, sp, r0
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_87_sign$316:
	ADD 	sp, sp, #12
	ADDw	r0, sp, #1444
	ADDw	r1, sp, #2468
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$315:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$314:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$313:
	ADDw	r1, sp, #2468
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$312:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$311:
	LDR 	r12, [sp, #4]
	MOV 	r1, r12
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$310:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	ADDw	r1, sp, #3237
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$309:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$308:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$307:
	ADDw	r1, sp, #3237
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$306:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$305:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #128
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$304:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	ADDw	r1, sp, #4006
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$303:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$302:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$301:
	ADDw	r1, sp, #4006
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$300:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$299:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #256
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$298:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	MOVw	r1, #4775
	ADD 	r1, sp, r1
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$297:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$296:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$295:
	MOVw	r1, #4775
	ADD 	r1, sp, r1
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$294:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$293:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #384
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$292:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	MOVw	r1, #5544
	ADD 	r1, sp, r1
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$291:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$290:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$289:
	MOVw	r1, #5544
	ADD 	r1, sp, r1
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$288:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$287:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #512
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$286:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	MOVw	r1, #6313
	ADD 	r1, sp, r1
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$285:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$284:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$283:
	MOVw	r1, #6313
	ADD 	r1, sp, r1
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$282:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$281:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #640
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$280:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	MOVw	r1, #7082
	ADD 	r1, sp, r1
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$279:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$278:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$277:
	MOVw	r1, #7082
	ADD 	r1, sp, r1
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$276:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$275:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #768
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$274:
	STR 	r12, [sp, #12]
	ADDw	r0, sp, #1444
	MOVw	r1, #7851
	ADD 	r1, sp, r1
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_87_sign$273:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$272:
	ADDw	r0, sp, #1444
	bl  	L_poly_caddq$1
Lml_dsa_87_sign$271:
	MOVw	r1, #7851
	ADD 	r1, sp, r1
	ADDw	r0, sp, #1444
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$270:
	ADDw	r0, sp, #1444
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_87_sign$269:
	LDR 	r12, [sp, #12]
	ADD 	r1, r12, #896
	ADDw	r0, sp, #1444
	bl  	L_polyw1_pack$1
Lml_dsa_87_sign$268:
	STR 	r12, [sp, #12]
	ADD 	r0, sp, #220
	ADD 	r12, sp, #24
	MOV 	r2, #0
	b   	Lml_dsa_87_sign$266
Lml_dsa_87_sign$267:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_sign$266:
	CMP 	r2, #16
	bcc 	Lml_dsa_87_sign$267
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_87_sign$264
Lml_dsa_87_sign$265:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_sign$264:
	CMP 	r2, #50
	bcc 	Lml_dsa_87_sign$265
	LDR 	r12, [sp, #12]
	MOV 	r2, #64
	MOV 	r3, r12
	MOV 	r12, #0
	b   	Lml_dsa_87_sign$260
Lml_dsa_87_sign$261:
	LDRB	r8, [r3, r12]
	LDRB	r1, [r0, r2]
	EOR 	r1, r1, r8
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
	ADD 	r12, r12, #1
	CMP 	r2, #136
	bne 	Lml_dsa_87_sign$260
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #20]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_sign$263:
	ADD 	sp, sp, #212
	LDR 	r12, [sp, #8]
	LDR 	r3, [sp, #20]
	MOV 	r2, #0
Lml_dsa_87_sign$262:
Lml_dsa_87_sign$260:
	CMP 	r12, #1024
	bne 	Lml_dsa_87_sign$261
	bl  	L_shake256_add_block_end$1
Lml_dsa_87_sign$259:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_sign$258:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #12]
	LDR 	r2, [r0]
	STR 	r2, [r1]
	LDR 	r2, [r0, #4]
	STR 	r2, [r1, #4]
	LDR 	r2, [r0, #8]
	STR 	r2, [r1, #8]
	LDR 	r2, [r0, #12]
	STR 	r2, [r1, #12]
	LDR 	r2, [r0, #16]
	STR 	r2, [r1, #16]
	LDR 	r2, [r0, #20]
	STR 	r2, [r1, #20]
	LDR 	r2, [r0, #24]
	STR 	r2, [r1, #24]
	LDR 	r2, [r0, #28]
	STR 	r2, [r1, #28]
	LDR 	r2, [r0, #32]
	STR 	r2, [r1, #32]
	LDR 	r2, [r0, #36]
	STR 	r2, [r1, #36]
	LDR 	r2, [r0, #40]
	STR 	r2, [r1, #40]
	LDR 	r2, [r0, #44]
	STR 	r2, [r1, #44]
	LDR 	r2, [r0, #48]
	STR 	r2, [r1, #48]
	LDR 	r2, [r0, #52]
	STR 	r2, [r1, #52]
	LDR 	r2, [r0, #56]
	STR 	r2, [r1, #56]
	LDR 	r2, [r0, #60]
	STR 	r2, [r1, #60]
	ADD 	r0, sp, #220
	ADDw	r2, sp, #1444
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_87_sign$257:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #152
	ADDw	r2, sp, #1444
	bl  	L_poly_compress_challenge$1
Lml_dsa_87_sign$256:
	MOV 	r0, #0
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$243
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$255:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$254:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #128
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$253:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$252:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$251:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$250:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$249:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$248:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$247:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$246:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$243
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #64
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$245:
Lml_dsa_87_sign$244:
Lml_dsa_87_sign$243:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$230
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$242:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$241:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #224
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$240:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$239:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$238:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$237:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #1
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$236:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$235:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$234:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$233:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$230
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #704
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$232:
Lml_dsa_87_sign$231:
Lml_dsa_87_sign$230:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$217
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$229:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$228:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #320
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$227:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$226:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$225:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$224:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #2
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$223:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$222:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$221:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$220:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$217
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1344
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$219:
Lml_dsa_87_sign$218:
Lml_dsa_87_sign$217:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$204
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$216:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$215:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #416
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$214:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$213:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$212:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$211:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #3
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$210:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$209:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$208:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$207:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$204
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1984
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$206:
Lml_dsa_87_sign$205:
Lml_dsa_87_sign$204:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$191
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$203:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$202:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #512
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$201:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$200:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$199:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$198:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #4
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$197:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$196:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$195:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$194:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$191
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #2624
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$193:
Lml_dsa_87_sign$192:
Lml_dsa_87_sign$191:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$178
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$190:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$189:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #608
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$188:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$187:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$186:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$185:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #5
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$184:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$183:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$182:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$181:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$178
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #3264
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$180:
Lml_dsa_87_sign$179:
Lml_dsa_87_sign$178:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$165
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$177:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$176:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #704
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$175:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$174:
	ADDw	r0, sp, #1444
	ADD 	r1, sp, #420
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$173:
	ADDw	r0, sp, #1444
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$172:
	MOV 	r10, #7
	LDR 	r0, [sp]
	MUL 	r10, r10, r0
	ADD 	r10, r10, #6
	ADD 	r0, sp, #420
	ADD 	r2, sp, #88
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_87_sign$171:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1444
	ADD 	r2, sp, #420
	bl  	L_poly_add_inplace$1
Lml_dsa_87_sign$170:
	ADDw	r0, sp, #1444
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$169:
	MOVw	r4, #65416
	MOVT	r4, #7
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$168:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$165
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #3904
	ADDw	r2, sp, #1444
	bl  	L_polyz_pack$1
Lml_dsa_87_sign$167:
Lml_dsa_87_sign$166:
Lml_dsa_87_sign$165:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$3
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$153
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$164:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$163:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #800
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$162:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$161:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$160:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$159:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #2468
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$158:
	ADDw	r1, sp, #2468
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$157:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$156:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$155:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$154:
Lml_dsa_87_sign$153:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$141
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$152:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$151:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #896
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$150:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$149:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$148:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$147:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #3237
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$146:
	ADDw	r1, sp, #3237
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$145:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$144:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$143:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$142:
Lml_dsa_87_sign$141:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$129
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$140:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$139:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #992
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$138:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$137:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$136:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$135:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #4006
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$134:
	ADDw	r1, sp, #4006
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$133:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$132:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$131:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$130:
Lml_dsa_87_sign$129:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$117
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$128:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$127:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #1088
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$126:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$125:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$124:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$123:
	ADD 	r0, sp, #420
	MOVw	r1, #4775
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$122:
	MOVw	r1, #4775
	ADD 	r1, sp, r1
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$121:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$120:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$119:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$118:
Lml_dsa_87_sign$117:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$105
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$116:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$115:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #1184
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$114:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$113:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$112:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$111:
	ADD 	r0, sp, #420
	MOVw	r1, #5544
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$110:
	MOVw	r1, #5544
	ADD 	r1, sp, r1
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$109:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$108:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$107:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$106:
Lml_dsa_87_sign$105:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$93
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$104:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$103:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #1280
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$102:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$101:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$100:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$99:
	ADD 	r0, sp, #420
	MOVw	r1, #6313
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$98:
	MOVw	r1, #6313
	ADD 	r1, sp, r1
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$97:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$96:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$95:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$94:
Lml_dsa_87_sign$93:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$81
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$92:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$91:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #1376
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$90:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$89:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$88:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$87:
	ADD 	r0, sp, #420
	MOVw	r1, #7082
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$86:
	MOVw	r1, #7082
	ADD 	r1, sp, r1
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$85:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$84:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$83:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$82:
Lml_dsa_87_sign$81:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$69
	ADDw	r1, sp, #1444
	ADD 	r0, sp, #152
	bl  	L_poly_decompress_challenge$1
Lml_dsa_87_sign$80:
	ADDw	r0, sp, #1444
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$79:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #420
	ADD 	r1, r1, #1472
	bl  	L_poly_eta_unpack$1
Lml_dsa_87_sign$78:
	ADD 	r0, sp, #420
	bl  	L_poly_ntt$1
Lml_dsa_87_sign$77:
	ADD 	r0, sp, #420
	ADDw	r1, sp, #1444
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_sign$76:
	ADD 	r0, sp, #420
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_sign$75:
	ADD 	r0, sp, #420
	MOVw	r1, #7851
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_87_sign$74:
	MOVw	r1, #7851
	ADD 	r1, sp, r1
	ADD 	r0, sp, #420
	bl  	L_poly_compress_w1_element$1
Lml_dsa_87_sign$73:
	ADD 	r0, sp, #420
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_87_sign$72:
	ADD 	r0, sp, #420
	bl  	L_poly_reduce$1
Lml_dsa_87_sign$71:
	MOVw	r4, #65160
	MOVT	r4, #3
	ADD 	r1, sp, #420
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$70:
Lml_dsa_87_sign$69:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$5
	MOV 	r1, #0
	MOV 	r2, #0
	STR 	r1, [sp, #12]
	STR 	r2, [sp, #20]
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$62
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #1568
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$68:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$67:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$62
	ADDw	r1, sp, #1444
	ADDw	r2, sp, #2468
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$66:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$62
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #0
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$65:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$64:
Lml_dsa_87_sign$63:
Lml_dsa_87_sign$62:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$55
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #1984
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$61:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$60:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$55
	ADDw	r1, sp, #1444
	ADDw	r2, sp, #3237
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$59:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$55
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #1
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$58:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$57:
Lml_dsa_87_sign$56:
Lml_dsa_87_sign$55:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$48
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #2400
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$54:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$53:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$48
	ADDw	r1, sp, #1444
	ADDw	r2, sp, #4006
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$52:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$48
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #2
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$51:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$50:
Lml_dsa_87_sign$49:
Lml_dsa_87_sign$48:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$41
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #2816
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$47:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$46:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$41
	ADDw	r1, sp, #1444
	MOVw	r2, #4775
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$45:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$41
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #3
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$44:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$43:
Lml_dsa_87_sign$42:
Lml_dsa_87_sign$41:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$34
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #3232
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$40:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$39:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$34
	ADDw	r1, sp, #1444
	MOVw	r2, #5544
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$38:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$34
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #4
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$37:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$36:
Lml_dsa_87_sign$35:
Lml_dsa_87_sign$34:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$27
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #3648
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$33:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$32:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$27
	ADDw	r1, sp, #1444
	MOVw	r2, #6313
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$31:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$27
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #5
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$30:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$29:
Lml_dsa_87_sign$28:
Lml_dsa_87_sign$27:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$20
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #4064
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$26:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$25:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$20
	ADDw	r1, sp, #1444
	MOVw	r2, #7082
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$24:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$20
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #6
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$23:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$22:
Lml_dsa_87_sign$21:
Lml_dsa_87_sign$20:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$13
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1444
	ADD 	r5, r1, #4480
	ADD 	r1, sp, #152
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_87_sign$19:
	MOVw	r4, #65280
	MOVT	r4, #3
	ADDw	r1, sp, #1444
	bl  	L_poly_check_norm$1
Lml_dsa_87_sign$18:
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$13
	ADDw	r1, sp, #1444
	MOVw	r2, #7851
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_87_sign$17:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$13
	LDR 	r2, [sp, #20]
	LDR 	r12, [sp, #4]
	MOV 	r1, #7
	ADD 	r3, r12, #4544
	ADDw	r12, sp, #1444
	bl  	L_pack_hint_element$1
Lml_dsa_87_sign$16:
	STR 	r2, [sp, #20]
Lml_dsa_87_sign$15:
Lml_dsa_87_sign$14:
Lml_dsa_87_sign$13:
	LDR 	r1, [sp, #12]
	CMP 	r0, #0
	bne 	Lml_dsa_87_sign$7
	CMP 	r1, #75
	bhi 	Lml_dsa_87_sign$9
	MOV 	r0, #0
	MOVw	r1, #4544
	LDR 	r2, [sp, #20]
	ADD 	r1, r1, r2
	LDR 	r12, [sp, #4]
	b   	Lml_dsa_87_sign$11
Lml_dsa_87_sign$12:
	STRB	r0, [r12, r1]
	ADD 	r1, r1, #1
	ADD 	r2, r2, #1
Lml_dsa_87_sign$11:
	CMP 	r2, #75
	bcc 	Lml_dsa_87_sign$12
	b   	Lml_dsa_87_sign$4
Lml_dsa_87_sign$9:
	MOV 	r0, #1
Lml_dsa_87_sign$10:
	b   	Lml_dsa_87_sign$4
Lml_dsa_87_sign$7:
	MOV 	r0, #1
Lml_dsa_87_sign$8:
	b   	Lml_dsa_87_sign$4
Lml_dsa_87_sign$5:
	MOV 	r0, #1
Lml_dsa_87_sign$6:
	b   	Lml_dsa_87_sign$4
Lml_dsa_87_sign$3:
	MOV 	r0, #1
Lml_dsa_87_sign$4:
	CMP 	r0, #1
	beq 	Lml_dsa_87_sign$2
	MOV 	r0, #0
Lml_dsa_87_sign$1:
	MOVw	lr, #8620
	ADD 	lr, sp, lr
	LDR 	r4, [lr]
	LDR 	r5, [lr, #4]
	LDR 	r6, [lr, #8]
	LDR 	r7, [lr, #12]
	LDR 	r8, [lr, #16]
	LDR 	r9, [lr, #20]
	LDR 	r10, [lr, #24]
	LDR 	r11, [lr, #28]
	LDR 	sp, [lr, #32]
	pop 	{pc}
_ml_dsa_87_keygen:
ml_dsa_87_keygen:
	push	{lr}
	SUBw	lr, sp, #3380
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	STR 	r4, [sp, #3344]
	STR 	r5, [sp, #3348]
	STR 	r6, [sp, #3352]
	STR 	r7, [sp, #3356]
	STR 	r8, [sp, #3360]
	STR 	r9, [sp, #3364]
	STR 	r10, [sp, #3368]
	STR 	r11, [sp, #3372]
	STR 	r12, [sp, #3376]
	STR 	r0, [sp]
	STR 	r1, [sp, #4]
	ADD 	r0, sp, #72
	MOV 	r3, #0
	b   	Lml_dsa_87_keygen$468
Lml_dsa_87_keygen$469:
	LDR 	r9, [r2, r3, lsl #2]
	STR 	r9, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
Lml_dsa_87_keygen$468:
	CMP 	r3, #8
	bcc 	Lml_dsa_87_keygen$469
	MOV 	r1, #0
	MOV 	r2, #8
	b   	Lml_dsa_87_keygen$466
Lml_dsa_87_keygen$467:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_87_keygen$466:
	CMP 	r2, #50
	bcc 	Lml_dsa_87_keygen$467
	MOV 	r1, #8
	STRB	r1, [r0, #32]
	MOV 	r7, #7
	STRB	r7, [r0, #33]
	LDRB	r9, [r0, #34]
	EOR 	r9, r9, #31
	STRB	r9, [r0, #34]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$465:
	ADD 	sp, sp, #212
	LDR 	r0, [sp]
	MOV 	r1, r0
	LDR 	r2, [sp, #72]
	STR 	r2, [r1]
	LDR 	r2, [sp, #76]
	STR 	r2, [r1, #4]
	LDR 	r2, [sp, #80]
	STR 	r2, [r1, #8]
	LDR 	r2, [sp, #84]
	STR 	r2, [r1, #12]
	LDR 	r2, [sp, #88]
	STR 	r2, [r1, #16]
	LDR 	r2, [sp, #92]
	STR 	r2, [r1, #20]
	LDR 	r2, [sp, #96]
	STR 	r2, [r1, #24]
	LDR 	r2, [sp, #100]
	STR 	r2, [r1, #28]
	STR 	r0, [sp]
	LDR 	r1, [sp, #4]
	MOV 	r0, r1
	LDR 	r2, [sp, #72]
	STR 	r2, [r0]
	LDR 	r2, [sp, #76]
	STR 	r2, [r0, #4]
	LDR 	r2, [sp, #80]
	STR 	r2, [r0, #8]
	LDR 	r2, [sp, #84]
	STR 	r2, [r0, #12]
	LDR 	r2, [sp, #88]
	STR 	r2, [r0, #16]
	LDR 	r2, [sp, #92]
	STR 	r2, [r0, #20]
	LDR 	r2, [sp, #96]
	STR 	r2, [r0, #24]
	LDR 	r2, [sp, #100]
	STR 	r2, [r0, #28]
	ADD 	r0, r1, #32
	LDR 	r2, [sp, #168]
	STR 	r2, [r0]
	LDR 	r2, [sp, #172]
	STR 	r2, [r0, #4]
	LDR 	r2, [sp, #176]
	STR 	r2, [r0, #8]
	LDR 	r2, [sp, #180]
	STR 	r2, [r0, #12]
	LDR 	r2, [sp, #184]
	STR 	r2, [r0, #16]
	LDR 	r2, [sp, #188]
	STR 	r2, [r0, #20]
	LDR 	r2, [sp, #192]
	STR 	r2, [r0, #24]
	LDR 	r2, [sp, #196]
	STR 	r2, [r0, #28]
	STR 	r1, [sp, #4]
	ADD 	r0, sp, #8
	LDR 	r1, [sp, #104]
	STR 	r1, [r0]
	LDR 	r1, [sp, #108]
	STR 	r1, [r0, #4]
	LDR 	r1, [sp, #112]
	STR 	r1, [r0, #8]
	LDR 	r1, [sp, #116]
	STR 	r1, [r0, #12]
	LDR 	r1, [sp, #120]
	STR 	r1, [r0, #16]
	LDR 	r1, [sp, #124]
	STR 	r1, [r0, #20]
	LDR 	r1, [sp, #128]
	STR 	r1, [r0, #24]
	LDR 	r1, [sp, #132]
	STR 	r1, [r0, #28]
	LDR 	r1, [sp, #136]
	STR 	r1, [r0, #32]
	LDR 	r1, [sp, #140]
	STR 	r1, [r0, #36]
	LDR 	r1, [sp, #144]
	STR 	r1, [r0, #40]
	LDR 	r1, [sp, #148]
	STR 	r1, [r0, #44]
	LDR 	r1, [sp, #152]
	STR 	r1, [r0, #48]
	LDR 	r1, [sp, #156]
	STR 	r1, [r0, #52]
	LDR 	r1, [sp, #160]
	STR 	r1, [r0, #56]
	LDR 	r1, [sp, #164]
	STR 	r1, [r0, #60]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$464:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #128
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$463:
	STR 	r11, [sp, #4]
	MOV 	r2, #0
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$462:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$461:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$460:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$459:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$458:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$457:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #224
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$456:
	STR 	r11, [sp, #4]
	MOV 	r2, #1
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$455:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$454:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$453:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$452:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$451:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$450:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$449:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #320
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$448:
	STR 	r11, [sp, #4]
	MOV 	r2, #2
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$447:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$446:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$445:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$444:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$443:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$442:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$441:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #416
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$440:
	STR 	r11, [sp, #4]
	MOV 	r2, #3
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$439:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$438:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$437:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$436:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$435:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$434:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$433:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #512
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$432:
	STR 	r11, [sp, #4]
	MOV 	r2, #4
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$431:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$430:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$429:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$428:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$427:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$426:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$425:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #608
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$424:
	STR 	r11, [sp, #4]
	MOV 	r2, #5
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$423:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$422:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$421:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$420:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$419:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$418:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$417:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #704
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$416:
	STR 	r11, [sp, #4]
	MOV 	r2, #6
	MOV 	r3, #0
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$415:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$414:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$413:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$412:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$411:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$410:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$409:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$408:
	MOV 	r10, #7
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$407:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #800
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$406:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$405:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$404:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$403:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1568
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$402:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #32
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$401:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$400:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$399:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$398:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$397:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$396:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$395:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$394:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$393:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$392:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$391:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$390:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$389:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$388:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$387:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$386:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$385:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$384:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$383:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$382:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$381:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$380:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$379:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$378:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$377:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$376:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$375:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$374:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$373:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$372:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$371:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$370:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$369:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$368:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$367:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$366:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$365:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$364:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$363:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$362:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$361:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$360:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$359:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #1
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$358:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$357:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$356:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$355:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$354:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$353:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$352:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$351:
	MOV 	r10, #8
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$350:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #896
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$349:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$348:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$347:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$346:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1984
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$345:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #352
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$344:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$343:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$342:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$341:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$340:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$339:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$338:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$337:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$336:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$335:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$334:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$333:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$332:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$331:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$330:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$329:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$328:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$327:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$326:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$325:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$324:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$323:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$322:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$321:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$320:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$319:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$318:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$317:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$316:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$315:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$314:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$313:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$312:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$311:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$310:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$309:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$308:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$307:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$306:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$305:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$304:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$303:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$302:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #2
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$301:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$300:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$299:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$298:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$297:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$296:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$295:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$294:
	MOV 	r10, #9
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$293:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #992
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$292:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$291:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$290:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$289:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #2400
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$288:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #672
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$287:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$286:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$285:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$284:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$283:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$282:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$281:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$280:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$279:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$278:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$277:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$276:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$275:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$274:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$273:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$272:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$271:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$270:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$269:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$268:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$267:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$266:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$265:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$264:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$263:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$262:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$261:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$260:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$259:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$258:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$257:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$256:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$255:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$254:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$253:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$252:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$251:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$250:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$249:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$248:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$247:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$246:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$245:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #3
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$244:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$243:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$242:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$241:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$240:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$239:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$238:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$237:
	MOV 	r10, #10
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$236:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1088
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$235:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$234:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$233:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$232:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #2816
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$231:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #992
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$230:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$229:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$228:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$227:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$226:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$225:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$224:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$223:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$222:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$221:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$220:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$219:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$218:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$217:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$216:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$215:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$214:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$213:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$212:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$211:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$210:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$209:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$208:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$207:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$206:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$205:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$204:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$203:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$202:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$201:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$200:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$199:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$198:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$197:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$196:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$195:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$194:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$193:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$192:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$191:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$190:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$189:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$188:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #4
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$187:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$186:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$185:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$184:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$183:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$182:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$181:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$180:
	MOV 	r10, #11
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$179:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1184
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$178:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$177:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$176:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$175:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #3232
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$174:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #1312
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$173:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$172:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$171:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$170:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$169:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$168:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$167:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$166:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$165:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$164:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$163:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$162:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$161:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$160:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$159:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$158:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$157:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$156:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$155:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$154:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$153:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$152:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$151:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$150:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$149:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$148:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$147:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$146:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$145:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$144:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$143:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$142:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$141:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$140:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$139:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$138:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$137:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$136:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$135:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$134:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$133:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$132:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$131:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #5
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$130:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$129:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$128:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$127:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$126:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$125:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$124:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$123:
	MOV 	r10, #12
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$122:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1280
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$121:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$120:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$119:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$118:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #3648
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$117:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #1632
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$116:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$115:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$114:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$113:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$112:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$111:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$110:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$109:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$108:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$107:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$106:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$105:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$104:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$103:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$102:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$101:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$100:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$99:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$98:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$97:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$96:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$95:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$94:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$93:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$92:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$91:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$90:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$89:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$88:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$87:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$86:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$85:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$84:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$83:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$82:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$81:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$80:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$79:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$78:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$77:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$76:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$75:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$74:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #6
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$73:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$72:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$71:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$70:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$69:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$68:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$67:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$66:
	MOV 	r10, #13
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$65:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1376
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$64:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$63:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$62:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$61:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #4064
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$60:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #1952
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$59:
	STR 	r12, [sp]
	MOV 	r10, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$58:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$57:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$56:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$55:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$54:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_87_keygen$53:
	MOV 	r10, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$52:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$51:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$50:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$49:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$48:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$47:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$46:
	MOV 	r10, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$45:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$44:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$43:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$42:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$41:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$40:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$39:
	MOV 	r10, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$38:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$37:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$36:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$35:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$34:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$33:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$32:
	MOV 	r10, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$31:
	ADD 	sp, sp, #204
	MOV 	r2, #4
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$30:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$29:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$28:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$27:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$26:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$25:
	MOV 	r10, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$24:
	ADD 	sp, sp, #204
	MOV 	r2, #5
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$23:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$22:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$21:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$20:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$19:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$18:
	MOV 	r10, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$17:
	ADD 	sp, sp, #204
	MOV 	r2, #6
	MOV 	r3, #7
	ORR 	r10, r2, r3, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_87_keygen$16:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_87_keygen$15:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_87_keygen$14:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_87_keygen$13:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_87_keygen$12:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$11:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_87_keygen$10:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_87_keygen$9:
	MOV 	r10, #14
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_87_keygen$8:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1472
	bl  	L_poly_eta_pack$1
Lml_dsa_87_keygen$7:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r2, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_87_keygen$6:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_87_keygen$5:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_87_keygen$4:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #4480
	bl  	L_polyt0_pack$1
Lml_dsa_87_keygen$3:
	STR 	r11, [sp, #4]
	LDR 	r12, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r12, #2272
	bl  	L_polyt1_pack$1
Lml_dsa_87_keygen$2:
	STR 	r12, [sp]
	LDR 	r3, [sp]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_87_keygen$1:
	ADD 	sp, sp, #8
	LDR 	r1, [sp, #4]
	ADD 	r0, r1, #64
	LDR 	r1, [sp, #72]
	STR 	r1, [r0]
	LDR 	r1, [sp, #76]
	STR 	r1, [r0, #4]
	LDR 	r1, [sp, #80]
	STR 	r1, [r0, #8]
	LDR 	r1, [sp, #84]
	STR 	r1, [r0, #12]
	LDR 	r1, [sp, #88]
	STR 	r1, [r0, #16]
	LDR 	r1, [sp, #92]
	STR 	r1, [r0, #20]
	LDR 	r1, [sp, #96]
	STR 	r1, [r0, #24]
	LDR 	r1, [sp, #100]
	STR 	r1, [r0, #28]
	LDR 	r1, [sp, #104]
	STR 	r1, [r0, #32]
	LDR 	r1, [sp, #108]
	STR 	r1, [r0, #36]
	LDR 	r1, [sp, #112]
	STR 	r1, [r0, #40]
	LDR 	r1, [sp, #116]
	STR 	r1, [r0, #44]
	LDR 	r1, [sp, #120]
	STR 	r1, [r0, #48]
	LDR 	r1, [sp, #124]
	STR 	r1, [r0, #52]
	LDR 	r1, [sp, #128]
	STR 	r1, [r0, #56]
	LDR 	r1, [sp, #132]
	STR 	r1, [r0, #60]
	LDR 	r4, [sp, #3344]
	LDR 	r5, [sp, #3348]
	LDR 	r6, [sp, #3352]
	LDR 	r7, [sp, #3356]
	LDR 	r8, [sp, #3360]
	LDR 	r9, [sp, #3364]
	LDR 	r10, [sp, #3368]
	LDR 	r11, [sp, #3372]
	LDR 	sp, [sp, #3376]
	pop 	{pc}
L_unpack_hint_at_index$1:
	MOV 	r2, #0
	MOV 	r3, #0
	MOV 	r12, #0
	CMP 	r4, #0
	bls 	L_unpack_hint_at_index$14
	MOV 	r2, #74
	ADD 	r2, r2, r4
	LDRB	r2, [r1, r2]
L_unpack_hint_at_index$14:
	MOV 	r5, #75
	ADD 	r5, r5, r4
	LDRB	r4, [r1, r5]
	CMP 	r4, r2
	bcc 	L_unpack_hint_at_index$5
	CMP 	r4, #75
	bhi 	L_unpack_hint_at_index$7
	MOV 	r10, r2
	b   	L_unpack_hint_at_index$9
L_unpack_hint_at_index$10:
	LDRB	r5, [r1, r10]
	CMP 	r10, r2
	bls 	L_unpack_hint_at_index$12
	MOV 	r6, r10
	SUB 	r6, r6, #1
	LDRB	r6, [r1, r6]
	CMP 	r5, r6
	bhi 	L_unpack_hint_at_index$12
	MOV 	r3, #1
L_unpack_hint_at_index$13:
L_unpack_hint_at_index$12:
	CMP 	r3, #0
	bne 	L_unpack_hint_at_index$11
	STRB	r5, [r0, r12]
	ADD 	r12, r12, #1
L_unpack_hint_at_index$11:
	ADD 	r10, r10, #1
L_unpack_hint_at_index$9:
	CMP 	r10, r4
	MOV 	r5, r3
	it  	cs
	MOVcs	r5, #1
	CMP 	r5, #0
	beq 	L_unpack_hint_at_index$10
	b   	L_unpack_hint_at_index$6
L_unpack_hint_at_index$7:
	MOV 	r3, #1
L_unpack_hint_at_index$8:
	b   	L_unpack_hint_at_index$6
L_unpack_hint_at_index$5:
	MOV 	r3, #1
L_unpack_hint_at_index$6:
	LDRB	r2, [r1, #82]
	b   	L_unpack_hint_at_index$2
L_unpack_hint_at_index$3:
	LDRB	r5, [r1, r2]
	CMP 	r5, #0
	beq 	L_unpack_hint_at_index$4
	MOV 	r3, #1
L_unpack_hint_at_index$4:
	ADD 	r2, r2, #1
L_unpack_hint_at_index$2:
	CMP 	r2, #75
	MOV 	r5, r3
	it  	cs
	MOVcs	r5, #1
	CMP 	r5, #0
	beq 	L_unpack_hint_at_index$3
	bx  	lr
L_pack_hint_element$1:
	MOV 	r8, #0
	b   	L_pack_hint_element$2
L_pack_hint_element$3:
	LDR 	r4, [r12, r8, lsl #2]
	CMP 	r4, #0
	beq 	L_pack_hint_element$4
	STRB	r8, [r3, r2]
	ADD 	r2, r2, #1
L_pack_hint_element$4:
	ADD 	r8, r8, #1
L_pack_hint_element$2:
	CMP 	r8, #256
	bcc 	L_pack_hint_element$3
	MOV 	r12, #75
	ADD 	r12, r12, r1
	STRB	r2, [r3, r12]
	bx  	lr
L_poly_decompress_challenge$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_poly_decompress_challenge$10
L_poly_decompress_challenge$11:
	STR 	r2, [r1, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_decompress_challenge$10:
	CMP 	r3, #256
	bcc 	L_poly_decompress_challenge$11
	LDR 	r2, [r0, #60]
	MOV 	r3, #0
	b   	L_poly_decompress_challenge$6
L_poly_decompress_challenge$7:
	LDRB	r12, [r0, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #1
	beq 	L_poly_decompress_challenge$8
	MOV 	r4, #1
	b   	L_poly_decompress_challenge$9
L_poly_decompress_challenge$8:
	MOV 	r4, #4294967295
L_poly_decompress_challenge$9:
	STR 	r4, [r1, r12, lsl #2]
L_poly_decompress_challenge$6:
	CMP 	r3, #32
	bcc 	L_poly_decompress_challenge$7
	LDR 	r2, [r0, #64]
	b   	L_poly_decompress_challenge$2
L_poly_decompress_challenge$3:
	LDRB	r12, [r0, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #1
	beq 	L_poly_decompress_challenge$4
	MOV 	r4, #1
	b   	L_poly_decompress_challenge$5
L_poly_decompress_challenge$4:
	MOV 	r4, #4294967295
L_poly_decompress_challenge$5:
	STR 	r4, [r1, r12, lsl #2]
L_poly_decompress_challenge$2:
	CMP 	r3, #60
	bcc 	L_poly_decompress_challenge$3
	bx  	lr
L_poly_compress_challenge$1:
	MOV 	r7, #0
	MOV 	r4, #0
	MOV 	r5, #1
	MOV 	r12, #0
	MOV 	r3, #0
	b   	L_poly_compress_challenge$6
L_poly_compress_challenge$7:
	LDR 	r6, [r2, r3, lsl #2]
	CMP 	r6, #0
	beq 	L_poly_compress_challenge$8
	STRB	r3, [r1, r7]
	ADD 	r7, r7, #1
	CMP 	r6, #4294967295
	bne 	L_poly_compress_challenge$9
	ORR 	r12, r12, r5
L_poly_compress_challenge$9:
	LSL 	r5, r5, #1
	ADD 	r4, r4, #1
L_poly_compress_challenge$8:
	ADD 	r3, r3, #1
L_poly_compress_challenge$6:
	CMP 	r4, #32
	bcc 	L_poly_compress_challenge$7
	STR 	r12, [r1, #60]
	MOV 	r5, #1
	MOV 	r12, #0
	b   	L_poly_compress_challenge$2
L_poly_compress_challenge$3:
	LDR 	r6, [r2, r3, lsl #2]
	CMP 	r6, #0
	beq 	L_poly_compress_challenge$4
	STRB	r3, [r1, r7]
	ADD 	r7, r7, #1
	CMP 	r6, #4294967295
	bne 	L_poly_compress_challenge$5
	ORR 	r12, r12, r5
L_poly_compress_challenge$5:
	LSL 	r5, r5, #1
L_poly_compress_challenge$4:
	ADD 	r3, r3, #1
L_poly_compress_challenge$2:
	CMP 	r3, #256
	bcc 	L_poly_compress_challenge$3
	STR 	r12, [r1, #64]
	bx  	lr
L_poly_uniform_eta$1:
	STR 	lr, [sp]
	STR 	r0, [sp, #4]
	ADD 	r1, sp, #8
	bl  	L_prepare_state_for_shake256$1
L_poly_uniform_eta$32:
	ADD 	r0, sp, #8
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_eta$31:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #4]
	MOV 	r1, #0
	MOV 	r12, #0
	MOV 	r3, #205
	b   	L_poly_uniform_eta$20
L_poly_uniform_eta$21:
	ADD 	r0, sp, #8
	SUB 	sp, sp, #12
	bl  	L_stream256_refill_buffer$1
L_poly_uniform_eta$30:
	ADD 	sp, sp, #8
	UBFX	r8, r5, #0, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$29
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$29:
	UBFX	r8, r5, #4, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$28
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$28:
	UBFX	r8, r5, #8, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$27
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$27:
	UBFX	r8, r5, #12, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$26
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$26:
	UBFX	r8, r5, #16, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$25
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$25:
	UBFX	r8, r5, #20, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$24
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$24:
	UBFX	r8, r5, #24, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$23
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$23:
	UBFX	r8, r5, #28, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$20
	MUL 	r0, r8, r0
	LSR 	r5, r0, #10
	ADD 	r0, r5, r5, lsl #2
	SUB 	r5, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r5
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$22:
L_poly_uniform_eta$20:
	ADD 	r0, r1, #8
	CMP 	r0, #256
	bcc 	L_poly_uniform_eta$21
	b   	L_poly_uniform_eta$2
L_poly_uniform_eta$3:
	ADD 	r0, sp, #8
	SUB 	sp, sp, #12
	bl  	L_stream256_refill_buffer$1
L_poly_uniform_eta$19:
	ADD 	sp, sp, #8
	UBFX	r8, r5, #0, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$18
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$18:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$16
	UBFX	r8, r5, #4, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$16
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$17:
L_poly_uniform_eta$16:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$14
	UBFX	r8, r5, #8, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$14
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$15:
L_poly_uniform_eta$14:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$12
	UBFX	r8, r5, #12, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$12
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$13:
L_poly_uniform_eta$12:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$10
	UBFX	r8, r5, #16, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$10
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$11:
L_poly_uniform_eta$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$8
	UBFX	r8, r5, #20, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$8
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$9:
L_poly_uniform_eta$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$6
	UBFX	r8, r5, #24, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$6
	MUL 	r0, r8, r0
	LSR 	r6, r0, #10
	ADD 	r0, r6, r6, lsl #2
	SUB 	r7, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r7
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$7:
L_poly_uniform_eta$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$2
	UBFX	r8, r5, #28, #4
	MOV 	r0, #205
	CMP 	r8, #15
	bcs 	L_poly_uniform_eta$2
	MUL 	r0, r8, r0
	LSR 	r5, r0, #10
	ADD 	r0, r5, r5, lsl #2
	SUB 	r5, r8, r0
	MOV 	r10, #2
	SUB 	r0, r10, r5
	STR 	r0, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$5:
L_poly_uniform_eta$4:
L_poly_uniform_eta$2:
	CMP 	r1, #256
	bcc 	L_poly_uniform_eta$3
	pop 	{pc}
L_poly_uniform$1:
	STR 	lr, [sp]
	MOV 	r1, #0
	MOV 	r12, #0
	MOVw	r3, #57345
	MOVT	r3, #127
	b   	L_poly_uniform$12
L_poly_uniform$13:
	SUB 	sp, sp, #12
	bl  	L_stream128_refill_buffer$1
L_poly_uniform$18:
	ADD 	sp, sp, #8
	UBFX	lr, r9, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$17
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$17:
	LSR 	lr, r9, #24
	ORR 	r9, lr, r5, lsl #8
	UBFX	lr, r9, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$16
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$16:
	LSR 	lr, r5, #16
	ORR 	r5, lr, r7, lsl #16
	UBFX	lr, r5, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$15
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$15:
	UBFX	lr, r7, #8, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$12
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$14:
L_poly_uniform$12:
	ADD 	lr, r1, #4
	CMP 	lr, #256
	bcc 	L_poly_uniform$13
	b   	L_poly_uniform$2
L_poly_uniform$3:
	SUB 	sp, sp, #12
	bl  	L_stream128_refill_buffer$1
L_poly_uniform$11:
	ADD 	sp, sp, #8
	UBFX	lr, r9, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$10
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform$8
	LSR 	lr, r9, #24
	ORR 	r9, lr, r5, lsl #8
	UBFX	lr, r9, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$8
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$9:
L_poly_uniform$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform$6
	LSR 	lr, r5, #16
	ORR 	r5, lr, r7, lsl #16
	UBFX	lr, r5, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$6
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$7:
L_poly_uniform$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform$2
	UBFX	lr, r7, #8, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$2
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$5:
L_poly_uniform$4:
L_poly_uniform$2:
	CMP 	r1, #256
	bcc 	L_poly_uniform$3
	pop 	{pc}
L_poly_low_bits_inplace$1:
	MOV 	r2, #0
	b   	L_poly_low_bits_inplace$2
L_poly_low_bits_inplace$3:
	LDR 	r5, [r0, r2, lsl #2]
	MOVw	r3, #57345
	MOVT	r3, #127
	ADD 	r1, r5, #127
	ASR 	r6, r1, #7
	ADD 	r12, r6, r6, lsl #10
	ADD 	r12, r12, #2097152
	UBFX	r6, r12, #22, #4
	SUB 	r6, r6, r6, lsl #10
	ADD 	r5, r5, r6, lsl #9
	MOVw	r6, #1023
	LSL 	r10, r6, #12
	SUB 	r6, r10, r5
	AND 	r3, r3, r6, asr #31
	SUB 	r6, r5, r3
	STR 	r6, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_low_bits_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_low_bits_inplace$3
	bx  	lr
L_poly_high_bits_inplace$1:
	MOV 	r2, #0
	b   	L_poly_high_bits_inplace$2
L_poly_high_bits_inplace$3:
	LDR 	r6, [r0, r2, lsl #2]
	ADD 	r1, r6, #127
	ASR 	r3, r1, #7
	ADD 	r12, r3, r3, lsl #10
	ADD 	r12, r12, #2097152
	UBFX	r6, r12, #22, #4
	STR 	r6, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_high_bits_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_high_bits_inplace$3
	bx  	lr
L_poly_subtract_from_compressed_w1_element$1:
	MOVw	r2, #65535
	MOVT	r2, #255
	MOV 	r3, #0
	b   	L_poly_subtract_from_compressed_w1_element$2
L_poly_subtract_from_compressed_w1_element$3:
	MOV 	r6, #3
	MUL 	r6, r6, r3
	LDR 	r12, [r1, r6]
	AND 	r12, r12, r2
	LDR 	r6, [r0, r3, lsl #2]
	SUB 	r12, r12, r6
	STR 	r12, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_subtract_from_compressed_w1_element$2:
	CMP 	r3, #256
	bcc 	L_poly_subtract_from_compressed_w1_element$3
	bx  	lr
L_poly_compress_w1_element$1:
	MOV 	r2, #0
	b   	L_poly_compress_w1_element$2
L_poly_compress_w1_element$3:
	MOV 	r6, #3
	MUL 	r6, r6, r2
	LDR 	r7, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	STR 	r7, [r1, r6]
L_poly_compress_w1_element$2:
	CMP 	r2, #256
	bcc 	L_poly_compress_w1_element$3
	bx  	lr
L_poly_decompress_w1_element$1:
	MOVw	r2, #65535
	MOVT	r2, #255
	MOV 	r8, #0
	b   	L_poly_decompress_w1_element$2
L_poly_decompress_w1_element$3:
	MOV 	r6, #3
	MUL 	r6, r6, r8
	LDR 	r6, [r1, r6]
	AND 	r6, r6, r2
	STR 	r6, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_decompress_w1_element$2:
	CMP 	r8, #256
	bcc 	L_poly_decompress_w1_element$3
	bx  	lr
L_poly_compute_A_times_polynomial$1:
	STR 	lr, [sp]
	STR 	r2, [sp, #4]
	STR 	r0, [sp, #8]
	bl  	L_prepare_xof_for_element_of_A$1
L_poly_compute_A_times_polynomial$11:
	MOV 	r12, #0
	b   	L_poly_compute_A_times_polynomial$2
L_poly_compute_A_times_polynomial$3:
	STR 	r12, [sp, #12]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_compute_A_times_polynomial$10:
	ADD 	sp, sp, #212
	LDR 	r12, [sp, #12]
	MOV 	r2, #0
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$5:
	CMP 	r12, #256
	bcc 	L_poly_compute_A_times_polynomial$6
	MOV 	r2, #168
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$6:
	LDR 	r6, [r0, r2]
	ADD 	r2, r2, #3
	MOVw	r5, #65535
	MOVT	r5, #127
	AND 	r7, r6, r5
	MOVw	r3, #57345
	MOVT	r3, #127
	CMP 	r7, r3
	bcs 	L_poly_compute_A_times_polynomial$4
	LDR 	r1, [sp, #4]
	LDR 	r8, [r1, r12, lsl #2]
	SMULL	r7, r8, r7, r8
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	LDR 	r1, [sp, #8]
	SUB 	sp, sp, #4
	bl  	L_poly_add_to_compressed_product_at_index$1
L_poly_compute_A_times_polynomial$9:
	ADD 	r12, r12, #1
L_poly_compute_A_times_polynomial$8:
L_poly_compute_A_times_polynomial$7:
L_poly_compute_A_times_polynomial$4:
	CMP 	r2, #168
	bcc 	L_poly_compute_A_times_polynomial$5
L_poly_compute_A_times_polynomial$2:
	CMP 	r12, #256
	bcc 	L_poly_compute_A_times_polynomial$3
	pop 	{pc}
L_poly_add_to_compressed_product_at_index$1:
	STR 	lr, [sp]
	MOVw	r3, #65535
	MOVT	r3, #255
	MOV 	r6, #3
	MUL 	r6, r6, r12
	LDR 	lr, [r1, r6]
	AND 	lr, lr, r3
	ADD 	r3, lr, r8
	bl  	L_freeze$1
L_poly_add_to_compressed_product_at_index$2:
	STRH	r3, [r1, r6]
	LSR 	r3, r3, #16
	ADD 	r6, r6, #2
	STRB	r3, [r1, r6]
	pop 	{pc}
L_poly_schoolbook_multiply_t0_by_challenge$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$34
L_poly_schoolbook_multiply_t0_by_challenge$35:
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_schoolbook_multiply_t0_by_challenge$34:
	CMP 	r2, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$35
	LDR 	r2, [r1, #60]
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$19:
	LDRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$20
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$31
L_poly_schoolbook_multiply_t0_by_challenge$32:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$33:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$31:
	ADD 	r9, r12, r4
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$32
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t0_by_challenge$28
L_poly_schoolbook_multiply_t0_by_challenge$29:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r9, r6, r4
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$30:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$28:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$29
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$20:
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$25
L_poly_schoolbook_multiply_t0_by_challenge$26:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$27:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$25:
	ADD 	r9, r12, r4
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$26
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t0_by_challenge$22
L_poly_schoolbook_multiply_t0_by_challenge$23:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r9, r6, r4
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$24:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$22:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$23
L_poly_schoolbook_multiply_t0_by_challenge$21:
L_poly_schoolbook_multiply_t0_by_challenge$18:
	CMP 	r3, #32
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$19
	LDR 	r2, [r1, #64]
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$3:
	LDRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$4
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$15
L_poly_schoolbook_multiply_t0_by_challenge$16:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$17:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$15:
	ADD 	r9, r12, r4
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$16
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t0_by_challenge$12
L_poly_schoolbook_multiply_t0_by_challenge$13:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r9, r6, r4
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$14:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$12:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$13
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$4:
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$9
L_poly_schoolbook_multiply_t0_by_challenge$10:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$11:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$9:
	ADD 	r9, r12, r4
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$10
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t0_by_challenge$6
L_poly_schoolbook_multiply_t0_by_challenge$7:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r9, r6, r4
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$8:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t0_by_challenge$6:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$7
L_poly_schoolbook_multiply_t0_by_challenge$5:
L_poly_schoolbook_multiply_t0_by_challenge$2:
	CMP 	r3, #60
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$3
	pop 	{pc}
L_poly_schoolbook_multiply_t1_by_challenge$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$34
L_poly_schoolbook_multiply_t1_by_challenge$35:
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_schoolbook_multiply_t1_by_challenge$34:
	CMP 	r2, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$35
	LDR 	r2, [r1, #60]
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$19:
	LDRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$20
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$31
L_poly_schoolbook_multiply_t1_by_challenge$32:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$33:
	SUB 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$31:
	ADD 	r6, r12, r4
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$32
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$28
L_poly_schoolbook_multiply_t1_by_challenge$29:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r6, r6, r4
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$30:
	ADD 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$28:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$29
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$20:
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$25
L_poly_schoolbook_multiply_t1_by_challenge$26:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$27:
	ADD 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$25:
	ADD 	r6, r12, r4
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$26
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$22
L_poly_schoolbook_multiply_t1_by_challenge$23:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r6, r6, r4
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$24:
	SUB 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$22:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$23
L_poly_schoolbook_multiply_t1_by_challenge$21:
L_poly_schoolbook_multiply_t1_by_challenge$18:
	CMP 	r3, #32
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$19
	LDR 	r2, [r1, #64]
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$3:
	LDRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	AND 	r4, r2, #1
	LSR 	r2, r2, #1
	CMP 	r4, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$4
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$15
L_poly_schoolbook_multiply_t1_by_challenge$16:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$17:
	SUB 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$15:
	ADD 	r6, r12, r4
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$16
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$12
L_poly_schoolbook_multiply_t1_by_challenge$13:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r6, r6, r4
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$14:
	ADD 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$12:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$13
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$4:
	MOV 	r4, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$9
L_poly_schoolbook_multiply_t1_by_challenge$10:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$11:
	ADD 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$9:
	ADD 	r6, r12, r4
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$10
	MOVw	r4, #256
	SUB 	r4, r4, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$6
L_poly_schoolbook_multiply_t1_by_challenge$7:
	MVN 	r6, #255
	ADD 	r6, r6, r12
	ADD 	r6, r6, r4
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$8:
	SUB 	r10, r10, r7
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
L_poly_schoolbook_multiply_t1_by_challenge$6:
	CMP 	r4, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$7
L_poly_schoolbook_multiply_t1_by_challenge$5:
L_poly_schoolbook_multiply_t1_by_challenge$2:
	CMP 	r3, #60
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$3
	pop 	{pc}
L_poly_generate_challenge$1:
	STR 	lr, [sp]
	STR 	r2, [sp, #4]
	MOV 	r2, #0
	b   	L_poly_generate_challenge$12
L_poly_generate_challenge$13:
	LDR 	r9, [r1, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_generate_challenge$12:
	CMP 	r2, #16
	bcc 	L_poly_generate_challenge$13
	MOV 	r1, #0
	MOV 	r2, #16
	b   	L_poly_generate_challenge$10
L_poly_generate_challenge$11:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_generate_challenge$10:
	CMP 	r2, #50
	bcc 	L_poly_generate_challenge$11
	LDRB	r9, [r0, #64]
	EOR 	r9, r9, #31
	STRB	r9, [r0, #64]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_generate_challenge$9:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #4]
	LDR 	r3, [r0]
	LDR 	r2, [r0, #4]
	MOV 	r12, #8
	MOV 	r5, #0
	MOV 	r8, #0
	b   	L_poly_generate_challenge$7
L_poly_generate_challenge$8:
	STR 	r5, [r1, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_generate_challenge$7:
	CMP 	r8, #256
	bcc 	L_poly_generate_challenge$8
	MOV 	r4, #196
	b   	L_poly_generate_challenge$2
L_poly_generate_challenge$3:
L_poly_generate_challenge$4:
	CMP 	r12, #136
	bcc 	L_poly_generate_challenge$5
	MOV 	r12, #0
	STR 	r4, [sp, #4]
	STR 	r1, [sp, #8]
	STR 	r12, [sp, #12]
	STR 	r3, [sp, #16]
	STR 	r2, [sp, #20]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_generate_challenge$6:
	ADD 	sp, sp, #212
	LDR 	r4, [sp, #4]
	LDR 	r1, [sp, #8]
	LDR 	r12, [sp, #12]
	LDR 	r3, [sp, #16]
	LDR 	r2, [sp, #20]
L_poly_generate_challenge$5:
	LDRB	lr, [r0, r12]
	ADD 	r12, r12, #1
	CMP 	lr, r4
	bhi 	L_poly_generate_challenge$4
	LDR 	r5, [r1, lr, lsl #2]
	STR 	r5, [r1, r4, lsl #2]
	AND 	r5, r3, #1
	LSL 	r5, r5, #1
	MOV 	r10, #1
	SUB 	r5, r10, r5
	STR 	r5, [r1, lr, lsl #2]
	LSR 	r3, r3, #1
	ORR 	r3, r3, r2, lsl #31
	LSR 	r2, r2, #1
	ADD 	r4, r4, #1
L_poly_generate_challenge$2:
	CMP 	r4, #256
	bcc 	L_poly_generate_challenge$4
	pop 	{pc}
L_poly_power2round_inplace$1:
	MOV 	r2, #0
	b   	L_poly_power2round_inplace$2
L_poly_power2round_inplace$3:
	LDR 	r3, [r0, r2, lsl #2]
	ADDw	r12, r3, #4095
	ASR 	r5, r12, #13
	SUB 	r3, r3, r5, lsl #13
	STR 	r3, [r1, r2, lsl #2]
	STR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_power2round_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_power2round_inplace$3
	bx  	lr
L_poly_make_hint_inplace$1:
	MOV 	r8, #0
	MOV 	r3, #0
	MOVw	r12, #65535
	MOVT	r12, #255
	b   	L_poly_make_hint_inplace$2
L_poly_make_hint_inplace$3:
	MOV 	r6, #3
	MUL 	r6, r6, r3
	LDR 	r4, [r2, r6]
	AND 	r4, r4, r12
	LDR 	r7, [r1, r3, lsl #2]
	ADD 	r6, r4, r7
	RSB 	r4, r7, #0
	MOV 	r7, #0
	ADD 	r5, r6, #127
	ASR 	r5, r5, #7
	ADD 	r5, r5, r5, lsl #10
	ADD 	r5, r5, #2097152
	UBFX	r5, r5, #22, #4
	ADD 	r6, r6, r4
	ADD 	r4, r6, #127
	ASR 	r6, r4, #7
	ADD 	r9, r6, r6, lsl #10
	ADD 	r9, r9, #2097152
	UBFX	r4, r9, #22, #4
	CMP 	r5, r4
	beq 	L_poly_make_hint_inplace$5
	MOV 	r7, #1
L_poly_make_hint_inplace$5:
	STR 	r7, [r1, r3, lsl #2]
	CMP 	r7, #1
	bne 	L_poly_make_hint_inplace$4
	ADD 	r8, r8, #1
L_poly_make_hint_inplace$4:
	ADD 	r3, r3, #1
L_poly_make_hint_inplace$2:
	CMP 	r3, #256
	bcc 	L_poly_make_hint_inplace$3
	bx  	lr
L_poly_pointwise_montgomery_inplace$1:
	MOV 	r2, #0
	b   	L_poly_pointwise_montgomery_inplace$2
L_poly_pointwise_montgomery_inplace$3:
	LDR 	r12, [r1, r2, lsl #2]
	LDR 	r7, [r0, r2, lsl #2]
	SMULL	r7, r8, r12, r7
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	STR 	r8, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_pointwise_montgomery_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_pointwise_montgomery_inplace$3
	bx  	lr
L_poly_pointwise_montgomery$1:
	MOV 	r3, #0
	b   	L_poly_pointwise_montgomery$2
L_poly_pointwise_montgomery$3:
	LDR 	r12, [r1, r3, lsl #2]
	LDR 	r7, [r2, r3, lsl #2]
	SMULL	r7, r8, r12, r7
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	STR 	r8, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_pointwise_montgomery$2:
	CMP 	r3, #256
	bcc 	L_poly_pointwise_montgomery$3
	bx  	lr
L_poly_use_hint$1:
	MOV 	r2, #0
	b   	L_poly_use_hint$2
L_poly_use_hint$3:
	MOV 	r6, #0
	MOV 	r3, #0
	b   	L_poly_use_hint$9
L_poly_use_hint$10:
	LDRB	r4, [r1, r3]
	CMP 	r2, r4
	bne 	L_poly_use_hint$11
	MOV 	r6, #1
L_poly_use_hint$11:
	ADD 	r3, r3, #1
L_poly_use_hint$9:
	CMP 	r3, r12
	MOV 	r5, r6
	it  	cs
	MOVcs	r5, #1
	CMP 	r5, #0
	beq 	L_poly_use_hint$10
	CMP 	r6, #1
	beq 	L_poly_use_hint$7
	MOV 	r3, #0
	b   	L_poly_use_hint$8
L_poly_use_hint$7:
	MOV 	r3, #1
L_poly_use_hint$8:
	LDR 	r6, [r0, r2, lsl #2]
	MOVw	r4, #57345
	MOVT	r4, #127
	ADD 	r5, r6, #127
	ASR 	r5, r5, #7
	ADD 	r5, r5, r5, lsl #10
	ADD 	r5, r5, #2097152
	UBFX	r5, r5, #22, #4
	SUB 	r7, r5, r5, lsl #10
	ADD 	r6, r6, r7, lsl #9
	MOVw	r7, #1023
	LSL 	r10, r7, #12
	SUB 	r7, r10, r6
	AND 	r4, r4, r7, asr #31
	SUB 	r7, r6, r4
	CMP 	r3, #0
	beq 	L_poly_use_hint$4
	CMP 	r7, #0
	ble 	L_poly_use_hint$6
	ADD 	r5, r5, #1
L_poly_use_hint$6:
	bgt 	L_poly_use_hint$5
	SUB 	r5, r5, #1
L_poly_use_hint$5:
	AND 	r5, r5, #15
L_poly_use_hint$4:
	STR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_use_hint$2:
	CMP 	r2, #256
	bcc 	L_poly_use_hint$3
	bx  	lr
L_poly_check_norm$1:
	MOV 	r0, #0
	MOVw	r3, #57345
	MOVT	r3, #127
	SUB 	r3, r3, #1
	LSR 	r3, r3, #3
	CMP 	r4, r3
	ble 	L_poly_check_norm$4
	MOV 	r0, #1
L_poly_check_norm$4:
	MOV 	r2, #0
L_poly_check_norm$2:
	LDR 	r8, [r1, r2, lsl #2]
	CMP 	r8, #0
	it  	lt
	RSBlt	r8, r8, #0
	ADD 	r2, r2, #1
	CMP 	r8, r4
	blt 	L_poly_check_norm$3
	MOV 	r0, #1
	MOVw	r2, #256
L_poly_check_norm$3:
	CMP 	r2, #256
	bne 	L_poly_check_norm$2
	bx  	lr
L_poly_add_inplace$1:
	MOV 	r3, #0
	b   	L_poly_add_inplace$2
L_poly_add_inplace$3:
	LDR 	r1, [r0, r3, lsl #2]
	LDR 	r12, [r2, r3, lsl #2]
	ADD 	r1, r1, r12
	STR 	r1, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_add_inplace$2:
	CMP 	r3, #256
	bcc 	L_poly_add_inplace$3
	bx  	lr
L_poly_caddq$1:
	MOV 	r2, #0
	b   	L_poly_caddq$2
L_poly_caddq$3:
	LDR 	r1, [r0, r2, lsl #2]
	MOVw	r4, #57345
	MOVT	r4, #127
	AND 	r8, r4, r1, asr #31
	ADD 	r1, r8, r1
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_caddq$2:
	CMP 	r2, #256
	bcc 	L_poly_caddq$3
	bx  	lr
L_poly_reduce$1:
	MOV 	r2, #0
	b   	L_poly_reduce$2
L_poly_reduce$3:
	LDR 	r12, [r0, r2, lsl #2]
	ADD 	r8, r12, #4194304
	ASR 	r5, r8, #23
	LSL 	r10, r5, #9
	SUB 	r6, r10, r5
	ADD 	r6, r5, r6, lsl #10
	LSL 	r10, r6, #13
	SUB 	r1, r10, r5
	ADD 	r8, r12, r1
	STR 	r8, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_reduce$2:
	CMP 	r2, #256
	bcc 	L_poly_reduce$3
	bx  	lr
L_poly_uniform_gamma1$1:
	STR 	lr, [sp]
	ADD 	r1, sp, #16
	bl  	L_prepare_state_for_shake256$1
L_poly_uniform_gamma1$12:
	STR 	r0, [sp, #4]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$11:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	MOV 	r2, #0
	MOV 	r10, #0
	ADD 	r12, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$10:
	STR 	r0, [sp, #4]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #12]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$9:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #12]
	ADD 	r12, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$8:
	STR 	r0, [sp, #12]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #4]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$7:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #12]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #4]
	ADD 	r12, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$6:
	STR 	r0, [sp, #4]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #12]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$5:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #12]
	ADD 	r12, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$4:
	STR 	r0, [sp, #12]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$3:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #12]
	ADD 	r12, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming_end$1
L_poly_uniform_gamma1$2:
	pop 	{pc}
L_poly_eta_unpack$1:
	MOV 	r8, #0
	MOV 	r4, #0
	b   	L_poly_eta_unpack$2
L_poly_eta_unpack$3:
	LDRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LDRB	r3, [r1, r4]
	ADD 	r4, r4, #1
	LDRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	UBFX	r5, r2, #0, #3
	MOV 	r10, #2
	SUB 	r5, r10, r5
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r5, r2, #3, #3
	MOV 	r10, #2
	SUB 	r5, r10, r5
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	LSR 	r2, r2, #6
	ORR 	r2, r2, r3, lsl #2
	AND 	r5, r2, #7
	MOV 	r10, #2
	SUB 	r2, r10, r5
	STR 	r2, [r0, r8, lsl #2]
	ADD 	r2, r8, #1
	UBFX	r5, r3, #1, #3
	MOV 	r10, #2
	SUB 	r5, r10, r5
	STR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	UBFX	r5, r3, #4, #3
	MOV 	r10, #2
	SUB 	r5, r10, r5
	STR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r3, r3, #7
	ORR 	r3, r3, r12, lsl #1
	AND 	r5, r3, #7
	MOV 	r10, #2
	SUB 	r3, r10, r5
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	UBFX	r5, r12, #2, #3
	MOV 	r10, #2
	SUB 	r3, r10, r5
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	UBFX	r12, r12, #5, #3
	MOV 	r10, #2
	SUB 	r3, r10, r12
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r8, r2, #1
L_poly_eta_unpack$2:
	CMP 	r8, #256
	bcc 	L_poly_eta_unpack$3
	bx  	lr
L_poly_eta_pack$1:
	MOV 	r3, #0
	MOV 	r4, #0
	b   	L_poly_eta_pack$2
L_poly_eta_pack$3:
	LDR 	r12, [r0, r3, lsl #2]
	MOV 	r10, #2
	SUB 	r2, r10, r12
	ADD 	r8, r3, #1
	LDR 	r12, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r3, r10, r12
	ADD 	r8, r8, #1
	LDR 	r12, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r12, r10, r12
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r5, r10, r7
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r6, r10, r7
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r7, r10, r7
	ADD 	r8, r8, #1
	LDR 	r9, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r9, r10, r9
	ADD 	r8, r8, #1
	ORR 	r2, r2, r3, lsl #3
	ORR 	r2, r2, r12, lsl #6
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	UBFX	r2, r12, #2, #6
	ORR 	r2, r2, r5, lsl #1
	ORR 	r2, r2, r6, lsl #4
	ORR 	r2, r2, r7, lsl #7
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	UBFX	r2, r7, #1, #7
	ORR 	r2, r2, r9, lsl #2
	LDR 	r12, [r0, r8, lsl #2]
	MOV 	r10, #2
	SUB 	r5, r10, r12
	ADD 	r3, r8, #1
	ORR 	r2, r2, r5, lsl #5
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
L_poly_eta_pack$2:
	CMP 	r3, #256
	bcc 	L_poly_eta_pack$3
	bx  	lr
L_polyw1_pack$1:
	MOV 	r2, #0
	MOV 	r4, #0
	b   	L_polyw1_pack$2
L_polyw1_pack$3:
	LDR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	ORR 	r3, r3, r5, lsl #4
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
L_polyw1_pack$2:
	CMP 	r2, #256
	bcc 	L_polyw1_pack$3
	bx  	lr
L_polyz_unpack_streaming_end$1:
	STR 	lr, [sp]
	LDRB	r2, [r1]
	STRB	r2, [r12, #4]
	MOV 	r10, #216
	ADD 	r3, r0, r10, lsl #2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming_end$5:
	ADD 	r10, r10, #2
	MOV 	r2, #1
	b   	L_polyz_unpack_streaming_end$2
L_polyz_unpack_streaming_end$3:
	ADD 	r3, r0, r10, lsl #2
	ADD 	r12, r1, r2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming_end$4:
	ADD 	r10, r10, #2
	ADD 	r2, r2, #5
L_polyz_unpack_streaming_end$2:
	CMP 	r2, #96
	bcc 	L_polyz_unpack_streaming_end$3
	pop 	{pc}
L_polyz_unpack_streaming$1:
	STR 	lr, [sp]
	MOV 	r4, r2
	MOV 	r2, #0
	b   	L_polyz_unpack_streaming$8
L_polyz_unpack_streaming$9:
	LDRB	r3, [r1, r2]
	ADD 	r2, r2, #1
	STRB	r3, [r12, r4]
	ADD 	r4, r4, #1
L_polyz_unpack_streaming$8:
	CMP 	r4, #5
	bcc 	L_polyz_unpack_streaming$9
	ADD 	r3, r0, r10, lsl #2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming$7:
	ADD 	r10, r10, #2
	MOV 	r11, r12
	b   	L_polyz_unpack_streaming$4
L_polyz_unpack_streaming$5:
	ADD 	r3, r0, r10, lsl #2
	ADD 	r12, r1, r2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming$6:
	ADD 	r10, r10, #2
	ADD 	r2, r2, #5
L_polyz_unpack_streaming$4:
	CMP 	r2, #131
	bcc 	L_polyz_unpack_streaming$5
	MOV 	r3, #0
	b   	L_polyz_unpack_streaming$2
L_polyz_unpack_streaming$3:
	LDRB	r12, [r1, r2]
	ADD 	r2, r2, #1
	STRB	r12, [r11, r3]
	ADD 	r3, r3, #1
L_polyz_unpack_streaming$2:
	CMP 	r2, #136
	bcc 	L_polyz_unpack_streaming$3
	pop 	{pc}
L_polyz_unpack$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r10, #0
	b   	L_polyz_unpack$2
L_polyz_unpack$3:
	ADD 	r3, r0, r10, lsl #2
	ADD 	r12, r1, r2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack$4:
	ADD 	r10, r10, #2
	ADD 	r2, r2, #5
L_polyz_unpack$2:
	CMP 	r2, #640
	bcc 	L_polyz_unpack$3
	pop 	{pc}
L_polyz_unpack_5_bytes$1:
	MOV 	r4, #0
	MOVT	r4, #8
	LDRB	r5, [r12]
	LDRB	r6, [r12, #1]
	LDRB	r7, [r12, #2]
	LDRB	r9, [r12, #3]
	LDRB	r8, [r12, #4]
	ORR 	r5, r5, r6, lsl #8
	ORR 	r5, r5, r7, lsl #16
	UBFX	r5, r5, #0, #20
	SUB 	r5, r4, r5
	STR 	r5, [r3]
	LSR 	r5, r7, #4
	ORR 	r5, r5, r9, lsl #4
	ORR 	r5, r5, r8, lsl #12
	SUB 	r5, r4, r5
	STR 	r5, [r3, #4]
	bx  	lr
L_polyz_pack$1:
	MOV 	r4, #0
	MOVT	r4, #8
	MOV 	r3, #0
	MOV 	r10, #0
	b   	L_polyz_pack$2
L_polyz_pack$3:
	LDR 	r12, [r2, r3, lsl #2]
	SUB 	r12, r4, r12
	ADD 	r3, r3, #1
	LDR 	r5, [r2, r3, lsl #2]
	SUB 	r5, r4, r5
	ADD 	r3, r3, #1
	STRB	r12, [r1, r10]
	ADD 	r10, r10, #1
	LSR 	r6, r12, #8
	STRB	r6, [r1, r10]
	ADD 	r10, r10, #1
	LSR 	r6, r12, #16
	ORR 	r6, r6, r5, lsl #4
	STRB	r6, [r1, r10]
	ADD 	r10, r10, #1
	LSR 	r6, r5, #4
	STRB	r6, [r1, r10]
	ADD 	r10, r10, #1
	LSR 	r5, r5, #12
	STRB	r5, [r1, r10]
	ADD 	r10, r10, #1
L_polyz_pack$2:
	CMP 	r3, #256
	bcc 	L_polyz_pack$3
	bx  	lr
L_poly_invntt_tomont$1:
	MOVw	r1, #256
	MOV 	r2, #1
L_poly_invntt_tomont$3:
	MOV 	r5, #0
L_poly_invntt_tomont$4:
	SUB 	r1, r1, #1
	MOVw	r12, #:lower16:glob_data+0
	MOVT	r12, #:upper16:glob_data+0
	LDR 	r12, [r12, r1, lsl #2]
	RSB 	r12, r12, #0
	MOV 	r4, r5
	ADD 	r5, r5, r2
	MOV 	r6, r5
L_poly_invntt_tomont$5:
	LDR 	r8, [r0, r4, lsl #2]
	LDR 	r9, [r0, r6, lsl #2]
	ADD 	r7, r8, r9
	STR 	r7, [r0, r4, lsl #2]
	SUB 	r7, r8, r9
	SMULL	r7, r8, r12, r7
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	STR 	r8, [r0, r6, lsl #2]
	ADD 	r4, r4, #1
	ADD 	r6, r6, #1
	CMP 	r4, r5
	bcc 	L_poly_invntt_tomont$5
	MOV 	r5, r6
	CMP 	r5, #256
	bcc 	L_poly_invntt_tomont$4
	LSL 	r2, r2, #1
	CMP 	r2, #256
	bcc 	L_poly_invntt_tomont$3
	MOVw	r12, #41978
	MOV 	r4, #0
L_poly_invntt_tomont$2:
	LDR 	r7, [r0, r4, lsl #2]
	SMULL	r1, r8, r12, r7
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r1, #3
	SUB 	r10, r10, r1
	ADD 	r10, r1, r10, lsl #10
	ADD 	r10, r1, r10, lsl #13
	SMLAL	r1, r8, r10, r9
	STR 	r8, [r0, r4, lsl #2]
	ADD 	r4, r4, #1
	CMP 	r4, #256
	bcc 	L_poly_invntt_tomont$2
	bx  	lr
L_poly_ntt$1:
	MOV 	r1, #0
	MOV 	r2, #128
L_poly_ntt$2:
	MOV 	r5, #0
L_poly_ntt$3:
	ADD 	r1, r1, #1
	MOVw	r12, #:lower16:glob_data+0
	MOVT	r12, #:upper16:glob_data+0
	LDR 	r12, [r12, r1, lsl #2]
	MOV 	r4, r5
	ADD 	r5, r5, r2
	MOV 	r6, r5
L_poly_ntt$4:
	LDR 	r7, [r0, r6, lsl #2]
	SMULL	r7, r8, r12, r7
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	LDR 	r7, [r0, r4, lsl #2]
	SUB 	r9, r7, r8
	STR 	r9, [r0, r6, lsl #2]
	ADD 	r7, r7, r8
	STR 	r7, [r0, r4, lsl #2]
	ADD 	r4, r4, #1
	ADD 	r6, r6, #1
	CMP 	r4, r5
	bcc 	L_poly_ntt$4
	MOV 	r5, r6
	CMP 	r5, #256
	bcc 	L_poly_ntt$3
	LSR 	r2, r2, #1
	CMP 	r2, #0
	bne 	L_poly_ntt$2
	bx  	lr
L_freeze$1:
	ADD 	r8, r3, #4194304
	ASR 	r5, r8, #23
	LSL 	r10, r5, #9
	SUB 	r7, r10, r5
	ADD 	r7, r5, r7, lsl #10
	LSL 	r10, r7, #13
	SUB 	r4, r10, r5
	ADD 	r8, r3, r4
	MOVw	r3, #57345
	MOVT	r3, #127
	AND 	r3, r3, r8, asr #31
	ADD 	r3, r3, r8
	bx  	lr
L_t0_unpack_coefficient_at_index$1:
	LSR 	r7, r4, #3
	MOV 	r8, #13
	MUL 	r7, r7, r8
	AND 	r6, r4, #7
	CMP 	r6, #0
	beq 	L_t0_unpack_coefficient_at_index$2
	CMP 	r6, #1
	beq 	L_t0_unpack_coefficient_at_index$4
	CMP 	r6, #2
	beq 	L_t0_unpack_coefficient_at_index$6
	CMP 	r6, #3
	beq 	L_t0_unpack_coefficient_at_index$8
	CMP 	r6, #4
	beq 	L_t0_unpack_coefficient_at_index$10
	CMP 	r6, #5
	beq 	L_t0_unpack_coefficient_at_index$12
	CMP 	r6, #6
	beq 	L_t0_unpack_coefficient_at_index$14
	ADD 	r7, r7, #11
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #3
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #5
	ORR 	r6, r6, r8
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$14:
	ADD 	r7, r7, #9
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #6
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #2
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #10
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$15:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$12:
	ADD 	r7, r7, #8
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #1
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #7
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$13:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$10:
	ADD 	r7, r7, #6
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #4
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #4
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #12
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$11:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$8:
	ADD 	r7, r7, #4
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #7
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #1
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #9
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$9:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$6:
	ADD 	r7, r7, #3
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #2
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #6
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$7:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$4:
	ADD 	r7, r7, #1
	LDRB	r6, [r5, r7]
	LSR 	r6, r6, #5
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #3
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #11
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$5:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$2:
	LDRB	r6, [r5, r7]
	ADD 	r7, r7, #1
	LDRB	r8, [r5, r7]
	LSL 	r8, r8, #8
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$3:
	MOVw	r8, #8191
	AND 	r6, r6, r8
	MOVw	r8, #4096
	SUB 	r6, r8, r6
	bx  	lr
L_polyt0_pack$1:
	MOV 	r2, #0
	MOV 	r4, #0
	b   	L_polyt0_pack$2
L_polyt0_pack$3:
	LDR 	r12, [r0, r2, lsl #2]
	ADD 	r3, r2, #1
	MOVw	r10, #4096
	SUB 	r2, r10, r12
	LDR 	r12, [r0, r3, lsl #2]
	ADD 	r8, r3, #1
	MOVw	r10, #4096
	SUB 	r3, r10, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r12, r10, r12
	LDR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r5, r10, r5
	LDR 	r7, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r6, r10, r7
	LDR 	r7, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r9, r10, r7
	LDR 	r7, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r7, r10, r7
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r2, #8
	ORR 	r2, r2, r3, lsl #5
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r3, #3
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r3, #11
	ORR 	r2, r2, r12, lsl #2
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r12, #6
	ORR 	r2, r2, r5, lsl #7
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r5, #1
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r5, #9
	ORR 	r2, r2, r6, lsl #4
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r6, #4
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r6, #12
	ORR 	r2, r2, r9, lsl #1
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r9, #7
	ORR 	r2, r2, r7, lsl #6
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r2, r7, #2
	STRB	r2, [r1, r4]
	ADD 	r4, r4, #1
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r2, r8, #1
	MOVw	r10, #4096
	SUB 	r3, r10, r12
	LSR 	r5, r7, #10
	ORR 	r5, r5, r3, lsl #3
	STRB	r5, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r3, r3, #5
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
L_polyt0_pack$2:
	CMP 	r2, #256
	bcc 	L_polyt0_pack$3
	bx  	lr
L_t1_unpack_coefficient_at_index$1:
	LSR 	r7, r4, #2
	MOV 	r8, #5
	MUL 	r8, r7, r8
	AND 	r9, r4, #3
	CMP 	r9, #0
	beq 	L_t1_unpack_coefficient_at_index$2
	CMP 	r9, #1
	beq 	L_t1_unpack_coefficient_at_index$4
	CMP 	r9, #2
	beq 	L_t1_unpack_coefficient_at_index$6
	ADD 	r8, r8, r9
	LDRB	r7, [r5, r8]
	LSR 	r7, r7, #6
	ADD 	r8, r8, #1
	LDRB	r8, [r5, r8]
	LSL 	r8, r8, #2
	ORR 	r7, r7, r8
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$6:
	ADD 	r8, r8, r9
	LDRB	r7, [r5, r8]
	LSR 	r7, r7, #4
	ADD 	r8, r8, #1
	LDRB	r8, [r5, r8]
	LSL 	r8, r8, #4
	ORR 	r7, r7, r8
L_t1_unpack_coefficient_at_index$7:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$4:
	ADD 	r8, r8, r9
	LDRB	r7, [r5, r8]
	LSR 	r7, r7, #2
	ADD 	r8, r8, #1
	LDRB	r8, [r5, r8]
	LSL 	r8, r8, #6
	ORR 	r7, r7, r8
L_t1_unpack_coefficient_at_index$5:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$2:
	LDRB	r7, [r5, r8]
	ADD 	r8, r8, #1
	LDRB	r8, [r5, r8]
	LSL 	r8, r8, #8
	ORR 	r7, r7, r8
L_t1_unpack_coefficient_at_index$3:
	MOVw	r8, #1023
	AND 	r7, r7, r8
	LSL 	r7, r7, #13
	bx  	lr
L_polyt1_pack$1:
	MOV 	r2, #0
	MOV 	r4, #0
	b   	L_polyt1_pack$2
L_polyt1_pack$3:
	LDR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r6, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r7, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r3, r3, #8
	ORR 	r3, r3, r5, lsl #2
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r3, r5, #6
	ORR 	r3, r3, r6, lsl #4
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r3, r6, #4
	ORR 	r3, r3, r7, lsl #6
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r3, r7, #2
	STRB	r3, [r1, r4]
	ADD 	r4, r4, #1
L_polyt1_pack$2:
	CMP 	r2, #256
	bcc 	L_polyt1_pack$3
	bx  	lr
L_shake256_inc_absorb_mem_naive$1:
	STR 	lr, [sp]
	b   	L_shake256_inc_absorb_mem_naive$2
L_shake256_inc_absorb_mem_naive$3:
	LDRB	r8, [r3]
	LDRB	r1, [r0, r2]
	EOR 	r1, r1, r8
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
	SUB 	r12, r12, #1
	CMP 	r2, #136
	bne 	L_shake256_inc_absorb_mem_naive$2
	STR 	r3, [sp, #4]
	STR 	r12, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_shake256_inc_absorb_mem_naive$5:
	ADD 	sp, sp, #212
	LDR 	r3, [sp, #4]
	LDR 	r12, [sp, #8]
	MOV 	r2, #0
L_shake256_inc_absorb_mem_naive$4:
L_shake256_inc_absorb_mem_naive$2:
	CMP 	r12, #0
	bne 	L_shake256_inc_absorb_mem_naive$3
	pop 	{pc}
L_shake256_absorb_w1_element$1:
	STR 	lr, [sp]
	MOV 	r12, #0
	b   	L_shake256_absorb_w1_element$2
L_shake256_absorb_w1_element$3:
	LDRB	r8, [r1, r12]
	LDRB	r2, [r0, r3]
	EOR 	r2, r2, r8
	STRB	r2, [r0, r3]
	ADD 	r3, r3, #1
	ADD 	r12, r12, #1
	CMP 	r3, #136
	bne 	L_shake256_absorb_w1_element$2
	MOV 	r2, #0
	STR 	r12, [sp, #4]
	STR 	r2, [sp, #8]
	STR 	r1, [sp, #12]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_shake256_absorb_w1_element$5:
	ADD 	sp, sp, #212
	LDR 	r12, [sp, #4]
	LDR 	r3, [sp, #8]
	LDR 	r1, [sp, #12]
L_shake256_absorb_w1_element$4:
L_shake256_absorb_w1_element$2:
	CMP 	r12, #128
	bne 	L_shake256_absorb_w1_element$3
	pop 	{pc}
L_hash_verification_key$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r8, #0
	b   	L_hash_verification_key$10
L_hash_verification_key$11:
	STR 	r8, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_hash_verification_key$10:
	CMP 	r2, #50
	bcc 	L_hash_verification_key$11
	MOV 	r1, #0
	b   	L_hash_verification_key$5
L_hash_verification_key$6:
	MOV 	r2, #0
	b   	L_hash_verification_key$8
L_hash_verification_key$9:
	LDR 	r12, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	LDR 	lr, [r0, r2, lsl #2]
	EOR 	lr, lr, r12
	STR 	lr, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_hash_verification_key$8:
	CMP 	r2, #34
	bcc 	L_hash_verification_key$9
	STR 	r1, [sp, #4]
	STR 	r3, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_hash_verification_key$7:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #4]
	LDR 	r3, [sp, #8]
L_hash_verification_key$5:
	MOVw	r2, #614
	CMP 	r1, r2
	bcc 	L_hash_verification_key$6
	MOV 	r2, #0
	b   	L_hash_verification_key$3
L_hash_verification_key$4:
	LDR 	r12, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	LDR 	lr, [r0, r2, lsl #2]
	EOR 	lr, lr, r12
	STR 	lr, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_hash_verification_key$3:
	CMP 	r1, #648
	bcc 	L_hash_verification_key$4
	LDRB	r9, [r0, r2, lsl #2]
	EOR 	r9, r9, #31
	STRB	r9, [r0, r2, lsl #2]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_hash_verification_key$2:
	ADD 	sp, sp, #212
	pop 	{pc}
L_stream256_refill_buffer$1:
	STR 	lr, [sp]
	CMP 	r12, #34
	bne 	L_stream256_refill_buffer$2
	STR 	r1, [sp, #4]
	STR 	r2, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_stream256_refill_buffer$3:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #8]
	MOV 	r12, #0
	LDR 	r1, [sp, #4]
	MOV 	r3, #205
L_stream256_refill_buffer$2:
	LDR 	r5, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	pop 	{pc}
L_prepare_state_for_shake256$1:
	MOV 	r3, #0
	b   	L_prepare_state_for_shake256$4
L_prepare_state_for_shake256$5:
	LDR 	r9, [r2, r3, lsl #2]
	STR 	r9, [r1, r3, lsl #2]
	ADD 	r3, r3, #1
L_prepare_state_for_shake256$4:
	CMP 	r3, #16
	bcc 	L_prepare_state_for_shake256$5
	STRH	r10, [r1, #64]
	MOV 	r2, #0
	STRH	r2, [r1, #66]
	MOV 	r3, #17
	b   	L_prepare_state_for_shake256$2
L_prepare_state_for_shake256$3:
	STR 	r2, [r1, r3, lsl #2]
	ADD 	r3, r3, #1
L_prepare_state_for_shake256$2:
	CMP 	r3, #50
	bcc 	L_prepare_state_for_shake256$3
	LDRB	r9, [r1, #66]
	EOR 	r9, r9, #31
	STRB	r9, [r1, #66]
	LDRB	r9, [r1, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r1, #135]
	bx  	lr
L_stream128_refill_buffer$1:
	STR 	lr, [sp]
	CMP 	r12, #42
	bne 	L_stream128_refill_buffer$2
	STR 	r1, [sp, #4]
	STR 	r2, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_stream128_refill_buffer$3:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #8]
	MOV 	r12, #0
	LDR 	r1, [sp, #4]
	MOVw	r3, #57345
	MOVT	r3, #127
L_stream128_refill_buffer$2:
	LDR 	r9, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	LDR 	r5, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	LDR 	r7, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	pop 	{pc}
L_prepare_xof_for_element_of_A$1:
	MOV 	r2, #0
	b   	L_prepare_xof_for_element_of_A$4
L_prepare_xof_for_element_of_A$5:
	LDR 	r9, [r3, r2, lsl #2]
	STR 	r9, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
L_prepare_xof_for_element_of_A$4:
	CMP 	r2, #8
	bcc 	L_prepare_xof_for_element_of_A$5
	STRH	r10, [r1, #32]
	MOV 	r2, #0
	STRH	r2, [r1, #34]
	MOV 	r3, #9
	b   	L_prepare_xof_for_element_of_A$2
L_prepare_xof_for_element_of_A$3:
	STR 	r2, [r1, r3, lsl #2]
	ADD 	r3, r3, #1
L_prepare_xof_for_element_of_A$2:
	CMP 	r3, #50
	bcc 	L_prepare_xof_for_element_of_A$3
	LDRB	r9, [r1, #34]
	EOR 	r9, r9, #31
	STRB	r9, [r1, #34]
	LDRB	r9, [r1, #167]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r1, #167]
	MOV 	r0, r1
	bx  	lr
L_shake256_add_block_end$1:
	LDRB	r9, [r0, r2]
	EOR 	r9, r9, #31
	STRB	r9, [r0, r2]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	bx  	lr
L_keccakf1600_ref$1:
	STR 	lr, [sp]
	ADD 	r1, sp, #16
	MOVw	r2, #:lower16:glob_data+1024
	MOVT	r2, #:upper16:glob_data+1024
	STR 	r2, [sp, #4]
	MOV 	r2, #0
	b   	L_keccakf1600_ref$2
L_keccakf1600_ref$3:
	LDR 	r3, [sp, #4]
	LDR 	r12, [r3, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r3, [r3, r2, lsl #2]
	ADD 	r2, r2, #1
	STR 	r2, [sp, #8]
	SUB 	sp, sp, #56
	bl  	L_round_ref$1
L_keccakf1600_ref$5:
	ADD 	sp, sp, #52
	STR 	r0, [sp, #12]
	LDR 	r1, [sp, #12]
	ADD 	r0, sp, #16
	LDR 	r2, [sp, #8]
	LDR 	r3, [sp, #4]
	LDR 	r12, [r3, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r3, [r3, r2, lsl #2]
	ADD 	r2, r2, #1
	STR 	r2, [sp, #8]
	SUB 	sp, sp, #56
	bl  	L_round_ref$1
L_keccakf1600_ref$4:
	ADD 	sp, sp, #52
	STR 	r1, [sp, #12]
	LDR 	r0, [sp, #12]
	ADD 	r1, sp, #16
	LDR 	r2, [sp, #8]
L_keccakf1600_ref$2:
	CMP 	r2, #48
	bcc 	L_keccakf1600_ref$3
	pop 	{pc}
L_round_ref$1:
	STR 	lr, [sp]
	STR 	r1, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #12]
	LDR 	r7, [r0]
	LDR 	r8, [r0, #4]
	LDR 	r1, [r0, #8]
	LDR 	r2, [r0, #12]
	LDR 	r3, [r0, #16]
	LDR 	r12, [r0, #20]
	LDR 	lr, [r0, #24]
	LDR 	r4, [r0, #28]
	LDR 	r5, [r0, #32]
	LDR 	r6, [r0, #36]
	LDR 	r9, [r0, #40]
	LDR 	r10, [r0, #44]
	EOR 	r7, r7, r9
	EOR 	r8, r8, r10
	LDR 	r9, [r0, #48]
	LDR 	r10, [r0, #52]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r9, [r0, #56]
	LDR 	r10, [r0, #60]
	EOR 	r3, r3, r9
	EOR 	r12, r12, r10
	LDR 	r9, [r0, #64]
	LDR 	r10, [r0, #68]
	EOR 	lr, lr, r9
	EOR 	r4, r4, r10
	LDR 	r9, [r0, #72]
	LDR 	r10, [r0, #76]
	EOR 	r5, r5, r9
	EOR 	r6, r6, r10
	LDR 	r9, [r0, #80]
	LDR 	r10, [r0, #84]
	EOR 	r7, r7, r9
	EOR 	r8, r8, r10
	LDR 	r9, [r0, #88]
	LDR 	r10, [r0, #92]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r9, [r0, #96]
	LDR 	r10, [r0, #100]
	EOR 	r3, r3, r9
	EOR 	r12, r12, r10
	LDR 	r9, [r0, #104]
	LDR 	r10, [r0, #108]
	EOR 	lr, lr, r9
	EOR 	r4, r4, r10
	LDR 	r9, [r0, #112]
	LDR 	r10, [r0, #116]
	EOR 	r5, r5, r9
	EOR 	r6, r6, r10
	LDR 	r9, [r0, #120]
	LDR 	r10, [r0, #124]
	EOR 	r7, r7, r9
	EOR 	r8, r8, r10
	LDR 	r9, [r0, #128]
	LDR 	r10, [r0, #132]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r9, [r0, #136]
	LDR 	r10, [r0, #140]
	EOR 	r3, r3, r9
	EOR 	r12, r12, r10
	LDR 	r9, [r0, #144]
	LDR 	r10, [r0, #148]
	EOR 	lr, lr, r9
	EOR 	r4, r4, r10
	LDR 	r9, [r0, #152]
	LDR 	r10, [r0, #156]
	EOR 	r5, r5, r9
	EOR 	r6, r6, r10
	LDR 	r9, [r0, #160]
	LDR 	r10, [r0, #164]
	EOR 	r7, r7, r9
	EOR 	r8, r8, r10
	LDR 	r9, [r0, #168]
	LDR 	r10, [r0, #172]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r9, [r0, #176]
	LDR 	r10, [r0, #180]
	EOR 	r3, r3, r9
	EOR 	r12, r12, r10
	LDR 	r9, [r0, #184]
	LDR 	r10, [r0, #188]
	EOR 	lr, lr, r9
	EOR 	r4, r4, r10
	LDR 	r9, [r0, #192]
	LDR 	r10, [r0, #196]
	EOR 	r5, r5, r9
	EOR 	r6, r6, r10
	STR 	r7, [sp, #16]
	STR 	r8, [sp, #20]
	STR 	r1, [sp, #24]
	STR 	r2, [sp, #28]
	STR 	r3, [sp, #32]
	STR 	r12, [sp, #36]
	STR 	lr, [sp, #40]
	STR 	r4, [sp, #44]
	STR 	r5, [sp, #48]
	STR 	r6, [sp, #52]
	LDR 	r3, [sp, #24]
	LDR 	r2, [sp, #28]
	MOV 	r12, r3
	LSL 	r7, r2, #1
	LSL 	r3, r3, #1
	ORR 	r1, r3, r2, lsr #31
	ORR 	r2, r7, r12, lsr #31
	LDR 	r9, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r3, [sp, #32]
	LDR 	r7, [sp, #36]
	MOV 	r12, r3
	LSL 	r8, r7, #1
	LSL 	r3, r3, #1
	ORR 	r3, r3, r7, lsr #31
	ORR 	r12, r8, r12, lsr #31
	LDR 	r9, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	r3, r3, r9
	EOR 	r12, r12, r10
	LDR 	r7, [sp, #40]
	LDR 	lr, [sp, #44]
	MOV 	r8, r7
	LSL 	r9, lr, #1
	LSL 	r7, r7, #1
	ORR 	lr, r7, lr, lsr #31
	ORR 	r4, r9, r8, lsr #31
	LDR 	r9, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	lr, lr, r9
	EOR 	r4, r4, r10
	LDR 	r7, [sp, #48]
	LDR 	r5, [sp, #52]
	MOV 	r8, r7
	LSL 	r9, r5, #1
	LSL 	r7, r7, #1
	ORR 	r5, r7, r5, lsr #31
	ORR 	r6, r9, r8, lsr #31
	LDR 	r9, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	r5, r5, r9
	EOR 	r6, r6, r10
	LDR 	r9, [sp, #16]
	LDR 	r10, [sp, #20]
	MOV 	r7, r9
	LSL 	r8, r10, #1
	LSL 	r9, r9, #1
	ORR 	r9, r9, r10, lsr #31
	ORR 	r7, r8, r7, lsr #31
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r9, r9, r8
	EOR 	r7, r7, r10
	STR 	r1, [sp, #16]
	STR 	r2, [sp, #20]
	STR 	r3, [sp, #24]
	STR 	r12, [sp, #28]
	STR 	lr, [sp, #32]
	STR 	r4, [sp, #36]
	STR 	r5, [sp, #40]
	STR 	r6, [sp, #44]
	STR 	r9, [sp, #48]
	STR 	r7, [sp, #52]
	LDR 	r1, [r0]
	LDR 	r2, [r0, #4]
	LDR 	r8, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	r1, r1, r8
	EOR 	r2, r2, r10
	LDR 	r3, [r0, #48]
	LDR 	r12, [r0, #52]
	LDR 	r8, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	lr, r3, r8
	EOR 	r3, r12, r10
	MOV 	r12, r3
	LSL 	r7, lr, #12
	LSL 	r3, r3, #12
	ORR 	r3, r3, lr, lsr #20
	ORR 	r12, r7, r12, lsr #20
	LDR 	lr, [r0, #96]
	LDR 	r4, [r0, #100]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	lr, lr, r8
	EOR 	r7, r4, r10
	MOV 	r8, r7
	LSL 	r9, lr, #11
	LSL 	r7, r7, #11
	ORR 	lr, r7, lr, lsr #21
	ORR 	r4, r9, r8, lsr #21
	LDR 	r5, [r0, #144]
	LDR 	r6, [r0, #148]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r7, r5, r8
	EOR 	r5, r6, r10
	MOV 	r8, r7
	LSL 	r9, r5, #21
	LSL 	r7, r7, #21
	ORR 	r5, r7, r5, lsr #11
	ORR 	r6, r9, r8, lsr #11
	LDR 	r7, [r0, #192]
	LDR 	r8, [r0, #196]
	LDR 	r9, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r7, r7, r9
	EOR 	r10, r8, r10
	MOV 	r8, r7
	LSL 	r9, r10, #14
	LSL 	r7, r7, #14
	ORR 	r7, r7, r10, lsr #18
	ORR 	r8, r9, r8, lsr #18
	BIC 	r9, lr, r3
	BIC 	r10, r4, r12
	EOR 	r9, r9, r1
	EOR 	r10, r10, r2
	LDR 	r11, [sp, #8]
	EOR 	r9, r9, r11
	LDR 	r11, [sp, #12]
	EOR 	r10, r10, r11
	LDR 	r11, [sp, #4]
	STR 	r9, [r11]
	STR 	r10, [r11, #4]
	STR 	r11, [sp, #4]
	BIC 	r9, r5, lr
	BIC 	r10, r6, r4
	EOR 	r9, r9, r3
	EOR 	r10, r10, r12
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #8]
	STR 	r10, [r11, #12]
	STR 	r11, [sp, #4]
	BIC 	r9, r7, r5
	BIC 	r10, r8, r6
	EOR 	r9, r9, lr
	EOR 	r10, r10, r4
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #16]
	STR 	r10, [r11, #20]
	STR 	r11, [sp, #4]
	BIC 	r9, r1, r7
	BIC 	r10, r2, r8
	EOR 	r9, r9, r5
	EOR 	r10, r10, r6
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #24]
	STR 	r10, [r11, #28]
	STR 	r11, [sp, #4]
	BIC 	r9, r3, r1
	BIC 	r10, r12, r2
	EOR 	r9, r9, r7
	EOR 	r10, r10, r8
	LDR 	r1, [sp, #4]
	STR 	r9, [r1, #32]
	STR 	r10, [r1, #36]
	STR 	r1, [sp, #4]
	LDR 	r1, [r0, #24]
	LDR 	r2, [r0, #28]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r7, r2, #28
	LSL 	r3, r3, #28
	ORR 	r1, r3, r2, lsr #4
	ORR 	r2, r7, r12, lsr #4
	LDR 	r3, [r0, #72]
	LDR 	r12, [r0, #76]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r3, r3, r8
	EOR 	lr, r12, r10
	MOV 	r12, r3
	LSL 	r7, lr, #20
	LSL 	r3, r3, #20
	ORR 	r3, r3, lr, lsr #12
	ORR 	r12, r7, r12, lsr #12
	LDR 	lr, [r0, #80]
	LDR 	r4, [r0, #84]
	LDR 	r8, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	r7, lr, r8
	EOR 	lr, r4, r10
	MOV 	r8, r7
	LSL 	r9, lr, #3
	LSL 	r7, r7, #3
	ORR 	lr, r7, lr, lsr #29
	ORR 	r4, r9, r8, lsr #29
	LDR 	r5, [r0, #128]
	LDR 	r6, [r0, #132]
	LDR 	r8, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	r5, r5, r8
	EOR 	r7, r6, r10
	MOV 	r8, r7
	LSL 	r9, r5, #13
	LSL 	r7, r7, #13
	ORR 	r5, r7, r5, lsr #19
	ORR 	r6, r9, r8, lsr #19
	LDR 	r7, [r0, #176]
	LDR 	r8, [r0, #180]
	LDR 	r9, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	r7, r7, r9
	EOR 	r10, r8, r10
	MOV 	r8, r10
	LSL 	r9, r7, #29
	LSL 	r10, r10, #29
	ORR 	r7, r10, r7, lsr #3
	ORR 	r8, r9, r8, lsr #3
	BIC 	r9, lr, r3
	BIC 	r10, r4, r12
	EOR 	r9, r9, r1
	EOR 	r10, r10, r2
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #40]
	STR 	r10, [r11, #44]
	STR 	r11, [sp, #4]
	BIC 	r9, r5, lr
	BIC 	r10, r6, r4
	EOR 	r9, r9, r3
	EOR 	r10, r10, r12
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #48]
	STR 	r10, [r11, #52]
	STR 	r11, [sp, #4]
	BIC 	r9, r7, r5
	BIC 	r10, r8, r6
	EOR 	r9, r9, lr
	EOR 	r10, r10, r4
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #56]
	STR 	r10, [r11, #60]
	STR 	r11, [sp, #4]
	BIC 	r9, r1, r7
	BIC 	r10, r2, r8
	EOR 	r9, r9, r5
	EOR 	r10, r10, r6
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #64]
	STR 	r10, [r11, #68]
	STR 	r11, [sp, #4]
	BIC 	r9, r3, r1
	BIC 	r10, r12, r2
	EOR 	r9, r9, r7
	EOR 	r10, r10, r8
	LDR 	r1, [sp, #4]
	STR 	r9, [r1, #72]
	STR 	r10, [r1, #76]
	STR 	r1, [sp, #4]
	LDR 	r1, [r0, #8]
	LDR 	r2, [r0, #12]
	LDR 	r8, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r7, r2, #1
	LSL 	r3, r3, #1
	ORR 	r1, r3, r2, lsr #31
	ORR 	r2, r7, r12, lsr #31
	LDR 	r3, [r0, #56]
	LDR 	r12, [r0, #60]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	r3, r3, r8
	EOR 	lr, r12, r10
	MOV 	r12, r3
	LSL 	r7, lr, #6
	LSL 	r3, r3, #6
	ORR 	r3, r3, lr, lsr #26
	ORR 	r12, r7, r12, lsr #26
	LDR 	lr, [r0, #104]
	LDR 	r4, [r0, #108]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r7, lr, r8
	EOR 	lr, r4, r10
	MOV 	r8, r7
	LSL 	r9, lr, #25
	LSL 	r7, r7, #25
	ORR 	lr, r7, lr, lsr #7
	ORR 	r4, r9, r8, lsr #7
	LDR 	r5, [r0, #152]
	LDR 	r6, [r0, #156]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r7, r5, r8
	EOR 	r5, r6, r10
	MOV 	r8, r7
	LSL 	r9, r5, #8
	LSL 	r7, r7, #8
	ORR 	r5, r7, r5, lsr #24
	ORR 	r6, r9, r8, lsr #24
	LDR 	r7, [r0, #160]
	LDR 	r8, [r0, #164]
	LDR 	r9, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	r7, r7, r9
	EOR 	r10, r8, r10
	MOV 	r8, r7
	LSL 	r9, r10, #18
	LSL 	r7, r7, #18
	ORR 	r7, r7, r10, lsr #14
	ORR 	r8, r9, r8, lsr #14
	BIC 	r9, lr, r3
	BIC 	r10, r4, r12
	EOR 	r9, r9, r1
	EOR 	r10, r10, r2
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #80]
	STR 	r10, [r11, #84]
	STR 	r11, [sp, #4]
	BIC 	r9, r5, lr
	BIC 	r10, r6, r4
	EOR 	r9, r9, r3
	EOR 	r10, r10, r12
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #88]
	STR 	r10, [r11, #92]
	STR 	r11, [sp, #4]
	BIC 	r9, r7, r5
	BIC 	r10, r8, r6
	EOR 	r9, r9, lr
	EOR 	r10, r10, r4
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #96]
	STR 	r10, [r11, #100]
	STR 	r11, [sp, #4]
	BIC 	r9, r1, r7
	BIC 	r10, r2, r8
	EOR 	r9, r9, r5
	EOR 	r10, r10, r6
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #104]
	STR 	r10, [r11, #108]
	STR 	r11, [sp, #4]
	BIC 	r9, r3, r1
	BIC 	r10, r12, r2
	EOR 	r9, r9, r7
	EOR 	r10, r10, r8
	LDR 	r1, [sp, #4]
	STR 	r9, [r1, #112]
	STR 	r10, [r1, #116]
	STR 	r1, [sp, #4]
	LDR 	r1, [r0, #32]
	LDR 	r2, [r0, #36]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r7, r2, #27
	LSL 	r3, r3, #27
	ORR 	r1, r3, r2, lsr #5
	ORR 	r2, r7, r12, lsr #5
	LDR 	r3, [r0, #40]
	LDR 	r12, [r0, #44]
	LDR 	r8, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	lr, r3, r8
	EOR 	r3, r12, r10
	MOV 	r12, r3
	LSL 	r7, lr, #4
	LSL 	r3, r3, #4
	ORR 	r3, r3, lr, lsr #28
	ORR 	r12, r7, r12, lsr #28
	LDR 	lr, [r0, #88]
	LDR 	r4, [r0, #92]
	LDR 	r8, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	r7, lr, r8
	EOR 	lr, r4, r10
	MOV 	r8, r7
	LSL 	r9, lr, #10
	LSL 	r7, r7, #10
	ORR 	lr, r7, lr, lsr #22
	ORR 	r4, r9, r8, lsr #22
	LDR 	r5, [r0, #136]
	LDR 	r6, [r0, #140]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	r7, r5, r8
	EOR 	r5, r6, r10
	MOV 	r8, r7
	LSL 	r9, r5, #15
	LSL 	r7, r7, #15
	ORR 	r5, r7, r5, lsr #17
	ORR 	r6, r9, r8, lsr #17
	LDR 	r7, [r0, #184]
	LDR 	r8, [r0, #188]
	LDR 	r9, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r7, r7, r9
	EOR 	r10, r8, r10
	MOV 	r8, r10
	LSL 	r9, r7, #24
	LSL 	r10, r10, #24
	ORR 	r7, r10, r7, lsr #8
	ORR 	r8, r9, r8, lsr #8
	BIC 	r9, lr, r3
	BIC 	r10, r4, r12
	EOR 	r9, r9, r1
	EOR 	r10, r10, r2
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #120]
	STR 	r10, [r11, #124]
	STR 	r11, [sp, #4]
	BIC 	r9, r5, lr
	BIC 	r10, r6, r4
	EOR 	r9, r9, r3
	EOR 	r10, r10, r12
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #128]
	STR 	r10, [r11, #132]
	STR 	r11, [sp, #4]
	BIC 	r9, r7, r5
	BIC 	r10, r8, r6
	EOR 	r9, r9, lr
	EOR 	r10, r10, r4
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #136]
	STR 	r10, [r11, #140]
	STR 	r11, [sp, #4]
	BIC 	r9, r1, r7
	BIC 	r10, r2, r8
	EOR 	r9, r9, r5
	EOR 	r10, r10, r6
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #144]
	STR 	r10, [r11, #148]
	STR 	r11, [sp, #4]
	BIC 	r9, r3, r1
	BIC 	r10, r12, r2
	EOR 	r9, r9, r7
	EOR 	r10, r10, r8
	LDR 	r1, [sp, #4]
	STR 	r9, [r1, #152]
	STR 	r10, [r1, #156]
	STR 	r1, [sp, #4]
	LDR 	r1, [r0, #16]
	LDR 	r2, [r0, #20]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	lr, r1, r8
	EOR 	r3, r2, r10
	MOV 	r12, r3
	LSL 	r7, lr, #30
	LSL 	r3, r3, #30
	ORR 	r1, r3, lr, lsr #2
	ORR 	r2, r7, r12, lsr #2
	LDR 	r3, [r0, #64]
	LDR 	r12, [r0, #68]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	lr, r3, r8
	EOR 	r3, r12, r10
	MOV 	r12, r3
	LSL 	r7, lr, #23
	LSL 	r3, r3, #23
	ORR 	r3, r3, lr, lsr #9
	ORR 	r12, r7, r12, lsr #9
	LDR 	lr, [r0, #112]
	LDR 	r4, [r0, #116]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	lr, lr, r8
	EOR 	r7, r4, r10
	MOV 	r8, r7
	LSL 	r9, lr, #7
	LSL 	r7, r7, #7
	ORR 	lr, r7, lr, lsr #25
	ORR 	r4, r9, r8, lsr #25
	LDR 	r5, [r0, #120]
	LDR 	r6, [r0, #124]
	LDR 	r8, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	r5, r5, r8
	EOR 	r7, r6, r10
	MOV 	r8, r7
	LSL 	r9, r5, #9
	LSL 	r7, r7, #9
	ORR 	r5, r7, r5, lsr #23
	ORR 	r6, r9, r8, lsr #23
	LDR 	r7, [r0, #168]
	LDR 	r8, [r0, #172]
	LDR 	r9, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	r7, r7, r9
	EOR 	r10, r8, r10
	MOV 	r8, r7
	LSL 	r9, r10, #2
	LSL 	r7, r7, #2
	ORR 	r7, r7, r10, lsr #30
	ORR 	r8, r9, r8, lsr #30
	BIC 	r9, lr, r3
	BIC 	r10, r4, r12
	EOR 	r9, r9, r1
	EOR 	r10, r10, r2
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #160]
	STR 	r10, [r11, #164]
	STR 	r11, [sp, #4]
	BIC 	r9, r5, lr
	BIC 	r10, r6, r4
	EOR 	r9, r9, r3
	EOR 	r10, r10, r12
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #168]
	STR 	r10, [r11, #172]
	STR 	r11, [sp, #4]
	BIC 	r9, r7, r5
	BIC 	r10, r8, r6
	EOR 	r9, r9, lr
	EOR 	r10, r10, r4
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #176]
	STR 	r10, [r11, #180]
	STR 	r11, [sp, #4]
	BIC 	r9, r1, r7
	BIC 	r10, r2, r8
	EOR 	r9, r9, r5
	EOR 	r10, r10, r6
	LDR 	r11, [sp, #4]
	STR 	r9, [r11, #184]
	STR 	r10, [r11, #188]
	STR 	r11, [sp, #4]
	BIC 	r9, r3, r1
	BIC 	r10, r12, r2
	EOR 	r9, r9, r7
	EOR 	r10, r10, r8
	LDR 	r1, [sp, #4]
	STR 	r9, [r1, #192]
	STR 	r10, [r1, #196]
	STR 	r1, [sp, #4]
	LDR 	r1, [sp, #4]
	pop 	{pc}
	.p2align	5
glob_data:
G$ZETAS:
	.byte	  0,   0,   0,   0, 247, 100,   0,   0,   2,  49, 216, 255,   3,  21, 248, 255
	.byte	 68, 158,   3,   0,  24,  33, 244, 255,  40, 161, 242, 255,  36,  30,   7,   0
	.byte	 43, 222,  27,   0,  43, 233,  35,   0, 173, 132, 250, 255, 127,  20, 224, 255
	.byte	117, 154,  47,   0,   9, 251, 211, 255,  73, 122,  47,   0,  39, 229,  40,   0
	.byte	 88, 150,  41,   0, 112, 160,  15,   0, 164, 133, 239, 255, 136, 183,  54,   0
	.byte	144, 157, 247, 255, 160, 234, 238, 255, 104, 249,  39,   0, 123, 211, 223, 255
	.byte	214, 173, 223, 255, 231,  26, 197, 255, 247, 164, 234, 255, 152, 252, 205, 255
	.byte	 53, 208,  26,   0,  34, 180, 255, 255,   1,  50,  61,   0, 197,  69,   4,   0
	.byte	103,  74,  41,   0,  32, 118,   1,   0, 205, 244,  46,   0, 197, 222,  53,   0
	.byte	  3, 165, 230, 255,  44,  48, 201, 255, 212,  71, 217, 255, 175, 190,  59,   0
	.byte	133,  21, 197, 255, 124, 142, 209, 255, 150, 138,  54,   0,  65,  62, 212, 255
	.byte	  0,   4,  54,   0,  77, 106, 251, 255, 156, 214,  35,   0,  93, 197, 247, 255
	.byte	 61,  18, 230, 255, 214, 234, 230, 255,  30, 126,  53,   0,  89, 175, 197, 255
	.byte	 63, 132,  53,   0,  23,  86, 223, 255,  92, 148, 231, 255, 140, 115,  56,   0
	.byte	168,  99,  12,   0, 154,  27,   8,   0, 118, 143,  14,   0,  83,  56,  59,   0
	.byte	 52, 133,  59,   0,  48, 252, 216, 255,  84, 157,  31,   0,  45,  79, 213, 255
	.byte	229,   6, 196, 255, 129, 172, 232, 255, 207, 225, 199, 255,  25, 152, 209, 255
	.byte	 93, 214, 233, 255, 238,   9,  53,   0, 199,  53,  33,   0, 187, 207, 231, 255
	.byte	117, 207, 236, 255, 114, 151,  29,   0, 114, 176, 193, 255, 246, 188, 240, 255
	.byte	128,  82, 207, 255, 174, 210, 207, 255, 224, 144, 200, 255, 202, 239,   1,   0
	.byte	242,  16,  52,   0, 133, 254, 240, 255,  56, 198,  32,   0, 159, 110,  41,   0
	.byte	163, 183, 210, 255,  75, 164, 199, 255, 109, 186, 249, 255,   9,  52, 218, 255
	.byte	130, 194, 245, 255,  19,  65, 237, 255,  59, 166, 255, 255, 247,   9, 236, 255
	.byte	221,  43, 250, 255, 212, 149,  20,   0,  99,  69,  28,   0,  98,  44, 234, 255
	.byte	233, 251, 204, 255, 240,  10,   4,   0,  23, 196,   7,   0, 136,  69,  47,   0
	.byte	  0, 173,   0,   0, 190,  54, 239, 255,  68, 205,  13,   0,  90, 103,  60,   0
	.byte	202,  43, 199, 255, 126, 222, 255, 255,  72,  57,  25,   0, 192, 105, 206, 255
	.byte	108, 117,  36,   0, 223, 199, 252, 255, 161, 152,  11,   0,   8, 232, 235, 255
	.byte	108, 228,   2,   0,   8, 200, 201, 255, 194,  54,  48,   0, 246, 191, 227, 255
	.byte	147,  60, 219, 255, 224,  74, 253, 255,   5,  19,  20,   0, 146, 119,  20,   0
	.byte	 37, 158,  19,   0, 224, 208, 231, 255,  68, 153, 243, 255,   2,   8, 234, 255
	.byte	162, 238, 209, 255, 156, 199, 196, 255,  87, 160, 200, 255, 217, 151,  58,   0
	.byte	147, 234,  31,   0,  90, 255,  51,   0, 212,  88,  35,   0, 248,  65,  58,   0
	.byte	114, 255, 204, 255, 251,  61,  34,   0, 159, 171, 218, 255,  34, 164, 201, 255
	.byte	245,  18,   4,   0, 135,  37,  37,   0, 240,  36, 237, 255,  93, 155,  53,   0
	.byte	160,  72, 202, 255, 252, 162, 198, 255,  86, 187, 237, 255, 222,  69, 207, 255
	.byte	 94, 190,  13,   0,  26,  94,  28,   0, 230, 224,  13,   0,  90, 127,  12,   0
	.byte	131, 143,   7,   0, 138,  98, 231, 255,   4,  87, 255, 255, 252,   6, 248, 255
	.byte	 33,   0, 246, 255, 246,  90, 208, 255, 132,   0,  31,   0, 134, 239,  48,   0
	.byte	125, 185, 201, 255, 214, 252, 247, 255, 146,  69, 244, 255, 194,  33, 201, 255
	.byte	 25,  57,   5,   0,  12,  97,   4,   0,  65, 205, 218, 255,  27, 176,  62,   0
	.byte	231, 114,  52,   0,  59,   0, 205, 255, 199, 124,  26,   0,  36,  25,   3,   0
	.byte	229,  94,  43,   0, 153,  17,  41,   0,  58, 122, 216, 255, 113,  77,  19,   0
	.byte	 28, 225,  61,   0, 132,   9,  19,   0,  81, 240,  37,   0,  70,  90,  24,   0
	.byte	 24, 133, 198, 255, 190,  20,  19,   0, 145,  56,  40,   0, 144, 219, 201, 255
	.byte	137,  80, 210, 255,  63, 133,  28,   0,  75,  11,  29,   0, 166, 246, 239, 255
	.byte	190, 168, 235, 255,  27, 225,  18,   0,  62,  94, 205, 255,  47,  45, 234, 255
	.byte	228,  29, 249, 255, 199,   6,  20,   0, 131, 114,  50,   0, 110,  13, 226, 255
	.byte	 83, 121, 236, 255, 153,  64,  29,   0, 120,  37, 217, 255, 173,   5, 235, 255
	.byte	  5, 228,  22,   0, 231, 219,  11,   0, 232,  29,  34,   0, 207, 248,  51,   0
	.byte	 52, 185, 247, 255,  12, 202, 212, 255, 248, 127, 230, 255,  87, 209, 227, 255
	.byte	 27, 145, 216, 255,  18,  44, 199, 255, 216,  16,   9,   0,  31,  94, 198, 255
	.byte	 88,  70, 225, 255, 139,  29,  37,   0, 183, 115,  37,   0, 143, 124, 253, 255
	.byte	152, 221,  29,   0, 152, 104,  51,   0, 187, 212,   2,   0, 167, 147, 237, 255
	.byte	190, 108, 207, 255,  28, 124,   2,   0,   8, 170,  24,   0, 113, 253,  45,   0
	.byte	165,  92,  12,   0, 154,  55,  25,   0, 103, 161, 199, 255,  61, 140, 228, 255
	.byte	 60, 161, 209, 255,  57, 197,  53,   0,  21,   1,  59,   0, 192,  29,   4,   0
	.byte	247, 196,  33,   0, 244,  27, 241, 255, 231,  53,  26,   0,  14,  52,   7,   0
	.byte	 69, 125, 249, 255, 208,  76,  26,   0, 174, 124, 228, 255, 104,  38,  29,   0
	.byte	152, 142, 230, 255,  51,  38, 239, 255, 218,   5, 252, 255, 219, 127, 197, 255
	.byte	100,  39, 211, 255, 175, 225, 221, 255, 221, 147, 249, 255,   9,  29, 221, 255
	.byte	147, 204,   2,   0,   5,  24, 241, 255,  42, 156,  24,   0, 169, 229, 201, 255
	.byte	 80, 138, 247, 255,  44, 207,  59,   0,  78,  67, 255, 255, 223,  54, 235, 255
	.byte	202,  21,  60,   0, 104,  94,  21,   0, 182,  22, 243, 255, 206,  41,  30,   0
G$KECCAK1600_RC:
	.byte	  1,   0,   0,   0,   0,   0,   0,   0, 130, 128,   0,   0,   0,   0,   0,   0
	.byte	138, 128,   0,   0,   0,   0,   0, 128,   0, 128,   0, 128,   0,   0,   0, 128
	.byte	139, 128,   0,   0,   0,   0,   0,   0,   1,   0,   0, 128,   0,   0,   0,   0
	.byte	129, 128,   0, 128,   0,   0,   0, 128,   9, 128,   0,   0,   0,   0,   0, 128
	.byte	138,   0,   0,   0,   0,   0,   0,   0, 136,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 128,   0, 128,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0,   0
	.byte	139, 128,   0, 128,   0,   0,   0,   0, 139,   0,   0,   0,   0,   0,   0, 128
	.byte	137, 128,   0,   0,   0,   0,   0, 128,   3, 128,   0,   0,   0,   0,   0, 128
	.byte	  2, 128,   0,   0,   0,   0,   0, 128, 128,   0,   0,   0,   0,   0,   0, 128
	.byte	 10, 128,   0,   0,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0, 128
	.byte	129, 128,   0, 128,   0,   0,   0, 128, 128, 128,   0,   0,   0,   0,   0, 128
	.byte	  1,   0,   0, 128,   0,   0,   0,   0,   8, 128,   0, 128,   0,   0,   0, 128
