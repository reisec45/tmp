
login1:     file format elf64-x86-64


Disassembly of section .init:

00000000004006a0 <_init>:
  4006a0:	48 83 ec 08          	sub    rsp,0x8
  4006a4:	48 8b 05 4d 09 20 00 	mov    rax,QWORD PTR [rip+0x20094d]        # 600ff8 <__gmon_start__>
  4006ab:	48 85 c0             	test   rax,rax
  4006ae:	74 02                	je     4006b2 <_init+0x12>
  4006b0:	ff d0                	call   rax
  4006b2:	48 83 c4 08          	add    rsp,0x8
  4006b6:	c3                   	ret    

Disassembly of section .plt:

00000000004006c0 <.plt>:
  4006c0:	ff 35 42 09 20 00    	push   QWORD PTR [rip+0x200942]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006c6:	ff 25 44 09 20 00    	jmp    QWORD PTR [rip+0x200944]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006d0 <__isoc99_fscanf@plt>:
  4006d0:	ff 25 42 09 20 00    	jmp    QWORD PTR [rip+0x200942]        # 601018 <__isoc99_fscanf@GLIBC_2.7>
  4006d6:	68 00 00 00 00       	push   0x0
  4006db:	e9 e0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006e0 <puts@plt>:
  4006e0:	ff 25 3a 09 20 00    	jmp    QWORD PTR [rip+0x20093a]        # 601020 <puts@GLIBC_2.2.5>
  4006e6:	68 01 00 00 00       	push   0x1
  4006eb:	e9 d0 ff ff ff       	jmp    4006c0 <.plt>

00000000004006f0 <fclose@plt>:
  4006f0:	ff 25 32 09 20 00    	jmp    QWORD PTR [rip+0x200932]        # 601028 <fclose@GLIBC_2.2.5>
  4006f6:	68 02 00 00 00       	push   0x2
  4006fb:	e9 c0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400700 <printf@plt>:
  400700:	ff 25 2a 09 20 00    	jmp    QWORD PTR [rip+0x20092a]        # 601030 <printf@GLIBC_2.2.5>
  400706:	68 03 00 00 00       	push   0x3
  40070b:	e9 b0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400710 <alarm@plt>:
  400710:	ff 25 22 09 20 00    	jmp    QWORD PTR [rip+0x200922]        # 601038 <alarm@GLIBC_2.2.5>
  400716:	68 04 00 00 00       	push   0x4
  40071b:	e9 a0 ff ff ff       	jmp    4006c0 <.plt>

0000000000400720 <strcmp@plt>:
  400720:	ff 25 1a 09 20 00    	jmp    QWORD PTR [rip+0x20091a]        # 601040 <strcmp@GLIBC_2.2.5>
  400726:	68 05 00 00 00       	push   0x5
  40072b:	e9 90 ff ff ff       	jmp    4006c0 <.plt>

0000000000400730 <gets@plt>:
  400730:	ff 25 12 09 20 00    	jmp    QWORD PTR [rip+0x200912]        # 601048 <gets@GLIBC_2.2.5>
  400736:	68 06 00 00 00       	push   0x6
  40073b:	e9 80 ff ff ff       	jmp    4006c0 <.plt>

0000000000400740 <setvbuf@plt>:
  400740:	ff 25 0a 09 20 00    	jmp    QWORD PTR [rip+0x20090a]        # 601050 <setvbuf@GLIBC_2.2.5>
  400746:	68 07 00 00 00       	push   0x7
  40074b:	e9 70 ff ff ff       	jmp    4006c0 <.plt>

0000000000400750 <fopen@plt>:
  400750:	ff 25 02 09 20 00    	jmp    QWORD PTR [rip+0x200902]        # 601058 <fopen@GLIBC_2.2.5>
  400756:	68 08 00 00 00       	push   0x8
  40075b:	e9 60 ff ff ff       	jmp    4006c0 <.plt>

0000000000400760 <exit@plt>:
  400760:	ff 25 fa 08 20 00    	jmp    QWORD PTR [rip+0x2008fa]        # 601060 <exit@GLIBC_2.2.5>
  400766:	68 09 00 00 00       	push   0x9
  40076b:	e9 50 ff ff ff       	jmp    4006c0 <.plt>

