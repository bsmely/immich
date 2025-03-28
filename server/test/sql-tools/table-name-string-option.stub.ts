import { DatabaseSchema, Table } from 'src/sql-tools';

@Table('table-1')
export class Table1 {}

export const description = 'should register a table with a specific name';
export const schema: DatabaseSchema = {
  name: 'public',
  tables: [
    {
      name: 'table-1',
      columns: [],
      indexes: [],
      constraints: [],
      synchronize: true,
    },
  ],
  warnings: [],
};
