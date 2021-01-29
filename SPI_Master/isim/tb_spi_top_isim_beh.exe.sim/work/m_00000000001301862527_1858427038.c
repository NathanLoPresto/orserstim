/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/iande/Desktop/covg_fpga/SPI_Master/read_AD796x_fifo_cmd.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {26U, 0U};
static unsigned int ng11[] = {9U, 0U};
static unsigned int ng12[] = {10U, 0U};
static unsigned int ng13[] = {11U, 0U};
static unsigned int ng14[] = {12U, 0U};
static unsigned int ng15[] = {13U, 0U};
static unsigned int ng16[] = {14U, 0U};
static unsigned int ng17[] = {17U, 0U};
static unsigned int ng18[] = {18U, 0U};
static unsigned int ng19[] = {20U, 0U};
static unsigned int ng20[] = {0U, 0U, 1U, 0U};
static unsigned int ng21[] = {16U, 0U};
static unsigned int ng22[] = {12304U, 0U, 1U, 0U};
static unsigned int ng23[] = {24U, 0U};
static unsigned int ng24[] = {1U, 0U, 1U, 0U};
static unsigned int ng25[] = {65536U, 0U};
static unsigned int ng26[] = {12560U, 0U, 1U, 0U};
static unsigned int ng27[] = {0U, 0U, 0U, 0U};



static void NetDecl_31_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 6712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 5472);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng1)));
    xsi_vlogtype_concat(t3, 16, 16, 2U, t6, 2, t5, 14);
    t7 = (t0 + 8168);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 65535U;
    t13 = t12;
    t14 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t7, 0, 15U);
    t20 = (t0 + 8024);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Always_33_1(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;

LAB0:    t1 = (t0 + 6960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 8040);
    *((int *)t2) = 1;
    t3 = (t0 + 6992);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 3792U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);

LAB10:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4272U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 2);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 16383U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 16383U);
    t5 = (t0 + 5472);
    xsi_vlogvar_assign_value(t5, t13, 0, 0, 14);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5472);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 14);
    goto LAB8;

}

static void Always_67_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 8056);
    *((int *)t2) = 1;
    t3 = (t0 + 7240);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 3792U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(71, ng0);

LAB10:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5792);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5632);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);

LAB9:    xsi_set_current_line(69, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5632);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 5, 0LL);
    goto LAB8;

}

static void Always_77_3(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;

LAB0:    t1 = (t0 + 7456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 8072);
    *((int *)t2) = 1;
    t3 = (t0 + 7488);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 5632);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t7, 5);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB43;

LAB44:
LAB46:
LAB45:    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB47:    goto LAB2;

LAB7:    xsi_set_current_line(79, ng0);

LAB48:    xsi_set_current_line(80, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 5792);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 5);
    goto LAB47;

LAB9:    xsi_set_current_line(82, ng0);

LAB49:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB11:    xsi_set_current_line(85, ng0);

LAB50:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB13:    xsi_set_current_line(88, ng0);

LAB51:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB15:    xsi_set_current_line(91, ng0);

LAB52:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB17:    xsi_set_current_line(94, ng0);

LAB53:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB19:    xsi_set_current_line(97, ng0);

LAB54:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB21:    xsi_set_current_line(100, ng0);

LAB55:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB23:    xsi_set_current_line(103, ng0);

LAB56:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 4112U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(107, ng0);

LAB61:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 5792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB59:    goto LAB47;

LAB25:    xsi_set_current_line(111, ng0);

LAB62:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB27:    xsi_set_current_line(114, ng0);

LAB63:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB29:    xsi_set_current_line(117, ng0);

LAB64:    xsi_set_current_line(118, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB31:    xsi_set_current_line(120, ng0);

LAB65:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB33:    xsi_set_current_line(123, ng0);

LAB66:    xsi_set_current_line(124, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB35:    xsi_set_current_line(126, ng0);

LAB67:    xsi_set_current_line(127, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB37:    xsi_set_current_line(129, ng0);

LAB68:    xsi_set_current_line(130, ng0);
    t3 = (t0 + 4112U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB69;

LAB70:    xsi_set_current_line(133, ng0);

LAB73:    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 5792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB71:    goto LAB47;

LAB39:    xsi_set_current_line(137, ng0);

LAB74:    xsi_set_current_line(138, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 5792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 5);
    goto LAB47;

LAB41:    xsi_set_current_line(140, ng0);

LAB75:    xsi_set_current_line(141, ng0);
    t3 = (t0 + 3952U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(144, ng0);

LAB80:    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 5792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB78:    goto LAB47;

LAB43:    xsi_set_current_line(148, ng0);

LAB81:    xsi_set_current_line(149, ng0);
    t3 = (t0 + 4112U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t4 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB85;

LAB83:    if (*((unsigned int *)t3) == 0)
        goto LAB82;

LAB84:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB85:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB86;

LAB87:    xsi_set_current_line(152, ng0);

LAB90:    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 5792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB88:    goto LAB47;

LAB57:    xsi_set_current_line(104, ng0);

LAB60:    xsi_set_current_line(105, ng0);
    t5 = ((char*)((ng10)));
    t7 = (t0 + 5792);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 5);
    goto LAB59;

LAB69:    xsi_set_current_line(130, ng0);

LAB72:    xsi_set_current_line(131, ng0);
    t5 = ((char*)((ng17)));
    t7 = (t0 + 5792);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 5);
    goto LAB71;

LAB76:    xsi_set_current_line(141, ng0);

LAB79:    xsi_set_current_line(142, ng0);
    t5 = ((char*)((ng12)));
    t7 = (t0 + 5792);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 5);
    goto LAB78;

LAB82:    *((unsigned int *)t16) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(149, ng0);

LAB89:    xsi_set_current_line(150, ng0);
    t9 = ((char*)((ng11)));
    t10 = (t0 + 5792);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 5);
    goto LAB88;

}

static void Always_161_4(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 8088);
    *((int *)t2) = 1;
    t3 = (t0 + 7736);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(161, ng0);

LAB5:    xsi_set_current_line(162, ng0);
    t4 = (t0 + 5632);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t7, 5);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB43;