Disassembly of section .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    ebp,ebp
  400772:	49 89 d1             	mov    r9,rdx
  400775:	5e                   	pop    rsi
  400776:	48 89 e2             	mov    rdx,rsp
  400779:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40077d:	50                   	push   rax
  40077e:	54                   	push   rsp
  40077f:	49 c7 c0 b0 0a 40 00 	mov    r8,0x400ab0
  400786:	48 c7 c1 40 0a 40 00 	mov    rcx,0x400a40
  40078d:	48 c7 c7 2d 09 40 00 	mov    rdi,0x40092d
  400794:	ff 15 56 08 20 00    	call   QWORD PTR [rip+0x200856]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40079a:	f4                   	hlt    
  40079b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004007a0 <_dl_relocate_static_pie>:
  4007a0:	f3 c3                	repz ret 
  4007a2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4007a9:	00 00 00 
  4007ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004007b0 <deregister_tm_clones>:
  4007b0:	55                   	push   rbp
  4007b1:	b8 78 10 60 00       	mov    eax,0x601078
  4007b6:	48 3d 78 10 60 00    	cmp    rax,0x601078
  4007bc:	48 89 e5             	mov    rbp,rsp
  4007bf:	74 17                	je     4007d8 <deregister_tm_clones+0x28>
  4007c1:	b8 00 00 00 00       	mov    eax,0x0
  4007c6:	48 85 c0             	test   rax,rax
  4007c9:	74 0d                	je     4007d8 <deregister_tm_clones+0x28>
  4007cb:	5d                   	pop    rbp
  4007cc:	bf 78 10 60 00       	mov    edi,0x601078
  4007d1:	ff e0                	jmp    rax
  4007d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007d8:	5d                   	pop    rbp
  4007d9:	c3                   	ret    
  4007da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007e0 <register_tm_clones>:
  4007e0:	be 78 10 60 00       	mov    esi,0x601078
  4007e5:	55                   	push   rbp
  4007e6:	48 81 ee 78 10 60 00 	sub    rsi,0x601078
  4007ed:	48 89 e5             	mov    rbp,rsp
  4007f0:	48 c1 fe 03          	sar    rsi,0x3
  4007f4:	48 89 f0             	mov    rax,rsi
  4007f7:	48 c1 e8 3f          	shr    rax,0x3f
  4007fb:	48 01 c6             	add    rsi,rax
  4007fe:	48 d1 fe             	sar    rsi,1
  400801:	74 15                	je     400818 <register_tm_clones+0x38>
  400803:	b8 00 00 00 00       	mov    eax,0x0
  400808:	48 85 c0             	test   rax,rax
  40080b:	74 0b                	je     400818 <register_tm_clones+0x38>
  40080d:	5d                   	pop    rbp
  40080e:	bf 78 10 60 00       	mov    edi,0x601078
  400813:	ff e0                	jmp    rax
  400815:	0f 1f 00             	nop    DWORD PTR [rax]
  400818:	5d                   	pop    rbp
  400819:	c3                   	ret    
  40081a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 81 08 20 00 00 	cmp    BYTE PTR [rip+0x200881],0x0        # 6010a8 <completed.7697>
  400827:	75 17                	jne    400840 <__do_global_dtors_aux+0x20>
  400829:	55                   	push   rbp
  40082a:	48 89 e5             	mov    rbp,rsp
  40082d:	e8 7e ff ff ff       	call   4007b0 <deregister_tm_clones>
  400832:	c6 05 6f 08 20 00 01 	mov    BYTE PTR [rip+0x20086f],0x1        # 6010a8 <completed.7697>
  400839:	5d                   	pop    rbp
  40083a:	c3                   	ret    
  40083b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400840:	f3 c3                	repz ret 
  400842:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400846:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40084d:	00 00 00 

0000000000400850 <frame_dummy>:
  400850:	55                   	push   rbp
  400851:	48 89 e5             	mov    rbp,rsp
  400854:	5d                   	pop    rbp
  400855:	eb 89                	jmp    4007e0 <register_tm_clones>

