import { DatabaseConstraintType, DatabaseSchema, ForeignKeyColumn, PrimaryColumn, Table } from 'src/sql-tools';

@Table()
export class Table1 {
  @PrimaryColumn({ type: 'uuid' })
  id!: string;
}

@Table()
export class Table2 {
  @ForeignKeyColumn(() => Table1, { unique: true })
  parentId!: string;
}

export const description = 'should create a foreign key constraint with a unique constraint';
export const schema: DatabaseSchema = {
  name: 'public',
  tables: [
    {
      name: 'table1',
      columns: [
        {
          name: 'id',
          tableName: 'table1',
          type: 'uuid',
          nullable: false,
          isArray: false,
          primary: true,
          synchronize: true,
        },
      ],
      indexes: [],
      constraints: [
        {
          type: DatabaseConstraintType.PRIMARY_KEY,
          name: 'PK_b249cc64cf63b8a22557cdc8537',
          tableName: 'table1',
          columnNames: ['id'],
          synchronize: true,
        },
      ],
      synchronize: true,
    },
    {
      name: 'table2',
      columns: [
        {
          name: 'parentId',
          tableName: 'table2',
          type: 'uuid',
          nullable: false,
          isArray: false,
          primary: false,
          synchronize: true,
        },
      ],
      indexes: [],
      constraints: [
        {
          type: DatabaseConstraintType.FOREIGN_KEY,
          name: 'FK_3fcca5cc563abf256fc346e3ff4',
          tableName: 'table2',
          columnNames: ['parentId'],
          referenceColumnNames: ['id'],
          referenceTableName: 'table1',
          synchronize: true,
        },
        {
          type: DatabaseConstraintType.UNIQUE,
          name: 'REL_3fcca5cc563abf256fc346e3ff',
          tableName: 'table2',
          columnNames: ['parentId'],
          synchronize: true,
        },
      ],
      synchronize: true,
    },
  ],
  warnings: [],
};
