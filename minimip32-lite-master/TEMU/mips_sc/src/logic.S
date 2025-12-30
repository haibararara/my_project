#include "trap.h"
   .set noat
   .globl main
   .text
main:
   # 测试R-type指令
   
   # 1. addu - 无符号加法
   li $t0, 0x1000
   li $t1, 0x2000
   addu $t2, $t0, $t1      # $t2 = 0x3000
   
   # 2. and - 与操作
   li $t3, 0x12345678
   li $t4, 0x0000FFFF
   and $t5, $t3, $t4       # $t5 = 0x00005678
   
   # 3. or - 或操作
   li $t6, 0x11110000
   li $t7, 0x00001111
   or $t8, $t6, $t7        # $t8 = 0x11111111
   
   # 4. xor - 异或操作
   li $t9, 0x10101010
   li $s0, 0x01010101
   xor $s1, $t9, $s0       # $s1 = 0x11111111
   
   # 5. sll - 逻辑左移
   li $s2, 0x0000000F
   sll $s3, $s2, 4         # $s3 = 0x000000F0
   
   # 6. slt - 有符号小于则置位
   li $s4, -1              # 0xFFFFFFFF
   li $s5, 1
   slt $s6, $s4, $s5       # $s6 = 1 (-1 < 1)
   slt $s7, $s5, $s4       # $s7 = 0 (1 < -1)
   
   # 7. srlv - 可变逻辑右移
   li $a0, 0x80000000
   li $a1, 8
   srlv $a2, $a0, $a1      # $a2 = 0x00800000
   
   # 测试I-type指令
   
   # 8. lui - 加载高位立即数
   lui $v0, 0x1234         # $v0 = 0x12340000
   
   # 9. ori - 立即数或操作
   ori $v0, $v0, 0x5678    # $v0 = 0x12345678
   
   # 10. andi - 立即数与操作
   andi $v1, $v0, 0x00FF   # $v1 = 0x00000078
   
   # 11. addiu - 无符号立即数加法
   addiu $a3, $zero, 100   # $a3 = 100
   
   # 12. beq - 相等则分支
   li $t0, 0x1234
   li $t1, 0x1234
   beq $t0, $t1, beq_pass
beq_fail:
   j bad
beq_pass:
   
   # 13. bne - 不等则分支
   li $t2, 0x1234
   li $t3, 0x5678
   bne $t2, $t3, bne_pass
bne_fail:
   j bad
bne_pass:
   
   # 14. blez - 小于等于零则分支
   li $t4, 0
   blez $t4, blez_pass1
   j bad
blez_pass1:
   
   li $t4, -1
   blez $t4, blez_pass2
   j bad
blez_pass2:
   
   # 测试内存访问指令
   
   # 15. sw - 字存储
   li $sp, 0x80010000      # 设置栈指针到数据段
   li $t0, 0xDEADBEEF
   sw $t0, 0($sp)          # 存储到内存
   
   # 16. lw - 字加载
   lw $t1, 0($sp)          # 从内存加载
   # $t1 应该等于 0xDEADBEEF
   
   # 17. lb/sb - 字节加载/存储
   li $t2, 0x80            # -128 (有符号)
   sb $t2, 4($sp)          # 存储字节
   lb $t3, 4($sp)          # 加载字节，应该符号扩展为 0xFFFFFF80
   
   # 所有测试通过
   HIT_GOOD_TRAP
   
bad:
   # 测试失败
   HIT_BAD_TRAP