0000000000400857 <setup>:
  400857:	55                   	push   rbp
  400858:	48 89 e5             	mov    rbp,rsp
  40085b:	48 83 ec 10          	sub    rsp,0x10
  40085f:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  400866:	00 
  400867:	bf 3c 00 00 00       	mov    edi,0x3c
  40086c:	e8 9f fe ff ff       	call   400710 <alarm@plt>
  400871:	48 8b 05 18 08 20 00 	mov    rax,QWORD PTR [rip+0x200818]        # 601090 <stdin@@GLIBC_2.2.5>
  400878:	b9 00 00 00 00       	mov    ecx,0x0
  40087d:	ba 02 00 00 00       	mov    edx,0x2
  400882:	be 00 00 00 00       	mov    esi,0x0
  400887:	48 89 c7             	mov    rdi,rax
  40088a:	e8 b1 fe ff ff       	call   400740 <setvbuf@plt>
  40088f:	48 8b 05 ea 07 20 00 	mov    rax,QWORD PTR [rip+0x2007ea]        # 601080 <stdout@@GLIBC_2.2.5>
  400896:	b9 00 00 00 00       	mov    ecx,0x0
  40089b:	ba 02 00 00 00       	mov    edx,0x2
  4008a0:	be 00 00 00 00       	mov    esi,0x0
  4008a5:	48 89 c7             	mov    rdi,rax
  4008a8:	e8 93 fe ff ff       	call   400740 <setvbuf@plt>
  4008ad:	48 8b 05 ec 07 20 00 	mov    rax,QWORD PTR [rip+0x2007ec]        # 6010a0 <stderr@@GLIBC_2.2.5>
  4008b4:	b9 00 00 00 00       	mov    ecx,0x0
  4008b9:	ba 02 00 00 00       	mov    edx,0x2
  4008be:	be 00 00 00 00       	mov    esi,0x0
  4008c3:	48 89 c7             	mov    rdi,rax
  4008c6:	e8 75 fe ff ff       	call   400740 <setvbuf@plt>
  4008cb:	48 8d 35 f2 01 00 00 	lea    rsi,[rip+0x1f2]        # 400ac4 <_IO_stdin_used+0x4>
  4008d2:	48 8d 3d ee 01 00 00 	lea    rdi,[rip+0x1ee]        # 400ac7 <_IO_stdin_used+0x7>
  4008d9:	e8 72 fe ff ff       	call   400750 <fopen@plt>
  4008de:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4008e2:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4008e7:	75 16                	jne    4008ff <setup+0xa8>
  4008e9:	48 8d 3d e0 01 00 00 	lea    rdi,[rip+0x1e0]        # 400ad0 <_IO_stdin_used+0x10>
  4008f0:	e8 eb fd ff ff       	call   4006e0 <puts@plt>
  4008f5:	bf 00 00 00 00       	mov    edi,0x0
  4008fa:	e8 61 fe ff ff       	call   400760 <exit@plt>
  4008ff:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400903:	48 8d 15 b6 07 20 00 	lea    rdx,[rip+0x2007b6]        # 6010c0 <flag>
  40090a:	48 8d 35 d7 01 00 00 	lea    rsi,[rip+0x1d7]        # 400ae8 <_IO_stdin_used+0x28>
  400911:	48 89 c7             	mov    rdi,rax
  400914:	b8 00 00 00 00       	mov    eax,0x0
  400919:	e8 b2 fd ff ff       	call   4006d0 <__isoc99_fscanf@plt>
  40091e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400922:	48 89 c7             	mov    rdi,rax
  400925:	e8 c6 fd ff ff       	call   4006f0 <fclose@plt>
  40092a:	90                   	nop
  40092b:	c9                   	leave  
  40092c:	c3                   	ret    

