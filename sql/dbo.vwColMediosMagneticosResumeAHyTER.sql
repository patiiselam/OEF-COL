create view [dbo].[vwColMediosMagneticosResumeAHyTER] as
select ah.*,dt.* from vwColMediosMagneticosResumeAH ah 
outer apply dbo.f_obtieneDatosTerceros (0, 0, ah.ORMSTRID) dt
where ah.formato  is not null;
GO
