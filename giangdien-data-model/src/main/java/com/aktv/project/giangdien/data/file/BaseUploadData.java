package com.aktv.project.giangdien.data.file;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import org.joda.time.DateTime;

import java.util.Set;

/**
 * com.aktv.project.giangdien.data.file.BaseUploadData
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class BaseUploadData {
    public static final String DIGISHOOT = "Digishoot";

    private final IncomingFile file;
    private final String hash;
    private final HashAlgo hashAlgo;
    private final String title;
    private final String subtitle;
    private final String summary;
    private final String location;
    private final String type;
    private final Set<String> tags;
    private final boolean digishoot;
    private final boolean geolocalized;
    private final Double digishootLongitude;
    private final Double digishootLatitude;
    private final DateTime digishootTimestamping;
    private final String digishootHdop;
    private final boolean archiveToRequest;
    private final boolean certified;
    private String folderId;
    private boolean favorite;
    private Long archiveSize;


    public BaseUploadData(HashedIncomingFile file,
                              String title,
                              Set<String> tags,
                              Double digishootLatitude,
                              Double digishootLongitude,
                              DateTime digishootTimestamping,
                              String digishootHdop,
                              boolean archiveToRequest) {
        this(file, file.getHash(), HashAlgo.fromString(file.getAlgo()), title, null, null, null, null, tags, digishootLatitude, digishootLongitude, digishootTimestamping, digishootHdop, archiveToRequest, false, false, false, null, false, null);
    }

    public BaseUploadData(IncomingFile file,
                              String hash,
                              HashAlgo hashAlgo,
                              String title,
                              String subtitle,
                              String summary,
                              String location,
                              String type,
                              Set<String> tags,
                              Double digishootLatitude,
                              Double digishootLongitude,
                              DateTime digishootTimestamping,
                              String digishootHdop,
                              boolean archiveToRequest,
                              boolean certified,
                              boolean digishoot,
                              boolean geolocalized,
                              String folderId,
                              boolean favorite,
                              Long archiveSize) {
        Preconditions.checkArgument(file != null,"The file is mandatory");
        Preconditions.checkArgument(hash != null,"The hash is mandatory");
        Preconditions.checkArgument(hashAlgo != null,"The hashAlgo is mandatory");
        this.file = file;
        this.hash = hash;
        this.hashAlgo = hashAlgo;
        this.title = title;
        this.subtitle = subtitle;
        this.summary = summary;
        this.location = location;
        this.type = type;
        this.tags = tags;
        this.digishootLatitude = digishootLatitude;
        this.digishootLongitude = digishootLongitude;
        this.digishootTimestamping = digishootTimestamping;
        this.digishootHdop = digishootHdop;
        this.archiveToRequest = archiveToRequest;
        this.certified = certified;
        this.digishoot = digishoot;
        this.geolocalized = geolocalized;
        this.folderId = folderId;
        this.favorite = favorite;
        this.archiveSize = archiveSize;
    }


    public static BaseUploadDataBuilder builder() {
        return new BaseUploadDataBuilder();
    }


    public static class BaseUploadDataBuilder {

        private IncomingFile file;
        private String hash;
        private HashAlgo hashAlgo;
        private String title;
        private String subtitle;
        private String summary;
        private String location;
        private String type;
        private Set<String> tags;
        private boolean digishoot;
        private boolean geolocalized;
        private Double digishootLongitude;
        private Double digishootLatitude;
        private DateTime digishootTimestamping;
        private String digishootHdop;
        private boolean archiveToRequest;
        private boolean certified;
        private String folderId;
        private boolean favorite;
        private Long archiveSize;

        public BaseUploadDataBuilder setIncomingFileWithHashAndAlgo(IncomingFileWithHashAndAlgo incomingFileWithHashAndAlgo) {
            this.file = incomingFileWithHashAndAlgo.getIncomingFile();
            this.hash = incomingFileWithHashAndAlgo.getHash();
            this.hashAlgo = incomingFileWithHashAndAlgo.getAlgo();
            return this;
        }

        public BaseUploadDataBuilder setTitle(String title) {
            this.title = title;
            return this;
        }

        public BaseUploadDataBuilder setSubtitle(String subtitle) {
            this.subtitle = subtitle;
            return this;
        }

        public BaseUploadDataBuilder setSummary(String summary) {
            this.summary = summary;
            return this;
        }

        public BaseUploadDataBuilder setLocation(String location) {
            this.location = location;
            return this;
        }

        public BaseUploadDataBuilder setType(String type) {
            this.type = type;
            return this;
        }

        public BaseUploadDataBuilder setTags(Set<String> tags) {
            this.tags = tags;
            return this;
        }

        public BaseUploadDataBuilder withDigishootLongitude(Double longitude) {
            this.digishootLongitude = longitude;
            return this;
        }

        public BaseUploadDataBuilder withDigishootLatitude(Double latitude) {
            this.digishootLatitude = latitude;
            return this;
        }

        public BaseUploadDataBuilder withDigishootTimestamping(DateTime timestamp) {
            this.digishootTimestamping = timestamp;
            return this;
        }

        public BaseUploadDataBuilder withDigishootHdop(String digishootHdop) {
            this.digishootHdop = digishootHdop;
            return this;
        }

        public BaseUploadDataBuilder setArchiveToRequest(boolean archiveToRequest) {
            this.archiveToRequest = archiveToRequest;
            return this;
        }

        public BaseUploadDataBuilder setCertified(boolean certified) {
            this.certified = certified;
            return this;
        }

        public BaseUploadDataBuilder setDigishoot(boolean digishoot) {
            this.digishoot = digishoot;
            return this;
        }

        public BaseUploadDataBuilder setGeolocalized(boolean geolocalized) {
            this.geolocalized = geolocalized;
            return this;
        }

        public BaseUploadDataBuilder setFolderId(String folderId) {
            this.folderId = folderId;
            return this;
        }

        public BaseUploadDataBuilder setFavorite(Boolean favorite) {
            this.favorite = favorite != null && favorite;
            return this;
        }

        public BaseUploadDataBuilder setArchiveSize(Long archiveSize) {
            this.archiveSize = archiveSize;
            return this;
        }

        public BaseUploadData build() {
            tags = digishoot ? ImmutableSet.<String>builder().addAll(tags).add(DIGISHOOT).build() : tags;
            return new BaseUploadData(file, hash, hashAlgo, title, subtitle, summary, location, type, tags, digishootLatitude, digishootLongitude, digishootTimestamping, digishootHdop, archiveToRequest, certified, digishoot, geolocalized, folderId, favorite, archiveSize);
        }
    }
}