LAB44:
LAB46:
LAB45:    xsi_set_current_line(277, ng0);

LAB67:    xsi_set_current_line(278, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(280, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB47:    goto LAB2;

LAB7:    xsi_set_current_line(163, ng0);

LAB48:    xsi_set_current_line(164, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 5312);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB9:    xsi_set_current_line(169, ng0);

LAB49:    xsi_set_current_line(170, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB11:    xsi_set_current_line(175, ng0);

LAB50:    xsi_set_current_line(176, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB13:    xsi_set_current_line(181, ng0);

LAB51:    xsi_set_current_line(182, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB15:    xsi_set_current_line(187, ng0);

LAB52:    xsi_set_current_line(188, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB17:    xsi_set_current_line(193, ng0);

LAB53:    xsi_set_current_line(194, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB19:    xsi_set_current_line(199, ng0);

LAB54:    xsi_set_current_line(200, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB21:    xsi_set_current_line(205, ng0);

LAB55:    xsi_set_current_line(206, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB23:    xsi_set_current_line(211, ng0);

LAB56:    xsi_set_current_line(212, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB25:    xsi_set_current_line(217, ng0);

LAB57:    xsi_set_current_line(218, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(220, ng0);
    t2 = (t0 + 4432U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng25)));
    xsi_vlogtype_concat(t11, 34, 34, 2U, t2, 18, t3, 16);
    t4 = (t0 + 4992);
    xsi_vlogvar_assign_value(t4, t11, 0, 0, 34);
    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB27:    xsi_set_current_line(223, ng0);

LAB58:    xsi_set_current_line(224, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(226, ng0);
    t2 = (t0 + 4432U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng25)));
    xsi_vlogtype_concat(t11, 34, 34, 2U, t2, 18, t3, 16);
    t4 = (t0 + 4992);
    xsi_vlogvar_assign_value(t4, t11, 0, 0, 34);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB29:    xsi_set_current_line(229, ng0);

LAB59:    xsi_set_current_line(230, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(232, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 34);
    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB31:    xsi_set_current_line(235, ng0);

LAB60:    xsi_set_current_line(236, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(237, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(239, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB33:    xsi_set_current_line(241, ng0);

LAB61:    xsi_set_current_line(242, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(243, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(244, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 34);
    xsi_set_current_line(245, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB35:    xsi_set_current_line(247, ng0);

LAB62:    xsi_set_current_line(248, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(249, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(250, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 34);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB37:    xsi_set_current_line(253, ng0);

LAB63:    xsi_set_current_line(254, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(256, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 34);
    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB39:    xsi_set_current_line(259, ng0);

LAB64:    xsi_set_current_line(260, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(261, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(262, ng0);
    t2 = (t0 + 4992);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4992);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 34);
    xsi_set_current_line(263, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB41:    xsi_set_current_line(265, ng0);

LAB65:    xsi_set_current_line(266, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(267, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(268, ng0);
    t2 = (t0 + 4432U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng25)));
    xsi_vlogtype_concat(t11, 34, 34, 2U, t2, 18, t3, 16);
    t4 = (t0 + 4992);
    xsi_vlogvar_assign_value(t4, t11, 0, 0, 34);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

LAB43:    xsi_set_current_line(271, ng0);

LAB66:    xsi_set_current_line(272, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5312);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(273, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 4832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 34);
    xsi_set_current_line(275, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

}


extern void work_m_00000000001301862527_1858427038_init()
{
	static char *pe[] = {(void *)NetDecl_31_0,(void *)Always_33_1,(void *)Always_67_2,(void *)Always_77_3,(void *)Always_161_4};
	xsi_register_didat("work_m_00000000001301862527_1858427038", "isim/tb_spi_top_isim_beh.exe.sim/work/m_00000000001301862527_1858427038.didat");
	xsi_register_executes(pe);
}