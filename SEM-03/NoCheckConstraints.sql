USE [ServiciosG11BD]
GO

--ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [RefManzana11] FOREIGN KEY([idmanzana])
--REFERENCES [dbo].[Manzana] ([idmanzana])
--GO

ALTER TABLE [dbo].[Asignacion] NOCHECK CONSTRAINT [RefManzana11]
GO

--ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [RefTrabajador14] FOREIGN KEY([idencuestador])
--REFERENCES [dbo].[Trabajador] ([idtrabajador])
--GO

ALTER TABLE [dbo].[Asignacion] NOCHECK CONSTRAINT [RefTrabajador14]
GO

--ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [RefTrabajador15] FOREIGN KEY([idsupervisor])
--REFERENCES [dbo].[Trabajador] ([idtrabajador])
--GO

ALTER TABLE [dbo].[Asignacion] NOCHECK CONSTRAINT [RefTrabajador15]
GO


