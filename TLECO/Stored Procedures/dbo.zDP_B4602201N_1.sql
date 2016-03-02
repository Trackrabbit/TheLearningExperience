SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602201N_1] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Master_Lease_ID, BSSI_Height, BSSI_Height_NI, BSSI_Tenant_Leased_Space, BSSI_Tenant_LeasedSpacNI, BSSI_Antenna_Ct, BSSI_Antenna_Ct_NI, BSSI_Antenna_ID, BSSI_CoaxCable_Ct, BSSI_CoaxCable_Ct_NI, BSSI_MicrowaveDsh_Ct, BSSI_MicrowaveDsh_Ct_NI, BSSI_Restoration_Require, BSSI_RestReqNI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Rt_Term_Dt, BSSI_Rt_Term_Dt_NI, BSSI_TerminatRight, BSSI_Term_Right_NI, BSSI_T_Term_Rights, BSSI_T_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, NOTEINDX, BSSI_Actual_Tenant_Heigh, BSSI_Leased_Space_SF, BSSI_Actual_Number_Anten, BSSI_Antennas_Size, BSSI_Actual_Antennas_Siz, BSSI_Actual_Number_Coax, BSSI_Actual_NumberMicrow, BSSI_Size_Of_MicrowaveDi, BSSI_Actual_Size_Of_Micr, BSSI_Height_Of_Microwave, BSSI_Actual_Height_Micro, BSSI_Lines_Size, BSSI_Actual_Lines_Size, BSSI_Other_Equipment, BSSI_Actual_Other_Equipm, BSSI_Height_Other_Equipm, BSSI_Actual_Height_Other, BSSI_Generators, BSSI_Actual_Generators, BSSI_Tower_Mounterd_Amps, BSSI_Actual_Tower_Mounte, BSSI_Shelter_Cab, BSSI_Actual_Shelter_Cab, BSSI_Arbitration_Provisi, BSSI_Frequency_Sharing_A, BSSI_Tenant_Right_To_Net, BSSI_Sublet_Provisions, BSSI_Default_Arrangement, BSSI_Clawback_Provisions, BSSI_Frequency_Restricti, BSSI_Notice_Required_Ter, BSSI_Second_Termination, BSSI_Second_Term_Date, BSSI_NI_Array_1, BSSI_NI_Array_2, BSSI_NI_Array_3, BSSI_NI_Array_4, BSSI_NI_Array_5, BSSI_NI_Array_6, BSSI_NI_Array_7, BSSI_NI_Array_8, BSSI_NI_Array_9, BSSI_NI_Array_10, BSSI_NI_Array_11, BSSI_NI_Array_12, BSSI_NI_Array_13, BSSI_NI_Array_14, BSSI_NI_Array_15, BSSI_NI_Array_16, BSSI_NI_Array_17, BSSI_NI_Array_18, BSSI_NI_Array_19, BSSI_NI_Array_20, BSSI_NI_Array_21, BSSI_NI_Array_22, BSSI_NI_Array_23, BSSI_NI_Array_24, BSSI_NI_Array_25, BSSI_NI_Array_26, BSSI_NI_Array_27, BSSI_NI_Array_28, BSSI_NI_Array_29, BSSI_NI_Array_30, BSSI_NI_Array_31, BSSI_NI_Array_32, BSSI_Actual_T_Height_On, DEX_ROW_ID, BSSI_Comments, BSSI_Tenant_Ground_Space FROM .B4602201 WHERE ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Master_Lease_ID, BSSI_Height, BSSI_Height_NI, BSSI_Tenant_Leased_Space, BSSI_Tenant_LeasedSpacNI, BSSI_Antenna_Ct, BSSI_Antenna_Ct_NI, BSSI_Antenna_ID, BSSI_CoaxCable_Ct, BSSI_CoaxCable_Ct_NI, BSSI_MicrowaveDsh_Ct, BSSI_MicrowaveDsh_Ct_NI, BSSI_Restoration_Require, BSSI_RestReqNI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Rt_Term_Dt, BSSI_Rt_Term_Dt_NI, BSSI_TerminatRight, BSSI_Term_Right_NI, BSSI_T_Term_Rights, BSSI_T_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, NOTEINDX, BSSI_Actual_Tenant_Heigh, BSSI_Leased_Space_SF, BSSI_Actual_Number_Anten, BSSI_Antennas_Size, BSSI_Actual_Antennas_Siz, BSSI_Actual_Number_Coax, BSSI_Actual_NumberMicrow, BSSI_Size_Of_MicrowaveDi, BSSI_Actual_Size_Of_Micr, BSSI_Height_Of_Microwave, BSSI_Actual_Height_Micro, BSSI_Lines_Size, BSSI_Actual_Lines_Size, BSSI_Other_Equipment, BSSI_Actual_Other_Equipm, BSSI_Height_Other_Equipm, BSSI_Actual_Height_Other, BSSI_Generators, BSSI_Actual_Generators, BSSI_Tower_Mounterd_Amps, BSSI_Actual_Tower_Mounte, BSSI_Shelter_Cab, BSSI_Actual_Shelter_Cab, BSSI_Arbitration_Provisi, BSSI_Frequency_Sharing_A, BSSI_Tenant_Right_To_Net, BSSI_Sublet_Provisions, BSSI_Default_Arrangement, BSSI_Clawback_Provisions, BSSI_Frequency_Restricti, BSSI_Notice_Required_Ter, BSSI_Second_Termination, BSSI_Second_Term_Date, BSSI_NI_Array_1, BSSI_NI_Array_2, BSSI_NI_Array_3, BSSI_NI_Array_4, BSSI_NI_Array_5, BSSI_NI_Array_6, BSSI_NI_Array_7, BSSI_NI_Array_8, BSSI_NI_Array_9, BSSI_NI_Array_10, BSSI_NI_Array_11, BSSI_NI_Array_12, BSSI_NI_Array_13, BSSI_NI_Array_14, BSSI_NI_Array_15, BSSI_NI_Array_16, BSSI_NI_Array_17, BSSI_NI_Array_18, BSSI_NI_Array_19, BSSI_NI_Array_20, BSSI_NI_Array_21, BSSI_NI_Array_22, BSSI_NI_Array_23, BSSI_NI_Array_24, BSSI_NI_Array_25, BSSI_NI_Array_26, BSSI_NI_Array_27, BSSI_NI_Array_28, BSSI_NI_Array_29, BSSI_NI_Array_30, BSSI_NI_Array_31, BSSI_NI_Array_32, BSSI_Actual_T_Height_On, DEX_ROW_ID, BSSI_Comments, BSSI_Tenant_Ground_Space FROM .B4602201 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Master_Lease_ID, BSSI_Height, BSSI_Height_NI, BSSI_Tenant_Leased_Space, BSSI_Tenant_LeasedSpacNI, BSSI_Antenna_Ct, BSSI_Antenna_Ct_NI, BSSI_Antenna_ID, BSSI_CoaxCable_Ct, BSSI_CoaxCable_Ct_NI, BSSI_MicrowaveDsh_Ct, BSSI_MicrowaveDsh_Ct_NI, BSSI_Restoration_Require, BSSI_RestReqNI, BSSI_Is_Escal_CPI, BSSI_Is_Escal_CPI_NI, BSSI_Is_Escal_Lesser, BSSI_Is_Escal_Lesser_NI, BSSI_Can_Term_1st_Cur, BSSI_Can_Term_1st_Cur_NI, BSSI_Is_RentAbateFree, BSSI_Is_RentAbateFree_NI, BSSI_Rt_Term_Dt, BSSI_Rt_Term_Dt_NI, BSSI_TerminatRight, BSSI_Term_Right_NI, BSSI_T_Term_Rights, BSSI_T_Term_Rights_NI, BSSI_Is_Termination_Fee, BSSI_Is_Termination_Fee_, BSSI_Term_Fee_Amt, BSSI_Term_Fee_Amt_NI, NOTEINDX, BSSI_Actual_Tenant_Heigh, BSSI_Leased_Space_SF, BSSI_Actual_Number_Anten, BSSI_Antennas_Size, BSSI_Actual_Antennas_Siz, BSSI_Actual_Number_Coax, BSSI_Actual_NumberMicrow, BSSI_Size_Of_MicrowaveDi, BSSI_Actual_Size_Of_Micr, BSSI_Height_Of_Microwave, BSSI_Actual_Height_Micro, BSSI_Lines_Size, BSSI_Actual_Lines_Size, BSSI_Other_Equipment, BSSI_Actual_Other_Equipm, BSSI_Height_Other_Equipm, BSSI_Actual_Height_Other, BSSI_Generators, BSSI_Actual_Generators, BSSI_Tower_Mounterd_Amps, BSSI_Actual_Tower_Mounte, BSSI_Shelter_Cab, BSSI_Actual_Shelter_Cab, BSSI_Arbitration_Provisi, BSSI_Frequency_Sharing_A, BSSI_Tenant_Right_To_Net, BSSI_Sublet_Provisions, BSSI_Default_Arrangement, BSSI_Clawback_Provisions, BSSI_Frequency_Restricti, BSSI_Notice_Required_Ter, BSSI_Second_Termination, BSSI_Second_Term_Date, BSSI_NI_Array_1, BSSI_NI_Array_2, BSSI_NI_Array_3, BSSI_NI_Array_4, BSSI_NI_Array_5, BSSI_NI_Array_6, BSSI_NI_Array_7, BSSI_NI_Array_8, BSSI_NI_Array_9, BSSI_NI_Array_10, BSSI_NI_Array_11, BSSI_NI_Array_12, BSSI_NI_Array_13, BSSI_NI_Array_14, BSSI_NI_Array_15, BSSI_NI_Array_16, BSSI_NI_Array_17, BSSI_NI_Array_18, BSSI_NI_Array_19, BSSI_NI_Array_20, BSSI_NI_Array_21, BSSI_NI_Array_22, BSSI_NI_Array_23, BSSI_NI_Array_24, BSSI_NI_Array_25, BSSI_NI_Array_26, BSSI_NI_Array_27, BSSI_NI_Array_28, BSSI_NI_Array_29, BSSI_NI_Array_30, BSSI_NI_Array_31, BSSI_NI_Array_32, BSSI_Actual_T_Height_On, DEX_ROW_ID, BSSI_Comments, BSSI_Tenant_Ground_Space FROM .B4602201 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602201N_1] TO [DYNGRP]
GO
