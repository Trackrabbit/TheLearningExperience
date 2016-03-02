CREATE TABLE [dbo].[HR2LNK01]
(
[I1_I] [smallint] NOT NULL,
[LINKTEMPLATE_I_1] [tinyint] NOT NULL,
[LINKTEMPLATE_I_2] [tinyint] NOT NULL,
[LINKTEMPLATE_I_3] [tinyint] NOT NULL,
[LINKTEMPLATE_I_4] [tinyint] NOT NULL,
[LINKTEMPLATE_I_5] [tinyint] NOT NULL,
[LINKTEMPLATE_I_6] [tinyint] NOT NULL,
[LINKTEMPLATE_I_7] [tinyint] NOT NULL,
[LINKTEMPLATE_I_8] [tinyint] NOT NULL,
[LINKTEMPLATE_I_9] [tinyint] NOT NULL,
[LINKTEMPLATE_I_10] [tinyint] NOT NULL,
[LINKTEMPLATE_I_11] [tinyint] NOT NULL,
[LINKTEMPLATE_I_12] [tinyint] NOT NULL,
[LINKTEMPLATE_I_13] [tinyint] NOT NULL,
[LINKTEMPLATE_I_14] [tinyint] NOT NULL,
[LINKTEMPLATE_I_15] [tinyint] NOT NULL,
[LINKTEMPLATE_I_16] [tinyint] NOT NULL,
[LINKTEMPLATE_I_17] [tinyint] NOT NULL,
[LINKTEMPLATE_I_18] [tinyint] NOT NULL,
[LINKTEMPLATE_I_19] [tinyint] NOT NULL,
[LINKTEMPLATE_I_20] [tinyint] NOT NULL,
[LINKTEMPLATE_I_21] [tinyint] NOT NULL,
[LINKTEMPLATE_I_22] [tinyint] NOT NULL,
[LINKTEMPLATE_I_23] [tinyint] NOT NULL,
[LINKTEMPLATE_I_24] [tinyint] NOT NULL,
[LINKTEMPLATE_I_25] [tinyint] NOT NULL,
[LINKTEMPLATE_I_26] [tinyint] NOT NULL,
[LINKTEMPLATE_I_27] [tinyint] NOT NULL,
[LINKTEMPLATE_I_28] [tinyint] NOT NULL,
[LINKTEMPLATE_I_29] [tinyint] NOT NULL,
[LINKTEMPLATE_I_30] [tinyint] NOT NULL,
[LINKTEMPLATE_I_31] [tinyint] NOT NULL,
[LINKTEMPLATE_I_32] [tinyint] NOT NULL,
[LINKTEMPLATE_I_33] [tinyint] NOT NULL,
[LINKTEMPLATE_I_34] [tinyint] NOT NULL,
[LINKTEMPLATE_I_35] [tinyint] NOT NULL,
[LINKTEMPLATE_I_36] [tinyint] NOT NULL,
[LINKTEMPLATE_I_37] [tinyint] NOT NULL,
[LINKTEMPLATE_I_38] [tinyint] NOT NULL,
[LINKTEMPLATE_I_39] [tinyint] NOT NULL,
[LINKTEMPLATE_I_40] [tinyint] NOT NULL,
[LINKTEMPLATE_I_41] [tinyint] NOT NULL,
[LINKTEMPLATE_I_42] [tinyint] NOT NULL,
[LINKTEMPLATE_I_43] [tinyint] NOT NULL,
[LINKTEMPLATE_I_44] [tinyint] NOT NULL,
[LINKTEMPLATE_I_45] [tinyint] NOT NULL,
[LINKTEMPLATE_I_46] [tinyint] NOT NULL,
[LINKTEMPLATE_I_47] [tinyint] NOT NULL,
[LINKTEMPLATE_I_48] [tinyint] NOT NULL,
[LINKTEMPLATE_I_49] [tinyint] NOT NULL,
[LINKTEMPLATE_I_50] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2LNK01] ADD CONSTRAINT [PKHR2LNK01] PRIMARY KEY NONCLUSTERED  ([I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_42]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_43]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_44]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_45]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_46]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_47]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_48]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_49]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2LNK01].[LINKTEMPLATE_I_50]'
GO
GRANT SELECT ON  [dbo].[HR2LNK01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2LNK01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2LNK01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2LNK01] TO [DYNGRP]
GO
