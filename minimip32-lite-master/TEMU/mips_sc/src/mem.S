#include "trap.h"
   .set noat
   .globl main
   .text
main:
   lui  $s0, 0x8001
   ori  $at,$zero,0xff
   nop
   nop
   nop
   sb   $at,0x3($s0)       # [0x80010003] = 0xff
   ori  $at,$zero,0xee
   nop
   nop
   nop
   sb   $at,0x2($s0)       # [0x80010002] = 0xee
   ori  $at,$zero,0xdd
   nop
   nop
   nop
   sb   $at,0x1($s0)       # [0x80010001] = 0xdd
   ori  $at,$zero,0xcc
   nop
   nop
   nop
   sb   $at,0x0($s0)       # [0x80010000] = 0xcc
   lb   $v0,0x3($s0)       # $v0 = 0xffffffff
   nop

   lui  $at,0x4455
   nop
   nop
   nop
   ori  $at,$at,0x6677
   nop
   nop
   nop     
   sw   $at,0x8($s0)       # [0x80010008] = 0x77, [0x80010009]= 0x66, [0x8001000a]= 0x55, [0x8001000b] = 0x44
   lw   $v0,0x8($s0)       # $v0 = 0x44556677
   nop
   HIT_GOOD_TRAP		#stop temu

