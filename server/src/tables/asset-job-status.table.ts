import { Column, ForeignKeyColumn, Table } from 'src/sql-tools';
import { AssetTable } from 'src/tables/asset.table';

@Table('asset_job_status')
export class AssetJobStatusTable {
  @ForeignKeyColumn(() => AssetTable, { onDelete: 'CASCADE', onUpdate: 'CASCADE', primary: true })
  assetId!: string;

  @Column({ type: 'timestamp with time zone', nullable: true })
  facesRecognizedAt!: Date | null;

  @Column({ type: 'timestamp with time zone', nullable: true })
  metadataExtractedAt!: Date | null;

  @Column({ type: 'timestamp with time zone', nullable: true })
  duplicatesDetectedAt!: Date | null;

  @Column({ type: 'timestamp with time zone', nullable: true })
  previewAt!: Date | null;

  @Column({ type: 'timestamp with time zone', nullable: true })
  thumbnailAt!: Date | null;
}
