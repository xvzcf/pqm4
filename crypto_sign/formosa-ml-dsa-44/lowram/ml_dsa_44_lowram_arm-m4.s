	.thumb
	.syntax unified
	.global	_ml_dsa_44_verify
	.global	ml_dsa_44_verify
	.global	_ml_dsa_44_sign
	.global	ml_dsa_44_sign
	.global	_ml_dsa_44_keygen
	.global	ml_dsa_44_keygen
_ml_dsa_44_verify:
ml_dsa_44_verify:
	push	{lr}
	SUBw	lr, sp, #2300
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	STR 	r4, [sp, #2264]
	STR 	r5, [sp, #2268]
	STR 	r6, [sp, #2272]
	STR 	r7, [sp, #2276]
	STR 	r8, [sp, #2280]
	STR 	r9, [sp, #2284]
	STR 	r10, [sp, #2288]
	STR 	r11, [sp, #2292]
	STR 	r12, [sp, #2296]
	LDR 	r12, [r2]
	CMP 	r12, #255
	bhi 	Lml_dsa_44_verify$2
	STR 	r2, [sp]
	STR 	r1, [sp, #4]
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #12]
	STR 	r0, [sp, #16]
	ADD 	r0, sp, #68
	LDR 	r3, [sp, #12]
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_44_verify$184:
	ADD 	sp, sp, #8
	LDR 	r2, [sp]
	LDR 	r1, [r2]
	MOV 	r7, #0
	STRB	r7, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	STRH	r1, [r0, #66]
	MOV 	r2, #17
	b   	Lml_dsa_44_verify$182
Lml_dsa_44_verify$183:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_verify$182:
	CMP 	r2, #50
	bcc 	Lml_dsa_44_verify$183
	MOV 	r2, #66
	LDR 	r1, [sp, #4]
	LDR 	r3, [r1]
	STR 	r1, [sp, #4]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_44_verify$181:
	ADD 	sp, sp, #8
	LDR 	r1, [sp]
	LDR 	r12, [r1, #4]
	LDR 	r1, [sp, #4]
	LDR 	r3, [r1, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_44_verify$180:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_44_verify$179:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_verify$178:
	ADD 	sp, sp, #212
	LDR 	r7, [r0]
	STR 	r7, [sp, #268]
	LDR 	r7, [r0, #4]
	STR 	r7, [sp, #272]
	LDR 	r7, [r0, #8]
	STR 	r7, [sp, #276]
	LDR 	r7, [r0, #12]
	STR 	r7, [sp, #280]
	LDR 	r7, [r0, #16]
	STR 	r7, [sp, #284]
	LDR 	r7, [r0, #20]
	STR 	r7, [sp, #288]
	LDR 	r7, [r0, #24]
	STR 	r7, [sp, #292]
	LDR 	r7, [r0, #28]
	STR 	r7, [sp, #296]
	LDR 	r7, [r0, #32]
	STR 	r7, [sp, #300]
	LDR 	r7, [r0, #36]
	STR 	r7, [sp, #304]
	LDR 	r7, [r0, #40]
	STR 	r7, [sp, #308]
	LDR 	r7, [r0, #44]
	STR 	r7, [sp, #312]
	LDR 	r7, [r0, #48]
	STR 	r7, [sp, #316]
	LDR 	r7, [r0, #52]
	STR 	r7, [sp, #320]
	LDR 	r7, [r0, #56]
	STR 	r7, [sp, #324]
	LDR 	r7, [r0, #60]
	STR 	r7, [sp, #328]
	LDR 	r1, [sp, #16]
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_44_verify$177:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #20
	ADD 	r2, sp, #1240
	bl  	L_poly_compress_challenge$1
Lml_dsa_44_verify$176:
	ADD 	r12, sp, #268
	MOV 	r2, #0
	b   	Lml_dsa_44_verify$174
Lml_dsa_44_verify$175:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_verify$174:
	CMP 	r2, #16
	bcc 	Lml_dsa_44_verify$175
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_44_verify$172
Lml_dsa_44_verify$173:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_verify$172:
	CMP 	r2, #50
	bcc 	Lml_dsa_44_verify$173
	MOV 	r2, #64
	STR 	r2, [sp, #4]
	MOV 	r0, #0
	STR 	r0, [sp]
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$131
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #32
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$171:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$170:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$131
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$169:
	ADD 	r0, sp, #468
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_verify$167
Lml_dsa_44_verify$168:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_verify$167:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_verify$168
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #268
	MOV 	r2, #0
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$166:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$160
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #608
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$165:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$164:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$160
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$163:
	ADD 	r1, sp, #268
	MOV 	r2, #1
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$162:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$161:
Lml_dsa_44_verify$160:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$154
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1184
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$159:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$158:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$154
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$157:
	ADD 	r1, sp, #268
	MOV 	r2, #2
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$156:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$155:
Lml_dsa_44_verify$154:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$148
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1760
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$153:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$152:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$148
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$151:
	ADD 	r1, sp, #268
	MOV 	r2, #3
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$150:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$149:
Lml_dsa_44_verify$148:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$131
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_verify$147:
	ADD 	r0, sp, #1240
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_verify$146:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$145:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$144:
	ADD 	r0, sp, #468
	ADD 	r1, sp, #1240
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_verify$143:
	ADD 	r0, sp, #1240
	ADD 	r12, r3, #32
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_44_verify$142:
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_verify$141:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$140:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$139:
	ADD 	r1, sp, #268
	LDR 	r0, [sp, #16]
	MOV 	r4, #0
	ADD 	r2, r0, #2336
	bl  	L_unpack_hint_at_index$1
Lml_dsa_44_verify$138:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_44_verify$131
	ADD 	r1, sp, #1240
	ADD 	r2, sp, #268
	bl  	L_poly_use_hint$1
Lml_dsa_44_verify$137:
	ADD 	r1, sp, #468
	ADD 	r2, sp, #1240
	bl  	L_polyw1_pack$1
Lml_dsa_44_verify$136:
	ADD 	r0, sp, #68
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_44_verify$135:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_44_verify$134:
Lml_dsa_44_verify$133:
Lml_dsa_44_verify$132:
Lml_dsa_44_verify$131:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$90
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #32
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$130:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$129:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$90
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$128:
	ADD 	r0, sp, #468
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_verify$126
Lml_dsa_44_verify$127:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_verify$126:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_verify$127
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #268
	MOV 	r2, #0
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$125:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$119
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #608
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$124:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$123:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$119
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$122:
	ADD 	r1, sp, #268
	MOV 	r2, #1
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$121:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$120:
Lml_dsa_44_verify$119:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$113
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1184
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$118:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$117:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$113
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$116:
	ADD 	r1, sp, #268
	MOV 	r2, #2
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$115:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$114:
Lml_dsa_44_verify$113:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$107
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1760
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$112:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$111:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$107
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$110:
	ADD 	r1, sp, #268
	MOV 	r2, #3
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$109:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$108:
Lml_dsa_44_verify$107:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$90
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_verify$106:
	ADD 	r0, sp, #1240
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_verify$105:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$104:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$103:
	ADD 	r0, sp, #468
	ADD 	r1, sp, #1240
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_verify$102:
	ADD 	r0, sp, #1240
	ADD 	r12, r3, #352
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_44_verify$101:
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_verify$100:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$99:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$98:
	ADD 	r1, sp, #268
	LDR 	r0, [sp, #16]
	MOV 	r4, #1
	ADD 	r2, r0, #2336
	bl  	L_unpack_hint_at_index$1
Lml_dsa_44_verify$97:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_44_verify$90
	ADD 	r1, sp, #1240
	ADD 	r2, sp, #268
	bl  	L_poly_use_hint$1
Lml_dsa_44_verify$96:
	ADD 	r1, sp, #468
	ADD 	r2, sp, #1240
	bl  	L_polyw1_pack$1
Lml_dsa_44_verify$95:
	ADD 	r0, sp, #68
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_44_verify$94:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_44_verify$93:
Lml_dsa_44_verify$92:
Lml_dsa_44_verify$91:
Lml_dsa_44_verify$90:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$49
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #32
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$89:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$88:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$49
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$87:
	ADD 	r0, sp, #468
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_verify$85
Lml_dsa_44_verify$86:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_verify$85:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_verify$86
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #268
	MOV 	r2, #0
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$84:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$78
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #608
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$83:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$82:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$78
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$81:
	ADD 	r1, sp, #268
	MOV 	r2, #1
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$80:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$79:
Lml_dsa_44_verify$78:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$72
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1184
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$77:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$76:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$72
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$75:
	ADD 	r1, sp, #268
	MOV 	r2, #2
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$74:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$73:
Lml_dsa_44_verify$72:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$66
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1760
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$71:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$70:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$66
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$69:
	ADD 	r1, sp, #268
	MOV 	r2, #3
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$68:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$67:
Lml_dsa_44_verify$66:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$49
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_verify$65:
	ADD 	r0, sp, #1240
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_verify$64:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$63:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$62:
	ADD 	r0, sp, #468
	ADD 	r1, sp, #1240
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_verify$61:
	ADD 	r0, sp, #1240
	ADD 	r12, r3, #672
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_44_verify$60:
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_verify$59:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$58:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$57:
	ADD 	r1, sp, #268
	LDR 	r0, [sp, #16]
	MOV 	r4, #2
	ADD 	r2, r0, #2336
	bl  	L_unpack_hint_at_index$1
Lml_dsa_44_verify$56:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_44_verify$49
	ADD 	r1, sp, #1240
	ADD 	r2, sp, #268
	bl  	L_poly_use_hint$1
Lml_dsa_44_verify$55:
	ADD 	r1, sp, #468
	ADD 	r2, sp, #1240
	bl  	L_polyw1_pack$1
Lml_dsa_44_verify$54:
	ADD 	r0, sp, #68
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_44_verify$53:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_44_verify$52:
Lml_dsa_44_verify$51:
Lml_dsa_44_verify$50:
Lml_dsa_44_verify$49:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$8
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #32
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$48:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$47:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$8
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$46:
	ADD 	r0, sp, #468
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_verify$44
Lml_dsa_44_verify$45:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_verify$44:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_verify$45
	STRB	r1, [r0, #768]
	ADD 	r1, sp, #268
	MOV 	r2, #0
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$43:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$37
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #608
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$42:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$41:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$37
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$40:
	ADD 	r1, sp, #268
	MOV 	r2, #1
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$39:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$38:
Lml_dsa_44_verify$37:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$31
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1184
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$36:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$35:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$31
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$34:
	ADD 	r1, sp, #268
	MOV 	r2, #2
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$33:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$32:
Lml_dsa_44_verify$31:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$25
	LDR 	r0, [sp, #16]
	ADD 	r1, sp, #1240
	ADD 	r0, r0, #1760
	bl  	L_polyz_unpack$1
Lml_dsa_44_verify$30:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1240
	bl  	L_poly_check_norm$1
Lml_dsa_44_verify$29:
	STR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$25
	ADD 	r0, sp, #1240
	bl  	L_poly_ntt$1
Lml_dsa_44_verify$28:
	ADD 	r1, sp, #268
	MOV 	r2, #3
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #12]
	ADD 	r0, sp, #468
	ADD 	r2, sp, #1240
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_verify$27:
	ADD 	sp, sp, #12
Lml_dsa_44_verify$26:
Lml_dsa_44_verify$25:
	LDR 	r0, [sp]
	CMP 	r0, #0
	bne 	Lml_dsa_44_verify$8
	LDR 	r3, [sp, #12]
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_verify$24:
	ADD 	r0, sp, #1240
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_verify$23:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$22:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$21:
	ADD 	r0, sp, #468
	ADD 	r1, sp, #1240
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_verify$20:
	ADD 	r0, sp, #1240
	ADD 	r12, r3, #992
	ADD 	r1, sp, #20
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t1_by_challenge$1
Lml_dsa_44_verify$19:
	ADD 	r1, sp, #1240
	ADD 	r0, sp, #468
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_verify$18:
	ADD 	r0, sp, #1240
	bl  	L_poly_reduce$1
Lml_dsa_44_verify$17:
	ADD 	r0, sp, #1240
	bl  	L_poly_caddq$1
Lml_dsa_44_verify$16:
	ADD 	r1, sp, #268
	LDR 	r0, [sp, #16]
	MOV 	r4, #3
	ADD 	r2, r0, #2336
	bl  	L_unpack_hint_at_index$1
Lml_dsa_44_verify$15:
	STR 	r12, [sp]
	CMP 	r12, #0
	bne 	Lml_dsa_44_verify$8
	ADD 	r1, sp, #1240
	ADD 	r2, sp, #268
	bl  	L_poly_use_hint$1
Lml_dsa_44_verify$14:
	ADD 	r1, sp, #468
	ADD 	r2, sp, #1240
	bl  	L_polyw1_pack$1
Lml_dsa_44_verify$13:
	ADD 	r0, sp, #68
	LDR 	r3, [sp, #4]
	SUB 	sp, sp, #16
	bl  	L_shake256_absorb_w1_element$1
Lml_dsa_44_verify$12:
	ADD 	sp, sp, #12
	STR 	r3, [sp, #4]
Lml_dsa_44_verify$11:
Lml_dsa_44_verify$10:
Lml_dsa_44_verify$9:
Lml_dsa_44_verify$8:
	LDR 	r2, [sp, #4]
	LDR 	lr, [sp]
	CMP 	lr, #0
	bne 	Lml_dsa_44_verify$2
	ADD 	r0, sp, #68
	bl  	L_shake256_add_block_end$1
Lml_dsa_44_verify$7:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_verify$6:
	ADD 	sp, sp, #212
	LDR 	r1, [sp, #16]
	MOV 	r3, #0
	MOV 	lr, #0
	b   	Lml_dsa_44_verify$4
Lml_dsa_44_verify$5:
	LDR 	r2, [r1, r3]
	LDR 	r12, [r0, r3]
	EOR 	r2, r2, r12
	ORR 	lr, lr, r2
	ADD 	r3, r3, #4
Lml_dsa_44_verify$4:
	CMP 	r3, #32
	bcc 	Lml_dsa_44_verify$5
Lml_dsa_44_verify$3:
Lml_dsa_44_verify$2:
	CMP 	lr, #0
	beq 	Lml_dsa_44_verify$1
	MOV 	lr, #4294967295
Lml_dsa_44_verify$1:
	MOV 	r0, lr
	LDR 	r4, [sp, #2264]
	LDR 	r5, [sp, #2268]
	LDR 	r6, [sp, #2272]
	LDR 	r7, [sp, #2276]
	LDR 	r8, [sp, #2280]
	LDR 	r9, [sp, #2284]
	LDR 	r10, [sp, #2288]
	LDR 	r11, [sp, #2292]
	LDR 	sp, [sp, #2296]
	pop 	{pc}
_ml_dsa_44_sign:
ml_dsa_44_sign:
	push	{lr}
	MOVw	lr, #5560
	SUB 	lr, sp, lr
	BIC 	lr, lr, #3
	MOV 	r12, sp
	MOV 	sp, lr
	MOVw	lr, #5524
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
	bhi 	Lml_dsa_44_sign$1
	STR 	r1, [sp]
	STR 	r12, [sp, #4]
	STR 	lr, [sp, #8]
	STR 	r2, [sp, #12]
	STR 	r3, [sp, #16]
	ADD 	r0, sp, #200
	LDR 	r1, [sp, #16]
	ADD 	r12, r1, #64
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$218
Lml_dsa_44_sign$219:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_sign$218:
	CMP 	r2, #16
	bcc 	Lml_dsa_44_sign$219
	LDR 	r1, [sp, #12]
	LDR 	r1, [r1]
	MOV 	r7, #0
	STRB	r7, [r0, #64]
	STRB	r1, [r0, #65]
	MOV 	r1, #0
	MOV 	r2, #66
	b   	Lml_dsa_44_sign$216
Lml_dsa_44_sign$217:
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
Lml_dsa_44_sign$216:
	CMP 	r2, #200
	bcc 	Lml_dsa_44_sign$217
	MOV 	r2, #66
	LDR 	r1, [sp]
	LDR 	r3, [r1]
	LDR 	r12, [sp, #8]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_44_sign$215:
	ADD 	sp, sp, #8
	LDR 	r1, [sp, #12]
	LDR 	r12, [r1, #4]
	LDR 	r1, [sp]
	LDR 	r3, [r1, #4]
	SUB 	sp, sp, #12
	bl  	L_shake256_inc_absorb_mem_naive$1
Lml_dsa_44_sign$214:
	ADD 	sp, sp, #8
	bl  	L_shake256_add_block_end$1
Lml_dsa_44_sign$213:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_sign$212:
	ADD 	sp, sp, #212
	LDR 	r1, [r0]
	STR 	r1, [sp, #72]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #76]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #80]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #84]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #88]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #92]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #96]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #100]
	LDR 	r1, [r0, #32]
	STR 	r1, [sp, #104]
	LDR 	r1, [r0, #36]
	STR 	r1, [sp, #108]
	LDR 	r1, [r0, #40]
	STR 	r1, [sp, #112]
	LDR 	r1, [r0, #44]
	STR 	r1, [sp, #116]
	LDR 	r1, [r0, #48]
	STR 	r1, [sp, #120]
	LDR 	r1, [r0, #52]
	STR 	r1, [sp, #124]
	LDR 	r1, [r0, #56]
	STR 	r1, [sp, #128]
	LDR 	r1, [r0, #60]
	STR 	r1, [sp, #132]
	LDR 	r1, [sp, #16]
	ADD 	r0, r1, #32
	LDR 	r1, [r0]
	STR 	r1, [sp, #200]
	LDR 	r1, [r0, #4]
	STR 	r1, [sp, #204]
	LDR 	r1, [r0, #8]
	STR 	r1, [sp, #208]
	LDR 	r1, [r0, #12]
	STR 	r1, [sp, #212]
	LDR 	r1, [r0, #16]
	STR 	r1, [sp, #216]
	LDR 	r1, [r0, #20]
	STR 	r1, [sp, #220]
	LDR 	r1, [r0, #24]
	STR 	r1, [sp, #224]
	LDR 	r1, [r0, #28]
	STR 	r1, [sp, #228]
	ADD 	r0, sp, #232
	LDR 	r1, [sp]
	LDR 	r1, [r1, #8]
	LDR 	r7, [r1]
	STR 	r7, [r0]
	LDR 	r7, [r1, #4]
	STR 	r7, [r0, #4]
	LDR 	r7, [r1, #8]
	STR 	r7, [r0, #8]
	LDR 	r7, [r1, #12]
	STR 	r7, [r0, #12]
	LDR 	r7, [r1, #16]
	STR 	r7, [r0, #16]
	LDR 	r7, [r1, #20]
	STR 	r7, [r0, #20]
	LDR 	r7, [r1, #24]
	STR 	r7, [r0, #24]
	LDR 	r7, [r1, #28]
	STR 	r7, [r0, #28]
	ADD 	r0, sp, #264
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
	ADD 	r0, sp, #200
	MOV 	r1, #0
	MOV 	r2, #32
	b   	Lml_dsa_44_sign$210
Lml_dsa_44_sign$211:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_sign$210:
	CMP 	r2, #50
	bcc 	Lml_dsa_44_sign$211
	LDRB	r9, [r0, #128]
	EOR 	r9, r9, #31
	STRB	r9, [r0, #128]
	LDRB	r9, [r0, #135]
	MOV 	r10, #128
	EOR 	r9, r9, r10
	STRB	r9, [r0, #135]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_sign$209:
	ADD 	sp, sp, #212
	ADD 	r1, sp, #136
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
Lml_dsa_44_sign$2:
	LDR 	r0, [sp]
	ADD 	r0, r0, #1
	STR 	r0, [sp]
	ADD 	r0, sp, #2448
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$207
Lml_dsa_44_sign$208:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_sign$207:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_sign$208
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #3217
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$205
Lml_dsa_44_sign$206:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_sign$205:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_sign$206
	STRB	r1, [r0, #768]
	ADDw	r0, sp, #3986
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$203
Lml_dsa_44_sign$204:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_sign$203:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_sign$204
	STRB	r1, [r0, #768]
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	MOV 	r1, #0
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$201
Lml_dsa_44_sign$202:
	STR 	r1, [r0, r2]
	ADD 	r2, r2, #4
Lml_dsa_44_sign$201:
	CMP 	r2, #768
	bcc 	Lml_dsa_44_sign$202
	STRB	r1, [r0, #768]
	LDR 	r0, [sp]
	MOV 	r5, #4
	MUL 	r5, r5, r0
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$200:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$199:
	MOV 	r2, #0
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADD 	r0, sp, #2448
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$198:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3217
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$197:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3986
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$196:
	ADD 	sp, sp, #12
	MOV 	r2, #0
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$195:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r5, #4
	MUL 	r5, r5, r0
	ADD 	r5, r5, #1
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$194:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$193:
	MOV 	r2, #1
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADD 	r0, sp, #2448
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$192:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3217
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$191:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3986
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$190:
	ADD 	sp, sp, #12
	MOV 	r2, #1
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$189:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r5, #4
	MUL 	r5, r5, r0
	ADD 	r5, r5, #2
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$188:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$187:
	MOV 	r2, #2
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADD 	r0, sp, #2448
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$186:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3217
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$185:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3986
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$184:
	ADD 	sp, sp, #12
	MOV 	r2, #2
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$183:
	ADD 	sp, sp, #12
	LDR 	r0, [sp]
	MOV 	r5, #4
	MUL 	r5, r5, r0
	ADD 	r5, r5, #3
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$182:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$181:
	MOV 	r2, #3
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADD 	r0, sp, #2448
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$180:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3217
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$179:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	ADDw	r0, sp, #3986
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$178:
	ADD 	sp, sp, #12
	MOV 	r2, #3
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #16]
	ADD 	r1, sp, #200
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #16
	bl  	L_poly_compute_A_times_polynomial$1
Lml_dsa_44_sign$177:
	ADD 	sp, sp, #12
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #2448
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_sign$176:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$175:
	ADD 	r0, sp, #1424
	bl  	L_poly_caddq$1
Lml_dsa_44_sign$174:
	ADD 	r0, sp, #2448
	ADD 	r1, sp, #1424
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$173:
	ADD 	r0, sp, #1424
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_44_sign$172:
	LDR 	r0, [sp, #4]
	MOV 	r1, r0
	ADD 	r2, sp, #1424
	bl  	L_polyw1_pack$1
Lml_dsa_44_sign$171:
	STR 	r0, [sp, #12]
	ADD 	r1, sp, #1424
	ADDw	r0, sp, #3217
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_sign$170:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$169:
	ADD 	r0, sp, #1424
	bl  	L_poly_caddq$1
Lml_dsa_44_sign$168:
	ADDw	r0, sp, #3217
	ADD 	r1, sp, #1424
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$167:
	ADD 	r0, sp, #1424
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_44_sign$166:
	LDR 	r0, [sp, #12]
	ADD 	r1, r0, #192
	ADD 	r2, sp, #1424
	bl  	L_polyw1_pack$1
Lml_dsa_44_sign$165:
	STR 	r0, [sp, #12]
	ADD 	r1, sp, #1424
	ADDw	r0, sp, #3986
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_sign$164:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$163:
	ADD 	r0, sp, #1424
	bl  	L_poly_caddq$1
Lml_dsa_44_sign$162:
	ADDw	r0, sp, #3986
	ADD 	r1, sp, #1424
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$161:
	ADD 	r0, sp, #1424
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_44_sign$160:
	LDR 	r0, [sp, #12]
	ADD 	r1, r0, #384
	ADD 	r2, sp, #1424
	bl  	L_polyw1_pack$1
Lml_dsa_44_sign$159:
	STR 	r0, [sp, #12]
	ADD 	r1, sp, #1424
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	bl  	L_poly_decompress_w1_element$1
Lml_dsa_44_sign$158:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$157:
	ADD 	r0, sp, #1424
	bl  	L_poly_caddq$1
Lml_dsa_44_sign$156:
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r1, sp, #1424
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$155:
	ADD 	r0, sp, #1424
	bl  	L_poly_high_bits_inplace$1
Lml_dsa_44_sign$154:
	LDR 	r0, [sp, #12]
	ADD 	r1, r0, #576
	ADD 	r2, sp, #1424
	bl  	L_polyw1_pack$1
Lml_dsa_44_sign$153:
	STR 	r0, [sp, #12]
	ADD 	r0, sp, #200
	ADD 	r12, sp, #72
	MOV 	r2, #0
	b   	Lml_dsa_44_sign$151
Lml_dsa_44_sign$152:
	LDR 	r9, [r12, r2, lsl #2]
	STR 	r9, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_sign$151:
	CMP 	r2, #16
	bcc 	Lml_dsa_44_sign$152
	MOV 	r1, #0
	MOV 	r2, #16
	b   	Lml_dsa_44_sign$149
Lml_dsa_44_sign$150:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_sign$149:
	CMP 	r2, #50
	bcc 	Lml_dsa_44_sign$150
	LDR 	r12, [sp, #12]
	MOV 	r2, #64
	MOV 	r3, r12
	MOV 	r12, #0
	b   	Lml_dsa_44_sign$145
Lml_dsa_44_sign$146:
	LDRB	r7, [r3, r12]
	LDRB	r1, [r0, r2]
	EOR 	r1, r1, r7
	STRB	r1, [r0, r2]
	ADD 	r2, r2, #1
	ADD 	r12, r12, #1
	CMP 	r2, #136
	bne 	Lml_dsa_44_sign$145
	STR 	r12, [sp, #8]
	STR 	r3, [sp, #20]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_sign$148:
	ADD 	sp, sp, #212
	LDR 	r12, [sp, #8]
	LDR 	r3, [sp, #20]
	MOV 	r2, #0
Lml_dsa_44_sign$147:
Lml_dsa_44_sign$145:
	CMP 	r12, #768
	bne 	Lml_dsa_44_sign$146
	bl  	L_shake256_add_block_end$1
Lml_dsa_44_sign$144:
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_sign$143:
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
	ADD 	r0, sp, #200
	ADD 	r2, sp, #1424
	SUB 	sp, sp, #24
	bl  	L_poly_generate_challenge$1
Lml_dsa_44_sign$142:
	ADD 	sp, sp, #20
	ADD 	r1, sp, #24
	ADD 	r2, sp, #1424
	bl  	L_poly_compress_challenge$1
Lml_dsa_44_sign$141:
	MOV 	r0, #0
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$128
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$140:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$139:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #128
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$138:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$137:
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #400
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$136:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$135:
	MOV 	r5, #4
	LDR 	r0, [sp]
	MUL 	r5, r5, r0
	ADD 	r0, sp, #400
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$134:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	ADD 	r1, sp, #400
	bl  	L_poly_add_inplace$1
Lml_dsa_44_sign$133:
	ADD 	r0, sp, #1424
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$132:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$131:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$128
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #32
	ADD 	r2, sp, #1424
	bl  	L_polyz_pack$1
Lml_dsa_44_sign$130:
Lml_dsa_44_sign$129:
Lml_dsa_44_sign$128:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$115
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$127:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$126:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #224
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$125:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$124:
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #400
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$123:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$122:
	MOV 	r5, #4
	LDR 	r0, [sp]
	MUL 	r5, r5, r0
	ADD 	r5, r5, #1
	ADD 	r0, sp, #400
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$121:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	ADD 	r1, sp, #400
	bl  	L_poly_add_inplace$1
Lml_dsa_44_sign$120:
	ADD 	r0, sp, #1424
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$119:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$118:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$115
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #608
	ADD 	r2, sp, #1424
	bl  	L_polyz_pack$1
Lml_dsa_44_sign$117:
Lml_dsa_44_sign$116:
Lml_dsa_44_sign$115:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$102
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$114:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$113:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #320
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$112:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$111:
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #400
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$110:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$109:
	MOV 	r5, #4
	LDR 	r0, [sp]
	MUL 	r5, r5, r0
	ADD 	r5, r5, #2
	ADD 	r0, sp, #400
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$108:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	ADD 	r1, sp, #400
	bl  	L_poly_add_inplace$1
Lml_dsa_44_sign$107:
	ADD 	r0, sp, #1424
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$106:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$105:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$102
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1184
	ADD 	r2, sp, #1424
	bl  	L_polyz_pack$1
Lml_dsa_44_sign$104:
Lml_dsa_44_sign$103:
Lml_dsa_44_sign$102:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$89
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$101:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$100:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #416
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$99:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$98:
	ADD 	r0, sp, #1424
	ADD 	r2, sp, #400
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$97:
	ADD 	r0, sp, #1424
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$96:
	MOV 	r5, #4
	LDR 	r0, [sp]
	MUL 	r5, r5, r0
	ADD 	r5, r5, #3
	ADD 	r0, sp, #400
	ADD 	r2, sp, #136
	SUB 	sp, sp, #228
	bl  	L_poly_uniform_gamma1$1
Lml_dsa_44_sign$95:
	ADD 	sp, sp, #224
	ADD 	r0, sp, #1424
	ADD 	r1, sp, #400
	bl  	L_poly_add_inplace$1
Lml_dsa_44_sign$94:
	ADD 	r0, sp, #1424
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$93:
	MOVw	r3, #65458
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$92:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$89
	LDR 	r1, [sp, #4]
	ADD 	r1, r1, #1760
	ADD 	r2, sp, #1424
	bl  	L_polyz_pack$1
Lml_dsa_44_sign$91:
Lml_dsa_44_sign$90:
Lml_dsa_44_sign$89:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$3
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$77
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$88:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$87:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #512
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$86:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$85:
	ADD 	r0, sp, #400
	ADD 	r2, sp, #1424
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$84:
	ADD 	r0, sp, #400
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$83:
	ADD 	r1, sp, #400
	ADD 	r0, sp, #2448
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_sign$82:
	ADD 	r0, sp, #2448
	ADD 	r1, sp, #400
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$81:
	ADD 	r0, sp, #400
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_44_sign$80:
	ADD 	r0, sp, #400
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$79:
	MOVw	r3, #29618
	MOVT	r3, #1
	ADD 	r2, sp, #400
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$78:
Lml_dsa_44_sign$77:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$65
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$76:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$75:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #608
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$74:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$73:
	ADD 	r0, sp, #400
	ADD 	r2, sp, #1424
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$72:
	ADD 	r0, sp, #400
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$71:
	ADD 	r1, sp, #400
	ADDw	r0, sp, #3217
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_sign$70:
	ADDw	r0, sp, #3217
	ADD 	r1, sp, #400
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$69:
	ADD 	r0, sp, #400
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_44_sign$68:
	ADD 	r0, sp, #400
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$67:
	MOVw	r3, #29618
	MOVT	r3, #1
	ADD 	r2, sp, #400
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$66:
Lml_dsa_44_sign$65:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$53
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$64:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$63:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #704
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$62:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$61:
	ADD 	r0, sp, #400
	ADD 	r2, sp, #1424
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$60:
	ADD 	r0, sp, #400
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$59:
	ADD 	r1, sp, #400
	ADDw	r0, sp, #3986
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_sign$58:
	ADDw	r0, sp, #3986
	ADD 	r1, sp, #400
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$57:
	ADD 	r0, sp, #400
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_44_sign$56:
	ADD 	r0, sp, #400
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$55:
	MOVw	r3, #29618
	MOVT	r3, #1
	ADD 	r2, sp, #400
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$54:
Lml_dsa_44_sign$53:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$41
	ADD 	r1, sp, #1424
	ADD 	r0, sp, #24
	bl  	L_poly_decompress_challenge$1
Lml_dsa_44_sign$52:
	ADD 	r0, sp, #1424
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$51:
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #400
	ADD 	r2, r1, #800
	bl  	L_poly_eta_unpack$1
Lml_dsa_44_sign$50:
	ADD 	r0, sp, #400
	bl  	L_poly_ntt$1
Lml_dsa_44_sign$49:
	ADD 	r0, sp, #400
	ADD 	r2, sp, #1424
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_sign$48:
	ADD 	r0, sp, #400
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_sign$47:
	ADD 	r1, sp, #400
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	bl  	L_poly_subtract_from_compressed_w1_element$1
Lml_dsa_44_sign$46:
	MOVw	r0, #4755
	ADD 	r0, sp, r0
	ADD 	r1, sp, #400
	bl  	L_poly_compress_w1_element$1
Lml_dsa_44_sign$45:
	ADD 	r0, sp, #400
	bl  	L_poly_low_bits_inplace$1
Lml_dsa_44_sign$44:
	ADD 	r0, sp, #400
	bl  	L_poly_reduce$1
Lml_dsa_44_sign$43:
	MOVw	r3, #29618
	MOVT	r3, #1
	ADD 	r2, sp, #400
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$42:
Lml_dsa_44_sign$41:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$5
	MOV 	r1, #0
	MOV 	r2, #0
	STR 	r1, [sp, #12]
	STR 	r2, [sp, #20]
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$34
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #1424
	ADD 	r12, r1, #896
	ADD 	r1, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_44_sign$40:
	MOVw	r3, #29696
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$39:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$34
	ADD 	r1, sp, #1424
	ADD 	r2, sp, #2448
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_44_sign$38:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r9
	STR 	r1, [sp, #12]
	CMP 	r1, #80
	bhi 	Lml_dsa_44_sign$34
	LDR 	r4, [sp, #20]
	LDR 	r1, [sp, #4]
	MOV 	r2, #0
	ADD 	r1, r1, #2336
	ADD 	r3, sp, #1424
	bl  	L_pack_hint_element$1
Lml_dsa_44_sign$37:
	STR 	r4, [sp, #20]
Lml_dsa_44_sign$36:
Lml_dsa_44_sign$35:
Lml_dsa_44_sign$34:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$27
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #1424
	ADD 	r12, r1, #1312
	ADD 	r1, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_44_sign$33:
	MOVw	r3, #29696
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$32:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$27
	ADD 	r1, sp, #1424
	ADDw	r2, sp, #3217
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_44_sign$31:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r9
	STR 	r1, [sp, #12]
	CMP 	r1, #80
	bhi 	Lml_dsa_44_sign$27
	LDR 	r4, [sp, #20]
	LDR 	r1, [sp, #4]
	MOV 	r2, #1
	ADD 	r1, r1, #2336
	ADD 	r3, sp, #1424
	bl  	L_pack_hint_element$1
Lml_dsa_44_sign$30:
	STR 	r4, [sp, #20]
Lml_dsa_44_sign$29:
Lml_dsa_44_sign$28:
Lml_dsa_44_sign$27:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$20
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #1424
	ADD 	r12, r1, #1728
	ADD 	r1, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_44_sign$26:
	MOVw	r3, #29696
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$25:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$20
	ADD 	r1, sp, #1424
	ADDw	r2, sp, #3986
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_44_sign$24:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r9
	STR 	r1, [sp, #12]
	CMP 	r1, #80
	bhi 	Lml_dsa_44_sign$20
	LDR 	r4, [sp, #20]
	LDR 	r1, [sp, #4]
	MOV 	r2, #2
	ADD 	r1, r1, #2336
	ADD 	r3, sp, #1424
	bl  	L_pack_hint_element$1
Lml_dsa_44_sign$23:
	STR 	r4, [sp, #20]
Lml_dsa_44_sign$22:
Lml_dsa_44_sign$21:
Lml_dsa_44_sign$20:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$13
	LDR 	r1, [sp, #16]
	ADD 	r0, sp, #1424
	ADD 	r12, r1, #2144
	ADD 	r1, sp, #24
	SUB 	sp, sp, #4
	bl  	L_poly_schoolbook_multiply_t0_by_challenge$1
Lml_dsa_44_sign$19:
	MOVw	r3, #29696
	MOVT	r3, #1
	ADD 	r2, sp, #1424
	bl  	L_poly_check_norm$1
Lml_dsa_44_sign$18:
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$13
	ADD 	r1, sp, #1424
	MOVw	r2, #4755
	ADD 	r2, sp, r2
	bl  	L_poly_make_hint_inplace$1
Lml_dsa_44_sign$17:
	LDR 	r1, [sp, #12]
	ADD 	r1, r1, r9
	STR 	r1, [sp, #12]
	CMP 	r1, #80
	bhi 	Lml_dsa_44_sign$13
	LDR 	r4, [sp, #20]
	LDR 	r1, [sp, #4]
	MOV 	r2, #3
	ADD 	r1, r1, #2336
	ADD 	r3, sp, #1424
	bl  	L_pack_hint_element$1
Lml_dsa_44_sign$16:
	STR 	r4, [sp, #20]
Lml_dsa_44_sign$15:
Lml_dsa_44_sign$14:
Lml_dsa_44_sign$13:
	LDR 	r1, [sp, #12]
	CMP 	r0, #0
	bne 	Lml_dsa_44_sign$7
	CMP 	r1, #80
	bhi 	Lml_dsa_44_sign$9
	MOV 	r0, #0
	MOVw	r1, #2336
	LDR 	r2, [sp, #20]
	ADD 	r1, r1, r2
	LDR 	r12, [sp, #4]
	b   	Lml_dsa_44_sign$11
Lml_dsa_44_sign$12:
	STRB	r0, [r12, r1]
	ADD 	r1, r1, #1
	ADD 	r2, r2, #1
Lml_dsa_44_sign$11:
	CMP 	r2, #80
	bcc 	Lml_dsa_44_sign$12
	b   	Lml_dsa_44_sign$4
Lml_dsa_44_sign$9:
	MOV 	r0, #1
Lml_dsa_44_sign$10:
	b   	Lml_dsa_44_sign$4
Lml_dsa_44_sign$7:
	MOV 	r0, #1
Lml_dsa_44_sign$8:
	b   	Lml_dsa_44_sign$4
Lml_dsa_44_sign$5:
	MOV 	r0, #1
Lml_dsa_44_sign$6:
	b   	Lml_dsa_44_sign$4
Lml_dsa_44_sign$3:
	MOV 	r0, #1
Lml_dsa_44_sign$4:
	CMP 	r0, #1
	beq 	Lml_dsa_44_sign$2
	MOV 	r0, #0
Lml_dsa_44_sign$1:
	MOVw	lr, #5524
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
_ml_dsa_44_keygen:
ml_dsa_44_keygen:
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
	b   	Lml_dsa_44_keygen$153
Lml_dsa_44_keygen$154:
	LDR 	r9, [r2, r3, lsl #2]
	STR 	r9, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
Lml_dsa_44_keygen$153:
	CMP 	r3, #8
	bcc 	Lml_dsa_44_keygen$154
	MOV 	r1, #0
	MOV 	r2, #8
	b   	Lml_dsa_44_keygen$151
Lml_dsa_44_keygen$152:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
Lml_dsa_44_keygen$151:
	CMP 	r2, #50
	bcc 	Lml_dsa_44_keygen$152
	MOV 	r1, #4
	STRB	r1, [r0, #32]
	MOV 	r7, #4
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
Lml_dsa_44_keygen$150:
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
	MOV 	r5, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$149:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #128
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$148:
	STR 	r11, [sp, #4]
	MOV 	r2, #0
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$147:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$146:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$145:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$144:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_44_keygen$143:
	MOV 	r5, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$142:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #224
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$141:
	STR 	r11, [sp, #4]
	MOV 	r2, #1
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$140:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$139:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$138:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$137:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$136:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$135:
	MOV 	r5, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$134:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #320
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$133:
	STR 	r11, [sp, #4]
	MOV 	r2, #2
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$132:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$131:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$130:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$129:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$128:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$127:
	MOV 	r5, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$126:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #416
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$125:
	STR 	r11, [sp, #4]
	MOV 	r2, #3
	MOV 	r12, #0
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$124:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$123:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$122:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$121:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$120:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$119:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_44_keygen$118:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_keygen$117:
	MOV 	r5, #4
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$116:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #512
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$115:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$114:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_44_keygen$113:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_44_keygen$112:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #896
	bl  	L_polyt0_pack$1
Lml_dsa_44_keygen$111:
	STR 	r11, [sp, #4]
	LDR 	r0, [sp]
	ADD 	r2, sp, #272
	ADD 	r1, r0, #32
	bl  	L_polyt1_pack$1
Lml_dsa_44_keygen$110:
	STR 	r0, [sp]
	MOV 	r5, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$109:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$108:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$107:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$106:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$105:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_44_keygen$104:
	MOV 	r5, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$103:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$102:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$101:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$100:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$99:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$98:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$97:
	MOV 	r5, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$96:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$95:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$94:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$93:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$92:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$91:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$90:
	MOV 	r5, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$89:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r12, #1
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$88:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$87:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$86:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$85:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$84:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$83:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_44_keygen$82:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_keygen$81:
	MOV 	r5, #5
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$80:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #608
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$79:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$78:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_44_keygen$77:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_44_keygen$76:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1312
	bl  	L_polyt0_pack$1
Lml_dsa_44_keygen$75:
	STR 	r11, [sp, #4]
	LDR 	r0, [sp]
	ADD 	r2, sp, #272
	ADD 	r1, r0, #352
	bl  	L_polyt1_pack$1
Lml_dsa_44_keygen$74:
	STR 	r0, [sp]
	MOV 	r5, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$73:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$72:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$71:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$70:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$69:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_44_keygen$68:
	MOV 	r5, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$67:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$66:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$65:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$64:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$63:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$62:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$61:
	MOV 	r5, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$60:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$59:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$58:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$57:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$56:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$55:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$54:
	MOV 	r5, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$53:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r12, #2
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$52:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$51:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$50:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$49:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$48:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$47:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_44_keygen$46:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_keygen$45:
	MOV 	r5, #6
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$44:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #704
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$43:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$42:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_44_keygen$41:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_44_keygen$40:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #1728
	bl  	L_polyt0_pack$1
Lml_dsa_44_keygen$39:
	STR 	r11, [sp, #4]
	LDR 	r0, [sp]
	ADD 	r2, sp, #272
	ADD 	r1, r0, #672
	bl  	L_polyt1_pack$1
Lml_dsa_44_keygen$38:
	STR 	r0, [sp]
	MOV 	r5, #0
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$37:
	ADD 	sp, sp, #204
	MOV 	r2, #0
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$36:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$35:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$34:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$33:
	ADD 	r0, sp, #272
	ADD 	r2, sp, #1296
	ADD 	r1, sp, #2320
	bl  	L_poly_pointwise_montgomery$1
Lml_dsa_44_keygen$32:
	MOV 	r5, #1
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$31:
	ADD 	sp, sp, #204
	MOV 	r2, #1
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$30:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$29:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$28:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$27:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$26:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$25:
	MOV 	r5, #2
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$24:
	ADD 	sp, sp, #204
	MOV 	r2, #2
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$23:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$22:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$21:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$20:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$19:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$18:
	MOV 	r5, #3
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$17:
	ADD 	sp, sp, #204
	MOV 	r2, #3
	MOV 	r12, #3
	ORR 	r5, r2, r12, lsl #8
	LDR 	r3, [sp, #4]
	ADD 	r1, sp, #72
	bl  	L_prepare_xof_for_element_of_A$1
Lml_dsa_44_keygen$16:
	ADD 	r0, sp, #72
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
Lml_dsa_44_keygen$15:
	ADD 	sp, sp, #212
	ADD 	r2, sp, #1296
	ADD 	r0, sp, #72
	SUB 	sp, sp, #4
	bl  	L_poly_uniform$1
Lml_dsa_44_keygen$14:
	ADD 	r0, sp, #2320
	bl  	L_poly_ntt$1
Lml_dsa_44_keygen$13:
	ADD 	r0, sp, #1296
	ADD 	r2, sp, #2320
	bl  	L_poly_pointwise_montgomery_inplace$1
Lml_dsa_44_keygen$12:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #1296
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$11:
	ADD 	r0, sp, #272
	bl  	L_poly_reduce$1
Lml_dsa_44_keygen$10:
	ADD 	r0, sp, #272
	bl  	L_poly_invntt_tomont$1
Lml_dsa_44_keygen$9:
	MOV 	r5, #7
	ADD 	r0, sp, #2320
	ADD 	r2, sp, #8
	SUB 	sp, sp, #208
	bl  	L_poly_uniform_eta$1
Lml_dsa_44_keygen$8:
	ADD 	sp, sp, #204
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #800
	bl  	L_poly_eta_pack$1
Lml_dsa_44_keygen$7:
	STR 	r11, [sp, #4]
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_add_inplace$1
Lml_dsa_44_keygen$6:
	ADD 	r0, sp, #272
	bl  	L_poly_caddq$1
Lml_dsa_44_keygen$5:
	ADD 	r0, sp, #272
	ADD 	r1, sp, #2320
	bl  	L_poly_power2round_inplace$1
Lml_dsa_44_keygen$4:
	LDR 	r11, [sp, #4]
	ADD 	r0, sp, #2320
	ADD 	r1, r11, #2144
	bl  	L_polyt0_pack$1
Lml_dsa_44_keygen$3:
	STR 	r11, [sp, #4]
	LDR 	r0, [sp]
	ADD 	r2, sp, #272
	ADD 	r1, r0, #992
	bl  	L_polyt1_pack$1
Lml_dsa_44_keygen$2:
	STR 	r0, [sp]
	LDR 	r3, [sp]
	ADD 	r0, sp, #72
	SUB 	sp, sp, #12
	bl  	L_hash_verification_key$1
Lml_dsa_44_keygen$1:
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
	MOV 	r3, #0
	MOV 	r12, #0
	MOV 	r0, #0
	CMP 	r4, #0
	bls 	L_unpack_hint_at_index$14
	MOV 	r3, #79
	ADD 	r3, r3, r4
	LDRB	r3, [r2, r3]
L_unpack_hint_at_index$14:
	MOV 	r5, #80
	ADD 	r5, r5, r4
	LDRB	r4, [r2, r5]
	CMP 	r4, r3
	bcc 	L_unpack_hint_at_index$5
	CMP 	r4, #80
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
	STRB	r6, [r1, r0]
	ADD 	r0, r0, #1
L_unpack_hint_at_index$11:
	ADD 	r5, r5, #1
L_unpack_hint_at_index$9:
	CMP 	r5, r4
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
	LDRB	r3, [r2, #83]
	b   	L_unpack_hint_at_index$2
L_unpack_hint_at_index$3:
	LDRB	r6, [r2, r3]
	CMP 	r6, #0
	beq 	L_unpack_hint_at_index$4
	MOV 	r12, #1
L_unpack_hint_at_index$4:
	ADD 	r3, r3, #1
L_unpack_hint_at_index$2:
	CMP 	r3, #80
	MOV 	r6, r12
	it  	cs
	MOVcs	r6, #1
	CMP 	r6, #0
	beq 	L_unpack_hint_at_index$3
	bx  	lr
L_pack_hint_element$1:
	MOV 	r8, #0
	b   	L_pack_hint_element$2
L_pack_hint_element$3:
	LDR 	r12, [r3, r8, lsl #2]
	CMP 	r12, #0
	beq 	L_pack_hint_element$4
	STRB	r8, [r1, r4]
	ADD 	r4, r4, #1
L_pack_hint_element$4:
	ADD 	r8, r8, #1
L_pack_hint_element$2:
	CMP 	r8, #256
	bcc 	L_pack_hint_element$3
	MOV 	r3, #80
	ADD 	r3, r3, r2
	STRB	r4, [r1, r3]
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
	LDR 	r4, [r0, #39]
	MOV 	r2, #0
	b   	L_poly_decompress_challenge$6
L_poly_decompress_challenge$7:
	LDRB	r3, [r0, r2]
	ADD 	r2, r2, #1
	AND 	r12, r4, #1
	LSR 	r4, r4, #1
	CMP 	r12, #1
	beq 	L_poly_decompress_challenge$8
	MOV 	r12, #1
	b   	L_poly_decompress_challenge$9
L_poly_decompress_challenge$8:
	MOV 	r12, #4294967295
L_poly_decompress_challenge$9:
	STR 	r12, [r1, r3, lsl #2]
L_poly_decompress_challenge$6:
	CMP 	r2, #32
	bcc 	L_poly_decompress_challenge$7
	LDR 	r4, [r0, #43]
	b   	L_poly_decompress_challenge$2
L_poly_decompress_challenge$3:
	LDRB	r3, [r0, r2]
	ADD 	r2, r2, #1
	AND 	r12, r4, #1
	LSR 	r4, r4, #1
	CMP 	r12, #1
	beq 	L_poly_decompress_challenge$4
	MOV 	r12, #1
	b   	L_poly_decompress_challenge$5
L_poly_decompress_challenge$4:
	MOV 	r12, #4294967295
L_poly_decompress_challenge$5:
	STR 	r12, [r1, r3, lsl #2]
L_poly_decompress_challenge$2:
	CMP 	r2, #39
	bcc 	L_poly_decompress_challenge$3
	bx  	lr
L_poly_compress_challenge$1:
	MOV 	r7, #0
	MOV 	r5, #0
	MOV 	r12, #1
	MOV 	r4, #0
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
	ORR 	r4, r4, r12
L_poly_compress_challenge$9:
	LSL 	r12, r12, #1
	ADD 	r5, r5, #1
L_poly_compress_challenge$8:
	ADD 	r3, r3, #1
L_poly_compress_challenge$6:
	CMP 	r5, #32
	bcc 	L_poly_compress_challenge$7
	STR 	r4, [r1, #39]
	MOV 	r12, #1
	MOV 	r4, #0
	b   	L_poly_compress_challenge$2
L_poly_compress_challenge$3:
	LDR 	r6, [r2, r3, lsl #2]
	CMP 	r6, #0
	beq 	L_poly_compress_challenge$4
	STRB	r3, [r1, r7]
	ADD 	r7, r7, #1
	CMP 	r6, #4294967295
	bne 	L_poly_compress_challenge$5
	ORR 	r4, r4, r12
L_poly_compress_challenge$5:
	LSL 	r12, r12, #1
L_poly_compress_challenge$4:
	ADD 	r3, r3, #1
L_poly_compress_challenge$2:
	CMP 	r3, #256
	bcc 	L_poly_compress_challenge$3
	STR 	r4, [r1, #43]
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
	UBFX	r0, r7, #0, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$29
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$29:
	UBFX	r0, r7, #4, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$28
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$28:
	UBFX	r0, r7, #8, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$27
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$27:
	UBFX	r0, r7, #12, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$26
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$26:
	UBFX	r0, r7, #16, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$25
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$25:
	UBFX	r0, r7, #20, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$24
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$24:
	UBFX	r0, r7, #24, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$23
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$23:
	UBFX	r0, r7, #28, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$20
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r7, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r7
	STR 	lr, [r2, r1, lsl #2]
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
	UBFX	r0, r7, #0, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$18
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$18:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$16
	UBFX	r0, r7, #4, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$16
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$17:
L_poly_uniform_eta$16:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$14
	UBFX	r0, r7, #8, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$14
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$15:
L_poly_uniform_eta$14:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$12
	UBFX	r0, r7, #12, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$12
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$13:
L_poly_uniform_eta$12:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$10
	UBFX	r0, r7, #16, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$10
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$11:
L_poly_uniform_eta$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$8
	UBFX	r0, r7, #20, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$8
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$9:
L_poly_uniform_eta$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$6
	UBFX	r0, r7, #24, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$6
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r9, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r9
	STR 	lr, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform_eta$7:
L_poly_uniform_eta$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform_eta$2
	UBFX	r0, r7, #28, #4
	MOV 	lr, #205
	CMP 	r0, #15
	bcs 	L_poly_uniform_eta$2
	MUL 	lr, r0, lr
	LSR 	r4, lr, #10
	ADD 	lr, r4, r4, lsl #2
	SUB 	r7, r0, lr
	MOV 	r5, #2
	SUB 	lr, r5, r7
	STR 	lr, [r2, r1, lsl #2]
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
	MOVw	r4, #57345
	MOVT	r4, #127
	b   	L_poly_uniform$12
L_poly_uniform$13:
	SUB 	sp, sp, #12
	bl  	L_stream128_refill_buffer$1
L_poly_uniform$18:
	ADD 	sp, sp, #8
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$17
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$17:
	LSR 	r8, r9, #24
	ORR 	r9, r8, r5, lsl #8
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$16
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$16:
	LSR 	r8, r5, #16
	ORR 	r9, r8, r7, lsl #16
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$15
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$15:
	UBFX	r8, r7, #8, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$12
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$14:
L_poly_uniform$12:
	ADD 	r3, r1, #4
	CMP 	r3, #256
	bcc 	L_poly_uniform$13
	b   	L_poly_uniform$2
L_poly_uniform$3:
	SUB 	sp, sp, #12
	bl  	L_stream128_refill_buffer$1
L_poly_uniform$11:
	ADD 	sp, sp, #8
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$10
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$10:
	CMP 	r1, #256
	bcs 	L_poly_uniform$8
	LSR 	r8, r9, #24
	ORR 	r9, r8, r5, lsl #8
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$8
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$9:
L_poly_uniform$8:
	CMP 	r1, #256
	bcs 	L_poly_uniform$6
	LSR 	r8, r5, #16
	ORR 	r9, r8, r7, lsl #16
	UBFX	r8, r9, #0, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$6
	STR 	r8, [r2, r1, lsl #2]
	ADD 	r1, r1, #1
L_poly_uniform$7:
L_poly_uniform$6:
	CMP 	r1, #256
	bcs 	L_poly_uniform$2
	UBFX	r8, r7, #8, #23
	CMP 	r8, r4
	bcs 	L_poly_uniform$2
	STR 	r8, [r2, r1, lsl #2]
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
	LDR 	r6, [r0, r2, lsl #2]
	MOVw	r1, #57345
	MOVT	r1, #127
	ADD 	r3, r6, #127
	ASR 	r3, r3, #7
	MOVw	r7, #11275
	MUL 	r12, r3, r7
	ADD 	r3, r12, #8388608
	ASR 	r12, r3, #24
	MOV 	r5, #43
	SUB 	r7, r5, r12
	ASR 	r7, r7, #31
	AND 	r7, r7, r12
	EOR 	r3, r12, r7
	MOVw	r7, #29696
	MOVT	r7, #1
	LSL 	r7, r7, #1
	MUL 	r7, r7, r3
	SUB 	r12, r6, r7
	MOVw	r4, #1023
	LSL 	r5, r4, #12
	SUB 	r4, r5, r12
	AND 	r7, r1, r4, asr #31
	SUB 	r6, r12, r7
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
	ADD 	r3, r6, #127
	ASR 	r3, r3, #7
	MOVw	r7, #11275
	MUL 	r12, r3, r7
	ADD 	r3, r12, #8388608
	ASR 	r12, r3, #24
	MOV 	r5, #43
	SUB 	r7, r5, r12
	ASR 	r7, r7, #31
	AND 	r7, r7, r12
	EOR 	r6, r12, r7
	STR 	r6, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_high_bits_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_high_bits_inplace$3
	bx  	lr
L_poly_subtract_from_compressed_w1_element$1:
	MOVw	r3, #65535
	MOVT	r3, #255
	MOV 	r2, #0
	b   	L_poly_subtract_from_compressed_w1_element$2
L_poly_subtract_from_compressed_w1_element$3:
	MOV 	r6, #3
	MUL 	r6, r6, r2
	LDR 	r12, [r0, r6]
	AND 	r12, r12, r3
	LDR 	r6, [r1, r2, lsl #2]
	SUB 	r12, r12, r6
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_subtract_from_compressed_w1_element$2:
	CMP 	r2, #256
	bcc 	L_poly_subtract_from_compressed_w1_element$3
	bx  	lr
L_poly_compress_w1_element$1:
	MOV 	r2, #0
	b   	L_poly_compress_w1_element$2
L_poly_compress_w1_element$3:
	MOV 	r6, #3
	MUL 	r6, r6, r2
	LDR 	r8, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	STR 	r8, [r0, r6]
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
	LDR 	r6, [r0, r6]
	AND 	r6, r6, r2
	STR 	r6, [r1, r8, lsl #2]
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
	MOV 	r3, #0
	b   	L_poly_compute_A_times_polynomial$2
L_poly_compute_A_times_polynomial$3:
	STR 	r3, [sp, #12]
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_compute_A_times_polynomial$10:
	ADD 	sp, sp, #212
	LDR 	r3, [sp, #12]
	MOV 	r2, #0
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$5:
	CMP 	r3, #256
	bcc 	L_poly_compute_A_times_polynomial$6
	MOV 	r2, #168
	b   	L_poly_compute_A_times_polynomial$4
L_poly_compute_A_times_polynomial$6:
	LDR 	r6, [r0, r2]
	ADD 	r2, r2, #3
	MOVw	r12, #65535
	MOVT	r12, #127
	AND 	r12, r6, r12
	MOVw	r4, #57345
	MOVT	r4, #127
	CMP 	r12, r4
	bcs 	L_poly_compute_A_times_polynomial$4
	LDR 	r1, [sp, #4]
	LDR 	r8, [r1, r3, lsl #2]
	SMULL	r7, r8, r12, r8
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
	ADD 	r3, r3, #1
L_poly_compute_A_times_polynomial$8:
L_poly_compute_A_times_polynomial$7:
L_poly_compute_A_times_polynomial$4:
	CMP 	r2, #168
	bcc 	L_poly_compute_A_times_polynomial$5
L_poly_compute_A_times_polynomial$2:
	CMP 	r3, #256
	bcc 	L_poly_compute_A_times_polynomial$3
	pop 	{pc}
L_poly_add_to_compressed_product_at_index$1:
	STR 	lr, [sp]
	MOVw	r12, #65535
	MOVT	r12, #255
	MOV 	r6, #3
	MUL 	r6, r6, r3
	LDR 	lr, [r1, r6]
	AND 	r12, lr, r12
	ADD 	r12, r12, r8
	bl  	L_freeze$1
L_poly_add_to_compressed_product_at_index$2:
	STRH	r12, [r1, r6]
	LSR 	r12, r12, #16
	ADD 	r6, r6, #2
	STRB	r12, [r1, r6]
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
	LDR 	r4, [r1, #39]
	MOV 	r2, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$19:
	LDRB	r5, [r1, r2]
	ADD 	r2, r2, #1
	AND 	r3, r4, #1
	LSR 	r4, r4, #1
	CMP 	r3, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$20
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$31
L_poly_schoolbook_multiply_t0_by_challenge$32:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$33:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$31:
	ADD 	r9, r5, r3
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$32
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$28
L_poly_schoolbook_multiply_t0_by_challenge$29:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r9, r6, r3
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$30:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$28:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$29
	b   	L_poly_schoolbook_multiply_t0_by_challenge$18
L_poly_schoolbook_multiply_t0_by_challenge$20:
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$25
L_poly_schoolbook_multiply_t0_by_challenge$26:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$27:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$25:
	ADD 	r9, r5, r3
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$26
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$22
L_poly_schoolbook_multiply_t0_by_challenge$23:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r9, r6, r3
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$24:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$22:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$23
L_poly_schoolbook_multiply_t0_by_challenge$21:
L_poly_schoolbook_multiply_t0_by_challenge$18:
	CMP 	r2, #32
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$19
	LDR 	r4, [r1, #43]
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$3:
	LDRB	r5, [r1, r2]
	ADD 	r2, r2, #1
	AND 	r3, r4, #1
	LSR 	r4, r4, #1
	CMP 	r3, #0
	beq 	L_poly_schoolbook_multiply_t0_by_challenge$4
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$15
L_poly_schoolbook_multiply_t0_by_challenge$16:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$17:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$15:
	ADD 	r9, r5, r3
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$16
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$12
L_poly_schoolbook_multiply_t0_by_challenge$13:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r9, r6, r3
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$14:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$12:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$13
	b   	L_poly_schoolbook_multiply_t0_by_challenge$2
L_poly_schoolbook_multiply_t0_by_challenge$4:
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t0_by_challenge$9
L_poly_schoolbook_multiply_t0_by_challenge$10:
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$11:
	ADD 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$9:
	ADD 	r9, r5, r3
	CMP 	r9, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$10
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t0_by_challenge$6
L_poly_schoolbook_multiply_t0_by_challenge$7:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r9, r6, r3
	LDR 	r10, [r0, r9, lsl #2]
	bl  	L_t0_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t0_by_challenge$8:
	SUB 	r10, r10, r6
	STR 	r10, [r0, r9, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t0_by_challenge$6:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t0_by_challenge$7
L_poly_schoolbook_multiply_t0_by_challenge$5:
L_poly_schoolbook_multiply_t0_by_challenge$2:
	CMP 	r2, #39
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
	LDR 	r4, [r1, #39]
	MOV 	r2, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$19:
	LDRB	r5, [r1, r2]
	ADD 	r2, r2, #1
	AND 	r3, r4, #1
	LSR 	r4, r4, #1
	CMP 	r3, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$20
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$31
L_poly_schoolbook_multiply_t1_by_challenge$32:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$33:
	SUB 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$31:
	ADD 	r6, r5, r3
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$32
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t1_by_challenge$28
L_poly_schoolbook_multiply_t1_by_challenge$29:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r6, r6, r3
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$30:
	ADD 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$28:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$29
	b   	L_poly_schoolbook_multiply_t1_by_challenge$18
L_poly_schoolbook_multiply_t1_by_challenge$20:
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$25
L_poly_schoolbook_multiply_t1_by_challenge$26:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$27:
	ADD 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$25:
	ADD 	r6, r5, r3
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$26
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t1_by_challenge$22
L_poly_schoolbook_multiply_t1_by_challenge$23:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r6, r6, r3
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$24:
	SUB 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$22:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$23
L_poly_schoolbook_multiply_t1_by_challenge$21:
L_poly_schoolbook_multiply_t1_by_challenge$18:
	CMP 	r2, #32
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$19
	LDR 	r4, [r1, #43]
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$3:
	LDRB	r5, [r1, r2]
	ADD 	r2, r2, #1
	AND 	r3, r4, #1
	LSR 	r4, r4, #1
	CMP 	r3, #0
	beq 	L_poly_schoolbook_multiply_t1_by_challenge$4
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$15
L_poly_schoolbook_multiply_t1_by_challenge$16:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$17:
	SUB 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$15:
	ADD 	r6, r5, r3
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$16
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t1_by_challenge$12
L_poly_schoolbook_multiply_t1_by_challenge$13:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r6, r6, r3
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$14:
	ADD 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$12:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$13
	b   	L_poly_schoolbook_multiply_t1_by_challenge$2
L_poly_schoolbook_multiply_t1_by_challenge$4:
	MOV 	r3, #0
	b   	L_poly_schoolbook_multiply_t1_by_challenge$9
L_poly_schoolbook_multiply_t1_by_challenge$10:
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$11:
	ADD 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$9:
	ADD 	r6, r5, r3
	CMP 	r6, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$10
	MOVw	r3, #256
	SUB 	r3, r3, r5
	b   	L_poly_schoolbook_multiply_t1_by_challenge$6
L_poly_schoolbook_multiply_t1_by_challenge$7:
	MVN 	r6, #255
	ADD 	r6, r6, r5
	ADD 	r6, r6, r3
	LDR 	r10, [r0, r6, lsl #2]
	bl  	L_t1_unpack_coefficient_at_index$1
L_poly_schoolbook_multiply_t1_by_challenge$8:
	SUB 	r10, r10, r8
	STR 	r10, [r0, r6, lsl #2]
	ADD 	r3, r3, #1
L_poly_schoolbook_multiply_t1_by_challenge$6:
	CMP 	r3, #256
	bcc 	L_poly_schoolbook_multiply_t1_by_challenge$7
L_poly_schoolbook_multiply_t1_by_challenge$5:
L_poly_schoolbook_multiply_t1_by_challenge$2:
	CMP 	r2, #39
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
	CMP 	r2, #8
	bcc 	L_poly_generate_challenge$13
	MOV 	r1, #0
	MOV 	r2, #8
	b   	L_poly_generate_challenge$10
L_poly_generate_challenge$11:
	STR 	r1, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_generate_challenge$10:
	CMP 	r2, #50
	bcc 	L_poly_generate_challenge$11
	LDRB	r9, [r0, #32]
	EOR 	r9, r9, #31
	STRB	r9, [r0, #32]
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
	MOV 	lr, #0
	MOV 	r8, #0
	b   	L_poly_generate_challenge$7
L_poly_generate_challenge$8:
	STR 	lr, [r1, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_generate_challenge$7:
	CMP 	r8, #256
	bcc 	L_poly_generate_challenge$8
	MOV 	r4, #217
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
	LSL 	r7, r5, #1
	MOV 	r5, #1
	SUB 	r5, r5, r7
	STR 	r5, [r1, lr, lsl #2]
	LSR 	r8, r3, #1
	ORR 	r3, r8, r2, lsl #31
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
	LDR 	r12, [r0, r2, lsl #2]
	ADDw	r3, r12, #4095
	ASR 	r3, r3, #13
	SUB 	r12, r12, r3, lsl #13
	STR 	r12, [r1, r2, lsl #2]
	STR 	r3, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_power2round_inplace$2:
	CMP 	r2, #256
	bcc 	L_poly_power2round_inplace$3
	bx  	lr
L_poly_make_hint_inplace$1:
	MOV 	r9, #0
	MOV 	r8, #0
	MOVw	r3, #65535
	MOVT	r3, #255
	b   	L_poly_make_hint_inplace$2
L_poly_make_hint_inplace$3:
	MOV 	r6, #3
	MUL 	r6, r6, r8
	LDR 	r12, [r2, r6]
	AND 	r12, r12, r3
	LDR 	r5, [r1, r8, lsl #2]
	ADD 	r6, r12, r5
	RSB 	r12, r5, #0
	MOV 	r5, #0
	ADD 	r4, r6, #127
	ASR 	r4, r4, #7
	MOVw	r7, #11275
	MUL 	r7, r4, r7
	ADD 	r4, r7, #8388608
	ASR 	r7, r4, #24
	MOV 	r10, #43
	SUB 	r4, r10, r7
	ASR 	r4, r4, #31
	AND 	r4, r4, r7
	EOR 	r4, r7, r4
	ADD 	r6, r6, r12
	ADD 	r12, r6, #127
	ASR 	r12, r12, #7
	MOVw	r7, #11275
	MUL 	r12, r12, r7
	ADD 	r12, r12, #8388608
	ASR 	r12, r12, #24
	MOV 	r10, #43
	SUB 	r7, r10, r12
	ASR 	r7, r7, #31
	AND 	r7, r7, r12
	EOR 	r12, r12, r7
	CMP 	r4, r12
	beq 	L_poly_make_hint_inplace$5
	MOV 	r5, #1
L_poly_make_hint_inplace$5:
	STR 	r5, [r1, r8, lsl #2]
	CMP 	r5, #1
	bne 	L_poly_make_hint_inplace$4
	ADD 	r9, r9, #1
L_poly_make_hint_inplace$4:
	ADD 	r8, r8, #1
L_poly_make_hint_inplace$2:
	CMP 	r8, #256
	bcc 	L_poly_make_hint_inplace$3
	bx  	lr
L_poly_pointwise_montgomery_inplace$1:
	MOV 	r3, #0
	b   	L_poly_pointwise_montgomery_inplace$2
L_poly_pointwise_montgomery_inplace$3:
	LDR 	r12, [r2, r3, lsl #2]
	LDR 	r8, [r0, r3, lsl #2]
	SMULL	r7, r8, r12, r8
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	STR 	r8, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
L_poly_pointwise_montgomery_inplace$2:
	CMP 	r3, #256
	bcc 	L_poly_pointwise_montgomery_inplace$3
	bx  	lr
L_poly_pointwise_montgomery$1:
	MOV 	r8, #0
	b   	L_poly_pointwise_montgomery$2
L_poly_pointwise_montgomery$3:
	LDR 	r12, [r2, r8, lsl #2]
	LDR 	r9, [r1, r8, lsl #2]
	SMULL	r7, r3, r12, r9
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r3, r10, r9
	STR 	r3, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_pointwise_montgomery$2:
	CMP 	r8, #256
	bcc 	L_poly_pointwise_montgomery$3
	bx  	lr
L_poly_use_hint$1:
	MOV 	r8, #0
	b   	L_poly_use_hint$2
L_poly_use_hint$3:
	MOV 	r4, #0
	MOV 	r3, #0
	b   	L_poly_use_hint$14
L_poly_use_hint$15:
	LDRB	r12, [r2, r3]
	CMP 	r8, r12
	bne 	L_poly_use_hint$16
	MOV 	r4, #1
L_poly_use_hint$16:
	ADD 	r3, r3, #1
L_poly_use_hint$14:
	CMP 	r3, r0
	MOV 	r6, r4
	it  	cs
	MOVcs	r6, #1
	CMP 	r6, #0
	beq 	L_poly_use_hint$15
	CMP 	r4, #1
	beq 	L_poly_use_hint$12
	MOV 	r3, #0
	b   	L_poly_use_hint$13
L_poly_use_hint$12:
	MOV 	r3, #1
L_poly_use_hint$13:
	LDR 	r12, [r1, r8, lsl #2]
	MOV 	r5, #0
	MOVw	r4, #57345
	MOVT	r4, #127
	ADD 	r6, r12, #127
	ASR 	r6, r6, #7
	MOVw	r7, #11275
	MUL 	r7, r7, r6
	ADD 	r6, r7, #8388608
	ASR 	r7, r6, #24
	MOV 	r10, #43
	SUB 	r6, r10, r7
	ASR 	r6, r6, #31
	AND 	r6, r6, r7
	EOR 	r6, r7, r6
	MOVw	r7, #29696
	MOVT	r7, #1
	LSL 	r7, r7, #1
	MUL 	r7, r6, r7
	SUB 	r12, r12, r7
	MOVw	r7, #1023
	LSL 	r10, r7, #12
	SUB 	r7, r10, r12
	AND 	r7, r4, r7, asr #31
	SUB 	r12, r12, r7
	CMP 	r3, #0
	bne 	L_poly_use_hint$11
	MOV 	r5, #1
L_poly_use_hint$11:
	CMP 	r5, #0
	bne 	L_poly_use_hint$4
	CMP 	r12, #0
	ble 	L_poly_use_hint$8
	CMP 	r6, #43
	beq 	L_poly_use_hint$9
	ADD 	r6, r6, #1
	b   	L_poly_use_hint$10
L_poly_use_hint$9:
	MOV 	r6, #0
L_poly_use_hint$10:
	MOV 	r5, #1
L_poly_use_hint$8:
	CMP 	r5, #0
	bne 	L_poly_use_hint$6
	CMP 	r6, #0
	bne 	L_poly_use_hint$6
	MOV 	r6, #43
	MOV 	r5, #1
L_poly_use_hint$7:
L_poly_use_hint$6:
	CMP 	r5, #0
	bne 	L_poly_use_hint$4
	SUB 	r6, r6, #1
L_poly_use_hint$5:
L_poly_use_hint$4:
	STR 	r6, [r1, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_use_hint$2:
	CMP 	r8, #256
	bcc 	L_poly_use_hint$3
	bx  	lr
L_poly_check_norm$1:
	MOV 	r0, #0
	MOVw	r1, #57345
	MOVT	r1, #127
	SUB 	r1, r1, #1
	LSR 	r1, r1, #3
	CMP 	r3, r1
	ble 	L_poly_check_norm$4
	MOV 	r0, #1
L_poly_check_norm$4:
	MOV 	r8, #0
L_poly_check_norm$2:
	LDR 	r7, [r2, r8, lsl #2]
	CMP 	r7, #0
	it  	lt
	RSBlt	r7, r7, #0
	ADD 	r8, r8, #1
	CMP 	r7, r3
	blt 	L_poly_check_norm$3
	MOV 	r0, #1
	MOVw	r8, #256
L_poly_check_norm$3:
	CMP 	r8, #256
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
	LDR 	r12, [r0, r2, lsl #2]
	MOVw	r1, #57345
	MOVT	r1, #127
	AND 	r8, r1, r12, asr #31
	ADD 	r1, r8, r12
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
	ADD 	r7, r12, #4194304
	ASR 	r8, r7, #23
	LSL 	r5, r8, #9
	SUB 	r4, r5, r8
	ADD 	r4, r8, r4, lsl #10
	LSL 	r5, r4, #13
	SUB 	r1, r5, r8
	ADD 	r8, r12, r1
	STR 	r8, [r0, r2, lsl #2]
	ADD 	r2, r2, #1
L_poly_reduce$2:
	CMP 	r2, #256
	bcc 	L_poly_reduce$3
	bx  	lr
L_poly_uniform_gamma1$1:
	STR 	lr, [sp]
	ADD 	r1, sp, #28
	bl  	L_prepare_state_for_shake256$1
L_poly_uniform_gamma1$12:
	STR 	r0, [sp, #4]
	ADD 	r0, sp, #28
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$11:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	MOV 	r2, #0
	MOV 	r10, #0
	ADD 	r3, sp, #16
	ADD 	r1, sp, #28
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$10:
	STR 	r0, [sp, #4]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #12]
	ADD 	r0, sp, #28
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$9:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #12]
	ADD 	r3, sp, #16
	ADD 	r1, sp, #28
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$8:
	STR 	r0, [sp, #12]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #4]
	ADD 	r0, sp, #28
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$7:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #12]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #4]
	ADD 	r3, sp, #16
	ADD 	r1, sp, #28
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$6:
	STR 	r0, [sp, #4]
	STR 	r3, [sp, #8]
	STR 	r10, [sp, #12]
	ADD 	r0, sp, #28
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$5:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #4]
	LDR 	r2, [sp, #8]
	LDR 	r10, [sp, #12]
	ADD 	r3, sp, #16
	ADD 	r1, sp, #28
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming$1
L_poly_uniform_gamma1$4:
	STR 	r0, [sp, #12]
	ADD 	r0, sp, #28
	SUB 	sp, sp, #216
	bl  	L_keccakf1600_ref$1
L_poly_uniform_gamma1$3:
	ADD 	sp, sp, #212
	LDR 	r0, [sp, #12]
	ADD 	r3, sp, #16
	ADD 	r1, sp, #28
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_streaming_end$1
L_poly_uniform_gamma1$2:
	pop 	{pc}
L_poly_eta_unpack$1:
	MOV 	r8, #0
	MOV 	r3, #0
	b   	L_poly_eta_unpack$2
L_poly_eta_unpack$3:
	LDRB	r12, [r2, r3]
	ADD 	r3, r3, #1
	LDRB	r7, [r2, r3]
	ADD 	r3, r3, #1
	LDRB	r9, [r2, r3]
	ADD 	r3, r3, #1
	UBFX	r1, r12, #0, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r1, r12, #3, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	LSR 	r12, r12, #6
	ORR 	r5, r12, r7, lsl #2
	AND 	r1, r5, #7
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r1, r7, #1, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r1, r7, #4, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	LSR 	r12, r7, #7
	ORR 	r5, r12, r9, lsl #1
	AND 	r1, r5, #7
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r1, r9, #2, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	UBFX	r1, r9, #5, #3
	MOV 	r5, #2
	SUB 	r5, r5, r1
	STR 	r5, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
L_poly_eta_unpack$2:
	CMP 	r8, #256
	bcc 	L_poly_eta_unpack$3
	bx  	lr
L_poly_eta_pack$1:
	MOV 	r8, #0
	MOV 	r3, #0
	b   	L_poly_eta_pack$2
L_poly_eta_pack$3:
	LDR 	r12, [r0, r8, lsl #2]
	MOV 	r5, #2
	SUB 	r2, r5, r12
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r5, #2
	SUB 	r12, r5, r7
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r5, #2
	SUB 	r4, r5, r7
	ADD 	r8, r8, #1
	LDR 	r7, [r0, r8, lsl #2]
	MOV 	r5, #2
	SUB 	r5, r5, r7
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
	ORR 	r10, r2, r12, lsl #3
	ORR 	r2, r10, r4, lsl #6
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	UBFX	r2, r4, #2, #6
	ORR 	r2, r2, r5, lsl #1
	ORR 	r2, r2, r6, lsl #4
	ORR 	r2, r2, r7, lsl #7
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	UBFX	r2, r7, #1, #7
	ORR 	r2, r2, r9, lsl #2
	LDR 	r12, [r0, r8, lsl #2]
	MOV 	r5, #2
	SUB 	r4, r5, r12
	ADD 	r8, r8, #1
	ORR 	r2, r2, r4, lsl #5
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
L_poly_eta_pack$2:
	CMP 	r8, #256
	bcc 	L_poly_eta_pack$3
	bx  	lr
L_polyw1_pack$1:
	MOV 	r8, #0
	MOV 	r3, #0
	b   	L_polyw1_pack$2
L_polyw1_pack$3:
	LDR 	r12, [r2, r8, lsl #2]
	ADD 	r8, r8, #1
	LDR 	r4, [r2, r8, lsl #2]
	ADD 	r8, r8, #1
	LDR 	r5, [r2, r8, lsl #2]
	ADD 	r8, r8, #1
	LDR 	r6, [r2, r8, lsl #2]
	ADD 	r8, r8, #1
	ORR 	r7, r12, r4, lsl #6
	STRB	r7, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r4, #2
	ORR 	r7, r12, r5, lsl #4
	STRB	r7, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r5, #4
	ORR 	r5, r12, r6, lsl #2
	STRB	r5, [r1, r3]
	ADD 	r3, r3, #1
L_polyw1_pack$2:
	CMP 	r8, #256
	bcc 	L_polyw1_pack$3
	bx  	lr
L_polyz_unpack$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_polyz_unpack$2
L_polyz_unpack$3:
	LDRB	r12, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r4, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r5, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r6, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r7, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r9, [r0, r3]
	ADD 	r3, r3, #1
	MOV 	r8, #0
	MOVT	r8, #2
	ORR 	r12, r12, r4, lsl #8
	ORR 	r12, r12, r5, lsl #16
	UBFX	r12, r12, #0, #18
	SUB 	r12, r8, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r5, #2
	ORR 	r12, r12, r6, lsl #6
	ORR 	r12, r12, r7, lsl #14
	UBFX	r12, r12, #0, #18
	SUB 	r12, r8, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r7, #4
	ORR 	r6, r12, r9, lsl #4
	LDRB	r12, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r4, [r0, r3]
	ADD 	r3, r3, #1
	LDRB	r5, [r0, r3]
	ADD 	r3, r3, #1
	ORR 	r7, r6, r12, lsl #12
	UBFX	r6, r7, #0, #18
	SUB 	r6, r8, r6
	STR 	r6, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
	LSR 	r12, r12, #6
	ORR 	r12, r12, r4, lsl #2
	ORR 	r12, r12, r5, lsl #10
	UBFX	r12, r12, #0, #18
	SUB 	r12, r8, r12
	STR 	r12, [r1, r2, lsl #2]
	ADD 	r2, r2, #1
L_polyz_unpack$2:
	CMP 	r2, #256
	bcc 	L_polyz_unpack$3
	bx  	lr
L_polyz_pack$1:
	MOV 	r8, #0
	MOVT	r8, #2
	MOV 	r3, #0
	MOV 	r4, #0
	b   	L_polyz_pack$2
L_polyz_pack$3:
	LDR 	r12, [r2, r3, lsl #2]
	SUB 	r12, r8, r12
	ADD 	r3, r3, #1
	LDR 	r5, [r2, r3, lsl #2]
	SUB 	r5, r8, r5
	ADD 	r3, r3, #1
	LDR 	r6, [r2, r3, lsl #2]
	SUB 	r6, r8, r6
	ADD 	r3, r3, #1
	LDR 	r7, [r2, r3, lsl #2]
	SUB 	r7, r8, r7
	ADD 	r3, r3, #1
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r9, r12, #8
	STRB	r9, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r12, #16
	ORR 	r12, r12, r5, lsl #2
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r5, #6
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r5, #14
	ORR 	r12, r12, r6, lsl #4
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r6, #4
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r6, #12
	ORR 	r12, r12, r7, lsl #6
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r7, #2
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r7, #10
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
L_polyz_pack$2:
	CMP 	r3, #256
	bcc 	L_polyz_pack$3
	bx  	lr
L_polyz_unpack_streaming_end$1:
	STR 	lr, [sp]
	LDR 	r2, [r1]
	STR 	r2, [r3, #4]
	LDRB	r2, [r1, #4]
	STRB	r2, [r3, #8]
	MOV 	r10, #240
	ADD 	r12, r0, r10, lsl #2
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_9_bytes$1
L_polyz_unpack_streaming_end$5:
	ADD 	sp, sp, #4
	ADD 	r10, r10, #4
	MOV 	r2, #5
	b   	L_polyz_unpack_streaming_end$2
L_polyz_unpack_streaming_end$3:
	ADD 	r12, r0, r10, lsl #2
	ADD 	r3, r1, r2
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_9_bytes$1
L_polyz_unpack_streaming_end$4:
	ADD 	sp, sp, #4
	ADD 	r10, r10, #4
	ADD 	r2, r2, #9
L_polyz_unpack_streaming_end$2:
	CMP 	r2, #32
	bcc 	L_polyz_unpack_streaming_end$3
	pop 	{pc}
L_polyz_unpack_streaming$1:
	STR 	lr, [sp]
	MOV 	r4, r2
	MOV 	r2, #0
	b   	L_polyz_unpack_streaming$8
L_polyz_unpack_streaming$9:
	LDRB	r12, [r1, r2]
	ADD 	r2, r2, #1
	STRB	r12, [r3, r4]
	ADD 	r4, r4, #1
L_polyz_unpack_streaming$8:
	CMP 	r4, #9
	bcc 	L_polyz_unpack_streaming$9
	ADD 	r12, r0, r10, lsl #2
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_9_bytes$1
L_polyz_unpack_streaming$7:
	ADD 	sp, sp, #4
	ADD 	r10, r10, #4
	MOV 	r11, r3
	b   	L_polyz_unpack_streaming$4
L_polyz_unpack_streaming$5:
	ADD 	r12, r0, r10, lsl #2
	ADD 	r3, r1, r2
	SUB 	sp, sp, #4
	bl  	L_polyz_unpack_9_bytes$1
L_polyz_unpack_streaming$6:
	ADD 	sp, sp, #4
	ADD 	r10, r10, #4
	ADD 	r2, r2, #9
L_polyz_unpack_streaming$4:
	CMP 	r2, #127
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
L_polyz_unpack_9_bytes$1:
	MOV 	r8, #0
	MOVT	r8, #2
	STR 	r8, [sp]
	LDRB	r8, [r3]
	LDRB	r7, [r3, #1]
	LDRB	r6, [r3, #2]
	LDRB	r9, [r3, #3]
	LDRB	r4, [r3, #4]
	LDRB	r5, [r3, #5]
	ORR 	r8, r8, r7, lsl #8
	ORR 	r7, r8, r6, lsl #16
	UBFX	r7, r7, #0, #18
	LDR 	r8, [sp]
	SUB 	r7, r8, r7
	STR 	r7, [r12]
	LSR 	r8, r6, #2
	ORR 	r8, r8, r9, lsl #6
	ORR 	r7, r8, r4, lsl #14
	UBFX	r7, r7, #0, #18
	LDR 	r8, [sp]
	SUB 	r7, r8, r7
	STR 	r7, [r12, #4]
	LSR 	r8, r4, #4
	ORR 	r8, r8, r5, lsl #4
	LDRB	r5, [r3, #6]
	LDRB	r6, [r3, #7]
	LDRB	r4, [r3, #8]
	ORR 	r7, r8, r5, lsl #12
	UBFX	r7, r7, #0, #18
	LDR 	r8, [sp]
	SUB 	r7, r8, r7
	STR 	r7, [r12, #8]
	LSR 	r8, r5, #6
	ORR 	r8, r8, r6, lsl #2
	ORR 	r7, r8, r4, lsl #10
	UBFX	r7, r7, #0, #18
	LDR 	r8, [sp]
	SUB 	r7, r8, r7
	STR 	r7, [r12, #12]
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
	LDR 	r7, [r0, r4, lsl #2]
	LDR 	r9, [r0, r6, lsl #2]
	ADD 	r8, r7, r9
	STR 	r8, [r0, r4, lsl #2]
	SUB 	r8, r7, r9
	SMULL	r7, r8, r12, r8
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
	LDR 	r8, [r0, r4, lsl #2]
	SMULL	r7, r8, r12, r8
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
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
	MOV 	r3, r5
	ADD 	r5, r5, r2
	MOV 	r6, r5
L_poly_ntt$4:
	LDR 	r8, [r0, r6, lsl #2]
	SMULL	r7, r8, r12, r8
	MOVw	r9, #8191
	MOVT	r9, #65408
	LSL 	r10, r7, #3
	SUB 	r10, r10, r7
	ADD 	r10, r7, r10, lsl #10
	ADD 	r10, r7, r10, lsl #13
	SMLAL	r7, r8, r10, r9
	LDR 	r4, [r0, r3, lsl #2]
	SUB 	r9, r4, r8
	STR 	r9, [r0, r6, lsl #2]
	ADD 	r4, r4, r8
	STR 	r4, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
	ADD 	r6, r6, #1
	CMP 	r3, r5
	bcc 	L_poly_ntt$4
	MOV 	r5, r6
	CMP 	r5, #256
	bcc 	L_poly_ntt$3
	LSR 	r2, r2, #1
	CMP 	r2, #0
	bne 	L_poly_ntt$2
	bx  	lr
L_freeze$1:
	ADD 	r7, r12, #4194304
	ASR 	r8, r7, #23
	LSL 	r5, r8, #9
	SUB 	r4, r5, r8
	ADD 	r4, r8, r4, lsl #10
	LSL 	r5, r4, #13
	SUB 	r4, r5, r8
	ADD 	r8, r12, r4
	MOVw	r4, #57345
	MOVT	r4, #127
	AND 	r12, r4, r8, asr #31
	ADD 	r12, r12, r8
	bx  	lr
L_t0_unpack_coefficient_at_index$1:
	LSR 	r7, r3, #3
	MOV 	r8, #13
	MUL 	r7, r7, r8
	AND 	r6, r3, #7
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
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #3
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r7, r8, #5
	ORR 	r6, r6, r7
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$14:
	ADD 	r7, r7, #9
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #6
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #2
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #10
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$15:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$12:
	ADD 	r7, r7, #8
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #1
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r7, r8, #7
	ORR 	r6, r6, r7
L_t0_unpack_coefficient_at_index$13:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$10:
	ADD 	r7, r7, #6
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #4
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #4
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r7, [r12, r7]
	LSL 	r7, r7, #12
	ORR 	r6, r6, r7
L_t0_unpack_coefficient_at_index$11:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$8:
	ADD 	r7, r7, #4
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #7
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #1
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r7, r8, #9
	ORR 	r6, r6, r7
L_t0_unpack_coefficient_at_index$9:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$6:
	ADD 	r7, r7, #3
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #2
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #6
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$7:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$4:
	ADD 	r7, r7, #1
	LDRB	r6, [r12, r7]
	LSR 	r6, r6, #5
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #3
	ORR 	r6, r6, r8
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r7, r8, #11
	ORR 	r6, r6, r7
L_t0_unpack_coefficient_at_index$5:
	b   	L_t0_unpack_coefficient_at_index$3
L_t0_unpack_coefficient_at_index$2:
	LDRB	r6, [r12, r7]
	ADD 	r7, r7, #1
	LDRB	r8, [r12, r7]
	LSL 	r8, r8, #8
	ORR 	r6, r6, r8
L_t0_unpack_coefficient_at_index$3:
	MOVw	r7, #8191
	AND 	r6, r6, r7
	MOVw	r7, #4096
	SUB 	r6, r7, r6
	bx  	lr
L_polyt0_pack$1:
	MOV 	r2, #0
	MOV 	r3, #0
	b   	L_polyt0_pack$2
L_polyt0_pack$3:
	LDR 	r12, [r0, r2, lsl #2]
	ADD 	r8, r2, #1
	MOVw	r5, #4096
	SUB 	r2, r5, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r5, #4096
	SUB 	r4, r5, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r5, #4096
	SUB 	r5, r5, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r6, r10, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r7, r10, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r9, r10, r12
	LDR 	r12, [r0, r8, lsl #2]
	ADD 	r8, r8, #1
	MOVw	r10, #4096
	SUB 	r12, r10, r12
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r2, #8
	ORR 	r2, r2, r4, lsl #5
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r4, #3
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r4, #11
	ORR 	r2, r2, r5, lsl #2
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r5, #6
	ORR 	r2, r2, r6, lsl #7
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r6, #1
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r6, #9
	ORR 	r2, r2, r7, lsl #4
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r7, #4
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r7, #12
	ORR 	r2, r2, r9, lsl #1
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r9, #7
	ORR 	r2, r2, r12, lsl #6
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r2, r12, #2
	STRB	r2, [r1, r3]
	ADD 	r3, r3, #1
	LDR 	r7, [r0, r8, lsl #2]
	ADD 	r2, r8, #1
	MOVw	r5, #4096
	SUB 	r4, r5, r7
	LSR 	r12, r12, #10
	ORR 	r12, r12, r4, lsl #3
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
	LSR 	r12, r4, #5
	STRB	r12, [r1, r3]
	ADD 	r3, r3, #1
L_polyt0_pack$2:
	CMP 	r2, #256
	bcc 	L_polyt0_pack$3
	bx  	lr
L_t1_unpack_coefficient_at_index$1:
	LSR 	r7, r3, #2
	MOV 	r8, #5
	MUL 	r7, r7, r8
	AND 	r9, r3, #3
	CMP 	r9, #0
	beq 	L_t1_unpack_coefficient_at_index$2
	CMP 	r9, #1
	beq 	L_t1_unpack_coefficient_at_index$4
	CMP 	r9, #2
	beq 	L_t1_unpack_coefficient_at_index$6
	ADD 	r7, r7, r9
	LDRB	r8, [r12, r7]
	LSR 	r8, r8, #6
	ADD 	r7, r7, #1
	LDRB	r7, [r12, r7]
	LSL 	r7, r7, #2
	ORR 	r8, r8, r7
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$6:
	ADD 	r7, r7, r9
	LDRB	r8, [r12, r7]
	LSR 	r8, r8, #4
	ADD 	r7, r7, #1
	LDRB	r7, [r12, r7]
	LSL 	r7, r7, #4
	ORR 	r8, r8, r7
L_t1_unpack_coefficient_at_index$7:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$4:
	ADD 	r7, r7, r9
	LDRB	r8, [r12, r7]
	LSR 	r8, r8, #2
	ADD 	r7, r7, #1
	LDRB	r7, [r12, r7]
	LSL 	r7, r7, #6
	ORR 	r8, r8, r7
L_t1_unpack_coefficient_at_index$5:
	b   	L_t1_unpack_coefficient_at_index$3
L_t1_unpack_coefficient_at_index$2:
	LDRB	r8, [r12, r7]
	ADD 	r7, r7, #1
	LDRB	r7, [r12, r7]
	LSL 	r7, r7, #8
	ORR 	r8, r8, r7
L_t1_unpack_coefficient_at_index$3:
	MOVw	r7, #1023
	AND 	r8, r8, r7
	LSL 	r8, r8, #13
	bx  	lr
L_polyt1_pack$1:
	MOV 	r3, #0
	MOV 	r4, #0
	b   	L_polyt1_pack$2
L_polyt1_pack$3:
	LDR 	r12, [r2, r3, lsl #2]
	ADD 	r3, r3, #1
	LDR 	r5, [r2, r3, lsl #2]
	ADD 	r3, r3, #1
	LDR 	r6, [r2, r3, lsl #2]
	ADD 	r3, r3, #1
	LDR 	r7, [r2, r3, lsl #2]
	ADD 	r3, r3, #1
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r12, #8
	ORR 	r12, r12, r5, lsl #2
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r5, #6
	ORR 	r12, r12, r6, lsl #4
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r6, #4
	ORR 	r12, r12, r7, lsl #6
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
	LSR 	r12, r7, #2
	STRB	r12, [r1, r4]
	ADD 	r4, r4, #1
L_polyt1_pack$2:
	CMP 	r3, #256
	bcc 	L_polyt1_pack$3
	bx  	lr
L_shake256_inc_absorb_mem_naive$1:
	STR 	lr, [sp]
	b   	L_shake256_inc_absorb_mem_naive$2
L_shake256_inc_absorb_mem_naive$3:
	LDRB	r7, [r3]
	LDRB	r1, [r0, r2]
	EOR 	r1, r1, r7
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
	LDRB	r7, [r1, r12]
	LDRB	r2, [r0, r3]
	EOR 	r2, r2, r7
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
	CMP 	r12, #192
	bne 	L_shake256_absorb_w1_element$3
	pop 	{pc}
L_hash_verification_key$1:
	STR 	lr, [sp]
	MOV 	r2, #0
	MOV 	r7, #0
	b   	L_hash_verification_key$10
L_hash_verification_key$11:
	STR 	r7, [r0, r2, lsl #2]
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
	MOVw	r2, #294
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
	CMP 	r1, #328
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
	LDR 	r7, [r0, r12, lsl #2]
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
	STRH	r5, [r1, #64]
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
	MOVw	r4, #57345
	MOVT	r4, #127
L_stream128_refill_buffer$2:
	LDR 	r9, [r0, r12, lsl #2]
	ADD 	r3, r12, #1
	LDR 	r5, [r0, r3, lsl #2]
	ADD 	r3, r3, #1
	LDR 	r7, [r0, r3, lsl #2]
	ADD 	r12, r3, #1
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
	STRH	r5, [r1, #32]
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
	ADD 	r2, sp, #16
	MOVw	r1, #:lower16:glob_data+1024
	MOVT	r1, #:upper16:glob_data+1024
	STR 	r1, [sp, #4]
	MOV 	r1, #0
	b   	L_keccakf1600_ref$2
L_keccakf1600_ref$3:
	LDR 	r3, [sp, #4]
	LDR 	r12, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	LDR 	r3, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	STR 	r1, [sp, #8]
	SUB 	sp, sp, #56
	bl  	L_round_ref$1
L_keccakf1600_ref$5:
	ADD 	sp, sp, #52
	STR 	r0, [sp, #12]
	LDR 	r2, [sp, #12]
	ADD 	r0, sp, #16
	LDR 	r1, [sp, #8]
	LDR 	r3, [sp, #4]
	LDR 	r12, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	LDR 	r3, [r3, r1, lsl #2]
	ADD 	r1, r1, #1
	STR 	r1, [sp, #8]
	SUB 	sp, sp, #56
	bl  	L_round_ref$1
L_keccakf1600_ref$4:
	ADD 	sp, sp, #52
	STR 	r2, [sp, #12]
	LDR 	r0, [sp, #12]
	ADD 	r2, sp, #16
	LDR 	r1, [sp, #8]
L_keccakf1600_ref$2:
	CMP 	r1, #48
	bcc 	L_keccakf1600_ref$3
	pop 	{pc}
L_round_ref$1:
	STR 	lr, [sp]
	STR 	r2, [sp, #4]
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
	LSL 	r8, r2, #1
	LSL 	r3, r3, #1
	ORR 	r1, r3, r2, lsr #31
	ORR 	r2, r8, r12, lsr #31
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
	LSL 	r8, lr, #12
	LSL 	r3, r3, #12
	ORR 	r3, r3, lr, lsr #20
	ORR 	r12, r8, r12, lsr #20
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
	LDR 	r2, [sp, #4]
	STR 	r9, [r2, #32]
	STR 	r10, [r2, #36]
	STR 	r2, [sp, #4]
	LDR 	r1, [r0, #24]
	LDR 	r2, [r0, #28]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r8, r2, #28
	LSL 	r3, r3, #28
	ORR 	r1, r3, r2, lsr #4
	ORR 	r2, r8, r12, lsr #4
	LDR 	r3, [r0, #72]
	LDR 	r12, [r0, #76]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r3, r3, r8
	EOR 	lr, r12, r10
	MOV 	r12, r3
	LSL 	r8, lr, #20
	LSL 	r3, r3, #20
	ORR 	r3, r3, lr, lsr #12
	ORR 	r12, r8, r12, lsr #12
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
	LDR 	r2, [sp, #4]
	STR 	r9, [r2, #72]
	STR 	r10, [r2, #76]
	STR 	r2, [sp, #4]
	LDR 	r1, [r0, #8]
	LDR 	r2, [r0, #12]
	LDR 	r8, [sp, #24]
	LDR 	r10, [sp, #28]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r8, r2, #1
	LSL 	r3, r3, #1
	ORR 	r1, r3, r2, lsr #31
	ORR 	r2, r8, r12, lsr #31
	LDR 	r3, [r0, #56]
	LDR 	r12, [r0, #60]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	r3, r3, r8
	EOR 	lr, r12, r10
	MOV 	r12, r3
	LSL 	r8, lr, #6
	LSL 	r3, r3, #6
	ORR 	r3, r3, lr, lsr #26
	ORR 	r12, r8, r12, lsr #26
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
	LDR 	r2, [sp, #4]
	STR 	r9, [r2, #112]
	STR 	r10, [r2, #116]
	STR 	r2, [sp, #4]
	LDR 	r1, [r0, #32]
	LDR 	r2, [r0, #36]
	LDR 	r8, [sp, #48]
	LDR 	r10, [sp, #52]
	EOR 	r3, r1, r8
	EOR 	r2, r2, r10
	MOV 	r12, r3
	LSL 	r8, r2, #27
	LSL 	r3, r3, #27
	ORR 	r1, r3, r2, lsr #5
	ORR 	r2, r8, r12, lsr #5
	LDR 	r3, [r0, #40]
	LDR 	r12, [r0, #44]
	LDR 	r8, [sp, #16]
	LDR 	r10, [sp, #20]
	EOR 	lr, r3, r8
	EOR 	r3, r12, r10
	MOV 	r12, r3
	LSL 	r8, lr, #4
	LSL 	r3, r3, #4
	ORR 	r3, r3, lr, lsr #28
	ORR 	r12, r8, r12, lsr #28
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
	LDR 	r2, [sp, #4]
	STR 	r9, [r2, #152]
	STR 	r10, [r2, #156]
	STR 	r2, [sp, #4]
	LDR 	r1, [r0, #16]
	LDR 	r2, [r0, #20]
	LDR 	r8, [sp, #32]
	LDR 	r10, [sp, #36]
	EOR 	lr, r1, r8
	EOR 	r3, r2, r10
	MOV 	r12, r3
	LSL 	r8, lr, #30
	LSL 	r3, r3, #30
	ORR 	r1, r3, lr, lsr #2
	ORR 	r2, r8, r12, lsr #2
	LDR 	r3, [r0, #64]
	LDR 	r12, [r0, #68]
	LDR 	r8, [sp, #40]
	LDR 	r10, [sp, #44]
	EOR 	lr, r3, r8
	EOR 	r3, r12, r10
	MOV 	r12, r3
	LSL 	r8, lr, #23
	LSL 	r3, r3, #23
	ORR 	r3, r3, lr, lsr #9
	ORR 	r12, r8, r12, lsr #9
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
	LDR 	r2, [sp, #4]
	STR 	r9, [r2, #192]
	STR 	r10, [r2, #196]
	STR 	r2, [sp, #4]
	LDR 	r2, [sp, #4]
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
