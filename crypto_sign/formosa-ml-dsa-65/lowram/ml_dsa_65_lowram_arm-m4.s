	.thumb
	.syntax unified
	.global	_ml_dsa_65_verify
	.global	ml_dsa_65_verify
	.global	_ml_dsa_65_sign
	.global	ml_dsa_65_sign
	.global	_ml_dsa_65_keygen
	.global	ml_dsa_65_keygen
_ml_dsa_65_verify:
ml_dsa_65_verify:
	push	{lr}
	SUBw	lr, sp, #2312
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	STR 	r4, [sp, #2276]
	STR 	r5, [sp, #2280]
	STR 	r6, [sp, #2284]
	STR 	r7, [sp, #2288]
	STR 	r8, [sp, #2292]
	STR 	r9, [sp, #2296]
	STR 	r10, [sp, #2300]
	STR 	r11, [sp, #2304]
	STR 	r12, [sp, #2308]
	LDR 	r12, [r2]
	CMP 	r12, #255
	bhi 	Lml_dsa_65_verify$2
	STR 	r2, [sp]
	STR 	r1, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #12]
	STR 	r0, [sp, #16]
	ADD 	r0, sp, #80
	LDR 	r1, [sp, #12]
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_65_verify$302:
	ADD 	sp, sp, #8
	LDR 	r1, [sp]
	LDR 	r1, [r1]
	MOV 	r2, #0
	STRB	r2, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	STRH	r1, [r0, #66]
	MOV 	r2, #17
	b   	Lml_dsa_65_verify$300
Lml_dsa_65_verify$301:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_verify$300:
	CMP 	r2, #50
	bcc 	Lml_dsa_65_verify$301
	MOV 	r1, #66
	LDR 	r2, [sp, #4]
	LDR 	r4, [r2]
	STR 	r2, [sp, #4]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_65_verify$299:
	ADD 	sp, sp, #8
	LDR 	r2, [sp]
	LDR 	r12, [r2, #4]
	LDR 	r2, [sp, #4]
	LDR 	r4, [r2, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_65_verify$298:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_65_verify$297:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_verify$296:
	ADD 	sp, sp, #212
	LDR 	r1, [r0]
	STR 	r1, [sp, #280]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #284]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #288]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #292]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #296]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #300]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #304]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #308]
	LDR 	r1, [r0, #32]
	STR 	r1, [sp, #312]
	LDR 	r1, [r0, #36]
	STR 	r1, [sp, #316]
	LDR 	r1, [r0, #40]
	STR 	r1, [sp, #320]
	LDR 	r1, [r0, #44]
	STR 	r1, [sp, #324]
	LDR 	r1, [r0, #48]
	STR 	r1, [sp, #328]
	LDR 	r1, [r0, #52]
	STR 	r1, [sp, #332]
	LDR 	r1, [r0, #56]
	STR 	r1, [sp, #336]
	LDR 	r1, [r0, #60]
	STR 	r1, [sp, #340]
	LDR 	r1, [sp, #16]
	ADDw	r2, sp, #1252
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_65_verify$295:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #20
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_challenge$1
Lml_dsa_65_verify$294:
	ADD 	r1, sp, #280
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$292
Lml_dsa_65_verify$293:
	LDR 	r3, [r1, r2, lsl #2]
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_verify$292:
	CMP 	r2, #16
	bcc 	Lml_dsa_65_verify$293
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_65_verify$290
Lml_dsa_65_verify$291:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_verify$290:
	CMP 	r2, #50
	bcc 	Lml_dsa_65_verify$291
	MOV 	r0, #64
	STR 	r0, [sp, #4]
	MOV 	r0, #0
	STR 	r0, [sp]
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$243
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$289:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$288:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$243
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$287:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$285
Lml_dsa_65_verify$286:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$285:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$286
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #0
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$284:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$278
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$283:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$282:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$278
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$281:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #0
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$280:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$279:
Lml_dsa_65_verify$278:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$272
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$277:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$276:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$272
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$275:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #0
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$274:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$273:
Lml_dsa_65_verify$272:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$266
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$271:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$270:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$266
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$269:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #0
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$268:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$267:
Lml_dsa_65_verify$266:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$260
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$265:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$264:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$260
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$263:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #0
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$262:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$261:
Lml_dsa_65_verify$260:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$243
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$259:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$258:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$257:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$256:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$255:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #32
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$254:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$253:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$252:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$251:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #0
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$250:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$243
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$249:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$248:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$247:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$246:
Lml_dsa_65_verify$245:
Lml_dsa_65_verify$244:
Lml_dsa_65_verify$243:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$196
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$242:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$241:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$196
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$240:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$238
Lml_dsa_65_verify$239:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$238:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$239
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #1
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$237:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$231
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$236:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$235:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$231
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$234:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #1
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$233:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$232:
Lml_dsa_65_verify$231:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$225
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$230:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$229:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$225
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$228:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #1
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$227:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$226:
Lml_dsa_65_verify$225:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$219
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$224:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$223:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$219
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$222:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #1
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$221:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$220:
Lml_dsa_65_verify$219:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$213
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$218:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$217:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$213
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$216:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #1
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$215:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$214:
Lml_dsa_65_verify$213:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$196
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$212:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$211:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$210:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$209:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$208:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #352
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$207:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$206:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$205:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$204:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #1
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$203:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$196
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$202:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$201:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$200:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$199:
Lml_dsa_65_verify$198:
Lml_dsa_65_verify$197:
Lml_dsa_65_verify$196:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$149
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$195:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$194:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$149
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$193:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$191
Lml_dsa_65_verify$192:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$191:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$192
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #2
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$190:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$184
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$189:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$188:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$184
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$187:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #2
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$186:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$185:
Lml_dsa_65_verify$184:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$178
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$183:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$182:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$178
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$181:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #2
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$180:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$179:
Lml_dsa_65_verify$178:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$172
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$177:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$176:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$172
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$175:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #2
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$174:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$173:
Lml_dsa_65_verify$172:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$166
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$171:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$170:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$166
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$169:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #2
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$168:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$167:
Lml_dsa_65_verify$166:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$149
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$165:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$164:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$163:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$162:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$161:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #672
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$160:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$159:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$158:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$157:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #2
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$156:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$149
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$155:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$154:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$153:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$152:
Lml_dsa_65_verify$151:
Lml_dsa_65_verify$150:
Lml_dsa_65_verify$149:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$102
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$148:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$147:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$102
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$146:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$144
Lml_dsa_65_verify$145:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$144:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$145
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #3
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$143:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$137
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$142:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$141:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$137
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$140:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #3
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$139:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$138:
Lml_dsa_65_verify$137:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$131
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$136:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$135:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$131
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$134:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #3
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$133:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$132:
Lml_dsa_65_verify$131:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$125
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$130:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$129:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$125
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$128:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #3
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$127:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$126:
Lml_dsa_65_verify$125:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$119
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$124:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$123:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$119
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$122:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #3
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$121:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$120:
Lml_dsa_65_verify$119:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$102
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$118:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$117:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$116:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$115:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$114:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #992
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$113:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$112:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$111:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$110:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #3
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$109:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$102
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$108:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$107:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$106:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$105:
Lml_dsa_65_verify$104:
Lml_dsa_65_verify$103:
Lml_dsa_65_verify$102:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$55
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$101:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$100:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$55
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$99:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$97
Lml_dsa_65_verify$98:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$97:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$98
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #4
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$96:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$90
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$95:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$94:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$90
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$93:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #4
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$92:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$91:
Lml_dsa_65_verify$90:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$84
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$89:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$88:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$84
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$87:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #4
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$86:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$85:
Lml_dsa_65_verify$84:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$78
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$83:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$82:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$78
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$81:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #4
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$80:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$79:
Lml_dsa_65_verify$78:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$72
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$77:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$76:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$72
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$75:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #4
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$74:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$73:
Lml_dsa_65_verify$72:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$55
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$71:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$70:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$69:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$68:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$67:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #1312
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$66:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$65:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$64:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$63:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #4
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$62:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$55
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$61:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$60:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$59:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$58:
Lml_dsa_65_verify$57:
Lml_dsa_65_verify$56:
Lml_dsa_65_verify$55:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$8
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #48
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$54:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$53:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$8
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$52:
	ADD 	r0, sp, #480
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_verify$50
Lml_dsa_65_verify$51:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_verify$50:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_verify$51
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #280
	MOV 	r1, #0
	MOV 	r2, #5
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$49:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$43
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #688
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$48:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$47:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$43
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$46:
	ADD 	r0, sp, #280
	MOV 	r1, #1
	MOV 	r2, #5
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$45:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$44:
Lml_dsa_65_verify$43:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$37
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1328
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$42:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$41:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$37
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$40:
	ADD 	r0, sp, #280
	MOV 	r1, #2
	MOV 	r2, #5
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$39:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$38:
Lml_dsa_65_verify$37:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$31
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #1968
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$36:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$35:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$31
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$34:
	ADD 	r0, sp, #280
	MOV 	r1, #3
	MOV 	r2, #5
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$33:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$32:
Lml_dsa_65_verify$31:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$25
	LDR 	r1, [sp, #16]
	ADDw	r0, sp, #1252
	ADD 	r1, r1, #2608
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack$1
Lml_dsa_65_verify$30:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1252
	bl  	L_poly_check_norm$1
Lml_dsa_65_verify$29:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$25
	ADDw	r0, sp, #1252
	bl  	L_poly_ntt$1
Lml_dsa_65_verify$28:
	ADD 	r0, sp, #280
	MOV 	r1, #4
	MOV 	r2, #5
	ORR 	r2, r1, r2, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #480
	MOV 	r12, r3
	ADDw	r3, sp, #1252
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_verify$27:
	ADD 	sp, sp, #12
Lml_dsa_65_verify$26:
Lml_dsa_65_verify$25:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_65_verify$8
	LDR 	r0, [sp, #12]
	ADDw	r1, sp, #1252
	ADD 	r2, sp, #480
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_verify$24:
	ADDw	r1, sp, #1252
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_verify$23:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$22:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$21:
	ADD 	r1, sp, #480
	ADDw	r2, sp, #1252
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_verify$20:
	ADDw	r9, sp, #1252
	ADD 	r6, r0, #1632
	ADD 	r7, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_65_verify$19:
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #480
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_verify$18:
	ADDw	r1, sp, #1252
	bl  	L_poly_reduce$1
Lml_dsa_65_verify$17:
	ADDw	r1, sp, #1252
	bl  	L_poly_caddq$1
Lml_dsa_65_verify$16:
	ADD 	r0, sp, #280
	LDR 	r2, [sp, #16]
	MOV 	r1, #5
	ADD 	r2, r2, #3248
	bl  	L_unpack_hint_at_index$1
Lml_dsa_65_verify$15:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_65_verify$8
	ADDw	r0, sp, #1252
	ADD 	r1, sp, #280
	bl  	L_poly_use_hint$1
Lml_dsa_65_verify$14:
	ADD 	r1, sp, #480
	ADDw	r0, sp, #1252
	bl  	L_polyw1_pack$1
Lml_dsa_65_verify$13:
	ADD 	r0, sp, #80
	LDR 	r4, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_65_verify$12:
	ADD 	sp, sp, #12
	STR 	r4, [sp, #4]
Lml_dsa_65_verify$11:
Lml_dsa_65_verify$10:
Lml_dsa_65_verify$9:
Lml_dsa_65_verify$8:
	LDR 	r1, [sp, #4]
	LDR 	lr, [sp]
	CMP 	lr, #0
	bne 	Lml_dsa_65_verify$2
	ADD 	r0, sp, #80
	bl  	L_shake256_add_block_end$1
Lml_dsa_65_verify$7:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_verify$6:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #16]
	MOV 	r2, #0
	MOV 	lr, #0
	b   	Lml_dsa_65_verify$4
Lml_dsa_65_verify$5:
	LDR 	r3, [r1, r2]
	LDR 	r12, [r0, r2]
	EOR 	r3, r3, r12
	ORR 	lr, lr, r3
	ADD 	r2, r2, #4
Lml_dsa_65_verify$4:
	CMP 	r2, #48
	bcc 	Lml_dsa_65_verify$5
Lml_dsa_65_verify$3:
Lml_dsa_65_verify$2:
	CMP 	lr, #0
	beq 	Lml_dsa_65_verify$1
	MOV 	lr, #4294967295
Lml_dsa_65_verify$1:
	MOV 	r0, lr
	LDR 	r4, [sp, #2276]
	LDR 	r5, [sp, #2280]
	LDR 	r6, [sp, #2284]
	LDR 	r7, [sp, #2288]
	LDR 	r8, [sp, #2292]
	LDR 	r9, [sp, #2296]
	LDR 	r10, [sp, #2300]
	LDR 	r11, [sp, #2304]
	LDR 	sp, [sp, #2308]
	pop 	{pc}
_ml_dsa_65_sign:
ml_dsa_65_sign:
	push	{lr}
	MOVw	lr, #7112
	SUB 	lr, sp, lr
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	MOVw	lr, #7076
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
	bhi 	Lml_dsa_65_sign$1
	STR 	r1, [sp]
	STR 	r12, [sp, #4]
	STR 	lr, [sp, #8]
	STR 	r2, [sp, #12]
	STR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	LDR 	r1, [sp, #16]
	ADD 	r1, r1, #64
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$312
Lml_dsa_65_sign$313:
	LDR 	r3, [r1, r2, lsl #2]
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_sign$312:
	CMP 	r2, #16
	bcc 	Lml_dsa_65_sign$313
	LDR 	r1, [sp, #12]
	LDR 	r1, [r1]
	MOV 	r2, #0
	STRB	r2, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	MOV 	r2, #66
	b   	Lml_dsa_65_sign$310
Lml_dsa_65_sign$311:
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
Lml_dsa_65_sign$310:
	CMP 	r2, #200
	bcc 	Lml_dsa_65_sign$311
	MOV 	r1, #66
	LDR 	r2, [sp]
	LDR 	r4, [r2]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_65_sign$309:
	ADD 	sp, sp, #8
	LDR 	r2, [sp, #12]
	LDR 	r12, [r2, #4]
	LDR 	r2, [sp]
	LDR 	r4, [r2, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_65_sign$308:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_65_sign$307:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_sign$306:
	ADD 	sp, sp, #212
	LDR 	r1, [r0]
	STR 	r1, [sp, #84]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #88]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #92]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #96]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #100]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #104]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #108]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #112]
	LDR 	r1, [r0, #32]
	STR 	r1, [sp, #116]
	LDR 	r1, [r0, #36]
	STR 	r1, [sp, #120]
	LDR 	r1, [r0, #40]
	STR 	r1, [sp, #124]
	LDR 	r1, [r0, #44]
	STR 	r1, [sp, #128]
	LDR 	r1, [r0, #48]
	STR 	r1, [sp, #132]
	LDR 	r1, [r0, #52]
	STR 	r1, [sp, #136]
	LDR 	r1, [r0, #56]
	STR 	r1, [sp, #140]
	LDR 	r0, [r0, #60]
	STR 	r0, [sp, #144]
	LDR 	r0, [sp, #16]
	ADD 	r0, r0, #32
	LDR 	r1, [r0]
	STR 	r1, [sp, #212]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #216]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #220]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #224]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #228]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #232]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #236]
	LDR 	r0, [r0, #28]
	STR 	r0, [sp, #240]
	ADD 	r0, sp, #244
	LDR 	r1, [sp]
	LDR 	r1, [r1, #8]
	LDR 	r2, [r1]
	STR 	r2, [r0]
	LDR 	r2, [r1, #4]
	STR 	r2, [r0, #4]
	LDR 	r2, [r1, #8]
	STR 	r2, [r0, #8]
	LDR 	r2, [r1, #12]
	STR 	r2, [r0, #12]
	LDR 	r2, [r1, #16]
	STR 	r2, [r0, #16]
	LDR 	r2, [r1, #20]
	STR 	r2, [r0, #20]
	LDR 	r2, [r1, #24]
	STR 	r2, [r0, #24]
	LDR 	r1, [r1, #28]
	STR 	r1, [r0, #28]
	ADD 	r0, sp, #276
	LDR 	r1, [sp, #84]
	STR 	r1, [r0]
	LDR 	r1, [sp, #88]
	STR 	r1, [r0, #4]
	LDR 	r1, [sp, #92]
	STR 	r1, [r0, #8]
	LDR 	r1, [sp, #96]
	STR 	r1, [r0, #12]
	LDR 	r1, [sp, #100]
	STR 	r1, [r0, #16]
	LDR 	r1, [sp, #104]
	STR 	r1, [r0, #20]
	LDR 	r1, [sp, #108]
	STR 	r1, [r0, #24]
	LDR 	r1, [sp, #112]
	STR 	r1, [r0, #28]
	LDR 	r1, [sp, #116]
	STR 	r1, [r0, #32]
	LDR 	r1, [sp, #120]
	STR 	r1, [r0, #36]
	LDR 	r1, [sp, #124]
	STR 	r1, [r0, #40]
	LDR 	r1, [sp, #128]
	STR 	r1, [r0, #44]
	LDR 	r1, [sp, #132]
	STR 	r1, [r0, #48]
	LDR 	r1, [sp, #136]
	STR 	r1, [r0, #52]
	LDR 	r1, [sp, #140]
	STR 	r1, [r0, #56]
	LDR 	r1, [sp, #144]
	STR 	r1, [r0, #60]
	ADD 	r0, sp, #212
	MOV 	r1, #0
	MOV 	r2, #32
	b   	Lml_dsa_65_sign$304
Lml_dsa_65_sign$305:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_sign$304:
	CMP 	r2, #50
	bcc 	Lml_dsa_65_sign$305
	LDRB	r1, [r0, #128]
	EOR 	r1, r1, #31
	STRB	r1, [r0, #128]
	LDRB	r1, [r0, #135]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_sign$303:
	ADD 	sp, sp, #212
	ADD 	r1, sp, #148
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
	LDR 	r0, [r0, #60]
	STR 	r0, [r1, #60]
	MOV 	r0, #4294967295
	STR 	r0, [sp]
Lml_dsa_65_sign$2:
	LDR 	r0, [sp]
	ADD 	r0, r0, #1
	STR 	r0, [sp]
	ADDw	r0, sp, #2460
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$301
Lml_dsa_65_sign$302:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$301:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$302
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #3229
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$299
Lml_dsa_65_sign$300:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$299:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$300
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #3998
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$297
Lml_dsa_65_sign$298:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$297:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$298
	STRB	r1, [r0, #768]
	MOVw	r0, #4767
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$295
Lml_dsa_65_sign$296:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$295:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$296
	STRB	r1, [r0, #768]
	ADD 	r0, sp, #5536
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$293
Lml_dsa_65_sign$294:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$293:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$294
	STRB	r1, [r0, #768]
	MOVw	r0, #6305
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$291
Lml_dsa_65_sign$292:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_65_sign$291:
	CMP 	r2, #768
	bcc 	Lml_dsa_65_sign$292
	STRB	r1, [r0, #768]
	LDR 	r0, [sp]
	MOV 	r1, #5
	MUL 	r0, r1, r0
	MOV 	r2, r0
	ADDw	r0, sp, #1436
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$290:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$289:
	MOV 	r0, #0
	MOV 	r1, #0
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #2460
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$288:
	ADD 	sp, sp, #12
	MOV 	r0, #0
	MOV 	r1, #1
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3229
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$287:
	ADD 	sp, sp, #12
	MOV 	r0, #0
	MOV 	r1, #2
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3998
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$286:
	ADD 	sp, sp, #12
	MOV 	r0, #0
	MOV 	r1, #3
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$285:
	ADD 	sp, sp, #12
	MOV 	r0, #0
	MOV 	r1, #4
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #5536
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$284:
	ADD 	sp, sp, #12
	MOV 	r0, #0
	MOV 	r1, #5
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$283:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r1, #5
	MUL 	r0, r1, r0
	ADD 	r2, r0, #1
	ADDw	r0, sp, #1436
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$282:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$281:
	MOV 	r0, #1
	MOV 	r1, #0
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #2460
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$280:
	ADD 	sp, sp, #12
	MOV 	r0, #1
	MOV 	r1, #1
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3229
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$279:
	ADD 	sp, sp, #12
	MOV 	r0, #1
	MOV 	r1, #2
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3998
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$278:
	ADD 	sp, sp, #12
	MOV 	r0, #1
	MOV 	r1, #3
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$277:
	ADD 	sp, sp, #12
	MOV 	r0, #1
	MOV 	r1, #4
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #5536
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$276:
	ADD 	sp, sp, #12
	MOV 	r0, #1
	MOV 	r1, #5
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$275:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r1, #5
	MUL 	r0, r1, r0
	ADD 	r2, r0, #2
	ADDw	r0, sp, #1436
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$274:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$273:
	MOV 	r0, #2
	MOV 	r1, #0
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #2460
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$272:
	ADD 	sp, sp, #12
	MOV 	r0, #2
	MOV 	r1, #1
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3229
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$271:
	ADD 	sp, sp, #12
	MOV 	r0, #2
	MOV 	r1, #2
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3998
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$270:
	ADD 	sp, sp, #12
	MOV 	r0, #2
	MOV 	r1, #3
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$269:
	ADD 	sp, sp, #12
	MOV 	r0, #2
	MOV 	r1, #4
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #5536
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$268:
	ADD 	sp, sp, #12
	MOV 	r0, #2
	MOV 	r1, #5
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$267:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r1, #5
	MUL 	r0, r1, r0
	ADD 	r2, r0, #3
	ADDw	r0, sp, #1436
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$266:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$265:
	MOV 	r0, #3
	MOV 	r1, #0
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #2460
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$264:
	ADD 	sp, sp, #12
	MOV 	r0, #3
	MOV 	r1, #1
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3229
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$263:
	ADD 	sp, sp, #12
	MOV 	r0, #3
	MOV 	r1, #2
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3998
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$262:
	ADD 	sp, sp, #12
	MOV 	r0, #3
	MOV 	r1, #3
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$261:
	ADD 	sp, sp, #12
	MOV 	r0, #3
	MOV 	r1, #4
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #5536
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$260:
	ADD 	sp, sp, #12
	MOV 	r0, #3
	MOV 	r1, #5
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$259:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r1, #5
	MUL 	r0, r1, r0
	ADD 	r2, r0, #4
	ADDw	r0, sp, #1436
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$258:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$257:
	MOV 	r0, #4
	MOV 	r1, #0
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #2460
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$256:
	ADD 	sp, sp, #12
	MOV 	r0, #4
	MOV 	r1, #1
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3229
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$255:
	ADD 	sp, sp, #12
	MOV 	r0, #4
	MOV 	r1, #2
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADDw	r1, sp, #3998
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$254:
	ADD 	sp, sp, #12
	MOV 	r0, #4
	MOV 	r1, #3
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$253:
	ADD 	sp, sp, #12
	MOV 	r0, #4
	MOV 	r1, #4
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #5536
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$252:
	ADD 	sp, sp, #12
	MOV 	r0, #4
	MOV 	r1, #5
	ORR 	r2, r0, r1, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r0, sp, #212
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	MOV 	r12, r3
	ADDw	r3, sp, #1436
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_65_sign$251:
	ADD 	sp, sp, #12
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #2460
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$250:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$249:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$248:
	ADDw	r1, sp, #2460
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$247:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$246:
	LDR 	r3, [sp, #4]
	MOV 	r1, r3
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$245:
	STR 	r3, [sp, #12]
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #3229
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$244:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$243:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$242:
	ADDw	r1, sp, #3229
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$241:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$240:
	LDR 	r3, [sp, #12]
	ADD 	r1, r3, #128
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$239:
	STR 	r3, [sp, #12]
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #3998
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$238:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$237:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$236:
	ADDw	r1, sp, #3998
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$235:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$234:
	LDR 	r3, [sp, #12]
	ADD 	r1, r3, #256
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$233:
	STR 	r3, [sp, #12]
	ADDw	r1, sp, #1436
	MOVw	r2, #4767
	ADD 	r2, sp, r2
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$232:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$231:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$230:
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$229:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$228:
	LDR 	r3, [sp, #12]
	ADD 	r1, r3, #384
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$227:
	STR 	r3, [sp, #12]
	ADDw	r1, sp, #1436
	ADD 	r2, sp, #5536
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$226:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$225:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$224:
	ADD 	r1, sp, #5536
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$223:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$222:
	LDR 	r3, [sp, #12]
	ADD 	r1, r3, #512
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$221:
	STR 	r3, [sp, #12]
	ADDw	r1, sp, #1436
	MOVw	r2, #6305
	ADD 	r2, sp, r2
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_65_sign$220:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$219:
	ADDw	r1, sp, #1436
	bl  	L_poly_caddq$1
Lml_dsa_65_sign$218:
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$217:
	ADDw	r0, sp, #1436
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_65_sign$216:
	LDR 	r3, [sp, #12]
	ADD 	r1, r3, #640
	ADDw	r0, sp, #1436
	bl  	L_polyw1_pack$1
Lml_dsa_65_sign$215:
	STR 	r3, [sp, #12]
	ADD 	r0, sp, #212
	ADD 	r1, sp, #84
	MOV 	r2, #0
	b   	Lml_dsa_65_sign$213
Lml_dsa_65_sign$214:
	LDR 	r3, [r1, r2, lsl #2]
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_sign$213:
	CMP 	r2, #16
	bcc 	Lml_dsa_65_sign$214
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_65_sign$211
Lml_dsa_65_sign$212:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_sign$211:
	CMP 	r2, #50
	bcc 	Lml_dsa_65_sign$212
	LDR 	r2, [sp, #12]
	MOV 	r1, #64
	MOV 	r12, r2
	MOV 	lr, #0
	b   	Lml_dsa_65_sign$207
Lml_dsa_65_sign$208:
	LDRB	r2, [r12, lr]
	LDRB	r3, [r0, r1]
	EOR 	r2, r3, r2
	STRB	r2, [r0, r1]
	ADD 	r1, r1, #1
	ADD 	lr, lr, #1
	CMP 	r1, #136
	bne 	Lml_dsa_65_sign$207
	STR 	lr, [sp, #8]
	STR 	r12, [sp, #20]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_sign$210:
	ADD 	sp, sp, #212
	LDR 	lr, [sp, #8]
	LDR 	r12, [sp, #20]
	MOV 	r1, #0
Lml_dsa_65_sign$209:
Lml_dsa_65_sign$207:
	CMP 	lr, #768
	bne 	Lml_dsa_65_sign$208
	bl  	L_shake256_add_block_end$1
Lml_dsa_65_sign$206:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_sign$205:
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
	LDR 	r0, [r0, #44]
	STR 	r0, [r1, #44]
	ADD 	r0, sp, #212
	ADDw	r2, sp, #1436
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_65_sign$204:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #24
	ADDw	r2, sp, #1436
	bl  	L_poly_compress_challenge$1
Lml_dsa_65_sign$203:
	MOV 	r0, #0
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$189
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$202:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$201:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #128
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$199
Lml_dsa_65_sign$200:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$199:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$200
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$198:
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$197:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$196:
	MOV 	r0, #5
	LDR 	r1, [sp]
	MUL 	r0, r0, r1
	MOV 	r2, r0
	ADD 	r0, sp, #412
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$195:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_add_inplace$1
Lml_dsa_65_sign$194:
	ADDw	r1, sp, #1436
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$193:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$192:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$189
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #48
	ADDw	r2, sp, #1436
	bl  	L_polyz_pack$1
Lml_dsa_65_sign$191:
Lml_dsa_65_sign$190:
Lml_dsa_65_sign$189:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$175
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$188:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$187:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #256
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$185
Lml_dsa_65_sign$186:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$185:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$186
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$184:
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$183:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$182:
	MOV 	r0, #5
	LDR 	r1, [sp]
	MUL 	r0, r0, r1
	ADD 	r2, r0, #1
	ADD 	r0, sp, #412
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$181:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_add_inplace$1
Lml_dsa_65_sign$180:
	ADDw	r1, sp, #1436
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$179:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$178:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$175
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #688
	ADDw	r2, sp, #1436
	bl  	L_polyz_pack$1
Lml_dsa_65_sign$177:
Lml_dsa_65_sign$176:
Lml_dsa_65_sign$175:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$161
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$174:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$173:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #384
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$171
Lml_dsa_65_sign$172:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$171:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$172
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$170:
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$169:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$168:
	MOV 	r0, #5
	LDR 	r1, [sp]
	MUL 	r0, r0, r1
	ADD 	r2, r0, #2
	ADD 	r0, sp, #412
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$167:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_add_inplace$1
Lml_dsa_65_sign$166:
	ADDw	r1, sp, #1436
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$165:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$164:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$161
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1328
	ADDw	r2, sp, #1436
	bl  	L_polyz_pack$1
Lml_dsa_65_sign$163:
Lml_dsa_65_sign$162:
Lml_dsa_65_sign$161:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$147
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$160:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$159:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #512
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$157
Lml_dsa_65_sign$158:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$157:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$158
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$156:
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$155:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$154:
	MOV 	r0, #5
	LDR 	r1, [sp]
	MUL 	r0, r0, r1
	ADD 	r2, r0, #3
	ADD 	r0, sp, #412
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$153:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_add_inplace$1
Lml_dsa_65_sign$152:
	ADDw	r1, sp, #1436
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$151:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$150:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$147
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1968
	ADDw	r2, sp, #1436
	bl  	L_polyz_pack$1
Lml_dsa_65_sign$149:
Lml_dsa_65_sign$148:
Lml_dsa_65_sign$147:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$133
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$146:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$145:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #640
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$143
Lml_dsa_65_sign$144:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$143:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$144
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$142:
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$141:
	ADDw	r1, sp, #1436
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$140:
	MOV 	r0, #5
	LDR 	r1, [sp]
	MUL 	r0, r0, r1
	ADD 	r2, r0, #4
	ADD 	r0, sp, #412
	ADD 	r3, sp, #148
	SUB 	sp, sp, #224
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_65_sign$139:
	ADD 	sp, sp, #220
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #412
	bl  	L_poly_add_inplace$1
Lml_dsa_65_sign$138:
	ADDw	r1, sp, #1436
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$137:
	MOVw	r1, #65340
	MOVT	r1, #7
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$136:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$133
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #2608
	ADDw	r2, sp, #1436
	bl  	L_polyz_pack$1
Lml_dsa_65_sign$135:
Lml_dsa_65_sign$134:
Lml_dsa_65_sign$133:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$3
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$120
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$132:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$131:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #768
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$129
Lml_dsa_65_sign$130:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$129:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$130
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$128:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$127:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$126:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #2460
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$125:
	ADDw	r1, sp, #2460
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$124:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$123:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$122:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$121:
Lml_dsa_65_sign$120:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$107
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$119:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$118:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #896
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$116
Lml_dsa_65_sign$117:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$116:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$117
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$115:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$114:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$113:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #3229
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$112:
	ADDw	r1, sp, #3229
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$111:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$110:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$109:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$108:
Lml_dsa_65_sign$107:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$94
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$106:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$105:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #1024
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$103
Lml_dsa_65_sign$104:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$103:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$104
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$102:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$101:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$100:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #3998
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$99:
	ADDw	r1, sp, #3998
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$98:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$97:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$96:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$95:
Lml_dsa_65_sign$94:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$81
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$93:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$92:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #1152
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$90
Lml_dsa_65_sign$91:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$90:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$91
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$89:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$88:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$87:
	ADD 	r0, sp, #412
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$86:
	MOVw	r1, #4767
	ADD 	r1, sp, r1
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$85:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$84:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$83:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$82:
Lml_dsa_65_sign$81:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$68
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$80:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$79:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #1280
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$77
Lml_dsa_65_sign$78:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$77:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$78
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$76:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$75:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$74:
	ADD 	r0, sp, #412
	ADD 	r1, sp, #5536
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$73:
	ADD 	r1, sp, #5536
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$72:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$71:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$70:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$69:
Lml_dsa_65_sign$68:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$55
	ADDw	r0, sp, #1436
	ADD 	r1, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_65_sign$67:
	ADDw	r0, sp, #1436
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$66:
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #412
	ADD 	r0, r0, #1408
	MOV 	r2, #0
	MOV 	r3, #0
	b   	Lml_dsa_65_sign$64
Lml_dsa_65_sign$65:
	LDRB	r12, [r0, r3]
	AND 	lr, r12, #15
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #4
	MOV 	lr, #4
	SUB 	r12, lr, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	ADD 	r3, r3, #1
Lml_dsa_65_sign$64:
	CMP 	r2, #256
	bcc 	Lml_dsa_65_sign$65
	ADD 	r0, sp, #412
	bl  	L_poly_ntt$1
Lml_dsa_65_sign$63:
	ADD 	r0, sp, #412
	ADDw	r1, sp, #1436
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_sign$62:
	ADD 	r1, sp, #412
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_sign$61:
	ADD 	r0, sp, #412
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_65_sign$60:
	MOVw	r1, #6305
	ADD 	r1, sp, r1
	ADD 	r2, sp, #412
	bl  	L_poly_compress_w1_element$1
Lml_dsa_65_sign$59:
	ADD 	r0, sp, #412
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_65_sign$58:
	ADD 	r1, sp, #412
	bl  	L_poly_reduce$1
Lml_dsa_65_sign$57:
	MOVw	r1, #65084
	MOVT	r1, #3
	ADD 	r2, sp, #412
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$56:
Lml_dsa_65_sign$55:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$5
	MOV 	r1, #0
	MOV 	r2, #0
	STR 	r1, [sp, #12]
	STR 	r2, [sp, #20]
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$48
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #1536
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$54:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$53:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$48
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #2460
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$52:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$48
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #0
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$51:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$50:
Lml_dsa_65_sign$49:
Lml_dsa_65_sign$48:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$41
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #1952
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$47:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$46:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$41
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #3229
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$45:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$41
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #1
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$44:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$43:
Lml_dsa_65_sign$42:
Lml_dsa_65_sign$41:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$34
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #2368
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$40:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$39:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$34
	ADDw	r1, sp, #1436
	ADDw	r2, sp, #3998
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$38:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$34
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #2
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$37:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$36:
Lml_dsa_65_sign$35:
Lml_dsa_65_sign$34:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$27
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #2784
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$33:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$32:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$27
	ADDw	r1, sp, #1436
	MOVw	r2, #4767
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$31:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$27
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #3
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$30:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$29:
Lml_dsa_65_sign$28:
Lml_dsa_65_sign$27:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$20
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #3200
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$26:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$25:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$20
	ADDw	r1, sp, #1436
	ADD 	r2, sp, #5536
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$24:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$20
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #4
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$23:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$22:
Lml_dsa_65_sign$21:
Lml_dsa_65_sign$20:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$13
	LDR 	r0, [sp, #16]
	ADDw	r8, sp, #1436
	ADD 	r10, r0, #3616
	ADD 	r7, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_65_sign$19:
	MOVw	r1, #65280
	MOVT	r1, #3
	ADDw	r2, sp, #1436
	bl  	L_poly_check_norm$1
Lml_dsa_65_sign$18:
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$13
	ADDw	r1, sp, #1436
	MOVw	r2, #6305
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_65_sign$17:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r8
	STR 	r1, [sp, #12]
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$13
	LDR 	r2, [sp, #20]
	LDR 	r3, [sp, #4]
	MOV 	r1, #5
	ADD 	r3, r3, #3248
	ADDw	r12, sp, #1436
	bl  	L_pack_hint_element$1
Lml_dsa_65_sign$16:
	STR 	r2, [sp, #20]
Lml_dsa_65_sign$15:
Lml_dsa_65_sign$14:
Lml_dsa_65_sign$13:
	LDR 	r1, [sp, #12]
	CMP 	r0, #0
	bne 	Lml_dsa_65_sign$7
	CMP 	r1, #55
	bhi 	Lml_dsa_65_sign$9
	MOV 	r0, #0
	MOVw	r1, #3248
	LDR 	r2, [sp, #20]
	ADD 	r1, r1, r2
	LDR 	r3, [sp, #4]
	b   	Lml_dsa_65_sign$11
Lml_dsa_65_sign$12:
	STRB	r0, [r3, r1]
	ADD 	r1, r1, #1
	ADD 	r2, r2, #1
Lml_dsa_65_sign$11:
	CMP 	r2, #55
	bcc 	Lml_dsa_65_sign$12
	b   	Lml_dsa_65_sign$4
Lml_dsa_65_sign$9:
	MOV 	r0, #1
Lml_dsa_65_sign$10:
	b   	Lml_dsa_65_sign$4
Lml_dsa_65_sign$7:
	MOV 	r0, #1
Lml_dsa_65_sign$8:
	b   	Lml_dsa_65_sign$4
Lml_dsa_65_sign$5:
	MOV 	r0, #1
Lml_dsa_65_sign$6:
	b   	Lml_dsa_65_sign$4
Lml_dsa_65_sign$3:
	MOV 	r0, #1
Lml_dsa_65_sign$4:
	CMP 	r0, #1
	beq 	Lml_dsa_65_sign$2
	MOV 	r0, #0
Lml_dsa_65_sign$1:
	MOVw	lr, #7076
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
_ml_dsa_65_keygen:
ml_dsa_65_keygen:
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
	MOV 	r1, #0
	b   	Lml_dsa_65_keygen$238
Lml_dsa_65_keygen$239:
	LDR 	r3, [r2, r1, lsl #2]
	STR 	r3, [r0, r1, lsl #2]
	ADD 	r1, r1, #1
Lml_dsa_65_keygen$238:
	CMP 	r1, #8
	bcc 	Lml_dsa_65_keygen$239
	MOV 	r1, #0
	MOV 	r2, #8
	b   	Lml_dsa_65_keygen$236
Lml_dsa_65_keygen$237:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_65_keygen$236:
	CMP 	r2, #50
	bcc 	Lml_dsa_65_keygen$237
	MOV 	r1, #6
	STRB	r1, [r0, #32]
	MOV 	r1, #5
	STRB	r1, [r0, #33]
	LDRB	r1, [r0, #34]
	EOR 	r1, r1, #31
	STRB	r1, [r0, #34]
	LDRB	r1, [r0, #135]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_65_keygen$235:
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
	LDR 	r0, [sp, #4]
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
	ADD 	r1, r0, #32
	LDR 	r2, [sp, #168]
	STR 	r2, [r1]
	LDR 	r2, [sp, #172]
	STR 	r2, [r1, #4]
	LDR 	r2, [sp, #176]
	STR 	r2, [r1, #8]
	LDR 	r2, [sp, #180]
	STR 	r2, [r1, #12]
	LDR 	r2, [sp, #184]
	STR 	r2, [r1, #16]
	LDR 	r2, [sp, #188]
	STR 	r2, [r1, #20]
	LDR 	r2, [sp, #192]
	STR 	r2, [r1, #24]
	LDR 	r2, [sp, #196]
	STR 	r2, [r1, #28]
	STR 	r0, [sp, #4]
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
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$234:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #128
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$233:
	STR 	r6, [sp, #4]
	MOV 	r0, #0
	MOV 	r1, #0
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$232:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$231:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$230:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$229:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$228:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #256
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$227:
	STR 	r6, [sp, #4]
	MOV 	r0, #1
	MOV 	r1, #0
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$226:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$225:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$224:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$223:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$222:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$221:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #384
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$220:
	STR 	r6, [sp, #4]
	MOV 	r0, #2
	MOV 	r1, #0
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$219:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$218:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$217:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$216:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$215:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$214:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #512
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$213:
	STR 	r6, [sp, #4]
	MOV 	r0, #3
	MOV 	r1, #0
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$212:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$211:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$210:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$209:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$208:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$207:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #640
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$206:
	STR 	r6, [sp, #4]
	MOV 	r0, #4
	MOV 	r1, #0
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$205:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$204:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$203:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$202:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$201:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$200:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$199:
	MOV 	r2, #5
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$198:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #768
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$197:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$196:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$195:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$194:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #1536
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$193:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #32
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$192:
	STR 	r7, [sp]
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$191:
	ADD 	sp, sp, #204
	MOV 	r0, #0
	MOV 	r1, #1
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$190:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$189:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$188:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$187:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$186:
	ADD 	sp, sp, #204
	MOV 	r0, #1
	MOV 	r1, #1
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$185:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$184:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$183:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$182:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$181:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$180:
	ADD 	sp, sp, #204
	MOV 	r0, #2
	MOV 	r1, #1
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$179:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$178:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$177:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$176:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$175:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$174:
	ADD 	sp, sp, #204
	MOV 	r0, #3
	MOV 	r1, #1
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$173:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$172:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$171:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$170:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$169:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$168:
	ADD 	sp, sp, #204
	MOV 	r0, #4
	MOV 	r1, #1
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$167:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$166:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$165:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$164:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$163:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$162:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$161:
	MOV 	r2, #6
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$160:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #896
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$159:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$158:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$157:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$156:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #1952
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$155:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #352
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$154:
	STR 	r7, [sp]
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$153:
	ADD 	sp, sp, #204
	MOV 	r0, #0
	MOV 	r1, #2
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$152:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$151:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$150:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$149:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$148:
	ADD 	sp, sp, #204
	MOV 	r0, #1
	MOV 	r1, #2
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$147:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$146:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$145:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$144:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$143:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$142:
	ADD 	sp, sp, #204
	MOV 	r0, #2
	MOV 	r1, #2
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$141:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$140:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$139:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$138:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$137:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$136:
	ADD 	sp, sp, #204
	MOV 	r0, #3
	MOV 	r1, #2
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$135:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$134:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$133:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$132:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$131:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$130:
	ADD 	sp, sp, #204
	MOV 	r0, #4
	MOV 	r1, #2
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$129:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$128:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$127:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$126:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$125:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$124:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$123:
	MOV 	r2, #7
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$122:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #1024
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$121:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$120:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$119:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$118:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #2368
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$117:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #672
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$116:
	STR 	r7, [sp]
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$115:
	ADD 	sp, sp, #204
	MOV 	r0, #0
	MOV 	r1, #3
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$114:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$113:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$112:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$111:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$110:
	ADD 	sp, sp, #204
	MOV 	r0, #1
	MOV 	r1, #3
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$109:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$108:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$107:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$106:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$105:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$104:
	ADD 	sp, sp, #204
	MOV 	r0, #2
	MOV 	r1, #3
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$103:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$102:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$101:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$100:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$99:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$98:
	ADD 	sp, sp, #204
	MOV 	r0, #3
	MOV 	r1, #3
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$97:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$96:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$95:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$94:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$93:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$92:
	ADD 	sp, sp, #204
	MOV 	r0, #4
	MOV 	r1, #3
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$91:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$90:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$89:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$88:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$87:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$86:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$85:
	MOV 	r2, #8
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$84:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #1152
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$83:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$82:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$81:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$80:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #2784
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$79:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #992
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$78:
	STR 	r7, [sp]
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$77:
	ADD 	sp, sp, #204
	MOV 	r0, #0
	MOV 	r1, #4
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$76:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$75:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$74:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$73:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$72:
	ADD 	sp, sp, #204
	MOV 	r0, #1
	MOV 	r1, #4
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$71:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$70:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$69:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$68:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$67:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$66:
	ADD 	sp, sp, #204
	MOV 	r0, #2
	MOV 	r1, #4
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$65:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$64:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$63:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$62:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$61:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$60:
	ADD 	sp, sp, #204
	MOV 	r0, #3
	MOV 	r1, #4
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$59:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$58:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$57:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$56:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$55:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$54:
	ADD 	sp, sp, #204
	MOV 	r0, #4
	MOV 	r1, #4
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$53:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$52:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$51:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$50:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$49:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$48:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$47:
	MOV 	r2, #9
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$46:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #1280
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$45:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$44:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$43:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$42:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #3200
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$41:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #1312
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$40:
	STR 	r7, [sp]
	MOV 	r2, #0
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$39:
	ADD 	sp, sp, #204
	MOV 	r0, #0
	MOV 	r1, #5
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$38:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$37:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$36:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_65_keygen$35:
	MOV 	r2, #1
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$34:
	ADD 	sp, sp, #204
	MOV 	r0, #1
	MOV 	r1, #5
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$33:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$32:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$31:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$30:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$29:
	MOV 	r2, #2
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$28:
	ADD 	sp, sp, #204
	MOV 	r0, #2
	MOV 	r1, #5
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$27:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$26:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$25:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$24:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$23:
	MOV 	r2, #3
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$22:
	ADD 	sp, sp, #204
	MOV 	r0, #3
	MOV 	r1, #5
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$21:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$20:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$19:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$18:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$17:
	MOV 	r2, #4
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$16:
	ADD 	sp, sp, #204
	MOV 	r0, #4
	MOV 	r1, #5
	ORR 	r1, r0, r1, lsl #8
	LDR 	r2, [sp, #4]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_init_xof_for_element_of_A$1
Lml_dsa_65_keygen$15:
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_65_keygen$14:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_65_keygen$13:
	ADD 	r0, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_65_keygen$12:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$11:
	ADD 	r1, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_65_keygen$10:
	ADD 	r1, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_65_keygen$9:
	MOV 	r2, #10
	ADD 	r0, sp, #2320
	ADD 	r3, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_65_keygen$8:
	ADD 	sp, sp, #204
	LDR 	r6, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r6, #1408
	bl  	L_poly_eta_pack$1
Lml_dsa_65_keygen$7:
	STR 	r6, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_65_keygen$6:
	ADD 	r1, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_65_keygen$5:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_65_keygen$4:
	LDR 	r7, [sp, #4]
	ADD 	r11, sp, #2320
	ADD 	r10, r7, #3616
	bl  	L_polyt0_pack$1
Lml_dsa_65_keygen$3:
	STR 	r7, [sp, #4]
	LDR 	r7, [sp]
	ADD 	r0, sp, #272
	ADD 	r1, r7, #1632
	bl  	L_polyt1_pack$1
Lml_dsa_65_keygen$2:
	STR 	r7, [sp]
	LDR 	r1, [sp]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_65_keygen$1:
	ADD 	sp, sp, #8
	LDR 	r0, [sp, #4]
	ADD 	r0, r0, #64
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
	MOV 	r3, #0
	MOV 	r12, #0
	MOV 	r4, #0
	CMP 	r1, #0
	bls 	L_unpack_hint_at_index$14
	MOV 	r3, #54
	ADD 	r3, r3, r1
	LDRB	r3, [r2, r3]
L_unpack_hint_at_index$14:
	MOV 	r5, #55
	ADD 	r1, r5, r1
	LDRB	r1, [r2, r1]
	CMP 	r1, r3
	bcc 	L_unpack_hint_at_index$5
	CMP 	r1, #55
	bhi 	L_unpack_hint_at_index$7
	MOV 	r5, r3
	b   	L_unpack_hint_at_index$9
L_unpack_hint_at_index$10:
	LDRB	r6, [r2, r5]
	CMP 	r5, r3
	bls 	L_unpack_hint_at_index$12
	MOV 	r7, r5
	SUB 	r7, r7, #1
	LDRB	r7, [r2, r7]
	CMP 	r6, r7
	bhi 	L_unpack_hint_at_index$12
	MOV 	r12, #1
L_unpack_hint_at_index$13:
L_unpack_hint_at_index$12:
	CMP 	r12, #0
	bne 	L_unpack_hint_at_index$11
	STRB	r6, [r0, r4]
	ADD 	r4, r4, #1
L_unpack_hint_at_index$11:
	ADD 	r5, r5, #1
L_unpack_hint_at_index$9:
	CMP 	r5, r1
	MOV 	r6, r12
	it  	cs
	MOVcs	r6, #1
	CMP 	r6, #0
	beq 	L_unpack_hint_at_index$10
	b   	L_unpack_hint_at_index$6
L_unpack_hint_at_index$7:
	MOV 	r12, #1
L_unpack_hint_at_index$8:
	b   	L_unpack_hint_at_index$6
L_unpack_hint_at_index$5:
	MOV 	r12, #1
L_unpack_hint_at_index$6:
	LDRB	r0, [r2, #60]
	b   	L_unpack_hint_at_index$2
L_unpack_hint_at_index$3:
	LDRB	r1, [r2, r0]
	CMP 	r1, #0
	beq 	L_unpack_hint_at_index$4
	MOV 	r12, #1
L_unpack_hint_at_index$4:
	ADD 	r0, r0, #1
L_unpack_hint_at_index$2:
	CMP 	r0, #55
	MOV 	r1, r12
	it  	cs
	MOVcs	r1, #1
	CMP 	r1, #0
	beq 	L_unpack_hint_at_index$3
	bx  	lr
L_pack_hint_element$1:
	MOV 	r4, #0
	b   	L_pack_hint_element$2
L_pack_hint_element$3:
	LDR 	r5, [r12, r4, lsl #2]
	CMP 	r5, #0
	beq 	L_pack_hint_element$4
	STRB	r4, [r3, r2]
	ADD 	r2, r2, #1
L_pack_hint_element$4:
	ADD 	r4, r4, #1
L_pack_hint_element$2:
	CMP 	r4, #256
	bcc 	L_pack_hint_element$3
	MOV 	r12, #55
	ADD 	r1, r12, r1
	STRB	r2, [r3, r1]
	bx  	lr
L_poly_decompress_challenge$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_poly_decompress_challenge$10
L_poly_decompress_challenge$11:
	STR 	r2, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_decompress_challenge$10:
	CMP 	r3, #256
	bcc 	L_poly_decompress_challenge$11
	LDR 	r2, [r1, #49]
	MOV 	r3, #0
	b   	L_poly_decompress_challenge$6
L_poly_decompress_challenge$7:
	LDRB	r12, [r1, r3]
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
	STR 	r4, [r0, r12, lsl #2]
L_poly_decompress_challenge$6:
	CMP 	r3, #32
	bcc 	L_poly_decompress_challenge$7
	LDR 	r2, [r1, #53]
	b   	L_poly_decompress_challenge$2
L_poly_decompress_challenge$3:
	LDRB	r12, [r1, r3]
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
	STR 	r4, [r0, r12, lsl #2]
L_poly_decompress_challenge$2:
	CMP 	r3, #49
	bcc 	L_poly_decompress_challenge$3
	bx  	lr
L_poly_compress_challenge$1:
	MOV 	r7, #0
	MOV 	r6, #0
	MOV 	r5, #1
	MOV 	r4, #0
	MOV 	r3, #0
	b   	L_poly_compress_challenge$6
L_poly_compress_challenge$7:
	LDR 	r12, [r2, r3, lsl #2]
	CMP 	r12, #0
	beq 	L_poly_compress_challenge$8
	STRB	r3, [r1, r7]
	ADD 	r7, r7, #1
	CMP 	r12, #4294967295
	bne 	L_poly_compress_challenge$9
	ORR 	r4, r4, r5
L_poly_compress_challenge$9:
	LSL 	r5, r5, #1
	ADD 	r6, r6, #1
L_poly_compress_challenge$8:
	ADD 	r3, r3, #1
L_poly_compress_challenge$6:
	CMP 	r6, #32
	bcc 	L_poly_compress_challenge$7
	STR 	r4, [r1, #49]
	MOV 	r5, #1
	MOV 	r4, #0
	b   	L_poly_compress_challenge$2
L_poly_compress_challenge$3:
	LDR 	r12, [r2, r3, lsl #2]
	CMP 	r12, #0
	beq 	L_poly_compress_challenge$4
	STRB	r3, [r1, r7]
	ADD 	r7, r7, #1
	CMP 	r12, #4294967295
	bne 	L_poly_compress_challenge$5
	ORR 	r4, r4, r5
L_poly_compress_challenge$5:
	LSL 	r5, r5, #1
L_poly_compress_challenge$4:
	ADD 	r3, r3, #1
L_poly_compress_challenge$2:
	CMP 	r3, #256
	bcc 	L_poly_compress_challenge$3
	STR 	r4, [r1, #53]
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
	UBFX	lr, r0, #0, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$29
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$29:
	UBFX	lr, r0, #4, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$28
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$28:
	UBFX	lr, r0, #8, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$27
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$27:
	UBFX	lr, r0, #12, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$26
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$26:
	UBFX	lr, r0, #16, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$25
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$25:
	UBFX	lr, r0, #20, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$24
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$24:
	UBFX	lr, r0, #24, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$23
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$23:
	UBFX	r0, r0, #28, #4
	CMP 	r0, #9
	bcs 	L_poly_uniform_eta$20
	MOV 	lr, #4
	SUB 	r0, lr, r0
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
	UBFX	lr, r0, #0, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$18
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$18:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$16
	UBFX	lr, r0, #4, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$16
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$17:
L_poly_uniform_eta$16:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$14
	UBFX	lr, r0, #8, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$14
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$15:
L_poly_uniform_eta$14:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$12
	UBFX	lr, r0, #12, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$12
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$13:
L_poly_uniform_eta$12:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$10
	UBFX	lr, r0, #16, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$10
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$11:
L_poly_uniform_eta$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$8
	UBFX	lr, r0, #20, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$8
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$9:
L_poly_uniform_eta$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$6
	UBFX	lr, r0, #24, #4
	CMP 	lr, #9
	bcs 	L_poly_uniform_eta$6
	MOV 	r4, #4
	SUB 	lr, r4, lr
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$7:
L_poly_uniform_eta$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$2
	UBFX	r0, r0, #28, #4
	CMP 	r0, #9
	bcs 	L_poly_uniform_eta$2
	MOV 	lr, #4
	SUB 	r0, lr, r0
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
	UBFX	r5, r6, #0, #23
	CMP 	r5, r3
	bcs 	L_poly_uniform$17
	STR 	r5, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$17:
	LSR 	r5, r6, #24
	ORR 	r5, r5, lr, lsl #8
	UBFX	r5, r5, #0, #23
	CMP 	r5, r3
	bcs 	L_poly_uniform$16
	STR 	r5, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$16:
	LSR 	lr, lr, #16
	ORR 	lr, lr, r4, lsl #16
	UBFX	lr, lr, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$15
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$15:
	UBFX	lr, r4, #8, #23
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
	UBFX	r5, r6, #0, #23
	CMP 	r5, r3
	bcs 	L_poly_uniform$10
	STR 	r5, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform$8
	LSR 	r5, r6, #24
	ORR 	r5, r5, lr, lsl #8
	UBFX	r5, r5, #0, #23
	CMP 	r5, r3
	bcs 	L_poly_uniform$8
	STR 	r5, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$9:
L_poly_uniform$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform$6
	LSR 	lr, lr, #16
	ORR 	lr, lr, r4, lsl #16
	UBFX	lr, lr, #0, #23
	CMP 	lr, r3
	bcs 	L_poly_uniform$6
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$7:
L_poly_uniform$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform$2
	UBFX	lr, r4, #8, #23
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
	MOV 	r1, #0
	b   	L_poly_low_bits_inplace$2
L_poly_low_bits_inplace$3:
	LDR 	r3, [r0, r1, lsl #2]
	MOVw	r2, #57345
	MOVT	r2, #127
	ADD 	r12, r3, #127
	ASR 	r12, r12, #7
	ADD 	r12, r12, r12, lsl #10
	ADD 	r12, r12, #2097152
	UBFX	r12, r12, #22, #4
	SUB 	r12, r12, r12, lsl #10
	ADD 	r3, r3, r12, lsl #9
	MOVw	r12, #1023
	LSL 	r12, r12, #12
	SUB 	r12, r12, r3
	AND 	r2, r2, r12, asr #31
	SUB 	r2, r3, r2
	STR 	r2, [r0, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_low_bits_inplace$2:
	CMP 	r1, #256
	bcc 	L_poly_low_bits_inplace$3
	bx  	lr
L_poly_high_bits_inplace$1:
	MOV 	r1, #0
	b   	L_poly_high_bits_inplace$2
L_poly_high_bits_inplace$3:
	LDR 	r2, [r0, r1, lsl #2]
	ADD 	r2, r2, #127
	ASR 	r2, r2, #7
	ADD 	r2, r2, r2, lsl #10
	ADD 	r2, r2, #2097152
	UBFX	r2, r2, #22, #4
	STR 	r2, [r0, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_high_bits_inplace$2:
	CMP 	r1, #256
	bcc 	L_poly_high_bits_inplace$3
	bx  	lr
L_poly_subtract_from_compressed_w1_element$1:
	MOVw	r2, #65535
	MOVT	r2, #255
	MOV 	r3, #0
	b   	L_poly_subtract_from_compressed_w1_element$2
L_poly_subtract_from_compressed_w1_element$3:
	MOV 	r12, #3
	MUL 	r12, r12, r3
	LDR 	r12, [r1, r12]
	AND 	r12, r12, r2
	LDR 	r4, [r0, r3, lsl #2]
	SUB 	r12, r12, r4
	STR 	r12, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_subtract_from_compressed_w1_element$2:
	CMP 	r3, #256
	bcc 	L_poly_subtract_from_compressed_w1_element$3
	bx  	lr
L_poly_compress_w1_element$1:
	MOV 	r3, #0
	b   	L_poly_compress_w1_element$2
L_poly_compress_w1_element$3:
	MOV 	r12, #3
	MUL 	r12, r12, r3
	LDR 	r4, [r2, r3, lsl #2]
	ADD 	r3, r3, #1
	STR 	r4, [r1, r12]
L_poly_compress_w1_element$2:
	CMP 	r3, #256
	bcc 	L_poly_compress_w1_element$3
	bx  	lr
L_poly_decompress_w1_element$1:
	MOVw	r3, #65535
	MOVT	r3, #255
	MOV 	r12, #0
	b   	L_poly_decompress_w1_element$2
L_poly_decompress_w1_element$3:
	MOV 	r4, #3
	MUL 	r4, r4, r12
	LDR 	r4, [r2, r4]
	AND 	r4, r4, r3
	STR 	r4, [r1, r12, lsl #2]
	ADD 	r12, r12, #1
L_poly_decompress_w1_element$2:
	CMP 	r12, #256
	bcc 	L_poly_decompress_w1_element$3
	bx  	lr
L_poly_compute_A_times_polynomial$1:
	STR 	lr, [sp]
	STR 	r3, [sp, #4]
	STR 	r1, [sp, #8]
	bl  	L_prepare_xof_for_element_of_A$1
L_poly_compute_A_times_polynomial$11:
	MOV 	r2, #0
	b   	L_poly_compute_A_times_polynomial$2
L_poly_compute_A_times_polynomial$3:
	STR 	r2, [sp, #12]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_compute_A_times_polynomial$10:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #12]
	MOV 	r3, #0
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$5:
	CMP 	r2, #256
	bcc 	L_poly_compute_A_times_polynomial$6
	MOV 	r3, #168
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$6:
	LDR 	r1, [r0, r3]
	ADD 	r3, r3, #3
	MOVw	r12, #65535
	MOVT	r12, #127
	AND 	r1, r1, r12
	MOVw	r12, #57345
	MOVT	r12, #127
	CMP 	r1, r12
	bcs 	L_poly_compute_A_times_polynomial$4
	LDR 	r12, [sp, #4]
	LDR 	r12, [r12, r2, lsl #2]
	SMULL	r1, r12, r1, r12
	MOVw	lr, #8191
	MOVT	lr, #65408
	LSL 	r4, r1, #3
	SUB 	r4, r4, r1
	ADD 	r4, r1, r4, lsl #10
	ADD 	r4, r1, r4, lsl #13
	SMLAL	r1, r12, r4, lr
	MOV 	r4, r12
	LDR 	r1, [sp, #8]
	SUB 	sp, sp, #4
	bl  	L_poly_add_to_compressed_product_at_index$1
L_poly_compute_A_times_polynomial$9:
	ADD 	r2, r2, #1
L_poly_compute_A_times_polynomial$8:
L_poly_compute_A_times_polynomial$7:
L_poly_compute_A_times_polynomial$4:
	CMP 	r3, #168
	bcc 	L_poly_compute_A_times_polynomial$5
L_poly_compute_A_times_polynomial$2:
	CMP 	r2, #256
	bcc 	L_poly_compute_A_times_polynomial$3
	pop 	{pc}
L_poly_add_to_compressed_product_at_index$1:
	STR 	lr, [sp]
	MOVw	lr, #65535
	MOVT	lr, #255
	MOV 	r12, #3
	MUL 	r12, r12, r2
	LDR 	r5, [r1, r12]
	AND 	lr, r5, lr
	ADD 	r4, lr, r4
	bl  	L_freeze$1
L_poly_add_to_compressed_product_at_index$2:
	STRH	r4, [r1, r12]
	LSR 	lr, r4, #16
	ADD 	r12, r12, #2
	STRB	lr, [r1, r12]
	pop 	{pc}
L_poly_schoolbook_multiply_t0_by_challenge$1:
	STR 	lr, [sp]
	MOV 	r0, #0
	MOV 	r1, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$34
L_poly_schoolbook_multiply_t0_by_challenge$35:
	STR 	r1, [r8, r0, lsl #2]
	ADD 	r0, r0, #1
L_poly_schoolbook_multiply_t0_by_challenge$34:
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$35
	LDR 	r5, [r7, #49]
	MOV 	r6, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$19:
	LDRB	r4, [r7, r6]
	ADD 	r6, r6, #1
	AND 	r0, r5, #1
	LSR 	r5, r5, #1
	CMP 	r0, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$20
	MOV 	r9, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$31
L_poly_schoolbook_multiply_t0_by_challenge$32:
	LDR 	r0, [r8, r1, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$33:
	SUB 	r0, r0, r2
	STR 	r0, [r8, r1, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$31:
	ADD 	r1, r4, r9
	CMP 	r1, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$32
	MOVw	r0, #256
	SUB 	r9, r0, r4
	b   	L_poly_schoolbook_multiply_t0_by_challenge$28
L_poly_schoolbook_multiply_t0_by_challenge$29:
	MVN 	r0, #255
	ADD 	r0, r0, r4
	ADD 	r1, r0, r9
	LDR 	r0, [r8, r1, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$30:
	ADD 	r0, r0, r2
	STR 	r0, [r8, r1, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$28:
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$29
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$20:
	MOV 	r9, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$25
L_poly_schoolbook_multiply_t0_by_challenge$26:
	LDR 	r1, [r8, r0, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$27:
	ADD 	r1, r1, r2
	STR 	r1, [r8, r0, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$25:
	ADD 	r0, r4, r9
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$26
	MOVw	r0, #256
	SUB 	r9, r0, r4
	b   	L_poly_schoolbook_multiply_t0_by_challenge$22
L_poly_schoolbook_multiply_t0_by_challenge$23:
	MVN 	r0, #255
	ADD 	r0, r0, r4
	ADD 	r0, r0, r9
	LDR 	r1, [r8, r0, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$24:
	SUB 	r1, r1, r2
	STR 	r1, [r8, r0, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$22:
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$23
L_poly_schoolbook_multiply_t0_by_challenge$21:
L_poly_schoolbook_multiply_t0_by_challenge$18:
	CMP 	r6, #32
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$19
	LDR 	r4, [r7, #53]
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$3:
	LDRB	r5, [r7, r6]
	ADD 	r6, r6, #1
	AND 	r0, r4, #1
	LSR 	r4, r4, #1
	CMP 	r0, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$4
	MOV 	r9, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$15
L_poly_schoolbook_multiply_t0_by_challenge$16:
	LDR 	r1, [r8, r0, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$17:
	SUB 	r1, r1, r2
	STR 	r1, [r8, r0, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$15:
	ADD 	r0, r5, r9
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$16
	MOVw	r0, #256
	SUB 	r9, r0, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$12
L_poly_schoolbook_multiply_t0_by_challenge$13:
	MVN 	r0, #255
	ADD 	r0, r0, r5
	ADD 	r1, r0, r9
	LDR 	r0, [r8, r1, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$14:
	ADD 	r0, r0, r2
	STR 	r0, [r8, r1, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$12:
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$13
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$4:
	MOV 	r9, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$9
L_poly_schoolbook_multiply_t0_by_challenge$10:
	LDR 	r1, [r8, r0, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$11:
	ADD 	r1, r1, r2
	STR 	r1, [r8, r0, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$9:
	ADD 	r0, r5, r9
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$10
	MOVw	r0, #256
	SUB 	r9, r0, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$6
L_poly_schoolbook_multiply_t0_by_challenge$7:
	MVN 	r0, #255
	ADD 	r0, r0, r5
	ADD 	r1, r0, r9
	LDR 	r0, [r8, r1, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$8:
	SUB 	r0, r0, r2
	STR 	r0, [r8, r1, lsl #2]
	ADD 	r9, r9, #1
L_poly_schoolbook_multiply_t0_by_challenge$6:
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$7
L_poly_schoolbook_multiply_t0_by_challenge$5:
L_poly_schoolbook_multiply_t0_by_challenge$2:
	CMP 	r6, #49
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$3
	pop 	{pc}
L_poly_schoolbook_multiply_t1_by_challenge$1:
	STR 	lr, [sp]
	MOV 	r0, #0
	MOV 	r1, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$34
L_poly_schoolbook_multiply_t1_by_challenge$35:
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r0, r0, #1
L_poly_schoolbook_multiply_t1_by_challenge$34:
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$35
	LDR 	r4, [r7, #49]
	MOV 	r5, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$19:
	LDRB	r12, [r7, r5]
	ADD 	r5, r5, #1
	AND 	r0, r4, #1
	LSR 	r4, r4, #1
	CMP 	r0, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$20
	MOV 	r8, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$31
L_poly_schoolbook_multiply_t1_by_challenge$32:
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$33:
	SUB 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$31:
	ADD 	r0, r12, r8
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$32
	MOVw	r0, #256
	SUB 	r8, r0, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$28
L_poly_schoolbook_multiply_t1_by_challenge$29:
	MVN 	r0, #255
	ADD 	r0, r0, r12
	ADD 	r0, r0, r8
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$30:
	ADD 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$28:
	CMP 	r8, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$29
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$20:
	MOV 	r8, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$25
L_poly_schoolbook_multiply_t1_by_challenge$26:
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$27:
	ADD 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$25:
	ADD 	r0, r12, r8
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$26
	MOVw	r0, #256
	SUB 	r8, r0, r12
	b   	L_poly_schoolbook_multiply_t1_by_challenge$22
L_poly_schoolbook_multiply_t1_by_challenge$23:
	MVN 	r0, #255
	ADD 	r0, r0, r12
	ADD 	r0, r0, r8
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$24:
	SUB 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$22:
	CMP 	r8, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$23
L_poly_schoolbook_multiply_t1_by_challenge$21:
L_poly_schoolbook_multiply_t1_by_challenge$18:
	CMP 	r5, #32
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$19
	LDR 	r12, [r7, #53]
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$3:
	LDRB	r4, [r7, r5]
	ADD 	r5, r5, #1
	AND 	r0, r12, #1
	LSR 	r12, r12, #1
	CMP 	r0, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$4
	MOV 	r8, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$15
L_poly_schoolbook_multiply_t1_by_challenge$16:
	LDR 	r0, [r9, r1, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$17:
	SUB 	r0, r0, r2
	STR 	r0, [r9, r1, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$15:
	ADD 	r1, r4, r8
	CMP 	r1, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$16
	MOVw	r0, #256
	SUB 	r8, r0, r4
	b   	L_poly_schoolbook_multiply_t1_by_challenge$12
L_poly_schoolbook_multiply_t1_by_challenge$13:
	MVN 	r0, #255
	ADD 	r0, r0, r4
	ADD 	r0, r0, r8
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$14:
	ADD 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$12:
	CMP 	r8, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$13
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$4:
	MOV 	r8, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$9
L_poly_schoolbook_multiply_t1_by_challenge$10:
	LDR 	r1, [r9, r0, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$11:
	ADD 	r1, r1, r2
	STR 	r1, [r9, r0, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$9:
	ADD 	r0, r4, r8
	CMP 	r0, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$10
	MOVw	r0, #256
	SUB 	r8, r0, r4
	b   	L_poly_schoolbook_multiply_t1_by_challenge$6
L_poly_schoolbook_multiply_t1_by_challenge$7:
	MVN 	r0, #255
	ADD 	r0, r0, r4
	ADD 	r1, r0, r8
	LDR 	r0, [r9, r1, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$8:
	SUB 	r0, r0, r2
	STR 	r0, [r9, r1, lsl #2]
	ADD 	r8, r8, #1
L_poly_schoolbook_multiply_t1_by_challenge$6:
	CMP 	r8, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$7
L_poly_schoolbook_multiply_t1_by_challenge$5:
L_poly_schoolbook_multiply_t1_by_challenge$2:
	CMP 	r5, #49
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$3
	pop 	{pc}
L_poly_generate_challenge$1:
	STR 	lr, [sp]
	STR 	r2, [sp, #4]
	MOV 	r2, #0
	b   	L_poly_generate_challenge$12
L_poly_generate_challenge$13:
	LDR 	r3, [r1, r2, lsl #2]
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_generate_challenge$12:
	CMP 	r2, #12
	bcc 	L_poly_generate_challenge$13
	MOV 	r1, #0
	MOV 	r2, #12
	b   	L_poly_generate_challenge$10
L_poly_generate_challenge$11:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_generate_challenge$10:
	CMP 	r2, #50
	bcc 	L_poly_generate_challenge$11
	LDRB	r1, [r0, #48]
	EOR 	r1, r1, #31
	STRB	r1, [r0, #48]
	LDRB	r1, [r0, #135]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_generate_challenge$9:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #4]
	LDR 	r12, [r0]
	LDR 	r3, [r0, #4]
	MOV 	lr, #8
	MOV 	r2, #0
	MOV 	r4, #0
	b   	L_poly_generate_challenge$7
L_poly_generate_challenge$8:
	STR 	r2, [r1, r4, lsl #2]
	ADD 	r4, r4, #1
L_poly_generate_challenge$7:
	CMP 	r4, #256
	bcc 	L_poly_generate_challenge$8
	MOV 	r2, #207
	b   	L_poly_generate_challenge$2
L_poly_generate_challenge$3:
L_poly_generate_challenge$4:
	CMP 	lr, #136
	bcc 	L_poly_generate_challenge$5
	MOV 	lr, #0
	STR 	r2, [sp, #4]
	STR 	r1, [sp, #8]
	STR 	lr, [sp, #12]
	STR 	r12, [sp, #16]
	STR 	r3, [sp, #20]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_generate_challenge$6:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #4]
	LDR 	r1, [sp, #8]
	LDR 	lr, [sp, #12]
	LDR 	r12, [sp, #16]
	LDR 	r3, [sp, #20]
L_poly_generate_challenge$5:
	LDRB	r4, [r0, lr]
	ADD 	lr, lr, #1
	CMP 	r4, r2
	bhi 	L_poly_generate_challenge$4
	LDR 	r5, [r1, r4, lsl #2]
	STR 	r5, [r1, r2, lsl #2]
	AND 	r5, r12, #1
	LSL 	r5, r5, #1
	MOV 	r6, #1
	SUB 	r5, r6, r5
	STR 	r5, [r1, r4, lsl #2]
	LSR 	r12, r12, #1
	ORR 	r12, r12, r3, lsl #31
	LSR 	r3, r3, #1
	ADD 	r2, r2, #1
L_poly_generate_challenge$2:
	CMP 	r2, #256
	bcc 	L_poly_generate_challenge$4
	pop 	{pc}
L_poly_power2round_inplace$1:
	MOV 	r2, #0
	b   	L_poly_power2round_inplace$2
L_poly_power2round_inplace$3:
	LDR 	r3, [r0, r2, lsl #2]
	ADDw	r12, r3, #4095
	ASR 	r12, r12, #13
	SUB 	r3, r3, r12, lsl #13
	STR 	r3, [r1, r2, lsl #2]
	STR 	r12, [r0, r2, lsl #2]
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
	MOV 	r4, #3
	MUL 	r4, r4, r3
	LDR 	r4, [r2, r4]
	AND 	r4, r4, r12
	LDR 	r5, [r1, r3, lsl #2]
	ADD 	r4, r4, r5
	RSB 	r5, r5, #0
	MOV 	r7, #0
	ADD 	r6, r4, #127
	ASR 	r6, r6, #7
	ADD 	r6, r6, r6, lsl #10
	ADD 	r6, r6, #2097152
	UBFX	r6, r6, #22, #4
	ADD 	r4, r4, r5
	ADD 	r4, r4, #127
	ASR 	r4, r4, #7
	ADD 	r4, r4, r4, lsl #10
	ADD 	r4, r4, #2097152
	UBFX	r4, r4, #22, #4
	CMP 	r6, r4
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
	LDR 	r3, [r1, r2, lsl #2]
	LDR 	r12, [r0, r2, lsl #2]
	SMULL	r3, r12, r3, r12
	MOVw	r4, #8191
	MOVT	r4, #65408
	LSL 	r5, r3, #3
	SUB 	r5, r5, r3
	ADD 	r5, r3, r5, lsl #10
	ADD 	r5, r3, r5, lsl #13
	SMLAL	r3, r12, r5, r4
	STR 	r12, [r0, r2, lsl #2]
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
	LDR 	r4, [r2, r3, lsl #2]
	SMULL	r12, r4, r12, r4
	MOVw	r5, #8191
	MOVT	r5, #65408
	LSL 	r6, r12, #3
	SUB 	r6, r6, r12
	ADD 	r6, r12, r6, lsl #10
	ADD 	r6, r12, r6, lsl #13
	SMLAL	r12, r4, r6, r5
	STR 	r4, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_pointwise_montgomery$2:
	CMP 	r3, #256
	bcc 	L_poly_pointwise_montgomery$3
	bx  	lr
L_poly_use_hint$1:
	MOV 	r2, #0
	b   	L_poly_use_hint$2
L_poly_use_hint$3:
	MOV 	r5, #0
	MOV 	r3, #0
	b   	L_poly_use_hint$9
L_poly_use_hint$10:
	LDRB	r12, [r1, r3]
	CMP 	r2, r12
	bne 	L_poly_use_hint$11
	MOV 	r5, #1
L_poly_use_hint$11:
	ADD 	r3, r3, #1
L_poly_use_hint$9:
	CMP 	r3, r4
	MOV 	r12, r5
	it  	cs
	MOVcs	r12, #1
	CMP 	r12, #0
	beq 	L_poly_use_hint$10
	CMP 	r5, #1
	beq 	L_poly_use_hint$7
	MOV 	r3, #0
	b   	L_poly_use_hint$8
L_poly_use_hint$7:
	MOV 	r3, #1
L_poly_use_hint$8:
	LDR 	r6, [r0, r2, lsl #2]
	MOVw	r12, #57345
	MOVT	r12, #127
	ADD 	r5, r6, #127
	ASR 	r5, r5, #7
	ADD 	r5, r5, r5, lsl #10
	ADD 	r5, r5, #2097152
	UBFX	r5, r5, #22, #4
	SUB 	r7, r5, r5, lsl #10
	ADD 	r6, r6, r7, lsl #9
	MOVw	r7, #1023
	LSL 	r7, r7, #12
	SUB 	r7, r7, r6
	AND 	r12, r12, r7, asr #31
	SUB 	r12, r6, r12
	CMP 	r3, #0
	beq 	L_poly_use_hint$4
	CMP 	r12, #0
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
	CMP 	r1, r3
	ble 	L_poly_check_norm$4
	MOV 	r0, #1
L_poly_check_norm$4:
	MOV 	r12, #0
L_poly_check_norm$2:
	LDR 	r3, [r2, r12, lsl #2]
	CMP 	r3, #0
	it  	lt
	RSBlt	r3, r3, #0
	ADD 	r12, r12, #1
	CMP 	r3, r1
	blt 	L_poly_check_norm$3
	MOV 	r0, #1
	MOVw	r12, #256
L_poly_check_norm$3:
	CMP 	r12, #256
	bne 	L_poly_check_norm$2
	bx  	lr
L_poly_add_inplace$1:
	MOV 	r2, #0
	b   	L_poly_add_inplace$2
L_poly_add_inplace$3:
	LDR 	r3, [r0, r2, lsl #2]
	LDR 	r12, [r1, r2, lsl #2]
	ADD 	r3, r3, r12
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_add_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_add_inplace$3
	bx  	lr
L_poly_caddq$1:
	MOV 	r2, #0
	b   	L_poly_caddq$2
L_poly_caddq$3:
	LDR 	r3, [r1, r2, lsl #2]
	MOVw	r12, #57345
	MOVT	r12, #127
	AND 	r12, r12, r3, asr #31
	ADD 	r3, r12, r3
	STR 	r3, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_caddq$2:
	CMP 	r2, #256
	bcc 	L_poly_caddq$3
	bx  	lr
L_poly_reduce$1:
	MOV 	r2, #0
	b   	L_poly_reduce$2
L_poly_reduce$3:
	LDR 	r3, [r1, r2, lsl #2]
	ADD 	r12, r3, #4194304
	ASR 	r12, r12, #23
	LSL 	r4, r12, #9
	SUB 	r4, r4, r12
	ADD 	r4, r12, r4, lsl #10
	LSL 	r4, r4, #13
	SUB 	r12, r4, r12
	ADD 	r3, r3, r12
	STR 	r3, [r1, r2, lsl #2]
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
	MOV 	r1, #0
	ADD 	r11, sp, #216
	ADD 	r5, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$10:
	STR 	r0, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r1, [sp, #12]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$9:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r1, [sp, #12]
	ADD 	r11, sp, #216
	ADD 	r5, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$8:
	STR 	r0, [sp, #12]
	STR 	r12, [sp, #8]
	STR 	r1, [sp, #4]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$7:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #12]
	LDR 	r2, [sp, #8]
	LDR 	r1, [sp, #4]
	ADD 	r11, sp, #216
	ADD 	r5, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$6:
	STR 	r0, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r1, [sp, #12]
	ADD 	r0, sp, #16
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$5:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r1, [sp, #12]
	ADD 	r11, sp, #216
	ADD 	r5, sp, #16
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
	ADD 	r11, sp, #216
	ADD 	r1, sp, #16
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming_end$1
L_poly_uniform_gamma1$2:
	pop 	{pc}
L_poly_eta_pack$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_poly_eta_pack$2
L_poly_eta_pack$3:
	LDR 	r12, [r0, r2, lsl #2]
	MOV 	r4, #4
	SUB 	r12, r4, r12
	ADD 	r2, r2, #1
	LDR 	r4, [r0, r2, lsl #2]
	MOV 	r5, #4
	SUB 	r4, r5, r4
	ADD 	r2, r2, #1
	ORR 	r12, r12, r4, lsl #4
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
L_poly_eta_pack$2:
	CMP 	r2, #256
	bcc 	L_poly_eta_pack$3
	bx  	lr
L_polyw1_pack$1:
	MOV 	r12, #0
	MOV 	r2, #0
	b   	L_polyw1_pack$2
L_polyw1_pack$3:
	LDR 	r4, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	LDR 	r5, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	ORR 	r4, r4, r5, lsl #4
	STRB	r4, [r1, r2]
	ADD 	r2, r2, #1
L_polyw1_pack$2:
	CMP 	r12, #256
	bcc 	L_polyw1_pack$3
	bx  	lr
L_polyz_unpack_streaming_end$1:
	STR 	lr, [sp]
	LDRB	r2, [r1]
	STRB	r2, [r11, #4]
	MOV 	r2, #216
	ADD 	r10, r0, r2, lsl #2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming_end$5:
	ADD 	r2, r2, #2
	MOV 	r3, #1
	b   	L_polyz_unpack_streaming_end$2
L_polyz_unpack_streaming_end$3:
	ADD 	r10, r0, r2, lsl #2
	ADD 	r11, r1, r3
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming_end$4:
	ADD 	r2, r2, #2
	ADD 	r3, r3, #5
L_polyz_unpack_streaming_end$2:
	CMP 	r3, #96
	bcc 	L_polyz_unpack_streaming_end$3
	pop 	{pc}
L_polyz_unpack_streaming$1:
	STR 	lr, [sp]
	MOV 	r3, #0
	b   	L_polyz_unpack_streaming$8
L_polyz_unpack_streaming$9:
	LDRB	r12, [r5, r3]
	ADD 	r3, r3, #1
	STRB	r12, [r11, r2]
	ADD 	r2, r2, #1
L_polyz_unpack_streaming$8:
	CMP 	r2, #5
	bcc 	L_polyz_unpack_streaming$9
	ADD 	r10, r0, r1, lsl #2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming$7:
	ADD 	r1, r1, #2
	MOV 	r2, r11
	b   	L_polyz_unpack_streaming$4
L_polyz_unpack_streaming$5:
	ADD 	r10, r0, r1, lsl #2
	ADD 	r11, r5, r3
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack_streaming$6:
	ADD 	r1, r1, #2
	ADD 	r3, r3, #5
L_polyz_unpack_streaming$4:
	CMP 	r3, #131
	bcc 	L_polyz_unpack_streaming$5
	MOV 	r12, #0
	b   	L_polyz_unpack_streaming$2
L_polyz_unpack_streaming$3:
	LDRB	lr, [r5, r3]
	ADD 	r3, r3, #1
	STRB	lr, [r2, r12]
	ADD 	r12, r12, #1
L_polyz_unpack_streaming$2:
	CMP 	r3, #136
	bcc 	L_polyz_unpack_streaming$3
	pop 	{pc}
L_polyz_unpack$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_polyz_unpack$2
L_polyz_unpack$3:
	ADD 	r10, r0, r3, lsl #2
	ADD 	r11, r1, r2
	bl  	L_polyz_unpack_5_bytes$1
L_polyz_unpack$4:
	ADD 	r3, r3, #2
	ADD 	r2, r2, #5
L_polyz_unpack$2:
	CMP 	r2, #640
	bcc 	L_polyz_unpack$3
	pop 	{pc}
L_polyz_unpack_5_bytes$1:
	MOV 	r9, #0
	MOVT	r9, #8
	LDRB	r12, [r11]
	LDRB	r4, [r11, #1]
	LDRB	r6, [r11, #2]
	LDRB	r7, [r11, #3]
	LDRB	r8, [r11, #4]
	ORR 	r12, r12, r4, lsl #8
	ORR 	r12, r12, r6, lsl #16
	UBFX	r12, r12, #0, #20
	SUB 	r12, r9, r12
	STR 	r12, [r10]
	LSR 	r12, r6, #4
	ORR 	r12, r12, r7, lsl #4
	ORR 	r12, r12, r8, lsl #12
	SUB 	r12, r9, r12
	STR 	r12, [r10, #4]
	bx  	lr
L_polyz_pack$1:
	MOV 	r3, #0
	MOVT	r3, #8
	MOV 	r12, #0
	MOV 	r5, #0
	b   	L_polyz_pack$2
L_polyz_pack$3:
	LDR 	r4, [r2, r12, lsl #2]
	SUB 	r6, r3, r4
	ADD 	r12, r12, #1
	LDR 	r4, [r2, r12, lsl #2]
	SUB 	r4, r3, r4
	ADD 	r12, r12, #1
	STRB	r6, [r1, r5]
	ADD 	r5, r5, #1
	LSR 	r7, r6, #8
	STRB	r7, [r1, r5]
	ADD 	r5, r5, #1
	LSR 	r6, r6, #16
	ORR 	r6, r6, r4, lsl #4
	STRB	r6, [r1, r5]
	ADD 	r5, r5, #1
	LSR 	r6, r4, #4
	STRB	r6, [r1, r5]
	ADD 	r5, r5, #1
	LSR 	r4, r4, #12
	STRB	r4, [r1, r5]
	ADD 	r5, r5, #1
L_polyz_pack$2:
	CMP 	r12, #256
	bcc 	L_polyz_pack$3
	bx  	lr
L_poly_invntt_tomont$1:
	MOVw	r2, #256
	MOV 	r9, #1
L_poly_invntt_tomont$3:
	MOV 	r12, #0
L_poly_invntt_tomont$4:
	SUB 	r2, r2, #1
	MOVw	r3, #:lower16:glob_data+0
	MOVT	r3, #:upper16:glob_data+0
	LDR 	r3, [r3, r2, lsl #2]
	RSB 	r3, r3, #0
	MOV 	r10, r12
	ADD 	r8, r12, r9
	MOV 	r12, r8
L_poly_invntt_tomont$5:
	LDR 	r4, [r1, r10, lsl #2]
	LDR 	r5, [r1, r12, lsl #2]
	ADD 	r6, r4, r5
	STR 	r6, [r1, r10, lsl #2]
	SUB 	r4, r4, r5
	SMULL	r7, r4, r3, r4
	MOVw	r5, #8191
	MOVT	r5, #65408
	LSL 	r6, r7, #3
	SUB 	r6, r6, r7
	ADD 	r6, r7, r6, lsl #10
	ADD 	r6, r7, r6, lsl #13
	SMLAL	r7, r4, r6, r5
	STR 	r4, [r1, r12, lsl #2]
	ADD 	r10, r10, #1
	ADD 	r12, r12, #1
	CMP 	r10, r8
	bcc 	L_poly_invntt_tomont$5
	CMP 	r12, #256
	bcc 	L_poly_invntt_tomont$4
	LSL 	r9, r9, #1
	CMP 	r9, #256
	bcc 	L_poly_invntt_tomont$3
	MOVw	r2, #41978
	MOV 	r3, #0
L_poly_invntt_tomont$2:
	LDR 	r12, [r1, r3, lsl #2]
	SMULL	r12, r4, r2, r12
	MOVw	r5, #8191
	MOVT	r5, #65408
	LSL 	r6, r12, #3
	SUB 	r6, r6, r12
	ADD 	r6, r12, r6, lsl #10
	ADD 	r6, r12, r6, lsl #13
	SMLAL	r12, r4, r6, r5
	STR 	r4, [r1, r3, lsl #2]
	ADD 	r3, r3, #1
	CMP 	r3, #256
	bcc 	L_poly_invntt_tomont$2
	bx  	lr
L_poly_ntt$1:
	MOV 	r1, #0
	MOV 	r2, #128
L_poly_ntt$2:
	MOV 	r4, #0
L_poly_ntt$3:
	ADD 	r1, r1, #1
	MOVw	r3, #:lower16:glob_data+0
	MOVT	r3, #:upper16:glob_data+0
	LDR 	r3, [r3, r1, lsl #2]
	MOV 	r12, r4
	ADD 	r4, r4, r2
	MOV 	r5, r4
L_poly_ntt$4:
	LDR 	r6, [r0, r5, lsl #2]
	SMULL	r6, r7, r3, r6
	MOVw	r8, #8191
	MOVT	r8, #65408
	LSL 	r9, r6, #3
	SUB 	r9, r9, r6
	ADD 	r9, r6, r9, lsl #10
	ADD 	r9, r6, r9, lsl #13
	SMLAL	r6, r7, r9, r8
	LDR 	r6, [r0, r12, lsl #2]
	SUB 	r8, r6, r7
	STR 	r8, [r0, r5, lsl #2]
	ADD 	r6, r6, r7
	STR 	r6, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	ADD 	r5, r5, #1
	CMP 	r12, r4
	bcc 	L_poly_ntt$4
	MOV 	r4, r5
	CMP 	r4, #256
	bcc 	L_poly_ntt$3
	LSR 	r2, r2, #1
	CMP 	r2, #0
	bne 	L_poly_ntt$2
	bx  	lr
L_freeze$1:
	ADD 	r5, r4, #4194304
	ASR 	r5, r5, #23
	LSL 	r6, r5, #9
	SUB 	r6, r6, r5
	ADD 	r6, r5, r6, lsl #10
	LSL 	r6, r6, #13
	SUB 	r5, r6, r5
	ADD 	r4, r4, r5
	MOVw	r5, #57345
	MOVT	r5, #127
	AND 	r5, r5, r4, asr #31
	ADD 	r4, r5, r4
	bx  	lr
L_t0_unpack_coefficient_at_index$1:
	LSR 	r2, r9, #3
	MOV 	r3, #13
	MUL 	r2, r2, r3
	AND 	r3, r9, #7
	CMP 	r3, #0
	beq 	L_t0_unpack_coefficient_at_index$2
	CMP 	r3, #1
	beq 	L_t0_unpack_coefficient_at_index$4
	CMP 	r3, #2
	beq 	L_t0_unpack_coefficient_at_index$6
	CMP 	r3, #3
	beq 	L_t0_unpack_coefficient_at_index$8
	CMP 	r3, #4
	beq 	L_t0_unpack_coefficient_at_index$10
	CMP 	r3, #5
	beq 	L_t0_unpack_coefficient_at_index$12
	CMP 	r3, #6
	beq 	L_t0_unpack_coefficient_at_index$14
	ADD 	r2, r2, #11
	LDRB	r3, [r10, r2]
	LSR 	r3, r3, #3
	ADD 	r2, r2, #1
	LDRB	r2, [r10, r2]
	LSL 	r2, r2, #5
	ORR 	r2, r3, r2
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$14:
	ADD 	r3, r2, #9
	LDRB	r2, [r10, r3]
	LSR 	r2, r2, #6
	ADD 	r3, r3, #1
	LDRB	r12, [r10, r3]
	LSL 	r12, r12, #2
	ORR 	r2, r2, r12
	ADD 	r3, r3, #1
	LDRB	r3, [r10, r3]
	LSL 	r3, r3, #10
	ORR 	r2, r2, r3
L_t0_unpack_coefficient_at_index$15:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$12:
	ADD 	r2, r2, #8
	LDRB	r3, [r10, r2]
	LSR 	r3, r3, #1
	ADD 	r2, r2, #1
	LDRB	r2, [r10, r2]
	LSL 	r2, r2, #7
	ORR 	r2, r3, r2
L_t0_unpack_coefficient_at_index$13:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$10:
	ADD 	r3, r2, #6
	LDRB	r2, [r10, r3]
	LSR 	r2, r2, #4
	ADD 	r3, r3, #1
	LDRB	r12, [r10, r3]
	LSL 	r12, r12, #4
	ORR 	r2, r2, r12
	ADD 	r3, r3, #1
	LDRB	r3, [r10, r3]
	LSL 	r3, r3, #12
	ORR 	r2, r2, r3
L_t0_unpack_coefficient_at_index$11:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$8:
	ADD 	r3, r2, #4
	LDRB	r2, [r10, r3]
	LSR 	r2, r2, #7
	ADD 	r3, r3, #1
	LDRB	r12, [r10, r3]
	LSL 	r12, r12, #1
	ORR 	r2, r2, r12
	ADD 	r3, r3, #1
	LDRB	r3, [r10, r3]
	LSL 	r3, r3, #9
	ORR 	r2, r2, r3
L_t0_unpack_coefficient_at_index$9:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$6:
	ADD 	r2, r2, #3
	LDRB	r3, [r10, r2]
	LSR 	r3, r3, #2
	ADD 	r2, r2, #1
	LDRB	r2, [r10, r2]
	LSL 	r2, r2, #6
	ORR 	r2, r3, r2
L_t0_unpack_coefficient_at_index$7:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$4:
	ADD 	r3, r2, #1
	LDRB	r2, [r10, r3]
	LSR 	r2, r2, #5
	ADD 	r3, r3, #1
	LDRB	r12, [r10, r3]
	LSL 	r12, r12, #3
	ORR 	r2, r2, r12
	ADD 	r3, r3, #1
	LDRB	r3, [r10, r3]
	LSL 	r3, r3, #11
	ORR 	r2, r2, r3
L_t0_unpack_coefficient_at_index$5:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$2:
	LDRB	r3, [r10, r2]
	ADD 	r2, r2, #1
	LDRB	r2, [r10, r2]
	LSL 	r2, r2, #8
	ORR 	r2, r3, r2
L_t0_unpack_coefficient_at_index$3:
	MOVw	r3, #8191
	AND 	r2, r2, r3
	MOVw	r3, #4096
	SUB 	r2, r3, r2
	bx  	lr
L_polyt0_pack$1:
	MOV 	r1, #0
	MOV 	r0, #0
	b   	L_polyt0_pack$2
L_polyt0_pack$3:
	LDR 	r3, [r11, r1, lsl #2]
	ADD 	r2, r1, #1
	MOVw	r1, #4096
	SUB 	r1, r1, r3
	LDR 	r3, [r11, r2, lsl #2]
	ADD 	r12, r2, #1
	MOVw	r2, #4096
	SUB 	r2, r2, r3
	LDR 	r3, [r11, r12, lsl #2]
	ADD 	r12, r12, #1
	MOVw	r4, #4096
	SUB 	r9, r4, r3
	LDR 	r3, [r11, r12, lsl #2]
	ADD 	r4, r12, #1
	MOVw	r12, #4096
	SUB 	r3, r12, r3
	LDR 	r12, [r11, r4, lsl #2]
	ADD 	r4, r4, #1
	MOVw	r5, #4096
	SUB 	r8, r5, r12
	LDR 	r12, [r11, r4, lsl #2]
	ADD 	r5, r4, #1
	MOVw	r4, #4096
	SUB 	r12, r4, r12
	LDR 	r4, [r11, r5, lsl #2]
	ADD 	r5, r5, #1
	MOVw	r6, #4096
	SUB 	r4, r6, r4
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r1, #8
	ORR 	r1, r1, r2, lsl #5
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r2, #3
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r2, #11
	ORR 	r1, r1, r9, lsl #2
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r9, #6
	ORR 	r1, r1, r3, lsl #7
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r3, #1
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r3, #9
	ORR 	r1, r1, r8, lsl #4
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r8, #4
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r8, #12
	ORR 	r1, r1, r12, lsl #1
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r12, #7
	ORR 	r1, r1, r4, lsl #6
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r1, r4, #2
	STRB	r1, [r10, r0]
	ADD 	r0, r0, #1
	LDR 	r2, [r11, r5, lsl #2]
	ADD 	r1, r5, #1
	MOVw	r3, #4096
	SUB 	r2, r3, r2
	LSR 	r3, r4, #10
	ORR 	r3, r3, r2, lsl #3
	STRB	r3, [r10, r0]
	ADD 	r0, r0, #1
	LSR 	r2, r2, #5
	STRB	r2, [r10, r0]
	ADD 	r0, r0, #1
L_polyt0_pack$2:
	CMP 	r1, #256
	bcc 	L_polyt0_pack$3
	bx  	lr
L_t1_unpack_coefficient_at_index$1:
	LSR 	r2, r8, #2
	MOV 	r3, #5
	MUL 	r2, r2, r3
	AND 	r3, r8, #3
	CMP 	r3, #0
	beq 	L_t1_unpack_coefficient_at_index$2
	CMP 	r3, #1
	beq 	L_t1_unpack_coefficient_at_index$4
	CMP 	r3, #2
	beq 	L_t1_unpack_coefficient_at_index$6
	ADD 	r2, r2, r3
	LDRB	r3, [r6, r2]
	LSR 	r3, r3, #6
	ADD 	r2, r2, #1
	LDRB	r2, [r6, r2]
	LSL 	r2, r2, #2
	ORR 	r2, r3, r2
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$6:
	ADD 	r2, r2, r3
	LDRB	r3, [r6, r2]
	LSR 	r3, r3, #4
	ADD 	r2, r2, #1
	LDRB	r2, [r6, r2]
	LSL 	r2, r2, #4
	ORR 	r2, r3, r2
L_t1_unpack_coefficient_at_index$7:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$4:
	ADD 	r2, r2, r3
	LDRB	r3, [r6, r2]
	LSR 	r3, r3, #2
	ADD 	r2, r2, #1
	LDRB	r2, [r6, r2]
	LSL 	r2, r2, #6
	ORR 	r2, r3, r2
L_t1_unpack_coefficient_at_index$5:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$2:
	LDRB	r3, [r6, r2]
	ADD 	r2, r2, #1
	LDRB	r2, [r6, r2]
	LSL 	r2, r2, #8
	ORR 	r2, r3, r2
L_t1_unpack_coefficient_at_index$3:
	MOVw	r3, #1023
	AND 	r2, r2, r3
	LSL 	r2, r2, #13
	bx  	lr
L_polyt1_pack$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_polyt1_pack$2
L_polyt1_pack$3:
	LDR 	r12, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r4, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r5, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	r6, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r12, #8
	ORR 	r12, r12, r4, lsl #2
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r4, #6
	ORR 	r12, r12, r5, lsl #4
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r5, #4
	ORR 	r12, r12, r6, lsl #6
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r6, #2
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
L_polyt1_pack$2:
	CMP 	r2, #256
	bcc 	L_polyt1_pack$3
	bx  	lr
L_shake256_inc_absorb_mem_naive$1:
	STR 	lr, [sp]
	b   	L_shake256_inc_absorb_mem_naive$2
L_shake256_inc_absorb_mem_naive$3:
	LDRB	r2, [r4]
	LDRB	r3, [r0, r1]
	EOR 	r2, r3, r2
	STRB	r2, [r0, r1]
	ADD 	r1, r1, #1
	ADD 	r4, r4, #1
	SUB 	r12, r12, #1
	CMP 	r1, #136
	bne 	L_shake256_inc_absorb_mem_naive$2
	STR 	r4, [sp, #4]
	STR 	r12, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_shake256_inc_absorb_mem_naive$5:
	ADD 	sp, sp, #212
	LDR 	r4, [sp, #4]
	LDR 	r12, [sp, #8]
	MOV 	r1, #0
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
	LDRB	r2, [r1, r12]
	LDRB	r3, [r0, r4]
	EOR 	r2, r3, r2
	STRB	r2, [r0, r4]
	ADD 	r4, r4, #1
	ADD 	r12, r12, #1
	CMP 	r4, #136
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
	LDR 	r4, [sp, #8]
	LDR 	r1, [sp, #12]
L_shake256_absorb_w1_element$4:
L_shake256_absorb_w1_element$2:
	CMP 	r12, #128
	bne 	L_shake256_absorb_w1_element$3
	pop 	{pc}
L_hash_verification_key$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_hash_verification_key$10
L_hash_verification_key$11:
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_hash_verification_key$10:
	CMP 	r2, #50
	bcc 	L_hash_verification_key$11
	MOV 	r2, #0
	b   	L_hash_verification_key$5
L_hash_verification_key$6:
	MOV 	r3, #0
	b   	L_hash_verification_key$8
L_hash_verification_key$9:
	LDR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	lr, [r0, r3, lsl #2]
	EOR 	r12, lr, r12
	STR 	r12, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_hash_verification_key$8:
	CMP 	r3, #34
	bcc 	L_hash_verification_key$9
	STR 	r2, [sp, #4]
	STR 	r1, [sp, #8]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_hash_verification_key$7:
	ADD 	sp, sp, #212
	LDR 	r2, [sp, #4]
	LDR 	r1, [sp, #8]
L_hash_verification_key$5:
	MOVw	r3, #454
	CMP 	r2, r3
	bcc 	L_hash_verification_key$6
	MOV 	r3, #0
	b   	L_hash_verification_key$3
L_hash_verification_key$4:
	LDR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LDR 	lr, [r0, r3, lsl #2]
	EOR 	r12, lr, r12
	STR 	r12, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_hash_verification_key$3:
	CMP 	r2, #488
	bcc 	L_hash_verification_key$4
	LDRB	r1, [r0, r3, lsl #2]
	EOR 	r1, r1, #31
	STRB	r1, [r0, r3, lsl #2]
	LDRB	r1, [r0, #135]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #135]
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
	LDR 	r0, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	pop 	{pc}
L_prepare_state_for_shake256$1:
	MOV 	r12, #0
	b   	L_prepare_state_for_shake256$4
L_prepare_state_for_shake256$5:
	LDR 	r4, [r3, r12, lsl #2]
	STR 	r4, [r1, r12, lsl #2]
	ADD 	r12, r12, #1
L_prepare_state_for_shake256$4:
	CMP 	r12, #16
	bcc 	L_prepare_state_for_shake256$5
	STRH	r2, [r1, #64]
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
	LDRB	r2, [r1, #66]
	EOR 	r2, r2, #31
	STRB	r2, [r1, #66]
	LDRB	r2, [r1, #135]
	MOV 	r3, #128
	EOR 	r2, r2, r3
	STRB	r2, [r1, #135]
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
	LDR 	r6, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	LDR 	lr, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	LDR 	r4, [r0, r12, lsl #2]
	ADD 	r12, r12, #1
	pop 	{pc}
L_prepare_xof_for_element_of_A$1:
	MOV 	r1, #0
	b   	L_prepare_xof_for_element_of_A$4
L_prepare_xof_for_element_of_A$5:
	LDR 	r3, [r12, r1, lsl #2]
	STR 	r3, [r0, r1, lsl #2]
	ADD 	r1, r1, #1
L_prepare_xof_for_element_of_A$4:
	CMP 	r1, #8
	bcc 	L_prepare_xof_for_element_of_A$5
	STRH	r2, [r0, #32]
	MOV 	r1, #0
	STRH	r1, [r0, #34]
	MOV 	r2, #9
	b   	L_prepare_xof_for_element_of_A$2
L_prepare_xof_for_element_of_A$3:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_prepare_xof_for_element_of_A$2:
	CMP 	r2, #50
	bcc 	L_prepare_xof_for_element_of_A$3
	LDRB	r1, [r0, #34]
	EOR 	r1, r1, #31
	STRB	r1, [r0, #34]
	LDRB	r1, [r0, #167]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #167]
	bx  	lr
L_init_xof_for_element_of_A$1:
	STR 	lr, [sp]
	MOV 	r3, #0
	b   	L_init_xof_for_element_of_A$5
L_init_xof_for_element_of_A$6:
	LDR 	r12, [r2, r3, lsl #2]
	STR 	r12, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_init_xof_for_element_of_A$5:
	CMP 	r3, #8
	bcc 	L_init_xof_for_element_of_A$6
	STRH	r1, [r0, #32]
	MOV 	r1, #0
	STRH	r1, [r0, #34]
	MOV 	r2, #9
	b   	L_init_xof_for_element_of_A$3
L_init_xof_for_element_of_A$4:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_init_xof_for_element_of_A$3:
	CMP 	r2, #50
	bcc 	L_init_xof_for_element_of_A$4
	LDRB	r1, [r0, #34]
	EOR 	r1, r1, #31
	STRB	r1, [r0, #34]
	LDRB	r1, [r0, #167]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #167]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_init_xof_for_element_of_A$2:
	ADD 	sp, sp, #212
	pop 	{pc}
L_shake256_add_block_end$1:
	LDRB	r2, [r0, r1]
	EOR 	r2, r2, #31
	STRB	r2, [r0, r1]
	LDRB	r1, [r0, #135]
	MOV 	r2, #128
	EOR 	r1, r1, r2
	STRB	r1, [r0, #135]
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
	LDR 	r1, [r0]
	LDR 	r2, [r0, #4]
	LDR 	r3, [r0, #8]
	LDR 	r12, [r0, #12]
	LDR 	r7, [r0, #16]
	LDR 	r8, [r0, #20]
	LDR 	lr, [r0, #24]
	LDR 	r4, [r0, #28]
	LDR 	r5, [r0, #32]
	LDR 	r6, [r0, #36]
	LDR 	r9, [r0, #40]
	LDR 	r10, [r0, #44]
	EOR 	r1, r1, r9
	EOR 	r2, r2, r10
	LDR 	r9, [r0, #48]
	LDR 	r10, [r0, #52]
	EOR 	r9, r3, r9
	EOR 	r10, r12, r10
	LDR 	r3, [r0, #56]
	LDR 	r12, [r0, #60]
	EOR 	r3, r7, r3
	EOR 	r12, r8, r12
	LDR 	r7, [r0, #64]
	LDR 	r8, [r0, #68]
	EOR 	lr, lr, r7
	EOR 	r4, r4, r8
	LDR 	r7, [r0, #72]
	LDR 	r8, [r0, #76]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	LDR 	r7, [r0, #80]
	LDR 	r8, [r0, #84]
	EOR 	r7, r1, r7
	EOR 	r8, r2, r8
	LDR 	r1, [r0, #88]
	LDR 	r2, [r0, #92]
	EOR 	r1, r9, r1
	EOR 	r2, r10, r2
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
	LDR 	r1, [sp, #24]
	LDR 	r2, [sp, #28]
	MOV 	r3, r1
	LSL 	r12, r2, #1
	LSL 	r1, r1, #1
	ORR 	r1, r1, r2, lsr #31
	ORR 	r2, r12, r3, lsr #31
	LDR 	r3, [sp, #48]
	LDR 	r12, [sp, #52]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	LDR 	r3, [sp, #32]
	LDR 	r12, [sp, #36]
	MOV 	lr, r3
	LSL 	r4, r12, #1
	LSL 	r3, r3, #1
	ORR 	r3, r3, r12, lsr #31
	ORR 	r12, r4, lr, lsr #31
	LDR 	lr, [sp, #16]
	LDR 	r4, [sp, #20]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	LDR 	lr, [sp, #40]
	LDR 	r4, [sp, #44]
	MOV 	r5, lr
	LSL 	r6, r4, #1
	LSL 	lr, lr, #1
	ORR 	lr, lr, r4, lsr #31
	ORR 	r4, r6, r5, lsr #31
	LDR 	r5, [sp, #24]
	LDR 	r6, [sp, #28]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #48]
	LDR 	r6, [sp, #52]
	MOV 	r7, r5
	LSL 	r8, r6, #1
	LSL 	r5, r5, #1
	ORR 	r5, r5, r6, lsr #31
	ORR 	r6, r8, r7, lsr #31
	LDR 	r7, [sp, #32]
	LDR 	r8, [sp, #36]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	LDR 	r9, [sp, #16]
	LDR 	r10, [sp, #20]
	MOV 	r7, r9
	LSL 	r8, r10, #1
	LSL 	r9, r9, #1
	ORR 	r9, r9, r10, lsr #31
	ORR 	r7, r8, r7, lsr #31
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r8, r9, r8
	EOR 	r7, r7, r10
	STR 	r1, [sp, #16]
	STR 	r2, [sp, #20]
	STR 	r3, [sp, #24]
	STR 	r12, [sp, #28]
	STR 	lr, [sp, #32]
	STR 	r4, [sp, #36]
	STR 	r5, [sp, #40]
	STR 	r6, [sp, #44]
	STR 	r8, [sp, #48]
	STR 	r7, [sp, #52]
	LDR 	r1, [r0]
	LDR 	r2, [r0, #4]
	LDR 	r3, [sp, #16]
	LDR 	r12, [sp, #20]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	LDR 	r3, [r0, #48]
	LDR 	r12, [r0, #52]
	LDR 	lr, [sp, #24]
	LDR 	r4, [sp, #28]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	MOV 	lr, r12
	LSL 	r4, r3, #12
	LSL 	r12, r12, #12
	ORR 	r3, r12, r3, lsr #20
	ORR 	r12, r4, lr, lsr #20
	LDR 	lr, [r0, #96]
	LDR 	r4, [r0, #100]
	LDR 	r5, [sp, #32]
	LDR 	r6, [sp, #36]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	MOV 	r5, r4
	LSL 	r6, lr, #11
	LSL 	r4, r4, #11
	ORR 	lr, r4, lr, lsr #21
	ORR 	r4, r6, r5, lsr #21
	LDR 	r5, [r0, #144]
	LDR 	r6, [r0, #148]
	LDR 	r7, [sp, #40]
	LDR 	r8, [sp, #44]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	MOV 	r7, r5
	LSL 	r8, r6, #21
	LSL 	r5, r5, #21
	ORR 	r5, r5, r6, lsr #11
	ORR 	r6, r8, r7, lsr #11
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
	EOR 	lr, r9, lr
	EOR 	r4, r10, r4
	LDR 	r9, [sp, #4]
	STR 	lr, [r9, #16]
	STR 	r4, [r9, #20]
	STR 	r9, [sp, #4]
	BIC 	lr, r1, r7
	BIC 	r4, r2, r8
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #4]
	STR 	lr, [r5, #24]
	STR 	r4, [r5, #28]
	STR 	r5, [sp, #4]
	BIC 	r1, r3, r1
	BIC 	r2, r12, r2
	EOR 	r1, r1, r7
	EOR 	r2, r2, r8
	LDR 	r3, [sp, #4]
	STR 	r1, [r3, #32]
	STR 	r2, [r3, #36]
	STR 	r3, [sp, #4]
	LDR 	r1, [r0, #24]
	LDR 	r2, [r0, #28]
	LDR 	r3, [sp, #40]
	LDR 	r12, [sp, #44]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	MOV 	r3, r1
	LSL 	r12, r2, #28
	LSL 	r1, r1, #28
	ORR 	r1, r1, r2, lsr #4
	ORR 	r2, r12, r3, lsr #4
	LDR 	r3, [r0, #72]
	LDR 	r12, [r0, #76]
	LDR 	lr, [sp, #48]
	LDR 	r4, [sp, #52]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	MOV 	lr, r3
	LSL 	r4, r12, #20
	LSL 	r3, r3, #20
	ORR 	r3, r3, r12, lsr #12
	ORR 	r12, r4, lr, lsr #12
	LDR 	lr, [r0, #80]
	LDR 	r4, [r0, #84]
	LDR 	r5, [sp, #16]
	LDR 	r6, [sp, #20]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	MOV 	r5, lr
	LSL 	r6, r4, #3
	LSL 	lr, lr, #3
	ORR 	lr, lr, r4, lsr #29
	ORR 	r4, r6, r5, lsr #29
	LDR 	r5, [r0, #128]
	LDR 	r6, [r0, #132]
	LDR 	r7, [sp, #24]
	LDR 	r8, [sp, #28]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	MOV 	r7, r6
	LSL 	r8, r5, #13
	LSL 	r6, r6, #13
	ORR 	r5, r6, r5, lsr #19
	ORR 	r6, r8, r7, lsr #19
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
	EOR 	lr, r9, lr
	EOR 	r4, r10, r4
	LDR 	r9, [sp, #4]
	STR 	lr, [r9, #56]
	STR 	r4, [r9, #60]
	STR 	r9, [sp, #4]
	BIC 	lr, r1, r7
	BIC 	r4, r2, r8
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #4]
	STR 	lr, [r5, #64]
	STR 	r4, [r5, #68]
	STR 	r5, [sp, #4]
	BIC 	r1, r3, r1
	BIC 	r2, r12, r2
	EOR 	r1, r1, r7
	EOR 	r2, r2, r8
	LDR 	r3, [sp, #4]
	STR 	r1, [r3, #72]
	STR 	r2, [r3, #76]
	STR 	r3, [sp, #4]
	LDR 	r1, [r0, #8]
	LDR 	r2, [r0, #12]
	LDR 	r3, [sp, #24]
	LDR 	r12, [sp, #28]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	MOV 	r3, r1
	LSL 	r12, r2, #1
	LSL 	r1, r1, #1
	ORR 	r1, r1, r2, lsr #31
	ORR 	r2, r12, r3, lsr #31
	LDR 	r3, [r0, #56]
	LDR 	r12, [r0, #60]
	LDR 	lr, [sp, #32]
	LDR 	r4, [sp, #36]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	MOV 	lr, r3
	LSL 	r4, r12, #6
	LSL 	r3, r3, #6
	ORR 	r3, r3, r12, lsr #26
	ORR 	r12, r4, lr, lsr #26
	LDR 	lr, [r0, #104]
	LDR 	r4, [r0, #108]
	LDR 	r5, [sp, #40]
	LDR 	r6, [sp, #44]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	MOV 	r5, lr
	LSL 	r6, r4, #25
	LSL 	lr, lr, #25
	ORR 	lr, lr, r4, lsr #7
	ORR 	r4, r6, r5, lsr #7
	LDR 	r5, [r0, #152]
	LDR 	r6, [r0, #156]
	LDR 	r7, [sp, #48]
	LDR 	r8, [sp, #52]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	MOV 	r7, r5
	LSL 	r8, r6, #8
	LSL 	r5, r5, #8
	ORR 	r5, r5, r6, lsr #24
	ORR 	r6, r8, r7, lsr #24
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
	EOR 	lr, r9, lr
	EOR 	r4, r10, r4
	LDR 	r9, [sp, #4]
	STR 	lr, [r9, #96]
	STR 	r4, [r9, #100]
	STR 	r9, [sp, #4]
	BIC 	lr, r1, r7
	BIC 	r4, r2, r8
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #4]
	STR 	lr, [r5, #104]
	STR 	r4, [r5, #108]
	STR 	r5, [sp, #4]
	BIC 	r1, r3, r1
	BIC 	r2, r12, r2
	EOR 	r1, r1, r7
	EOR 	r2, r2, r8
	LDR 	r3, [sp, #4]
	STR 	r1, [r3, #112]
	STR 	r2, [r3, #116]
	STR 	r3, [sp, #4]
	LDR 	r1, [r0, #32]
	LDR 	r2, [r0, #36]
	LDR 	r3, [sp, #48]
	LDR 	r12, [sp, #52]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	MOV 	r3, r1
	LSL 	r12, r2, #27
	LSL 	r1, r1, #27
	ORR 	r1, r1, r2, lsr #5
	ORR 	r2, r12, r3, lsr #5
	LDR 	r3, [r0, #40]
	LDR 	r12, [r0, #44]
	LDR 	lr, [sp, #16]
	LDR 	r4, [sp, #20]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	MOV 	lr, r12
	LSL 	r4, r3, #4
	LSL 	r12, r12, #4
	ORR 	r3, r12, r3, lsr #28
	ORR 	r12, r4, lr, lsr #28
	LDR 	lr, [r0, #88]
	LDR 	r4, [r0, #92]
	LDR 	r5, [sp, #24]
	LDR 	r6, [sp, #28]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	MOV 	r5, lr
	LSL 	r6, r4, #10
	LSL 	lr, lr, #10
	ORR 	lr, lr, r4, lsr #22
	ORR 	r4, r6, r5, lsr #22
	LDR 	r5, [r0, #136]
	LDR 	r6, [r0, #140]
	LDR 	r7, [sp, #32]
	LDR 	r8, [sp, #36]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	MOV 	r7, r5
	LSL 	r8, r6, #15
	LSL 	r5, r5, #15
	ORR 	r5, r5, r6, lsr #17
	ORR 	r6, r8, r7, lsr #17
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
	EOR 	lr, r9, lr
	EOR 	r4, r10, r4
	LDR 	r9, [sp, #4]
	STR 	lr, [r9, #136]
	STR 	r4, [r9, #140]
	STR 	r9, [sp, #4]
	BIC 	lr, r1, r7
	BIC 	r4, r2, r8
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #4]
	STR 	lr, [r5, #144]
	STR 	r4, [r5, #148]
	STR 	r5, [sp, #4]
	BIC 	r1, r3, r1
	BIC 	r2, r12, r2
	EOR 	r1, r1, r7
	EOR 	r2, r2, r8
	LDR 	r3, [sp, #4]
	STR 	r1, [r3, #152]
	STR 	r2, [r3, #156]
	STR 	r3, [sp, #4]
	LDR 	r1, [r0, #16]
	LDR 	r2, [r0, #20]
	LDR 	r3, [sp, #32]
	LDR 	r12, [sp, #36]
	EOR 	r1, r1, r3
	EOR 	r2, r2, r12
	MOV 	r3, r2
	LSL 	r12, r1, #30
	LSL 	r2, r2, #30
	ORR 	r1, r2, r1, lsr #2
	ORR 	r2, r12, r3, lsr #2
	LDR 	r3, [r0, #64]
	LDR 	r12, [r0, #68]
	LDR 	lr, [sp, #40]
	LDR 	r4, [sp, #44]
	EOR 	r3, r3, lr
	EOR 	r12, r12, r4
	MOV 	lr, r12
	LSL 	r4, r3, #23
	LSL 	r12, r12, #23
	ORR 	r3, r12, r3, lsr #9
	ORR 	r12, r4, lr, lsr #9
	LDR 	lr, [r0, #112]
	LDR 	r4, [r0, #116]
	LDR 	r5, [sp, #48]
	LDR 	r6, [sp, #52]
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	MOV 	r5, r4
	LSL 	r6, lr, #7
	LSL 	r4, r4, #7
	ORR 	lr, r4, lr, lsr #25
	ORR 	r4, r6, r5, lsr #25
	LDR 	r5, [r0, #120]
	LDR 	r6, [r0, #124]
	LDR 	r7, [sp, #16]
	LDR 	r8, [sp, #20]
	EOR 	r5, r5, r7
	EOR 	r6, r6, r8
	MOV 	r7, r6
	LSL 	r8, r5, #9
	LSL 	r6, r6, #9
	ORR 	r5, r6, r5, lsr #23
	ORR 	r6, r8, r7, lsr #23
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
	EOR 	lr, r9, lr
	EOR 	r4, r10, r4
	LDR 	r9, [sp, #4]
	STR 	lr, [r9, #176]
	STR 	r4, [r9, #180]
	STR 	r9, [sp, #4]
	BIC 	lr, r1, r7
	BIC 	r4, r2, r8
	EOR 	lr, lr, r5
	EOR 	r4, r4, r6
	LDR 	r5, [sp, #4]
	STR 	lr, [r5, #184]
	STR 	r4, [r5, #188]
	STR 	r5, [sp, #4]
	BIC 	r1, r3, r1
	BIC 	r2, r12, r2
	EOR 	r1, r1, r7
	EOR 	r2, r2, r8
	LDR 	r3, [sp, #4]
	STR 	r1, [r3, #192]
	STR 	r2, [r3, #196]
	STR 	r3, [sp, #4]
	LDR 	r1, [sp, #4]
	pop 	{pc}
	.p2align	5
glob_data:
G$ZETAS:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-9
	.byte	100
	.byte	0
	.byte	0
	.byte	2
	.byte	49
	.byte	-40
	.byte	-1
	.byte	3
	.byte	21
	.byte	-8
	.byte	-1
	.byte	68
	.byte	-98
	.byte	3
	.byte	0
	.byte	24
	.byte	33
	.byte	-12
	.byte	-1
	.byte	40
	.byte	-95
	.byte	-14
	.byte	-1
	.byte	36
	.byte	30
	.byte	7
	.byte	0
	.byte	43
	.byte	-34
	.byte	27
	.byte	0
	.byte	43
	.byte	-23
	.byte	35
	.byte	0
	.byte	-83
	.byte	-124
	.byte	-6
	.byte	-1
	.byte	127
	.byte	20
	.byte	-32
	.byte	-1
	.byte	117
	.byte	-102
	.byte	47
	.byte	0
	.byte	9
	.byte	-5
	.byte	-45
	.byte	-1
	.byte	73
	.byte	122
	.byte	47
	.byte	0
	.byte	39
	.byte	-27
	.byte	40
	.byte	0
	.byte	88
	.byte	-106
	.byte	41
	.byte	0
	.byte	112
	.byte	-96
	.byte	15
	.byte	0
	.byte	-92
	.byte	-123
	.byte	-17
	.byte	-1
	.byte	-120
	.byte	-73
	.byte	54
	.byte	0
	.byte	-112
	.byte	-99
	.byte	-9
	.byte	-1
	.byte	-96
	.byte	-22
	.byte	-18
	.byte	-1
	.byte	104
	.byte	-7
	.byte	39
	.byte	0
	.byte	123
	.byte	-45
	.byte	-33
	.byte	-1
	.byte	-42
	.byte	-83
	.byte	-33
	.byte	-1
	.byte	-25
	.byte	26
	.byte	-59
	.byte	-1
	.byte	-9
	.byte	-92
	.byte	-22
	.byte	-1
	.byte	-104
	.byte	-4
	.byte	-51
	.byte	-1
	.byte	53
	.byte	-48
	.byte	26
	.byte	0
	.byte	34
	.byte	-76
	.byte	-1
	.byte	-1
	.byte	1
	.byte	50
	.byte	61
	.byte	0
	.byte	-59
	.byte	69
	.byte	4
	.byte	0
	.byte	103
	.byte	74
	.byte	41
	.byte	0
	.byte	32
	.byte	118
	.byte	1
	.byte	0
	.byte	-51
	.byte	-12
	.byte	46
	.byte	0
	.byte	-59
	.byte	-34
	.byte	53
	.byte	0
	.byte	3
	.byte	-91
	.byte	-26
	.byte	-1
	.byte	44
	.byte	48
	.byte	-55
	.byte	-1
	.byte	-44
	.byte	71
	.byte	-39
	.byte	-1
	.byte	-81
	.byte	-66
	.byte	59
	.byte	0
	.byte	-123
	.byte	21
	.byte	-59
	.byte	-1
	.byte	124
	.byte	-114
	.byte	-47
	.byte	-1
	.byte	-106
	.byte	-118
	.byte	54
	.byte	0
	.byte	65
	.byte	62
	.byte	-44
	.byte	-1
	.byte	0
	.byte	4
	.byte	54
	.byte	0
	.byte	77
	.byte	106
	.byte	-5
	.byte	-1
	.byte	-100
	.byte	-42
	.byte	35
	.byte	0
	.byte	93
	.byte	-59
	.byte	-9
	.byte	-1
	.byte	61
	.byte	18
	.byte	-26
	.byte	-1
	.byte	-42
	.byte	-22
	.byte	-26
	.byte	-1
	.byte	30
	.byte	126
	.byte	53
	.byte	0
	.byte	89
	.byte	-81
	.byte	-59
	.byte	-1
	.byte	63
	.byte	-124
	.byte	53
	.byte	0
	.byte	23
	.byte	86
	.byte	-33
	.byte	-1
	.byte	92
	.byte	-108
	.byte	-25
	.byte	-1
	.byte	-116
	.byte	115
	.byte	56
	.byte	0
	.byte	-88
	.byte	99
	.byte	12
	.byte	0
	.byte	-102
	.byte	27
	.byte	8
	.byte	0
	.byte	118
	.byte	-113
	.byte	14
	.byte	0
	.byte	83
	.byte	56
	.byte	59
	.byte	0
	.byte	52
	.byte	-123
	.byte	59
	.byte	0
	.byte	48
	.byte	-4
	.byte	-40
	.byte	-1
	.byte	84
	.byte	-99
	.byte	31
	.byte	0
	.byte	45
	.byte	79
	.byte	-43
	.byte	-1
	.byte	-27
	.byte	6
	.byte	-60
	.byte	-1
	.byte	-127
	.byte	-84
	.byte	-24
	.byte	-1
	.byte	-49
	.byte	-31
	.byte	-57
	.byte	-1
	.byte	25
	.byte	-104
	.byte	-47
	.byte	-1
	.byte	93
	.byte	-42
	.byte	-23
	.byte	-1
	.byte	-18
	.byte	9
	.byte	53
	.byte	0
	.byte	-57
	.byte	53
	.byte	33
	.byte	0
	.byte	-69
	.byte	-49
	.byte	-25
	.byte	-1
	.byte	117
	.byte	-49
	.byte	-20
	.byte	-1
	.byte	114
	.byte	-105
	.byte	29
	.byte	0
	.byte	114
	.byte	-80
	.byte	-63
	.byte	-1
	.byte	-10
	.byte	-68
	.byte	-16
	.byte	-1
	.byte	-128
	.byte	82
	.byte	-49
	.byte	-1
	.byte	-82
	.byte	-46
	.byte	-49
	.byte	-1
	.byte	-32
	.byte	-112
	.byte	-56
	.byte	-1
	.byte	-54
	.byte	-17
	.byte	1
	.byte	0
	.byte	-14
	.byte	16
	.byte	52
	.byte	0
	.byte	-123
	.byte	-2
	.byte	-16
	.byte	-1
	.byte	56
	.byte	-58
	.byte	32
	.byte	0
	.byte	-97
	.byte	110
	.byte	41
	.byte	0
	.byte	-93
	.byte	-73
	.byte	-46
	.byte	-1
	.byte	75
	.byte	-92
	.byte	-57
	.byte	-1
	.byte	109
	.byte	-70
	.byte	-7
	.byte	-1
	.byte	9
	.byte	52
	.byte	-38
	.byte	-1
	.byte	-126
	.byte	-62
	.byte	-11
	.byte	-1
	.byte	19
	.byte	65
	.byte	-19
	.byte	-1
	.byte	59
	.byte	-90
	.byte	-1
	.byte	-1
	.byte	-9
	.byte	9
	.byte	-20
	.byte	-1
	.byte	-35
	.byte	43
	.byte	-6
	.byte	-1
	.byte	-44
	.byte	-107
	.byte	20
	.byte	0
	.byte	99
	.byte	69
	.byte	28
	.byte	0
	.byte	98
	.byte	44
	.byte	-22
	.byte	-1
	.byte	-23
	.byte	-5
	.byte	-52
	.byte	-1
	.byte	-16
	.byte	10
	.byte	4
	.byte	0
	.byte	23
	.byte	-60
	.byte	7
	.byte	0
	.byte	-120
	.byte	69
	.byte	47
	.byte	0
	.byte	0
	.byte	-83
	.byte	0
	.byte	0
	.byte	-66
	.byte	54
	.byte	-17
	.byte	-1
	.byte	68
	.byte	-51
	.byte	13
	.byte	0
	.byte	90
	.byte	103
	.byte	60
	.byte	0
	.byte	-54
	.byte	43
	.byte	-57
	.byte	-1
	.byte	126
	.byte	-34
	.byte	-1
	.byte	-1
	.byte	72
	.byte	57
	.byte	25
	.byte	0
	.byte	-64
	.byte	105
	.byte	-50
	.byte	-1
	.byte	108
	.byte	117
	.byte	36
	.byte	0
	.byte	-33
	.byte	-57
	.byte	-4
	.byte	-1
	.byte	-95
	.byte	-104
	.byte	11
	.byte	0
	.byte	8
	.byte	-24
	.byte	-21
	.byte	-1
	.byte	108
	.byte	-28
	.byte	2
	.byte	0
	.byte	8
	.byte	-56
	.byte	-55
	.byte	-1
	.byte	-62
	.byte	54
	.byte	48
	.byte	0
	.byte	-10
	.byte	-65
	.byte	-29
	.byte	-1
	.byte	-109
	.byte	60
	.byte	-37
	.byte	-1
	.byte	-32
	.byte	74
	.byte	-3
	.byte	-1
	.byte	5
	.byte	19
	.byte	20
	.byte	0
	.byte	-110
	.byte	119
	.byte	20
	.byte	0
	.byte	37
	.byte	-98
	.byte	19
	.byte	0
	.byte	-32
	.byte	-48
	.byte	-25
	.byte	-1
	.byte	68
	.byte	-103
	.byte	-13
	.byte	-1
	.byte	2
	.byte	8
	.byte	-22
	.byte	-1
	.byte	-94
	.byte	-18
	.byte	-47
	.byte	-1
	.byte	-100
	.byte	-57
	.byte	-60
	.byte	-1
	.byte	87
	.byte	-96
	.byte	-56
	.byte	-1
	.byte	-39
	.byte	-105
	.byte	58
	.byte	0
	.byte	-109
	.byte	-22
	.byte	31
	.byte	0
	.byte	90
	.byte	-1
	.byte	51
	.byte	0
	.byte	-44
	.byte	88
	.byte	35
	.byte	0
	.byte	-8
	.byte	65
	.byte	58
	.byte	0
	.byte	114
	.byte	-1
	.byte	-52
	.byte	-1
	.byte	-5
	.byte	61
	.byte	34
	.byte	0
	.byte	-97
	.byte	-85
	.byte	-38
	.byte	-1
	.byte	34
	.byte	-92
	.byte	-55
	.byte	-1
	.byte	-11
	.byte	18
	.byte	4
	.byte	0
	.byte	-121
	.byte	37
	.byte	37
	.byte	0
	.byte	-16
	.byte	36
	.byte	-19
	.byte	-1
	.byte	93
	.byte	-101
	.byte	53
	.byte	0
	.byte	-96
	.byte	72
	.byte	-54
	.byte	-1
	.byte	-4
	.byte	-94
	.byte	-58
	.byte	-1
	.byte	86
	.byte	-69
	.byte	-19
	.byte	-1
	.byte	-34
	.byte	69
	.byte	-49
	.byte	-1
	.byte	94
	.byte	-66
	.byte	13
	.byte	0
	.byte	26
	.byte	94
	.byte	28
	.byte	0
	.byte	-26
	.byte	-32
	.byte	13
	.byte	0
	.byte	90
	.byte	127
	.byte	12
	.byte	0
	.byte	-125
	.byte	-113
	.byte	7
	.byte	0
	.byte	-118
	.byte	98
	.byte	-25
	.byte	-1
	.byte	4
	.byte	87
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	6
	.byte	-8
	.byte	-1
	.byte	33
	.byte	0
	.byte	-10
	.byte	-1
	.byte	-10
	.byte	90
	.byte	-48
	.byte	-1
	.byte	-124
	.byte	0
	.byte	31
	.byte	0
	.byte	-122
	.byte	-17
	.byte	48
	.byte	0
	.byte	125
	.byte	-71
	.byte	-55
	.byte	-1
	.byte	-42
	.byte	-4
	.byte	-9
	.byte	-1
	.byte	-110
	.byte	69
	.byte	-12
	.byte	-1
	.byte	-62
	.byte	33
	.byte	-55
	.byte	-1
	.byte	25
	.byte	57
	.byte	5
	.byte	0
	.byte	12
	.byte	97
	.byte	4
	.byte	0
	.byte	65
	.byte	-51
	.byte	-38
	.byte	-1
	.byte	27
	.byte	-80
	.byte	62
	.byte	0
	.byte	-25
	.byte	114
	.byte	52
	.byte	0
	.byte	59
	.byte	0
	.byte	-51
	.byte	-1
	.byte	-57
	.byte	124
	.byte	26
	.byte	0
	.byte	36
	.byte	25
	.byte	3
	.byte	0
	.byte	-27
	.byte	94
	.byte	43
	.byte	0
	.byte	-103
	.byte	17
	.byte	41
	.byte	0
	.byte	58
	.byte	122
	.byte	-40
	.byte	-1
	.byte	113
	.byte	77
	.byte	19
	.byte	0
	.byte	28
	.byte	-31
	.byte	61
	.byte	0
	.byte	-124
	.byte	9
	.byte	19
	.byte	0
	.byte	81
	.byte	-16
	.byte	37
	.byte	0
	.byte	70
	.byte	90
	.byte	24
	.byte	0
	.byte	24
	.byte	-123
	.byte	-58
	.byte	-1
	.byte	-66
	.byte	20
	.byte	19
	.byte	0
	.byte	-111
	.byte	56
	.byte	40
	.byte	0
	.byte	-112
	.byte	-37
	.byte	-55
	.byte	-1
	.byte	-119
	.byte	80
	.byte	-46
	.byte	-1
	.byte	63
	.byte	-123
	.byte	28
	.byte	0
	.byte	75
	.byte	11
	.byte	29
	.byte	0
	.byte	-90
	.byte	-10
	.byte	-17
	.byte	-1
	.byte	-66
	.byte	-88
	.byte	-21
	.byte	-1
	.byte	27
	.byte	-31
	.byte	18
	.byte	0
	.byte	62
	.byte	94
	.byte	-51
	.byte	-1
	.byte	47
	.byte	45
	.byte	-22
	.byte	-1
	.byte	-28
	.byte	29
	.byte	-7
	.byte	-1
	.byte	-57
	.byte	6
	.byte	20
	.byte	0
	.byte	-125
	.byte	114
	.byte	50
	.byte	0
	.byte	110
	.byte	13
	.byte	-30
	.byte	-1
	.byte	83
	.byte	121
	.byte	-20
	.byte	-1
	.byte	-103
	.byte	64
	.byte	29
	.byte	0
	.byte	120
	.byte	37
	.byte	-39
	.byte	-1
	.byte	-83
	.byte	5
	.byte	-21
	.byte	-1
	.byte	5
	.byte	-28
	.byte	22
	.byte	0
	.byte	-25
	.byte	-37
	.byte	11
	.byte	0
	.byte	-24
	.byte	29
	.byte	34
	.byte	0
	.byte	-49
	.byte	-8
	.byte	51
	.byte	0
	.byte	52
	.byte	-71
	.byte	-9
	.byte	-1
	.byte	12
	.byte	-54
	.byte	-44
	.byte	-1
	.byte	-8
	.byte	127
	.byte	-26
	.byte	-1
	.byte	87
	.byte	-47
	.byte	-29
	.byte	-1
	.byte	27
	.byte	-111
	.byte	-40
	.byte	-1
	.byte	18
	.byte	44
	.byte	-57
	.byte	-1
	.byte	-40
	.byte	16
	.byte	9
	.byte	0
	.byte	31
	.byte	94
	.byte	-58
	.byte	-1
	.byte	88
	.byte	70
	.byte	-31
	.byte	-1
	.byte	-117
	.byte	29
	.byte	37
	.byte	0
	.byte	-73
	.byte	115
	.byte	37
	.byte	0
	.byte	-113
	.byte	124
	.byte	-3
	.byte	-1
	.byte	-104
	.byte	-35
	.byte	29
	.byte	0
	.byte	-104
	.byte	104
	.byte	51
	.byte	0
	.byte	-69
	.byte	-44
	.byte	2
	.byte	0
	.byte	-89
	.byte	-109
	.byte	-19
	.byte	-1
	.byte	-66
	.byte	108
	.byte	-49
	.byte	-1
	.byte	28
	.byte	124
	.byte	2
	.byte	0
	.byte	8
	.byte	-86
	.byte	24
	.byte	0
	.byte	113
	.byte	-3
	.byte	45
	.byte	0
	.byte	-91
	.byte	92
	.byte	12
	.byte	0
	.byte	-102
	.byte	55
	.byte	25
	.byte	0
	.byte	103
	.byte	-95
	.byte	-57
	.byte	-1
	.byte	61
	.byte	-116
	.byte	-28
	.byte	-1
	.byte	60
	.byte	-95
	.byte	-47
	.byte	-1
	.byte	57
	.byte	-59
	.byte	53
	.byte	0
	.byte	21
	.byte	1
	.byte	59
	.byte	0
	.byte	-64
	.byte	29
	.byte	4
	.byte	0
	.byte	-9
	.byte	-60
	.byte	33
	.byte	0
	.byte	-12
	.byte	27
	.byte	-15
	.byte	-1
	.byte	-25
	.byte	53
	.byte	26
	.byte	0
	.byte	14
	.byte	52
	.byte	7
	.byte	0
	.byte	69
	.byte	125
	.byte	-7
	.byte	-1
	.byte	-48
	.byte	76
	.byte	26
	.byte	0
	.byte	-82
	.byte	124
	.byte	-28
	.byte	-1
	.byte	104
	.byte	38
	.byte	29
	.byte	0
	.byte	-104
	.byte	-114
	.byte	-26
	.byte	-1
	.byte	51
	.byte	38
	.byte	-17
	.byte	-1
	.byte	-38
	.byte	5
	.byte	-4
	.byte	-1
	.byte	-37
	.byte	127
	.byte	-59
	.byte	-1
	.byte	100
	.byte	39
	.byte	-45
	.byte	-1
	.byte	-81
	.byte	-31
	.byte	-35
	.byte	-1
	.byte	-35
	.byte	-109
	.byte	-7
	.byte	-1
	.byte	9
	.byte	29
	.byte	-35
	.byte	-1
	.byte	-109
	.byte	-52
	.byte	2
	.byte	0
	.byte	5
	.byte	24
	.byte	-15
	.byte	-1
	.byte	42
	.byte	-100
	.byte	24
	.byte	0
	.byte	-87
	.byte	-27
	.byte	-55
	.byte	-1
	.byte	80
	.byte	-118
	.byte	-9
	.byte	-1
	.byte	44
	.byte	-49
	.byte	59
	.byte	0
	.byte	78
	.byte	67
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	54
	.byte	-21
	.byte	-1
	.byte	-54
	.byte	21
	.byte	60
	.byte	0
	.byte	104
	.byte	94
	.byte	21
	.byte	0
	.byte	-74
	.byte	22
	.byte	-13
	.byte	-1
	.byte	-50
	.byte	41
	.byte	30
	.byte	0
G$KECCAK1600_RC:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-126
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-118
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-117
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	9
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-120
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-119
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	3
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	2
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	10
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-127
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	1
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	-128
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