000000000040092d <main>:
  40092d:	55                   	push   rbp
  40092e:	48 89 e5             	mov    rbp,rsp
  400931:	48 83 ec 50          	sub    rsp,0x50
  400935:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  40093c:	00 
  40093d:	48 c7 45 d8 00 00 00 	mov    QWORD PTR [rbp-0x28],0x0
  400944:	00 
  400945:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  40094c:	00 
  40094d:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  400954:	00 
  400955:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
  40095c:	00 
  40095d:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
  400964:	00 
  400965:	48 c7 45 c0 00 00 00 	mov    QWORD PTR [rbp-0x40],0x0
  40096c:	00 
  40096d:	48 c7 45 c8 00 00 00 	mov    QWORD PTR [rbp-0x38],0x0
  400974:	00 
  400975:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  40097c:	b8 00 00 00 00       	mov    eax,0x0
  400981:	e8 d1 fe ff ff       	call   400857 <setup>
  400986:	48 8d 3d 5e 01 00 00 	lea    rdi,[rip+0x15e]        # 400aeb <_IO_stdin_used+0x2b>
  40098d:	b8 00 00 00 00       	mov    eax,0x0
  400992:	e8 69 fd ff ff       	call   400700 <printf@plt>
  400997:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40099b:	48 89 c7             	mov    rdi,rax
  40099e:	e8 8d fd ff ff       	call   400730 <gets@plt>
  4009a3:	48 8d 3d 46 01 00 00 	lea    rdi,[rip+0x146]        # 400af0 <_IO_stdin_used+0x30>
  4009aa:	b8 00 00 00 00       	mov    eax,0x0
  4009af:	e8 4c fd ff ff       	call   400700 <printf@plt>
  4009b4:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  4009b8:	48 89 c7             	mov    rdi,rax
  4009bb:	e8 70 fd ff ff       	call   400730 <gets@plt>
  4009c0:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4009c4:	48 8d 35 30 01 00 00 	lea    rsi,[rip+0x130]        # 400afb <_IO_stdin_used+0x3b>
  4009cb:	48 89 c7             	mov    rdi,rax
  4009ce:	e8 4d fd ff ff       	call   400720 <strcmp@plt>
  4009d3:	85 c0                	test   eax,eax
  4009d5:	75 1e                	jne    4009f5 <main+0xc8>
  4009d7:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  4009db:	48 8d 35 de 06 20 00 	lea    rsi,[rip+0x2006de]        # 6010c0 <flag>
  4009e2:	48 89 c7             	mov    rdi,rax
  4009e5:	e8 36 fd ff ff       	call   400720 <strcmp@plt>
  4009ea:	85 c0                	test   eax,eax
  4009ec:	75 07                	jne    4009f5 <main+0xc8>
  4009ee:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
  4009f5:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
  4009f9:	74 26                	je     400a21 <main+0xf4>
  4009fb:	48 8d 3d ff 00 00 00 	lea    rdi,[rip+0xff]        # 400b01 <_IO_stdin_used+0x41>
  400a02:	e8 d9 fc ff ff       	call   4006e0 <puts@plt>
  400a07:	48 8d 35 b2 06 20 00 	lea    rsi,[rip+0x2006b2]        # 6010c0 <flag>
  400a0e:	48 8d 3d fc 00 00 00 	lea    rdi,[rip+0xfc]        # 400b11 <_IO_stdin_used+0x51>
  400a15:	b8 00 00 00 00       	mov    eax,0x0
  400a1a:	e8 e1 fc ff ff       	call   400700 <printf@plt>
  400a1f:	eb 0c                	jmp    400a2d <main+0x100>
  400a21:	48 8d 3d fa 00 00 00 	lea    rdi,[rip+0xfa]        # 400b22 <_IO_stdin_used+0x62>
  400a28:	e8 b3 fc ff ff       	call   4006e0 <puts@plt>
  400a2d:	b8 00 00 00 00       	mov    eax,0x0
  400a32:	c9                   	leave  
  400a33:	c3                   	ret    
  400a34:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400a3b:	00 00 00 
  400a3e:	66 90                	xchg   ax,ax

0000000000400a40 <__libc_csu_init>:
  400a40:	41 57                	push   r15
  400a42:	41 56                	push   r14
  400a44:	49 89 d7             	mov    r15,rdx
  400a47:	41 55                	push   r13
  400a49:	41 54                	push   r12
  400a4b:	4c 8d 25 be 03 20 00 	lea    r12,[rip+0x2003be]        # 600e10 <__frame_dummy_init_array_entry>
  400a52:	55                   	push   rbp
  400a53:	48 8d 2d be 03 20 00 	lea    rbp,[rip+0x2003be]        # 600e18 <__init_array_end>
  400a5a:	53                   	push   rbx
  400a5b:	41 89 fd             	mov    r13d,edi
  400a5e:	49 89 f6             	mov    r14,rsi
  400a61:	4c 29 e5             	sub    rbp,r12
  400a64:	48 83 ec 08          	sub    rsp,0x8
  400a68:	48 c1 fd 03          	sar    rbp,0x3
  400a6c:	e8 2f fc ff ff       	call   4006a0 <_init>
  400a71:	48 85 ed             	test   rbp,rbp
  400a74:	74 20                	je     400a96 <__libc_csu_init+0x56>
  400a76:	31 db                	xor    ebx,ebx
  400a78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400a7f:	00 
  400a80:	4c 89 fa             	mov    rdx,r15
  400a83:	4c 89 f6             	mov    rsi,r14
  400a86:	44 89 ef             	mov    edi,r13d
  400a89:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400a8d:	48 83 c3 01          	add    rbx,0x1
  400a91:	48 39 dd             	cmp    rbp,rbx
  400a94:	75 ea                	jne    400a80 <__libc_csu_init+0x40>
  400a96:	48 83 c4 08          	add    rsp,0x8
  400a9a:	5b                   	pop    rbx
  400a9b:	5d                   	pop    rbp
  400a9c:	41 5c                	pop    r12
  400a9e:	41 5d                	pop    r13
  400aa0:	41 5e                	pop    r14
  400aa2:	41 5f                	pop    r15
  400aa4:	c3                   	ret    
  400aa5:	90                   	nop
  400aa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400aad:	00 00 00 

0000000000400ab0 <__libc_csu_fini>:
  400ab0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400ab4 <_fini>:
  400ab4:	48 83 ec 08          	sub    rsp,0x8
  400ab8:	48 83 c4 08          	add    rsp,0x8
  400abc:	c3                   	ret    
