CREATE SCHEMA [Production] AUTHORIZATION [db_owner]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Contains objects related to products, inventory, and manufacturing.', 'SCHEMA', N'Production'
GO