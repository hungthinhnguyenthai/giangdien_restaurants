package com.aktv.project.giangdien.data.file;

import com.google.common.base.Preconditions;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * com.aktv.project.giangdien.data.file.IncomingFileWithHashAndAlgo
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@AllArgsConstructor
public class IncomingFileWithHashAndAlgo {

    private static final Logger LOGGER = LoggerFactory.getLogger(IncomingFileWithHashAndAlgo.class);

    private IncomingFile incomingFile;
    private String hash;
    private HashAlgo algo;

    /**
     * Permet de hasher le fichier si besoin pour connaitre le hash/algo, si l'utilisateur ne l'a pas donné en entrée
     *
     * @param incomingFileInput
     * @param hashInput
     * @param hashAlgoInput
     * @return
     */
    public static IncomingFileWithHashAndAlgo get(IncomingFile incomingFileInput, String hashInput, String hashAlgoInput) {
        IncomingFile incomingFile;
        String hash;
        String algoString;
        if (StringUtils.isBlank(hashInput) && StringUtils.isBlank(hashAlgoInput)) {
            // AD_V1_RG10
            LOGGER.debug("documentUpload:no hash provided, need to compute them");
            HashedIncomingFile hashedAttachmentArchive = HashedIncomingFile.of(incomingFileInput);
            incomingFile = hashedAttachmentArchive;
            hash = hashedAttachmentArchive.getHash();
            algoString = hashedAttachmentArchive.getAlgo();
            LOGGER.debug("document hash computed {} [{}:{}]", incomingFileInput.getName(), algoString, hash);
        } else {
            LOGGER.debug("document hash provided {} [{}-{}]", incomingFileInput.getName(), hashAlgoInput, hashInput);
            Preconditions.checkState(StringUtils.isNotBlank(hashInput) && StringUtils.isNotBlank(hashAlgoInput), "At this point both the hash and algo must be known");
            incomingFile = incomingFileInput;
            hash = hashInput;
            algoString = hashAlgoInput;
        }
        HashAlgo algo = HashAlgo.fromString(algoString);
        return new IncomingFileWithHashAndAlgo(incomingFile, hash, algo);
    }

    /**
     * Construit un objet IncomingFileWithHashAndAlgo à partir d'un HashedIncomingFile
     * @param hashedFile
     * @return HashedIncomingFile
     */
    public static IncomingFileWithHashAndAlgo get(HashedIncomingFile hashedFile) {
        return new IncomingFileWithHashAndAlgo(hashedFile, hashedFile.getHash(), HashAlgo.fromString(hashedFile.getAlgo()));
    }

}

