	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_get_tbl_entry          ## -- Begin function get_tbl_entry
	.p2align	4, 0x90
_get_tbl_entry:                         ## @get_tbl_entry
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -2(%rbp)
	movq	$0, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	$255, -16(%rbp)
	jae	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	leaq	_trans_tbl(%rip), %rcx
	movsbl	(%rcx,%rax,2), %edx
	movsbl	-2(%rbp), %esi
	cmpl	%esi, %edx
	jne	LBB0_4
## %bb.3:
	movq	-16(%rbp), %rax
	leaq	_trans_tbl(%rip), %rcx
	movb	1(%rcx,%rax,2), %dl
	movb	%dl, -1(%rbp)
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_1
LBB0_6:
	movb	$0, -1(%rbp)
LBB0_7:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -180(%rbp)
	movq	L___const.main.ans(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	L___const.main.ans+8(%rip), %rax
	movq	%rax, -168(%rbp)
	movl	L___const.main.ans+16(%rip), %ecx
	movl	%ecx, -160(%rbp)
	movw	L___const.main.ans+20(%rip), %dx
	movw	%dx, -156(%rbp)
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stdinp@GOTPCREL(%rip), %rdi
	leaq	-144(%rbp), %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rdi
	movl	$128, %esi
	movl	%eax, -204(%rbp)        ## 4-byte Spill
	callq	_fgets
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	movq	%rdx, -224(%rbp)        ## 8-byte Spill
	callq	_strlen
	subq	$1, %rax
	movb	$0, -144(%rbp,%rax)
	movq	-224(%rbp), %rdi        ## 8-byte Reload
	callq	_strlen
	movq	%rax, -192(%rbp)
	movq	$0, -200(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-200(%rbp), %rax
	movsbl	-144(%rbp,%rax), %edi
	callq	_get_tbl_entry
	movq	-200(%rbp), %rcx
	movb	%al, -144(%rbp,%rcx)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)
	jmp	LBB1_1
LBB1_4:
	cmpq	$21, -192(%rbp)
	je	LBB1_6
## %bb.5:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -180(%rbp)
	movl	%eax, -228(%rbp)        ## 4-byte Spill
	jmp	LBB1_9
LBB1_6:
	leaq	-176(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movl	$22, %edx
	callq	_strncmp
	cmpl	$0, %eax
	jne	LBB1_8
## %bb.7:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -180(%rbp)
	movl	%eax, -232(%rbp)        ## 4-byte Spill
	jmp	LBB1_9
LBB1_8:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, -180(%rbp)
	movl	%eax, -236(%rbp)        ## 4-byte Spill
LBB1_9:
	movl	-180(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -240(%rbp)        ## 4-byte Spill
	jne	LBB1_11
## %bb.10:
	movl	-240(%rbp), %eax        ## 4-byte Reload
	addq	$240, %rsp
	popq	%rbp
	retq
LBB1_11:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_trans_tbl              ## @trans_tbl
	.p2align	4
_trans_tbl:
	.byte	1                       ## 0x1
	.byte	187                     ## 0xbb
	.byte	2                       ## 0x2
	.byte	155                     ## 0x9b
	.byte	3                       ## 0x3
	.byte	196                     ## 0xc4
	.byte	4                       ## 0x4
	.byte	108                     ## 0x6c
	.byte	5                       ## 0x5
	.byte	74                      ## 0x4a
	.byte	6                       ## 0x6
	.byte	46                      ## 0x2e
	.byte	7                       ## 0x7
	.byte	34                      ## 0x22
	.byte	8                       ## 0x8
	.byte	69                      ## 0x45
	.byte	9                       ## 0x9
	.byte	51                      ## 0x33
	.byte	10                      ## 0xa
	.byte	184                     ## 0xb8
	.byte	11                      ## 0xb
	.byte	213                     ## 0xd5
	.byte	12                      ## 0xc
	.byte	6                       ## 0x6
	.byte	13                      ## 0xd
	.byte	10                      ## 0xa
	.byte	14                      ## 0xe
	.byte	188                     ## 0xbc
	.byte	15                      ## 0xf
	.byte	250                     ## 0xfa
	.byte	16                      ## 0x10
	.byte	121                     ## 0x79
	.byte	17                      ## 0x11
	.byte	36                      ## 0x24
	.byte	18                      ## 0x12
	.byte	225                     ## 0xe1
	.byte	19                      ## 0x13
	.byte	178                     ## 0xb2
	.byte	20                      ## 0x14
	.byte	191                     ## 0xbf
	.byte	21                      ## 0x15
	.byte	44                      ## 0x2c
	.byte	22                      ## 0x16
	.byte	173                     ## 0xad
	.byte	23                      ## 0x17
	.byte	134                     ## 0x86
	.byte	24                      ## 0x18
	.byte	96                      ## 0x60
	.byte	25                      ## 0x19
	.byte	164                     ## 0xa4
	.byte	26                      ## 0x1a
	.byte	182                     ## 0xb6
	.byte	27                      ## 0x1b
	.byte	216                     ## 0xd8
	.byte	28                      ## 0x1c
	.byte	89                      ## 0x59
	.byte	29                      ## 0x1d
	.byte	135                     ## 0x87
	.byte	30                      ## 0x1e
	.byte	65                      ## 0x41
	.byte	31                      ## 0x1f
	.byte	148                     ## 0x94
	.byte	32                      ## 0x20
	.byte	119                     ## 0x77
	.byte	33                      ## 0x21
	.byte	240                     ## 0xf0
	.byte	34                      ## 0x22
	.byte	79                      ## 0x4f
	.byte	35                      ## 0x23
	.byte	203                     ## 0xcb
	.byte	36                      ## 0x24
	.byte	97                      ## 0x61
	.byte	37                      ## 0x25
	.byte	37                      ## 0x25
	.byte	38                      ## 0x26
	.byte	192                     ## 0xc0
	.byte	39                      ## 0x27
	.byte	151                     ## 0x97
	.byte	40                      ## 0x28
	.byte	42                      ## 0x2a
	.byte	41                      ## 0x29
	.byte	92                      ## 0x5c
	.byte	42                      ## 0x2a
	.byte	8                       ## 0x8
	.byte	43                      ## 0x2b
	.byte	201                     ## 0xc9
	.byte	44                      ## 0x2c
	.byte	159                     ## 0x9f
	.byte	45                      ## 0x2d
	.byte	67                      ## 0x43
	.byte	46                      ## 0x2e
	.byte	78                      ## 0x4e
	.byte	47                      ## 0x2f
	.byte	207                     ## 0xcf
	.byte	48                      ## 0x30
	.byte	249                     ## 0xf9
	.byte	49                      ## 0x31
	.byte	62                      ## 0x3e
	.byte	50                      ## 0x32
	.byte	111                     ## 0x6f
	.byte	51                      ## 0x33
	.byte	101                     ## 0x65
	.byte	52                      ## 0x34
	.byte	231                     ## 0xe7
	.byte	53                      ## 0x35
	.byte	197                     ## 0xc5
	.byte	54                      ## 0x36
	.byte	57                      ## 0x39
	.byte	55                      ## 0x37
	.byte	183                     ## 0xb7
	.byte	56                      ## 0x38
	.byte	239                     ## 0xef
	.byte	57                      ## 0x39
	.byte	208                     ## 0xd0
	.byte	58                      ## 0x3a
	.byte	200                     ## 0xc8
	.byte	59                      ## 0x3b
	.byte	47                      ## 0x2f
	.byte	60                      ## 0x3c
	.byte	170                     ## 0xaa
	.byte	61                      ## 0x3d
	.byte	199                     ## 0xc7
	.byte	62                      ## 0x3e
	.byte	71                      ## 0x47
	.byte	63                      ## 0x3f
	.byte	60                      ## 0x3c
	.byte	64                      ## 0x40
	.byte	129                     ## 0x81
	.byte	65                      ## 0x41
	.byte	50                      ## 0x32
	.byte	66                      ## 0x42
	.byte	73                      ## 0x49
	.byte	67                      ## 0x43
	.byte	211                     ## 0xd3
	.byte	68                      ## 0x44
	.byte	166                     ## 0xa6
	.byte	69                      ## 0x45
	.byte	150                     ## 0x96
	.byte	70                      ## 0x46
	.byte	43                      ## 0x2b
	.byte	71                      ## 0x47
	.byte	88                      ## 0x58
	.byte	72                      ## 0x48
	.byte	64                      ## 0x40
	.byte	73                      ## 0x49
	.byte	241                     ## 0xf1
	.byte	74                      ## 0x4a
	.byte	156                     ## 0x9c
	.byte	75                      ## 0x4b
	.byte	238                     ## 0xee
	.byte	76                      ## 0x4c
	.byte	26                      ## 0x1a
	.byte	77                      ## 0x4d
	.byte	91                      ## 0x5b
	.byte	78                      ## 0x4e
	.byte	198                     ## 0xc6
	.byte	79                      ## 0x4f
	.byte	214                     ## 0xd6
	.byte	80                      ## 0x50
	.byte	128                     ## 0x80
	.byte	81                      ## 0x51
	.byte	45                      ## 0x2d
	.byte	82                      ## 0x52
	.byte	109                     ## 0x6d
	.byte	83                      ## 0x53
	.byte	154                     ## 0x9a
	.byte	84                      ## 0x54
	.byte	61                      ## 0x3d
	.byte	85                      ## 0x55
	.byte	167                     ## 0xa7
	.byte	86                      ## 0x56
	.byte	147                     ## 0x93
	.byte	87                      ## 0x57
	.byte	132                     ## 0x84
	.byte	88                      ## 0x58
	.byte	224                     ## 0xe0
	.byte	89                      ## 0x59
	.byte	18                      ## 0x12
	.byte	90                      ## 0x5a
	.byte	59                      ## 0x3b
	.byte	91                      ## 0x5b
	.byte	185                     ## 0xb9
	.byte	92                      ## 0x5c
	.byte	9                       ## 0x9
	.byte	93                      ## 0x5d
	.byte	105                     ## 0x69
	.byte	94                      ## 0x5e
	.byte	186                     ## 0xba
	.byte	95                      ## 0x5f
	.byte	153                     ## 0x99
	.byte	96                      ## 0x60
	.byte	72                      ## 0x48
	.byte	97                      ## 0x61
	.byte	115                     ## 0x73
	.byte	98                      ## 0x62
	.byte	177                     ## 0xb1
	.byte	99                      ## 0x63
	.byte	124                     ## 0x7c
	.byte	100                     ## 0x64
	.byte	130                     ## 0x82
	.byte	101                     ## 0x65
	.byte	190                     ## 0xbe
	.byte	102                     ## 0x66
	.byte	39                      ## 0x27
	.byte	103                     ## 0x67
	.byte	157                     ## 0x9d
	.byte	104                     ## 0x68
	.byte	251                     ## 0xfb
	.byte	105                     ## 0x69
	.byte	103                     ## 0x67
	.byte	106                     ## 0x6a
	.byte	126                     ## 0x7e
	.byte	107                     ## 0x6b
	.byte	244                     ## 0xf4
	.byte	108                     ## 0x6c
	.byte	179                     ## 0xb3
	.byte	109                     ## 0x6d
	.byte	5                       ## 0x5
	.byte	110                     ## 0x6e
	.byte	194                     ## 0xc2
	.byte	111                     ## 0x6f
	.byte	95                      ## 0x5f
	.byte	112                     ## 0x70
	.byte	27                      ## 0x1b
	.byte	113                     ## 0x71
	.byte	84                      ## 0x54
	.byte	114                     ## 0x72
	.byte	35                      ## 0x23
	.byte	115                     ## 0x73
	.byte	113                     ## 0x71
	.byte	116                     ## 0x74
	.byte	17                      ## 0x11
	.byte	117                     ## 0x75
	.byte	48                      ## 0x30
	.byte	118                     ## 0x76
	.byte	210                     ## 0xd2
	.byte	119                     ## 0x77
	.byte	165                     ## 0xa5
	.byte	120                     ## 0x78
	.byte	104                     ## 0x68
	.byte	121                     ## 0x79
	.byte	158                     ## 0x9e
	.byte	122                     ## 0x7a
	.byte	63                      ## 0x3f
	.byte	123                     ## 0x7b
	.byte	245                     ## 0xf5
	.byte	124                     ## 0x7c
	.byte	122                     ## 0x7a
	.byte	125                     ## 0x7d
	.byte	206                     ## 0xce
	.byte	126                     ## 0x7e
	.byte	11                      ## 0xb
	.byte	127                     ## 0x7f
	.byte	12                      ## 0xc
	.byte	128                     ## 0x80
	.byte	133                     ## 0x85
	.byte	129                     ## 0x81
	.byte	222                     ## 0xde
	.byte	130                     ## 0x82
	.byte	99                      ## 0x63
	.byte	131                     ## 0x83
	.byte	94                      ## 0x5e
	.byte	132                     ## 0x84
	.byte	142                     ## 0x8e
	.byte	133                     ## 0x85
	.byte	189                     ## 0xbd
	.byte	134                     ## 0x86
	.byte	254                     ## 0xfe
	.byte	135                     ## 0x87
	.byte	106                     ## 0x6a
	.byte	136                     ## 0x88
	.byte	218                     ## 0xda
	.byte	137                     ## 0x89
	.byte	38                      ## 0x26
	.byte	138                     ## 0x8a
	.byte	136                     ## 0x88
	.byte	139                     ## 0x8b
	.byte	232                     ## 0xe8
	.byte	140                     ## 0x8c
	.byte	172                     ## 0xac
	.byte	141                     ## 0x8d
	.byte	3                       ## 0x3
	.byte	142                     ## 0x8e
	.byte	98                      ## 0x62
	.byte	143                     ## 0x8f
	.byte	168                     ## 0xa8
	.byte	144                     ## 0x90
	.byte	246                     ## 0xf6
	.byte	145                     ## 0x91
	.byte	247                     ## 0xf7
	.byte	146                     ## 0x92
	.byte	117                     ## 0x75
	.byte	147                     ## 0x93
	.byte	107                     ## 0x6b
	.byte	148                     ## 0x94
	.byte	195                     ## 0xc3
	.byte	149                     ## 0x95
	.byte	70                      ## 0x46
	.byte	150                     ## 0x96
	.byte	81                      ## 0x51
	.byte	151                     ## 0x97
	.byte	230                     ## 0xe6
	.byte	152                     ## 0x98
	.byte	143                     ## 0x8f
	.byte	153                     ## 0x99
	.byte	40                      ## 0x28
	.byte	154                     ## 0x9a
	.byte	118                     ## 0x76
	.byte	155                     ## 0x9b
	.byte	90                      ## 0x5a
	.byte	156                     ## 0x9c
	.byte	145                     ## 0x91
	.byte	157                     ## 0x9d
	.byte	236                     ## 0xec
	.byte	158                     ## 0x9e
	.byte	31                      ## 0x1f
	.byte	159                     ## 0x9f
	.byte	68                      ## 0x44
	.byte	160                     ## 0xa0
	.byte	82                      ## 0x52
	.byte	161                     ## 0xa1
	.byte	1                       ## 0x1
	.byte	162                     ## 0xa2
	.byte	252                     ## 0xfc
	.byte	163                     ## 0xa3
	.byte	139                     ## 0x8b
	.byte	164                     ## 0xa4
	.byte	58                      ## 0x3a
	.byte	165                     ## 0xa5
	.byte	161                     ## 0xa1
	.byte	166                     ## 0xa6
	.byte	163                     ## 0xa3
	.byte	167                     ## 0xa7
	.byte	22                      ## 0x16
	.byte	168                     ## 0xa8
	.byte	16                      ## 0x10
	.byte	169                     ## 0xa9
	.byte	20                      ## 0x14
	.byte	170                     ## 0xaa
	.byte	80                      ## 0x50
	.byte	171                     ## 0xab
	.byte	202                     ## 0xca
	.byte	172                     ## 0xac
	.byte	149                     ## 0x95
	.byte	173                     ## 0xad
	.byte	146                     ## 0x92
	.byte	174                     ## 0xae
	.byte	75                      ## 0x4b
	.byte	175                     ## 0xaf
	.byte	53                      ## 0x35
	.byte	176                     ## 0xb0
	.byte	14                      ## 0xe
	.byte	177                     ## 0xb1
	.byte	181                     ## 0xb5
	.byte	178                     ## 0xb2
	.byte	32                      ## 0x20
	.byte	179                     ## 0xb3
	.byte	29                      ## 0x1d
	.byte	180                     ## 0xb4
	.byte	93                      ## 0x5d
	.byte	181                     ## 0xb5
	.byte	193                     ## 0xc1
	.byte	182                     ## 0xb6
	.byte	226                     ## 0xe2
	.byte	183                     ## 0xb7
	.byte	110                     ## 0x6e
	.byte	184                     ## 0xb8
	.byte	15                      ## 0xf
	.byte	185                     ## 0xb9
	.byte	237                     ## 0xed
	.byte	186                     ## 0xba
	.byte	144                     ## 0x90
	.byte	187                     ## 0xbb
	.byte	212                     ## 0xd4
	.byte	188                     ## 0xbc
	.byte	217                     ## 0xd9
	.byte	189                     ## 0xbd
	.byte	66                      ## 0x42
	.byte	190                     ## 0xbe
	.byte	221                     ## 0xdd
	.byte	191                     ## 0xbf
	.byte	152                     ## 0x98
	.byte	192                     ## 0xc0
	.byte	87                      ## 0x57
	.byte	193                     ## 0xc1
	.byte	55                      ## 0x37
	.byte	194                     ## 0xc2
	.byte	25                      ## 0x19
	.byte	195                     ## 0xc3
	.byte	120                     ## 0x78
	.byte	196                     ## 0xc4
	.byte	86                      ## 0x56
	.byte	197                     ## 0xc5
	.byte	175                     ## 0xaf
	.byte	198                     ## 0xc6
	.byte	116                     ## 0x74
	.byte	199                     ## 0xc7
	.byte	209                     ## 0xd1
	.byte	200                     ## 0xc8
	.byte	4                       ## 0x4
	.byte	201                     ## 0xc9
	.byte	41                      ## 0x29
	.byte	202                     ## 0xca
	.byte	85                      ## 0x55
	.byte	203                     ## 0xcb
	.byte	229                     ## 0xe5
	.byte	204                     ## 0xcc
	.byte	76                      ## 0x4c
	.byte	205                     ## 0xcd
	.byte	160                     ## 0xa0
	.byte	206                     ## 0xce
	.byte	242                     ## 0xf2
	.byte	207                     ## 0xcf
	.byte	137                     ## 0x89
	.byte	208                     ## 0xd0
	.byte	219                     ## 0xdb
	.byte	209                     ## 0xd1
	.byte	228                     ## 0xe4
	.byte	210                     ## 0xd2
	.byte	56                      ## 0x38
	.byte	211                     ## 0xd3
	.byte	131                     ## 0x83
	.byte	212                     ## 0xd4
	.byte	234                     ## 0xea
	.byte	213                     ## 0xd5
	.byte	23                      ## 0x17
	.byte	214                     ## 0xd6
	.byte	7                       ## 0x7
	.byte	215                     ## 0xd7
	.byte	220                     ## 0xdc
	.byte	216                     ## 0xd8
	.byte	140                     ## 0x8c
	.byte	217                     ## 0xd9
	.byte	138                     ## 0x8a
	.byte	218                     ## 0xda
	.byte	180                     ## 0xb4
	.byte	219                     ## 0xdb
	.byte	123                     ## 0x7b
	.byte	220                     ## 0xdc
	.byte	233                     ## 0xe9
	.byte	221                     ## 0xdd
	.byte	255                     ## 0xff
	.byte	222                     ## 0xde
	.byte	235                     ## 0xeb
	.byte	223                     ## 0xdf
	.byte	21                      ## 0x15
	.byte	224                     ## 0xe0
	.byte	13                      ## 0xd
	.byte	225                     ## 0xe1
	.byte	2                       ## 0x2
	.byte	226                     ## 0xe2
	.byte	162                     ## 0xa2
	.byte	227                     ## 0xe3
	.byte	243                     ## 0xf3
	.byte	228                     ## 0xe4
	.byte	52                      ## 0x34
	.byte	229                     ## 0xe5
	.byte	204                     ## 0xcc
	.byte	230                     ## 0xe6
	.byte	24                      ## 0x18
	.byte	231                     ## 0xe7
	.byte	248                     ## 0xf8
	.byte	232                     ## 0xe8
	.byte	19                      ## 0x13
	.byte	233                     ## 0xe9
	.byte	141                     ## 0x8d
	.byte	234                     ## 0xea
	.byte	127                     ## 0x7f
	.byte	235                     ## 0xeb
	.byte	174                     ## 0xae
	.byte	236                     ## 0xec
	.byte	33                      ## 0x21
	.byte	237                     ## 0xed
	.byte	227                     ## 0xe3
	.byte	238                     ## 0xee
	.byte	205                     ## 0xcd
	.byte	239                     ## 0xef
	.byte	77                      ## 0x4d
	.byte	240                     ## 0xf0
	.byte	112                     ## 0x70
	.byte	241                     ## 0xf1
	.byte	83                      ## 0x53
	.byte	242                     ## 0xf2
	.byte	253                     ## 0xfd
	.byte	243                     ## 0xf3
	.byte	171                     ## 0xab
	.byte	244                     ## 0xf4
	.byte	114                     ## 0x72
	.byte	245                     ## 0xf5
	.byte	100                     ## 0x64
	.byte	246                     ## 0xf6
	.byte	28                      ## 0x1c
	.byte	247                     ## 0xf7
	.byte	102                     ## 0x66
	.byte	248                     ## 0xf8
	.byte	169                     ## 0xa9
	.byte	249                     ## 0xf9
	.byte	176                     ## 0xb0
	.byte	250                     ## 0xfa
	.byte	30                      ## 0x1e
	.byte	251                     ## 0xfb
	.byte	215                     ## 0xd7
	.byte	252                     ## 0xfc
	.byte	223                     ## 0xdf
	.byte	253                     ## 0xfd
	.byte	54                      ## 0x36
	.byte	254                     ## 0xfe
	.byte	125                     ## 0x7d
	.byte	255                     ## 0xff
	.byte	49                      ## 0x31

	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @__const.main.ans
L___const.main.ans:
	.asciz	"'\263s\235\365|\231g?\231e?\231\347\302\202\231'0\302\316"

L_.str:                                 ## @.str
	.asciz	"Please enter the flag:\n"

L_.str.1:                               ## @.str.1
	.asciz	"WRONG\n"

L_.str.2:                               ## @.str.2
	.asciz	"CORRECT <3\n"


.subsections_via_symbols
