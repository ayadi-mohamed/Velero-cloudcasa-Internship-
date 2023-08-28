velero install \
	--provider aws \
       	--plugins velero/velero-plugin-for-aws:v1.6.2 \
       	--bucket velero \
	--secret-file ./credentials \
	--backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://10.107.35.145:9000 \
	--default-volumes-to-fs-backup \
	--uploader-type=restic \
	--use-node-agent true \
        --wait




#velero install \
#	--provider aws \
#	--bucket velero \
#	--secret-file ./credentials \
#	--backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://minio:9000 \
#	--plugins velero/velero-plugin-for-aws

