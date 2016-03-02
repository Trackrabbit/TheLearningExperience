SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699703F_1] (@LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BSSI_AM_Screen_Completed, BSSI_AM_Measurement_Comp, BSSI_Tower_Detuned, BSSI_Phase_I, BSSI_Phase_II, BSSI_NEPA, BSSI_Consultation_7ESA, BSSI_Consultations_106NH, BSSI_Consultations_Flood, BSSI_Consultations_Wetla, BSSI_Environmental_Asses, BSSI_Zoning_Jurisdiction, BSSI_Zoning_Type, BSSI_Cond_Zoning, BSSI_Completed_Cert, BSSI_Airspace_Study, BSSI_AM_Srn_CompletedNI, BSSI_AM_Measurements_NI, BSSI_Tower_Detuned_NI, BSSI_PhaseI_NI, BSSI_PhaseII_NI, BSSI_Nepa_NI, BSSI_7ESA_NI, BSSI_NHPA_NI, BSSI_FEMA_NI, BSSI_Con_Wetland_NI, BSSI_FONSI_NI, BSSI_Zoning_NI, BSSI_1A2C_NI, BSSI_Airspace_NI, BSSI_Zoning_Type_NI, BSSI_Zoning_Cond_NI, NOTEINDX, DEX_ROW_ID FROM .B4699703 ORDER BY LOCNCODE ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, BSSI_AM_Screen_Completed, BSSI_AM_Measurement_Comp, BSSI_Tower_Detuned, BSSI_Phase_I, BSSI_Phase_II, BSSI_NEPA, BSSI_Consultation_7ESA, BSSI_Consultations_106NH, BSSI_Consultations_Flood, BSSI_Consultations_Wetla, BSSI_Environmental_Asses, BSSI_Zoning_Jurisdiction, BSSI_Zoning_Type, BSSI_Cond_Zoning, BSSI_Completed_Cert, BSSI_Airspace_Study, BSSI_AM_Srn_CompletedNI, BSSI_AM_Measurements_NI, BSSI_Tower_Detuned_NI, BSSI_PhaseI_NI, BSSI_PhaseII_NI, BSSI_Nepa_NI, BSSI_7ESA_NI, BSSI_NHPA_NI, BSSI_FEMA_NI, BSSI_Con_Wetland_NI, BSSI_FONSI_NI, BSSI_Zoning_NI, BSSI_1A2C_NI, BSSI_Airspace_NI, BSSI_Zoning_Type_NI, BSSI_Zoning_Cond_NI, NOTEINDX, DEX_ROW_ID FROM .B4699703 WHERE LOCNCODE = @LOCNCODE_RS ORDER BY LOCNCODE ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BSSI_AM_Screen_Completed, BSSI_AM_Measurement_Comp, BSSI_Tower_Detuned, BSSI_Phase_I, BSSI_Phase_II, BSSI_NEPA, BSSI_Consultation_7ESA, BSSI_Consultations_106NH, BSSI_Consultations_Flood, BSSI_Consultations_Wetla, BSSI_Environmental_Asses, BSSI_Zoning_Jurisdiction, BSSI_Zoning_Type, BSSI_Cond_Zoning, BSSI_Completed_Cert, BSSI_Airspace_Study, BSSI_AM_Srn_CompletedNI, BSSI_AM_Measurements_NI, BSSI_Tower_Detuned_NI, BSSI_PhaseI_NI, BSSI_PhaseII_NI, BSSI_Nepa_NI, BSSI_7ESA_NI, BSSI_NHPA_NI, BSSI_FEMA_NI, BSSI_Con_Wetland_NI, BSSI_FONSI_NI, BSSI_Zoning_NI, BSSI_1A2C_NI, BSSI_Airspace_NI, BSSI_Zoning_Type_NI, BSSI_Zoning_Cond_NI, NOTEINDX, DEX_ROW_ID FROM .B4699703 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY LOCNCODE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699703F_1] TO [DYNGRP]
GO
