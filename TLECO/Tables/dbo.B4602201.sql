CREATE TABLE [dbo].[B4602201]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Master_Lease_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Height] [numeric] (19, 5) NOT NULL,
[BSSI_Height_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tenant_Leased_Space] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_LeasedSpacNI] [numeric] (19, 5) NOT NULL,
[BSSI_Antenna_Ct] [numeric] (19, 5) NOT NULL,
[BSSI_Antenna_Ct_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Antenna_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CoaxCable_Ct] [numeric] (19, 5) NOT NULL,
[BSSI_CoaxCable_Ct_NI] [numeric] (19, 5) NOT NULL,
[BSSI_MicrowaveDsh_Ct] [numeric] (19, 5) NOT NULL,
[BSSI_MicrowaveDsh_Ct_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Restoration_Require] [smallint] NOT NULL,
[BSSI_RestReqNI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Escal_CPI] [smallint] NOT NULL,
[BSSI_Is_Escal_CPI_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Escal_Lesser] [smallint] NOT NULL,
[BSSI_Is_Escal_Lesser_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Can_Term_1st_Cur] [smallint] NOT NULL,
[BSSI_Can_Term_1st_Cur_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_RentAbateFree] [smallint] NOT NULL,
[BSSI_Is_RentAbateFree_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Rt_Term_Dt] [datetime] NOT NULL,
[BSSI_Rt_Term_Dt_NI] [numeric] (19, 5) NOT NULL,
[BSSI_TerminatRight] [smallint] NOT NULL,
[BSSI_Term_Right_NI] [numeric] (19, 5) NOT NULL,
[BSSI_T_Term_Rights] [smallint] NOT NULL,
[BSSI_T_Term_Rights_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Termination_Fee] [smallint] NOT NULL,
[BSSI_Is_Termination_Fee_] [numeric] (19, 5) NOT NULL,
[BSSI_Term_Fee_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Term_Fee_Amt_NI] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_Tenant_Heigh] [numeric] (19, 5) NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_Number_Anten] [numeric] (19, 5) NOT NULL,
[BSSI_Antennas_Size] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Antennas_Siz] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Number_Coax] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_NumberMicrow] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Size_Of_MicrowaveDi] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Size_Of_Micr] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Height_Of_Microwave] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Height_Micro] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lines_Size] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Lines_Size] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Other_Equipment] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Other_Equipm] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Height_Other_Equipm] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Height_Other] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Generators] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Generators] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tower_Mounterd_Amps] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Tower_Mounte] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Shelter_Cab] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Actual_Shelter_Cab] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Arbitration_Provisi] [smallint] NOT NULL,
[BSSI_Frequency_Sharing_A] [smallint] NOT NULL,
[BSSI_Tenant_Right_To_Net] [smallint] NOT NULL,
[BSSI_Sublet_Provisions] [smallint] NOT NULL,
[BSSI_Default_Arrangement] [smallint] NOT NULL,
[BSSI_Clawback_Provisions] [smallint] NOT NULL,
[BSSI_Frequency_Restricti] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Notice_Required_Ter] [smallint] NOT NULL,
[BSSI_Second_Termination] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Second_Term_Date] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_NI_Array_1] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_2] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_3] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_4] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_5] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_6] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_7] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_8] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_9] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_10] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_11] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_12] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_13] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_14] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_15] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_16] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_17] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_18] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_19] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_20] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_21] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_22] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_23] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_24] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_25] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_26] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_27] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_28] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_29] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_30] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_31] [numeric] (19, 5) NOT NULL,
[BSSI_NI_Array_32] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_T_Height_On] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Comments] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Ground_Space] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602201] ADD CONSTRAINT [CK__B4602201__BSSI_R__61E43427] CHECK ((datepart(hour,[BSSI_Rt_Term_Dt])=(0) AND datepart(minute,[BSSI_Rt_Term_Dt])=(0) AND datepart(second,[BSSI_Rt_Term_Dt])=(0) AND datepart(millisecond,[BSSI_Rt_Term_Dt])=(0)))
GO
ALTER TABLE [dbo].[B4602201] ADD CONSTRAINT [PKB4602201] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL2B4602201] ON [dbo].[B4602201] ([BSSI_Antenna_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602201] ON [dbo].[B4602201] ([BSSI_Antenna_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Master_Lease_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Height]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Height_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Tenant_Leased_Space]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Tenant_LeasedSpacNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Antenna_Ct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Antenna_Ct_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Antenna_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_CoaxCable_Ct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_CoaxCable_Ct_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_MicrowaveDsh_Ct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_MicrowaveDsh_Ct_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Restoration_Require]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_RestReqNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Is_Escal_CPI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Is_Escal_CPI_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Is_Escal_Lesser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Is_Escal_Lesser_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Can_Term_1st_Cur]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Can_Term_1st_Cur_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Is_RentAbateFree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Is_RentAbateFree_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602201].[BSSI_Rt_Term_Dt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Rt_Term_Dt_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_TerminatRight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Term_Right_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_T_Term_Rights]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_T_Term_Rights_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Is_Termination_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Is_Termination_Fee_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Term_Fee_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Term_Fee_Amt_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Actual_Tenant_Heigh]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Actual_Number_Anten]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Antennas_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Antennas_Siz]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Actual_Number_Coax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_NumberMicrow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Size_Of_MicrowaveDi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Size_Of_Micr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Height_Of_Microwave]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Height_Micro]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Lines_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Lines_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Other_Equipment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Other_Equipm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Height_Other_Equipm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Height_Other]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Generators]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Generators]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Tower_Mounterd_Amps]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Tower_Mounte]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Shelter_Cab]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Actual_Shelter_Cab]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Arbitration_Provisi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Frequency_Sharing_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Tenant_Right_To_Net]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Sublet_Provisions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Default_Arrangement]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Clawback_Provisions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Frequency_Restricti]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602201].[BSSI_Notice_Required_Ter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Second_Termination]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602201].[BSSI_Second_Term_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_NI_Array_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602201].[BSSI_Actual_T_Height_On]'
GO
GRANT SELECT ON  [dbo].[B4602201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602201] TO [DYNGRP]
GO
