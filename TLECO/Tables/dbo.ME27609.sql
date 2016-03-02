CREATE TABLE [dbo].[ME27609]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_Format_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_4] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_5] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_6] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_7] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_8] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_9] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_10] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_11] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_12] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_13] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_14] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_15] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_16] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_17] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_18] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_19] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_20] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_21] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_22] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_23] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_24] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_25] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_26] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_27] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_28] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_29] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_30] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_31] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_32] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_33] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_34] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_35] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_36] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_37] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_38] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_39] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_40] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_41] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_42] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_43] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_44] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_MICR_45] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHKFORM] [smallint] NOT NULL,
[ME_Logo_ID_Array_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Logo_ID_Array_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Logo_ID_Array_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[dupdll] [smallint] NOT NULL,
[numXs] [smallint] NOT NULL,
[resvstr1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[checkcomm1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[checkcomm2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[checkcomm3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Stub_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Using_Pre_Printed_Che] [tinyint] NOT NULL,
[ME_Check_Digit_Divisor] [smallint] NOT NULL,
[ME_Check_Digit_DR_or_DSR] [smallint] NOT NULL,
[ME_Check_Digit_Use_Zeros] [tinyint] NOT NULL,
[ME_Check_Digit_Weighted] [tinyint] NOT NULL,
[ME_Check_Digit_Weighting] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27609] ADD CONSTRAINT [PKME27609] PRIMARY KEY CLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_Check_Format_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_42]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_43]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_44]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_MICR_45]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[CHKFORM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_Logo_ID_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_Logo_ID_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_Logo_ID_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[dupdll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[numXs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[resvstr1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[checkcomm1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[checkcomm2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[checkcomm3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27609].[ME_Stub_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Using_Pre_Printed_Che]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Check_Digit_Divisor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Check_Digit_DR_or_DSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Check_Digit_Use_Zeros]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Check_Digit_Weighted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27609].[ME_Check_Digit_Weighting]'
GO
GRANT SELECT ON  [dbo].[ME27609] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27609] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27609] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27609] TO [DYNGRP]
GO
