import { MemoryType } from 'src/enum';
import {
  Column,
  ColumnIndex,
  CreateDateColumn,
  DeleteDateColumn,
  ForeignKeyColumn,
  PrimaryGeneratedColumn,
  Table,
  UpdateDateColumn,
  UpdateIdColumn,
} from 'src/sql-tools';
import { UserTable } from 'src/tables/user.table';
import { MemoryData } from 'src/types';

@Table('memories')
export class MemoryTable<T extends MemoryType = MemoryType> {
  @PrimaryGeneratedColumn()
  id!: string;

  @CreateDateColumn()
  createdAt!: Date;

  @UpdateDateColumn()
  updatedAt!: Date;

  @ColumnIndex('IDX_memories_update_id')
  @UpdateIdColumn()
  updateId?: string;

  @DeleteDateColumn()
  deletedAt?: Date;

  @ForeignKeyColumn(() => UserTable, { onDelete: 'CASCADE', onUpdate: 'CASCADE', nullable: false })
  ownerId!: string;

  @Column()
  type!: T;

  @Column({ type: 'jsonb' })
  data!: MemoryData[T];

  /** unless set to true, will be automatically deleted in the future */
  @Column({ type: 'boolean', default: false })
  isSaved!: boolean;

  /** memories are sorted in ascending order by this value */
  @Column({ type: 'timestamp with time zone' })
  memoryAt!: Date;

  @Column({ type: 'timestamp with time zone', nullable: true })
  showAt?: Date;

  @Column({ type: 'timestamp with time zone', nullable: true })
  hideAt?: Date;

  /** when the user last viewed the memory */
  @Column({ type: 'timestamp with time zone', nullable: true })
  seenAt?: Date;
}
