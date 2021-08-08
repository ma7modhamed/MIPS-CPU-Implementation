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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_0774719531;
char *IEEE_P_3499444699;
char *IEEE_P_3564397177;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *WORK_P_3153420067;
char *STD_STANDARD;
char *WORK_P_3669809964;
char *WORK_P_0920594833;
char *STD_TEXTIO;
char *WORK_P_3565475926;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_0920594833_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_3669809964_init();
    work_p_3565475926_init();
    work_a_4058131554_3212880686_init();
    work_a_4290509727_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_1446531093_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_1047131559_3212880686_init();
    work_a_2713067650_3212880686_init();
    work_p_3153420067_init();
    work_a_0308474336_3212880686_init();
    work_a_3112044328_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_3276679129_3212880686_init();
    work_a_2248347227_3212880686_init();
    work_a_4172899488_3212880686_init();
    work_a_1912749698_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1809836099_2372691052_init();


    xsi_register_tops("work_a_1809836099_2372691052");

    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    WORK_P_3153420067 = xsi_get_engine_memory("work_p_3153420067");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3669809964 = xsi_get_engine_memory("work_p_3669809964");
    WORK_P_0920594833 = xsi_get_engine_memory("work_p_0920594833");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    WORK_P_3565475926 = xsi_get_engine_memory("work_p_3565475926");

    return xsi_run_simulation(argc, argv);

}
