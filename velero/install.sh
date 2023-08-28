velero install \
	--provider aws \
       	--plugins velero/velero-plugin-for-aws:v1.6.2,velero/velero-plugin-for-csi:v0.4.0\
       	--bucket velero \
	--secret-file ./credentials \
	--backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://10.105.251.55:9000 \
       	--use-volume-snapshots=true \
	--use-node-agent true \
	--snapshot-location-config region=minio,s3ForcePathStyle="true",s3Url=http://10.105.251.55:9000 \
	--features=EnableCSI \
        --wait




#velero install \
#	--provider aws \
#	--bucket velero \
#	--secret-file ./credentials \
#	--backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://minio:9000 \
#	--plugins velero/velero-plugin-for-aws

